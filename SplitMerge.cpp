#include "llvm/IR/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/Instructions.h>
#include <sstream>
#include <unordered_map>
#include <unordered_set>

using namespace llvm;

static std::string instInfo(Instruction* CurInst) {
    std::string InstStr;
    raw_string_ostream Strm(InstStr);
    Strm << *CurInst;
    return (CurInst->getParent()->getName()).str() + " --- [ " + Strm.str() + " ]";
}

static void getReachableNodes(Instruction* PhiInstruction, std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>& ReachableMap) {
    // get reach node for Cur BB in the current CFG
    BasicBlock* PhiBB = PhiInstruction->getParent();

    assert(ReachableMap.find(PhiBB) == ReachableMap.end());

    if (succ_empty(PhiBB)) {
        ////outs() << "BB has no successors." << "\n";
    }

    std::unordered_set<BasicBlock*> Pending;
    ReachableMap[PhiBB] = std::unordered_set<BasicBlock*>();
    
    // initial
    ReachableMap[PhiBB].insert(PhiBB);
    for (BasicBlock *Succ : successors(PhiBB)) {
        ReachableMap[PhiBB].insert(Succ);
        Pending.insert(Succ);
    }

    while (!Pending.empty()) {
        BasicBlock* Visiting;
        for (auto& Inst : Pending) {
            Visiting = Inst;
            break;
        }
        ////outs() << Visiting->getName() << "\n";
        Pending.erase(Visiting);

        std::size_t CurSize = 0;
        if (ReachableMap.find(Visiting) != ReachableMap.end()) {
            CurSize = ReachableMap[Visiting].size();

            // collect reachable from successors
            for (BasicBlock *Succ : successors(Visiting)) {
                if (ReachableMap.find(Succ) == ReachableMap.end()) {
                    continue;
                }
                for (auto& SuccReachBlock : ReachableMap[Succ]) {
                    ReachableMap[Visiting].insert(SuccReachBlock);
                }
            }

        } else {
            ReachableMap[Visiting] = std::unordered_set<BasicBlock*>();
            ReachableMap[Visiting].insert(Visiting);
            for (BasicBlock *Succ : successors(Visiting)) {
                ReachableMap[Visiting].insert(Succ);
                Pending.insert(Succ);
            }
        }

        // new node reachable, need update predesscor
        if (CurSize != ReachableMap[Visiting].size()) {
            for (BasicBlock *Pred : predecessors(Visiting)) {
                if (ReachableMap.find(Pred) != ReachableMap.end()) {
                    Pending.insert(Pred);
                }
            }
        }
    }
}

// intruction -> BasicBlock -> Instruction set
static void getInfluencedNodes( Instruction* PhiInstruction, 
                                std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes) {

    // get the influenced nodes for a destructive merges
    assert(PhiInfluenceNodes.empty());

    std::unordered_set<Instruction*> Pending;

    // initialization
    Pending.insert(PhiInstruction);

    // this is best I can do : PhiInstruction add, clear single Constant, loop between phi will fail
    while (!Pending.empty()) {

        Instruction* Visiting;
        for (auto& Inst : Pending) {
            Visiting = Inst;
            break;
        }
        Pending.erase(Visiting);

        for (auto *U : PhiInstruction->users()) {
            if (!isa<Instruction>(&*U)) {
                continue;
            }

            bool WhetherUpdateInfluence = false;
            Instruction* Usage = cast<Instruction>(&*U);

            if (!isa<PHINode>(Usage)) {
              if (Usage->isBinaryOp()) {
                WhetherUpdateInfluence = true;
              } else if (isa<CmpInst>(Usage)) {
                WhetherUpdateInfluence = true;
              } else if (isa<SExtInst>(Usage)) {
                WhetherUpdateInfluence = true;
              } else {
                ////outs() << "Neither Binary Op Or Compare -- [ " << *Usage  << " ]" << "\n";
                continue;
              }
            } else {
              PHINode* PhiNode = cast<PHINode>(Usage);
              std::size_t NumValues = PhiNode->getNumIncomingValues();

              if (NumValues == 0) {
                errs() << "Phi Node Value = 0 --- " << instInfo(PhiNode) << "\n";
                assert(false);
              }

              bool WhetherAllVisited = true;
              for (std::size_t I = 0; I < PhiNode->getNumIncomingValues(); I++) {
                Value* ComeValue = PhiNode->getIncomingValue(I);
                if (isa<ConstantInt>(ComeValue)) {
                  continue;
                } else {

                  if (!isa<Instruction>(ComeValue)) {
                      ////outs() << "Non Instruction Value --- " << *ComeValue << "\n";
                      WhetherAllVisited = false;
                      break;
                  }

                  Instruction* InstValue = cast<Instruction>(ComeValue);
                  if (InstValue == PhiInstruction) {
                      continue;
                  }
                  if (ComeValue == Visiting) {
                      continue;
                  }

                  assert(ComeValue != Visiting);
                  BasicBlock* ValueBB = InstValue->getParent();

                  if (PhiInfluenceNodes.find(ValueBB) == PhiInfluenceNodes.end()) {
                      WhetherAllVisited = false;
                  } else if (PhiInfluenceNodes[ValueBB].find(InstValue) == PhiInfluenceNodes[ValueBB].end()) {
                      WhetherAllVisited = false;
                  }
                }
              }

              if (WhetherAllVisited) {
                  WhetherUpdateInfluence = true;
              }
            }

            if (!WhetherUpdateInfluence) {
              continue;
            }

            // update PhiInfluenceNodes
            BasicBlock* UsageBB = Usage->getParent();

            if (PhiInfluenceNodes.find(UsageBB) == PhiInfluenceNodes.end()) {
                PhiInfluenceNodes[UsageBB] = std::unordered_set<Instruction*>();
            }

            if (PhiInfluenceNodes[UsageBB].find(Usage) == PhiInfluenceNodes[UsageBB].end()) {
                Pending.insert(Usage);
                PhiInfluenceNodes[UsageBB].insert(Usage);
            }
        }
    }
}

// instruction -> BasicBlock -> 
static void getRegionOfInfluence( Instruction* PhiInstruction, 
                                  std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>& ReachableMap,
                                  std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                                  std::unordered_set<BasicBlock*>& RegionOfInfluence) {

    // get the region of influence for a destructive merges
    assert(RegionOfInfluence.empty());

    BasicBlock* PhiBB = PhiInstruction->getParent();
    for (auto& ReachBB : ReachableMap[PhiBB]) {
        for (auto& InfluenceBBPair : PhiInfluenceNodes) {
            auto& InfluenceBB = InfluenceBBPair.first;

            assert(ReachableMap.find(ReachBB) != ReachableMap.end());
            if (ReachableMap[ReachBB].find(InfluenceBB) != ReachableMap[ReachBB].end()) {
                RegionOfInfluence.insert(ReachBB);
            }
        }
    }
}

static double getFitNess( std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                          std::unordered_set<BasicBlock*>& RegionOfInfluence) {
    
    // get the fitness of phi instruction
    if (RegionOfInfluence.size() == 0) {
        return double(0);
    }
    return double(PhiInfluenceNodes.size()) / double(RegionOfInfluence.size());
}

static void printStatisticForDm(  Instruction* PhiInstruction,
                                  std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>& ReachableMap,
                                  std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                                  std::unordered_set<BasicBlock*>& RegionOfInfluence) {
    // print the statistics
    std::size_t TotalBBInfluence = PhiInfluenceNodes.size();
    std::size_t TotalInstInfluence = 0;
    for (auto& BBInstPair : PhiInfluenceNodes) {
        TotalInstInfluence += BBInstPair.second.size();
    }

    // print reach bb
    std::string ReachBBString = "[";
    for (auto& ReachBB : ReachableMap[PhiInstruction->getParent()]) {
        ReachBBString += ((ReachBB)->getName().str() + " , ");
    }
    ReachBBString += "]";

    // print influence bb
    std::string InfluenceBBString = "[";
    for (auto& InfluenceBBPair : PhiInfluenceNodes) {
        InfluenceBBString += ((InfluenceBBPair.first)->getName().str() + " , ");
    }
    InfluenceBBString += "]";

    // print region influence
    std::string ROIString = "[";
    for (auto& RoiBB : RegionOfInfluence) {
        ROIString += ((RoiBB)->getName().str() + " , ");
    }
    ROIString += "]";

    errs() << instInfo(PhiInstruction) << "\n";
    errs() << "\tTotal Influence Blocks: " << TotalBBInfluence << "\n";
    errs() << "\tTotal Influence Insts: " << TotalInstInfluence << "\n";
    errs() << "\tFitness: " << getFitNess(PhiInfluenceNodes, RegionOfInfluence) << "\n";
    ////outs() << "\tReachable BB: " << ReachBBString << "\n";
    ////outs() << "\tInfluence BB: " << InfluenceBBString << "\n";
    ////outs() << "\tROI: " << ROIString << "\n";
}

namespace SplitMergeSpace {
  struct Edge {
    BasicBlock* Start;
    BasicBlock* End;

    struct EdgeHashFunction {
      std::size_t operator()(const Edge& E) const {

        std::stringstream Strm1;
        Strm1 << E.Start;

        std::stringstream Strm2;
        Strm2 << E.End;

        std::string HashString = Strm1.str() + Strm2.str(); //+ std::to_string(E.ExactValue);
        return std::hash<std::string>{}(HashString);
      }
    };

    Edge(){}

    Edge(BasicBlock* Start, BasicBlock* End) {
        this->Start = Start;
        this->End = End;
    }

    Edge(const Edge& E) {
        this->Start = E.Start;
        this->End = E.End;
    }

    bool operator==(const Edge& E) const {
      if (E.Start != this->Start) {
          return false;
      }
      if (E.End != this->End) {
          return false;
      }
      return true;
    }

    static std::string edgeString(const Edge& E)  {
      std::string EdgeS = "( " + E.Start->getName().str() + " --- ";
      EdgeS += (E.End->getName().str() + " )");
      return EdgeS;
    }
  };

  struct BlockState {
      std::size_t State;
      BasicBlock* BB;

      struct BlockStateHashFunction {
        std::size_t operator()(const BlockState& BS) const {

          std::stringstream Strm;
          Strm << BS.BB;

          std::string HashString = std::to_string(BS.State) + Strm.str(); //+ std::to_string(E.ExactValue);
          return std::hash<std::string>{}(HashString);
        }
      };

      BlockState(){}

      BlockState(std::size_t State, BasicBlock* BB) {
        this->State = State;
        this->BB = BB;
      }

      BlockState(const BlockState& BS) {
        this->State = BS.State;
        this->BB = BS.BB;
      }

      bool operator==(const BlockState& BS) const {
        if (BS.State != this->State) {
            return false;
        }
        if (BS.BB != this->BB) {
            return false;
        }
        return true;
      }

      static std::string bsString(const BlockState& BS)  {
        std::string BsS = BS.BB->getName().str() + "_S";
        BsS += std::to_string(BS.State);
        //std::replace(BsS.begin(), BsS.end(), ".", "_");
        // stupid replace "." to "_"
        std::size_t Pos = BsS.find(".");
        while (Pos != std::string::npos) {
          BsS.replace(Pos, 1, "_");
          Pos = BsS.find(".");
        }
        return BsS;
      }
  };

  // statistics for symbolic cfg
  struct StatisticSymbolCFG {
      double FitNess = 0.0;
      std::size_t AddBlockNum = 0;
      std::size_t AddInstNum = 0;
      std::size_t PossibleRemoveInstNum = 0;

    StatisticSymbolCFG(){}

    StatisticSymbolCFG(double Fit, std::size_t ABN, std::size_t AIN, std::size_t RIN) {
        this->FitNess = Fit;
        this->AddBlockNum = ABN;
        this->AddInstNum = AIN;
        this->PossibleRemoveInstNum = RIN;
    }

    StatisticSymbolCFG(const StatisticSymbolCFG& SF) {
       this->FitNess = SF.FitNess;
       this->AddBlockNum = SF.AddBlockNum;
       this->AddInstNum = SF.AddInstNum;
       this->PossibleRemoveInstNum = SF.PossibleRemoveInstNum;
    }

    bool operator==(const StatisticSymbolCFG& SF) const {
      if (SF.AddBlockNum != this->AddBlockNum) {
        return false;
      }
      if (SF.AddInstNum != this->AddInstNum) {
        return false;
      }
      if (SF.PossibleRemoveInstNum != this->PossibleRemoveInstNum) {
        return false;
      }
      if (std::abs(SF.FitNess - this->FitNess) > 0.0001) {
        return false;
      }
      return true;
    }

    static std::string sCFGString(const StatisticSymbolCFG& SF, std::string PreFix)  {
        std::string SCFGStr = "";
        SCFGStr += (PreFix + "FitNess: " + std::to_string(SF.FitNess) + "\n");
        SCFGStr += (PreFix + "Add Blocks: " + std::to_string(SF.AddBlockNum) + "\n");
        SCFGStr += (PreFix + "Add Insts: " + std::to_string(SF.AddInstNum) + "\n");
        SCFGStr += (PreFix + "Possible Remove Insts: " + std::to_string(SF.PossibleRemoveInstNum) + "\n");
        return SCFGStr;
    }
  };

  // statistics for module split merge
  struct StatisticSplitMerge {
      double FitNess = 0.0;
      std::size_t AddBlockNum = 0;
      std::size_t AddPhiNum = 0;
      std::size_t AddInstNum = 0;
      std::size_t UpdateUnreachableNum = 0;

      StatisticSplitMerge(){}

      void addBlockNum(std::size_t I) {
          this->AddBlockNum = this->AddBlockNum + I;
      }

      void addPhiNum(std::size_t I) {
          this->AddPhiNum = this->AddPhiNum + I;
      }

      void addInstNum(std::size_t I) {
          this->AddInstNum = this->AddInstNum + I;
      }

      void addUnReachableNum(std::size_t I) {
          this->UpdateUnreachableNum = this->UpdateUnreachableNum + I;
      }

      static std::string sSMString(const StatisticSplitMerge& SSM, std::string PreFix)  {
        std::string SSMStr = "";
        SSMStr += (PreFix + "FitNess: " + std::to_string(SSM.FitNess) + "\n");
        SSMStr += (PreFix + "Add Blocks: " + std::to_string(SSM.AddBlockNum) + "\n");
        SSMStr += (PreFix + "Add Phi Insts: " + std::to_string(SSM.AddPhiNum) + "\n");
        SSMStr += (PreFix + "Add Block Insts: " + std::to_string(SSM.AddInstNum) + "\n");
        SSMStr += (PreFix + "Update Phi Unreachable Count: " + std::to_string(SSM.UpdateUnreachableNum) + "\n");
        return SSMStr;
      }
};
} // namespace SplitMergeSpace

static void printCFGSplit (std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph) {
  for (auto& BSSourcePair: CFGSplitGraph) {
    SplitMergeSpace::BlockState BSSource = BSSourcePair.first;
    for (auto& BSEND: CFGSplitGraph[BSSource]) {
      errs() << "\t\t\t" << SplitMergeSpace::BlockState::bsString(BSSource) << " -> " << SplitMergeSpace::BlockState::bsString(BSEND) << "\n";
    }
  }
}

static void stateTransition(  std::size_t CurState, BasicBlock* CurBlock, bool WhetherTrans,
                              std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>& RevivalEdges,
                              std::unordered_map<SplitMergeSpace::Edge, int64_t, SplitMergeSpace::Edge::EdgeHashFunction>& EdgeValueMap,
                              std::unordered_map<int64_t, std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>>& ValueEdgesMap,
                              std::unordered_map<int64_t , std::size_t>& StateMap, std::unordered_map<std::size_t, int64_t>& StateReverseMap,
                              std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>& KillEdges,
                              std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph) {

    SplitMergeSpace::BlockState BS{CurState, CurBlock};

    if (CFGSplitGraph.find(BS) != CFGSplitGraph.end()) {
        return;
    }

    CFGSplitGraph[BS] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
    for (BasicBlock *Succ : successors(CurBlock)) {
        SplitMergeSpace::Edge CurEdge{CurBlock, Succ};

        std::size_t NextState = CurState;
        if (WhetherTrans) {
          if (RevivalEdges.find(CurEdge) != RevivalEdges.end()) {
            // get next state
            NextState = StateMap[EdgeValueMap[CurEdge]];
          } else if (KillEdges.find(CurEdge) != KillEdges.end()) {
            NextState = 0;
          }
        }

        SplitMergeSpace::BlockState GenBS{NextState, Succ};
        CFGSplitGraph[BS].insert(GenBS);
        stateTransition(NextState, Succ, WhetherTrans, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGSplitGraph);
    }
}

static void generateSymbolSplitCFG( Function* Func,
                              Instruction* PhiInstruction,
                              std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                              std::unordered_set<BasicBlock*>& RegionOfInfluence,
                              std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>& RevivalEdges,
                              std::unordered_map<SplitMergeSpace::Edge, int64_t, SplitMergeSpace::Edge::EdgeHashFunction>& EdgeValueMap,
                              std::unordered_map<int64_t, std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>>& ValueEdgesMap,
                              std::unordered_map<int64_t , std::size_t>& StateMap,
                              std::unordered_map<std::size_t, int64_t>& StateReverseMap,
                              std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>& KillEdges,
                              std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGOriGraph,
                              std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph,
                              std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& ReverseCFGSplitGraph
) {

    assert(isa<PHINode>(PhiInstruction));
    PHINode* PhiInst = cast<PHINode>(PhiInstruction);
    BasicBlock* PhiBB = PhiInst->getParent();

    std::size_t TotalValue = PhiInst->getNumIncomingValues();
    for (std::size_t I = 0; I < TotalValue; I++) {
        Value* ComeValue = PhiInst->getIncomingValue(I);
        BasicBlock* ComeBB = PhiInst->getIncomingBlock(I);

        if (isa<ConstantInt>(ComeValue)) {
            ConstantInt* ConsInst = cast<ConstantInt>(ComeValue);
            int64_t ActualValue = ConsInst->getSExtValue();

            SplitMergeSpace::Edge RevivalEdge{ComeBB, PhiBB};

            if (RevivalEdges.find(RevivalEdge) != RevivalEdges.end()) {
                errs() << "Edge Already Present In Revival Edge:  " << SplitMergeSpace::Edge::edgeString(RevivalEdge) << "\n";
                assert(false);
            }

            if (EdgeValueMap.find(RevivalEdge) != EdgeValueMap.end()) {
                errs() << "Edge Already Present In Edge Value Map:  " << SplitMergeSpace::Edge::edgeString(RevivalEdge) << "\n";
                assert(false);
            }

            int64_t StoreValue = ActualValue;

            RevivalEdges.insert(RevivalEdge);
            EdgeValueMap[RevivalEdge] = StoreValue;

            if (ValueEdgesMap.find(StoreValue) == ValueEdgesMap.end()) {
                ValueEdgesMap[StoreValue] = std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>();
            }

            if (ValueEdgesMap[StoreValue].find(RevivalEdge) != ValueEdgesMap[StoreValue].end()) {
                errs() << "Edge Already Present In Value Edge Map:  " << SplitMergeSpace::Edge::edgeString(RevivalEdge) << "\n";
                assert(false);
            }
            ValueEdgesMap[StoreValue].insert(RevivalEdge);

            if (StateMap.find(StoreValue) == StateMap.end()) {
                std::size_t CurState = StateMap.size() + 1;
                StateMap[StoreValue] = CurState;
                StateReverseMap[CurState] = StoreValue;
            }
        }
    }

    /*
    //outs() << "Revival Edges:" << "\n";
    for (auto& E : RevivalEdges) {
        //outs() << "\t" << SplitMergeSpace::Edge::edgeString(E) << "\n";
        assert(EdgeValueMap.find(E) != EdgeValueMap.end());
        int64_t ActualValue = EdgeValueMap[E];
        //outs() << ActualValue << "\n";
        assert(ValueEdgesMap.find(ActualValue) != ValueEdgesMap.end());
        assert(ValueEdgesMap[ActualValue].find(E) != ValueEdgesMap[ActualValue].end());
    }

    //outs() << "\n";
    //outs() << "Value - State" << "\n";
    for (auto& VSPair : StateMap) {
        //outs() << "\t" << VSPair.first << " -- " << VSPair.second;
        assert(StateReverseMap.find(VSPair.second) != StateReverseMap.end());
        assert(StateReverseMap[VSPair.second] == VSPair.first);
    }
    */

    // kill edges
    for (BasicBlock* BB : RegionOfInfluence) {
        for (BasicBlock *Succ : successors(BB)) {
            if (RegionOfInfluence.find(Succ) == RegionOfInfluence.end()) {
                SplitMergeSpace::Edge KillEdge{BB, Succ};
                KillEdges.insert(KillEdge);
            }
        }
    }

    /*
    //outs() << "\n";
    //outs() << "Kill Edges:" << "\n";
    for (auto& E : KillEdges) {
        //outs() << "\t" << SplitMergeSpace::Edge::edgeString(E) << "\n";
    }
    */

    // check different edge for kill and revival
    for (auto& E : RevivalEdges) {
        if (KillEdges.find(E) != KillEdges.end()) {
            errs() << "Same Edge in Kill and Revival" << "\n";
            assert(false);
        }
    }

    // generate fake CFG graph - start from entry
    BasicBlock* EntryBlock = &Func->getEntryBlock();

    // dfs check
    stateTransition(0, EntryBlock, false, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGOriGraph);
    stateTransition(0, EntryBlock, true, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGSplitGraph);

    // generate predecessor (reverse) cfg
    for (auto& BSSourcePair: CFGSplitGraph) {
        SplitMergeSpace::BlockState BSSource = BSSourcePair.first;
        for (auto& BSEND: CFGSplitGraph[BSSource]) {
            if (ReverseCFGSplitGraph.find(BSEND) == ReverseCFGSplitGraph.end()) {
                ReverseCFGSplitGraph[BSEND] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
            }
            ReverseCFGSplitGraph[BSEND].insert(BSSource);
        }
    }

    SplitMergeSpace::BlockState BS{0, EntryBlock};
    if (ReverseCFGSplitGraph.find(BS) != ReverseCFGSplitGraph.end()) {
        errs() << "Entry Block Has Predecessor" << "\n";
        assert(false);
    }
}

namespace {
// pass for collect information - function count, code length, etc.
struct FuncPhiInfo : public ModulePass {
  static char ID;
  FuncPhiInfo() : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    errs() << "Function Phi Info Pass: " << "\n";

    // get all predicate
    for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {

      errs().write_escaped(F->getName()) << '\n';

      for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {

        for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
            // check for phi node and constant before, both phi condition are constant
            
            Instruction* CurInst = &*IN;
            if (!isa<PHINode>(CurInst)) {
                continue;
            }
            
            PHINode* PhiNode = cast<PHINode>(CurInst);
            
            std::size_t TotalValues = PhiNode->getNumIncomingValues();
            if (TotalValues < 2) {
                errs() << "Phi Node With Less Than 2 Incoming Value" << "\n";
                assert(false);
            }
            
            bool AllNonConstant = true;
            for (std::size_t I = 0; I < TotalValues; I++) {
                Value* ComeValue = PhiNode->getIncomingValue(I);
                if (isa<ConstantInt>(ComeValue)) {
                    AllNonConstant = false;
                    break;
                }
            }

            if (!AllNonConstant) {
                // print
                std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>> ReachableMap = std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>();
                std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>> PhiInfluenceNodes = std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>();
                std::unordered_set<BasicBlock*> RegionOfInfluence = std::unordered_set<BasicBlock*>();

                getReachableNodes(PhiNode, ReachableMap);
                getInfluencedNodes(PhiNode, PhiInfluenceNodes);
                getRegionOfInfluence(PhiNode, ReachableMap, PhiInfluenceNodes, RegionOfInfluence);

                printStatisticForDm(PhiNode, ReachableMap, PhiInfluenceNodes, RegionOfInfluence);
                errs() << "\n";
            }
        }
      }

    }
    return false;
  }
};
} // namespace

namespace {
// generate test pseudo-CFG for viz
struct FuncCFGSplitInfo : public ModulePass {
  static char ID;
  FuncCFGSplitInfo() : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    errs() << "Function CFG Symbol Generate Pass: " << "\n";

    // get all predicate
    std::unordered_map<Function*, SplitMergeSpace::StatisticSymbolCFG> ModuleSta;

    for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {

      errs().write_escaped(F->getName()) << '\n';

      for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {

        for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
          // check for phi node and constant before, both phi condition are constant

          Instruction* CurInst = &*IN;
          if (!isa<PHINode>(CurInst)) {
            continue;
          }

          PHINode* PhiNode = cast<PHINode>(CurInst);

          std::size_t TotalValues = PhiNode->getNumIncomingValues();
          if (TotalValues < 2) {
            errs() << "Phi Node With Less Than 2 Incoming Value" << "\n";
            assert(false);
          }

          bool AllNonConstant = true;
          for (std::size_t I = 0; I < TotalValues; I++) {
            Value* ComeValue = PhiNode->getIncomingValue(I);
            if (isa<ConstantInt>(ComeValue)) {
              AllNonConstant = false;
              break;
            }
          }

          if (!AllNonConstant) {
            // print
            std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>> ReachableMap = std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>();
            std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>> PhiInfluenceNodes = std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>();
            std::unordered_set<BasicBlock*> RegionOfInfluence = std::unordered_set<BasicBlock*>();

            getReachableNodes(PhiNode, ReachableMap);
            getInfluencedNodes(PhiNode, PhiInfluenceNodes);
            getRegionOfInfluence(PhiNode, ReachableMap, PhiInfluenceNodes, RegionOfInfluence);

            // fitness
            double FitNess = getFitNess(PhiInfluenceNodes, RegionOfInfluence);

            if (FitNess < 0.198) {
                continue;
            }

            // revival edges
            std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> RevivalEdges;

            // Edge -> Value
            std::unordered_map<SplitMergeSpace::Edge, int64_t, SplitMergeSpace::Edge::EdgeHashFunction> EdgeValueMap;
            // Value -> Edges
            std::unordered_map<int64_t, std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>> ValueEdgesMap;

            // Value -> State
            std::unordered_map<int64_t , std::size_t> StateMap;
            // State -> Value
            std::unordered_map<std::size_t, int64_t> StateReverseMap;

            // Kill Edges
            std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> KillEdges;

            // Original CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGOriGraph;

            // Generate CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGSplitGraph;

            // Reverse CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> ReverseCFGSplitGraph;

            // generate cfg for test
            generateSymbolSplitCFG(&*F, PhiNode, PhiInfluenceNodes, RegionOfInfluence, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

            // approximate profile
            std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction> TotalBlocks;
            for (auto& BSPair : CFGSplitGraph) {
                auto& BSStart = BSPair.first;
                for (auto& BS : CFGSplitGraph[BSStart]) {
                    TotalBlocks.insert(BS);
                }
                TotalBlocks.insert(BSStart);
            }

            std::size_t AddBlockNum = 0;
            std::size_t AddInstNum = 0;
            std::size_t RemoveInstNum = 0;

            for (auto& BS : TotalBlocks) {
                ////outs() << SplitMergeSpace::BlockState::bsString(BS) << " , ";
                if (BS.State == 0) {
                    continue;
                }
                AddBlockNum++;
                AddInstNum += ((BS.BB)->sizeWithoutDebug());
                if (PhiInfluenceNodes.find(BS.BB) != PhiInfluenceNodes.end()) {
                    RemoveInstNum += (PhiInfluenceNodes[BS.BB].size());
                }
            }

            assert(AddInstNum >= RemoveInstNum);

            SplitMergeSpace::StatisticSymbolCFG SCFG{FitNess, AddBlockNum, AddInstNum, RemoveInstNum};

            errs() << "\t" << instInfo(PhiNode) << "\n\n";
            errs() << "\t\tOriginal CFG" << "\n";
            printCFGSplit(CFGOriGraph);
            errs() << "\n";
            errs() << "\t\tSplit CFG" << "\n";
            printCFGSplit(CFGSplitGraph);
            errs() << "\n";
            errs() << "\t\tStatistics:" << "\n";
            errs() << SplitMergeSpace::StatisticSymbolCFG::sCFGString(SCFG, "\t\t\t") << "\n";
            errs() << "\n";

            if (ModuleSta.find(&*F) == ModuleSta.end() || ModuleSta[&*F].FitNess < FitNess) {
                ModuleSta[&*F] = std::move(SCFG);
            }
          }
        }
      }
    }

    std::size_t ModuleAddBlocks = 0;
    std::size_t ModuleAddInsts = 0;
    std::size_t ModuleRemoveInsts = 0;

    for (auto& SFPair : ModuleSta) {
        auto& CurFunc = SFPair.first;
        ModuleAddBlocks += (ModuleSta[CurFunc].AddBlockNum);
        ModuleAddInsts += (ModuleSta[CurFunc].AddInstNum);
        ModuleRemoveInsts += (ModuleSta[CurFunc].PossibleRemoveInstNum);
    }

    errs() << "\n\n";
    errs() << "==========================================================================\n";
    errs() << "Overall Statistics For Module (Only Check For Highest Fitness DM)\n";
    errs() << "Summary:" << "\n";
    errs() << "\t" << "Total Add Blocks: " << std::to_string(ModuleAddBlocks) << "\n";
    errs() << "\t" << "Total Add Insts: " << std::to_string(ModuleAddInsts) << "\n";
    errs() << "\t" << "Total Possible Remove Insts: " << std::to_string(ModuleRemoveInsts) << "\n";

    return false;
  }
};
} // namespace

namespace {

// Module Split Merge Pass - The first implementation, without getAnalysisUsage.
struct ModuleSplitMerge : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    ModuleSplitMerge() : ModulePass(ID) {}

    static void updateLocalUsage(Instruction* OriInst, Value* MapInst, BasicBlock* OriBB, ValueToValueMapTy* InstMap) {
        for (auto *U : OriInst->users()) {

            User* CurU = &*U;
            if (!isa<Instruction>(CurU)) {
                //outs() << "Usage Not As Inst - " << *CurU << "\n";
                assert(false);
            }

            // replace usage inside block
            Instruction* InstU = cast<Instruction>(CurU);

            if ((InstU->getParent()) == OriBB) {

                if (isa<PHINode>(InstU)) {
                    continue;
                }

                std::size_t TotalUseOps = CurU->getNumOperands();
                bool Found = false;
                for (std::size_t I = 0; I < TotalUseOps; I++) {
                  if (OriInst == CurU->getOperand(I)) {

                    Value* UserValueInBS = (*InstMap)[CurU];
                    if (!isa<User>(UserValueInBS)) {
                      //outs() << "Not As User - " << *UserValueInBS << "\n";
                    }
                    User* UserInBS = cast<User>(UserValueInBS);
                    UserInBS->setOperand(I, MapInst);
                    Found = true;
                  }
                }

                if (!Found) {
                    //outs() << "Not Found Usage" << "\n";
                    assert(false);
                }
            }
        }
    }

    static void replaceUsage(SplitMergeSpace::BlockState BS, Function* F, BasicBlock* UnreachableBlock, SplitMergeSpace::StatisticSplitMerge& StatisticsSM,
                             std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState>& GenBlockBSMap,
                             std::unordered_map<SplitMergeSpace::BlockState, BasicBlock*, SplitMergeSpace::BlockState::BlockStateHashFunction>& BSGenBlockMap,
                             std::unordered_map<SplitMergeSpace::BlockState, ValueToValueMapTy*, SplitMergeSpace::BlockState::BlockStateHashFunction>& BSValueMap,
                             std::unordered_map<SplitMergeSpace::BlockState, std::unordered_map<Instruction*, Instruction*>, SplitMergeSpace::BlockState::BlockStateHashFunction>& BSPhiValueMap,
                             std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGOriGraph,
                             std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph,
                             std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& ReverseCFGSplitGraph) {

        if (BSGenBlockMap.find(BS) != BSGenBlockMap.end()) {
            return;
        }

        ValueToValueMapTy* ValueMapTyPoint = new ValueToValueMapTy;
        BasicBlock* BB = CloneBasicBlock(BS.BB, *ValueMapTyPoint, ".dup" + std::to_string(BS.State), F);
        BSGenBlockMap[BS] = BB;
        GenBlockBSMap[BB] = BS;
        BSValueMap[BS] = ValueMapTyPoint;
        BSPhiValueMap[BS] = std::unordered_map<Instruction*, Instruction*>();

        // update statistics
        if (BS.State != 0) {
          StatisticsSM.addBlockNum(1);
          StatisticsSM.addInstNum(BS.BB->sizeWithoutDebug());
        }

        BasicBlock* OriBB = BS.BB;
        for (BasicBlock::iterator IN = OriBB->begin(), INE = OriBB->end(); IN != INE; ++IN) {
            Instruction* Inst = &*IN;

            bool Add = false;
            for (auto *U : Inst->users()) {
              assert(isa<Instruction>(U));
              BasicBlock* UsingBB = cast<Instruction>(U)->getParent();

              if (UsingBB == OriBB) {
                continue;
              }
              if (GenBlockBSMap.find(UsingBB) != GenBlockBSMap.end()) {
                BasicBlock* UsingOriBB = GenBlockBSMap[UsingBB].BB;
                if (UsingOriBB == OriBB) {
                  continue;
                }
              }
              Add = true;
              break;
            }
            if (Add) {
              //outs() << "\t" << *Inst << "\n";
              BSPhiValueMap[BS][Inst] = cast<Instruction>((*BSValueMap[BS])[Inst]);
            }
            updateLocalUsage(Inst, (*BSValueMap[BS])[Inst], OriBB, BSValueMap[BS]);
        }

        // check whether all predecessors all generate
        if (ReverseCFGSplitGraph.find(BS) != ReverseCFGSplitGraph.end()) {
            for (auto& PreBS : ReverseCFGSplitGraph[BS]) {
                replaceUsage(PreBS, F, UnreachableBlock, StatisticsSM, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);
            }
        }

        // generate all successors
        if (CFGSplitGraph.find(BS) != CFGSplitGraph.end()) {
            for (auto& SucBS : CFGSplitGraph[BS]) {
                replaceUsage(SucBS, F, UnreachableBlock, StatisticsSM, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);
            }
        }

        // replace terminator
        Instruction* Inst = OriBB->getTerminator();
        Instruction* TemCur = cast<Instruction>((*BSValueMap[BS])[Inst]);
        if (isa<BranchInst>(TemCur) || isa<SwitchInst>(TemCur) || isa<InvokeInst>(TemCur) || isa<ResumeInst>(TemCur)) {
            assert(CFGSplitGraph.find(BS) != CFGSplitGraph.end());
            std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState> SuccMapping;

            for (auto& BSCFG : CFGSplitGraph[BS]) {
                if (SuccMapping.find(BSCFG.BB) != SuccMapping.end()) {
                    std::string CheckStr = "";
                    for (auto& BSChecks : CFGSplitGraph[BS]) {
                        CheckStr += (SplitMergeSpace::BlockState::bsString(BSChecks) + " , ");
                    }
                    errs() << "CFG generated with two same block but different states - " << OriBB->getName() << ", " << SplitMergeSpace::BlockState::bsString(BS) << "\n";
                    errs() << CheckStr << "\n";
                    assert(false);
                }
                SuccMapping[BSCFG.BB] = BSCFG;
            }

            std::size_t NumSuccessor = TemCur->getNumSuccessors();

            for (std::size_t I = 0; I < NumSuccessor; I++) {
              if (SuccMapping.find(TemCur->getSuccessor(I)) == SuccMapping.end()) {
                TemCur->setSuccessor(I, UnreachableBlock);
                StatisticsSM.addUnReachableNum(1);
              } else {
                TemCur->setSuccessor(I, BSGenBlockMap[SuccMapping[TemCur->getSuccessor(I)]]);
              }
            }
        } else {
            //outs() << "Terminator Not Branch Or Switch - " << SplitMergeSpace::BlockState::bsString(BS) << "\n";
        }
    }

    static void generateSplitCFGCode(Function* F,
                                     SplitMergeSpace::StatisticSplitMerge& StatisticsSM,
                                     std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGOriGraph,
                                     std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph,
                                     std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& ReverseCFGSplitGraph) {

        std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction> TotalBlocks;
        for (auto& BSPair : CFGSplitGraph) {
            auto& BSStart = BSPair.first;
            for (auto& BS : CFGSplitGraph[BSStart]) {
                TotalBlocks.insert(BS);
            }
            TotalBlocks.insert(BSStart);
        }

        std::unordered_map<BasicBlock*, std::unordered_set<std::size_t>> BBStates;
        for (auto& BS : TotalBlocks) {
            BasicBlock* OriBB = BS.BB;
            if (BBStates.find(OriBB) == BBStates.end()) {
                BBStates[OriBB] = std::unordered_set<std::size_t>();
            }
            BBStates[OriBB].insert(BS.State);
        }

        //printCFGSplit(CFGSplitGraph);
        /*
        for (auto& BBPair : BBStates) {
            BasicBlock* BB = BBPair.first;
            std::string States = "";
            for (auto& State : BBStates[BB]) {
                States += (std::to_string(State) + " , ");
            }
            outs() << BB->getName() << " -- [ " << States << " ]" << "\n";
        }
        */

        std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState> GenBlockBSMap;
        std::unordered_map<SplitMergeSpace::BlockState, BasicBlock*, SplitMergeSpace::BlockState::BlockStateHashFunction> BSGenBlockMap;
        std::unordered_map<SplitMergeSpace::BlockState, ValueToValueMapTy*, SplitMergeSpace::BlockState::BlockStateHashFunction> BSValueMap;
        std::unordered_map<SplitMergeSpace::BlockState, std::unordered_map<Instruction*, Instruction*>, SplitMergeSpace::BlockState::BlockStateHashFunction> BSPhiValueMap;

        // add dummy unreachable block
        BasicBlock* UnreachableBlock = BasicBlock::Create(F->getContext(), "Unreachable.dummy.dm", F);
        auto* URInst = new UnreachableInst(F->getContext(), UnreachableBlock);

        // start from entry node
        SplitMergeSpace::BlockState BS = {0, &(F->getEntryBlock())};
        replaceUsage(BS, F, UnreachableBlock, StatisticsSM, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

        // update dataflow BS -> Inst -> BS
        std::unordered_map<SplitMergeSpace::BlockState, std::unordered_map<Instruction*, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>>, SplitMergeSpace::BlockState::BlockStateHashFunction> BSAllPhiValueMap;
        std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction> WorkingSet;

        for (auto& BSPair : BSPhiValueMap) {
            SplitMergeSpace::BlockState CurBS = BSPair.first;
            if (CFGSplitGraph.find(CurBS) == CFGSplitGraph.end()) {
                continue;
            }
            if (BSPhiValueMap.find(CurBS) == BSPhiValueMap.end()) {
                continue;
            }
            BSAllPhiValueMap[CurBS] = std::unordered_map<Instruction*, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>>();
            for (auto& InstPair : BSPhiValueMap[CurBS]) {
                BSAllPhiValueMap[CurBS][InstPair.first] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
                BSAllPhiValueMap[CurBS][InstPair.first].insert(CurBS);
            }
            for (auto& SuccBS : CFGSplitGraph[CurBS]) {
                WorkingSet.insert(SuccBS);
            }
        }

        while(!WorkingSet.empty()) {
            SplitMergeSpace::BlockState CurBS;
            for (auto& BSPending : WorkingSet) {
                CurBS = BSPending;
                break;
            }
            ////outs() << Visiting->getName() << "\n";
            WorkingSet.erase(CurBS);

            // outs() << SplitMergeSpace::BlockState::bsString(CurBS) << "\n";

            assert(ReverseCFGSplitGraph.find(CurBS) != ReverseCFGSplitGraph.end());

            std::size_t CurInstSize = 0;
            if (BSAllPhiValueMap.find(CurBS) != BSAllPhiValueMap.end()) {
                CurInstSize = BSAllPhiValueMap[CurBS].size();
            }

            // collect all inst from precessors
            std::unordered_map<Instruction*, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>> InstructionChecks;
            for (auto& PreBS : ReverseCFGSplitGraph[CurBS]) {
              for (auto& InstPair : BSPhiValueMap[PreBS]) {
                Instruction* Inst = InstPair.first;
                if (InstructionChecks.find(Inst) == InstructionChecks.end()) {
                    InstructionChecks[Inst] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
                }
                InstructionChecks[Inst].insert(PreBS);
              }
            }

            for (auto& InstBSPair : InstructionChecks) {
              Instruction* Inst = InstBSPair.first;

              if (Inst->getParent() == CurBS.BB) {
                assert(isa<Instruction>((*BSValueMap[CurBS])[Inst]));
                //assert(BSPhiValueMap[BS].find(Inst) != BSPhiValueMap[BS].end());
                continue;
              }

              if (BSPhiValueMap.find(CurBS) == BSPhiValueMap.end()) {
                  BSPhiValueMap[CurBS] = std::unordered_map<Instruction*, Instruction*>();
              }

              if (BSPhiValueMap[CurBS].find(Inst) == BSPhiValueMap[CurBS].end()) {
                  //outs() << "\nGenerate Phi At: " << SplitMergeSpace::BlockState::bsString(CurBS) << " - " << *Inst << " -- " << Inst->getName() << "\n";
                  if (BSAllPhiValueMap.find(CurBS) == BSAllPhiValueMap.end()) {
                      BSAllPhiValueMap[CurBS] = std::unordered_map<Instruction*, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>>();
                  }

                  if (BSAllPhiValueMap[CurBS].find(Inst) != BSAllPhiValueMap[CurBS].end()) {
                      errs() << "BS Phi Value Already There - " << SplitMergeSpace::BlockState::bsString(CurBS) << " - " << *Inst << " -- " << Inst->getName() << "\n";
                      assert(false);
                  }

                  PHINode* CreatePhi = PHINode::Create(Inst->getType(), ReverseCFGSplitGraph[CurBS].size(), Inst->getName().str() + ".dup" + std::to_string(CurBS.State), BSGenBlockMap[CurBS]->getFirstNonPHI());
                  for (auto& PreBB : ReverseCFGSplitGraph[CurBS]) {
                      CreatePhi->addIncoming(UndefValue::get(Inst->getType()), BSGenBlockMap[PreBB]);
                  }

                  // update statistics
                  StatisticsSM.addPhiNum(1);

                  BSPhiValueMap[CurBS][Inst] = CreatePhi;
                  BSAllPhiValueMap[CurBS][Inst] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
                  updateLocalUsage(Inst, BSPhiValueMap[CurBS][Inst], CurBS.BB, BSValueMap[CurBS]);
              }

              assert(isa<PHINode>(BSPhiValueMap[CurBS][Inst]));
              assert(BSAllPhiValueMap.find(CurBS) != BSAllPhiValueMap.end());
              assert(BSAllPhiValueMap[CurBS].find(Inst) != BSAllPhiValueMap[CurBS].end());

              PHINode* CurPhi = cast<PHINode>(BSPhiValueMap[CurBS][Inst]);
              for (auto& PreBS : InstructionChecks[Inst]) {
                if (BSAllPhiValueMap[CurBS][Inst].find(PreBS) == BSAllPhiValueMap[CurBS][Inst].end()) {
                    Instruction* MapInst = BSPhiValueMap[PreBS][Inst];
                    // check for unwind behavior  - invoke %reg = method label BB1, unwind label BB2
                    /*
                     * The revoke and unwind is for exception handling. The return %reg is not available
                     * when there is exception and branch to BB2, thus, we need to set BB2 reg or PHI as
                     * Undef, rather than passing the reg value
                     */
                    Instruction* PreTInst = PreBS.BB->getTerminator();
                    if (!isa<InvokeInst>(PreTInst) || CurBS.BB != PreTInst->getSuccessor(1)) {
                        CurPhi->setIncomingValueForBlock(BSGenBlockMap[PreBS], MapInst);
                        BSAllPhiValueMap[CurBS][Inst].insert(PreBS);
                    }
                } else {
                    Value* CurPhiValue = CurPhi->getIncomingValueForBlock(BSGenBlockMap[PreBS]);
                    assert(isa<Instruction>(CurPhiValue));
                    Instruction* InstCheck = cast<Instruction>(CurPhiValue);
                    assert(InstCheck == BSPhiValueMap[PreBS][Inst]);
                }
              }
            }

            // add all successors to working set once there is change
            if ((BSAllPhiValueMap.find(CurBS) != BSAllPhiValueMap.end()) && (CurInstSize != BSAllPhiValueMap[CurBS].size())) {
              for (auto& SuccBS : CFGSplitGraph[CurBS]) {
                WorkingSet.insert(SuccBS);
              }
            }
        }

        // update existing phi
        for (auto& CurBS : TotalBlocks) {
            std::unordered_map<BasicBlock*, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>> UpdatedPreBS;
            if (ReverseCFGSplitGraph.find(CurBS) != ReverseCFGSplitGraph.end()) {
              for (auto& PreBS : ReverseCFGSplitGraph[CurBS]) {
                BasicBlock* PreBB = PreBS.BB;
                if (UpdatedPreBS.find(PreBB) == UpdatedPreBS.end()) {
                  UpdatedPreBS[PreBB] = std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>();
                }
                UpdatedPreBS[PreBB].insert(PreBS);
              }
            }

            //outs() << SplitMergeSpace::BlockState::bsString(BS) << " Added" << "\n";
            std::unordered_set<Instruction*> PhiInsts;
            for (BasicBlock::iterator IN = CurBS.BB->begin(), INE = CurBS.BB->end(); IN != INE; ++IN) {
              Instruction* Inst = &*IN;
              if (isa<PHINode>(Inst)) {
                PhiInsts.insert(Inst);
              }
            }
            //outs() << "\n" << SplitMergeSpace::BlockState::bsString(BS) << "\n";

            for (auto& PhiInst : PhiInsts) {
              PHINode* PhiNode = cast<PHINode>(PhiInst);
              //outs() << "Cur Phi " << *PhiNode << "\n";
              PHINode* RealPhiNode = cast<PHINode>((*BSValueMap[CurBS])[PhiNode]);

              std::unordered_set<BasicBlock*> CurBlocks;
              std::size_t TotalValuesOld = PhiNode->getNumIncomingValues();
              for (std::size_t I = 0; I < TotalValuesOld; I++) {
                CurBlocks.insert(PhiNode->getIncomingBlock(I));
              }

              /*
              std::unordered_set<BasicBlock*> RealCurBlocks;
              std::size_t TotalValuesNew = RealPhiNode->getNumIncomingValues();
              for (std::size_t I = 0; I < TotalValuesNew; I++) {
                  RealCurBlocks.insert(RealPhiNode->getIncomingBlock(I));
              }

              //outs() << "Phi Node BB:" << "\n";
              for (auto& CurB : CurBlocks) {
                  //outs() << CurB->getName() << " , ";
              }
              //outs() << "\n";
              for (auto& NewB : RealCurBlocks) {
                //outs() << NewB->getName() << " , ";
              }
              //outs() << "\n";
              */

              for (auto& CurBlock : CurBlocks) {
                if (UpdatedPreBS.find(CurBlock) == UpdatedPreBS.end()) {
                  RealPhiNode->removeIncomingValue(CurBlock, false);
                }
              }
              assert(RealPhiNode->getNumIncomingValues() > 0);

              if (RealPhiNode->getNumIncomingValues() < PhiNode->getNumIncomingValues()) {
                //outs() << SplitMergeSpace::BlockState::bsString(BS) << " --- " << *RealPhiNode << "\n";
              }

              // get actual instruction for generation
              for (auto& PreBlockPair : UpdatedPreBS) {
                BasicBlock* CurPreBlock = PreBlockPair.first;

                // check whether constant, no worry about constant
                Value* CurValue = RealPhiNode->getIncomingValueForBlock(CurPreBlock);
                std::unordered_map<BasicBlock*, Value*> ValueMaps;
                if (isa<Instruction>(CurValue)) {

                  Instruction* Inst = cast<Instruction>(CurValue);
                  for (auto& BSPhi : UpdatedPreBS[CurPreBlock]) {
                    assert(BSPhiValueMap[BSPhi].find(Inst) != BSPhiValueMap[BSPhi].end());
                    ValueMaps[BSGenBlockMap[BSPhi]] = BSPhiValueMap[BSPhi][Inst];
                  }

                } else if (isa<Constant>(CurValue) || isa<Argument>(CurValue)) {

                  for (auto& BSPhi : UpdatedPreBS[CurPreBlock]) {
                    ValueMaps[BSGenBlockMap[BSPhi]] = CurValue;
                  }

                } else {
                  //outs() << "Phi Node - " << *CurValue << "\n";
                  assert(false);
                }

                RealPhiNode->removeIncomingValue(CurPreBlock, false);
                for (auto& BBPhiPair : ValueMaps) {
                  RealPhiNode->addIncoming(BBPhiPair.second, BBPhiPair.first);
                }
              }
            }
        }

        //outs() << *F << "\n";

        if (StatisticsSM.UpdateUnreachableNum == 0) {
            UnreachableBlock->dropAllReferences();
            UnreachableBlock->eraseFromParent();
        }

        //outs() << "End Remove" << "\n";

        for (auto& BSValuePair : BSValueMap) {
          delete BSValuePair.second;
        }
        BSValueMap.clear();

        for (auto& BBPair : BBStates) {
            BasicBlock* OriBB = BBPair.first;
            OriBB->dropAllReferences();
            std::unordered_set<Instruction*> BBInsts;
            for (BasicBlock::iterator IN = OriBB->begin(), INE = OriBB->end(); IN != INE; ++IN) {
                BBInsts.insert(&*IN);
            }
            for (auto& BBInst : BBInsts) {
                BBInst->replaceAllUsesWith(UndefValue::get(BBInst->getType()));
                BBInst->eraseFromParent();
            }
        }
        for (auto& BBPair : BBStates) {
            BBPair.first->removeFromParent();
        }
    }

    bool runOnModule(Module &M) override {
      errs() << "Function CFG Code Generate Pass: " << "\n";

      std::size_t TotalAddBlocks = 0;
      std::size_t TotalAddBlockInsts = 0;
      std::size_t TotalAddPhiInsts = 0;

      for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {

        errs().write_escaped(F->getName()) << '\n';
        errs() << "\tSplit Merge Summary:" << "\n";

        bool Found = false;
        PHINode* TargetPhi;
        double HighestFitness = 0.0;

        for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {

          for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {
            // check for phi node and constant before, both phi condition are constant

            Instruction* CurInst = &*IN;
            if (!isa<PHINode>(CurInst)) {
              continue;
            }

            PHINode* PhiNode = cast<PHINode>(CurInst);

            std::size_t TotalValues = PhiNode->getNumIncomingValues();
            if (TotalValues < 2) {
              errs() << "Phi Node With Less Than 2 Incoming Value" << "\n";
              assert(false);
            }

            bool AllNonConstant = true;
            for (std::size_t I = 0; I < TotalValues; I++) {
              Value* ComeValue = PhiNode->getIncomingValue(I);
              if (isa<ConstantInt>(ComeValue)) {
                AllNonConstant = false;
                break;
              }
            }

            if (!AllNonConstant) {
              // print
              std::unordered_map<BasicBlock *, std::unordered_set<BasicBlock *>> ReachableMap = std::unordered_map<BasicBlock *, std::unordered_set<BasicBlock *>>();
              std::unordered_map<BasicBlock *, std::unordered_set<Instruction *>> PhiInfluenceNodes = std::unordered_map<BasicBlock *, std::unordered_set<Instruction *>>();
              std::unordered_set<BasicBlock *> RegionOfInfluence = std::unordered_set<BasicBlock *>();

              getReachableNodes(PhiNode, ReachableMap);
              getInfluencedNodes(PhiNode, PhiInfluenceNodes);
              getRegionOfInfluence(PhiNode, ReachableMap, PhiInfluenceNodes,RegionOfInfluence);

              // fitness
              double Fitness = getFitNess(PhiInfluenceNodes, RegionOfInfluence);

              if (std::abs(Fitness - double(0)) < 0.198) {
                continue;
              }

              if (Fitness > HighestFitness) {
                HighestFitness = Fitness;
                TargetPhi = PhiNode;
                Found = true;
              }
            }
            }
          }

        if (Found) {
            std::string PHiString = instInfo(TargetPhi);

            std::unordered_map<BasicBlock *, std::unordered_set<BasicBlock *>> ReachableMap = std::unordered_map<BasicBlock *, std::unordered_set<BasicBlock *>>();
            std::unordered_map<BasicBlock *, std::unordered_set<Instruction *>> PhiInfluenceNodes = std::unordered_map<BasicBlock *, std::unordered_set<Instruction *>>();
            std::unordered_set<BasicBlock *> RegionOfInfluence = std::unordered_set<BasicBlock *>();

            getReachableNodes(TargetPhi, ReachableMap);
            getInfluencedNodes(TargetPhi, PhiInfluenceNodes);
            getRegionOfInfluence(TargetPhi, ReachableMap, PhiInfluenceNodes,RegionOfInfluence);

            // revival edges
            std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> RevivalEdges;

            // Edge -> Value
            std::unordered_map<SplitMergeSpace::Edge, int64_t, SplitMergeSpace::Edge::EdgeHashFunction> EdgeValueMap;
            // Value -> Edges
            std::unordered_map<int64_t, std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction>> ValueEdgesMap;

            // Value -> State
            std::unordered_map<int64_t , std::size_t> StateMap;
            // State -> Value
            std::unordered_map<std::size_t, int64_t> StateReverseMap;

            // Kill Edges
            std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> KillEdges;

            // Original CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGOriGraph;

            // Generate CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGSplitGraph;

            // Reverse CFG
            std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> ReverseCFGSplitGraph;

            // generate cfg for test
            generateSymbolSplitCFG(&*F, TargetPhi, PhiInfluenceNodes, RegionOfInfluence, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

            SplitMergeSpace::StatisticSplitMerge SSM;
            SSM.FitNess = HighestFitness;
            generateSplitCFGCode(&*F, SSM, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

            TotalAddBlocks += SSM.AddBlockNum;
            TotalAddBlockInsts += SSM.AddInstNum;
            TotalAddPhiInsts += SSM.AddPhiNum;

            errs() << "\n";
            errs() << "\t\t" << PHiString << "\n\n";
            errs() << SplitMergeSpace::StatisticSplitMerge::sSMString(SSM, "\t\t\t") << "\n";
            errs() << "\n";
        }
      }

      errs() << "\n\n";
      errs() << "=============================================================";
      errs() << "Summary:" << "\n";
      errs() << "\t" << "Total Add Blocks: " << std::to_string(TotalAddBlocks) << "\n";
      errs() << "\t" << "Total Add Insts: " << std::to_string(TotalAddBlockInsts) << "\n";
      errs() << "\t" << "Total Add Phi Insts: " << std::to_string(TotalAddPhiInsts) << "\n";
    }
};
} // namespace

// register pass
char ModuleSplitMerge::ID = 0;
static RegisterPass<ModuleSplitMerge> X("ModuleSplitMerge", "Module Split Merge Pass");

char FuncPhiInfo::ID = 1;
static RegisterPass<FuncPhiInfo> Y("FuncPhiInfo", "Function Phi Node Info");

char FuncCFGSplitInfo::ID = 2;
static RegisterPass<FuncCFGSplitInfo> Z("FuncCFGSplitInfo", "Func CFG Split Info");