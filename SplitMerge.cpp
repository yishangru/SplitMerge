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
        //outs() << "BB has no successors." << "\n";
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
        //outs() << Visiting->getName() << "\n";
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
                //outs() << "Neither Binary Op Or Compare -- [ " << *Usage  << " ]" << "\n";
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
                      //outs() << "Non Instruction Value --- " << *ComeValue << "\n";
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
    //outs() << "\tReachable BB: " << ReachBBString << "\n";
    //outs() << "\tInfluence BB: " << InfluenceBBString << "\n";
    //outs() << "\tROI: " << ROIString << "\n";
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

  struct StatisticFunc {
      double FitNess;
      std::size_t AddBlockNum;
      std::size_t AddInstNum;
      std::size_t RemoveInstNum;

    StatisticFunc(){}

    StatisticFunc(double Fit, std::size_t ABN, std::size_t AIN, std::size_t RIN) {
        this->FitNess = Fit;
        this->AddBlockNum = ABN;
        this->AddInstNum = AIN;
        this->RemoveInstNum = RIN;
    }

    StatisticFunc(const StatisticFunc& SF) {
       this->FitNess = SF.FitNess;
       this->AddBlockNum = SF.AddBlockNum;
       this->AddInstNum = SF.AddInstNum;
       this->RemoveInstNum = SF.RemoveInstNum;
    }

    bool operator==(const StatisticFunc& SF) const {
      if (SF.AddBlockNum != this->AddBlockNum) {
        return false;
      }
      if (SF.AddInstNum != this->AddInstNum) {
        return false;
      }
      if (SF.RemoveInstNum != this->RemoveInstNum) {
        return false;
      }
      if (std::abs(SF.FitNess - this->FitNess) > 0.0001) {
        return false;
      }
      return true;
    }

    static std::string sFString(const StatisticFunc& SF, std::string PreFix)  {
        std::string SFStr = "";
        SFStr += (PreFix + "FitNess: " + std::to_string(SF.FitNess) + "\n");
        SFStr += (PreFix + "Add Blocks: " + std::to_string(SF.AddBlockNum) + "\n");
        SFStr += (PreFix + "Add Insts: " + std::to_string(SF.AddInstNum) + "\n");
        SFStr += (PreFix + "Remove Insts: " + std::to_string(SF.RemoveInstNum) + "\n");
        return SFStr;
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
    outs() << "Revival Edges:" << "\n";
    for (auto& E : RevivalEdges) {
        outs() << "\t" << SplitMergeSpace::Edge::edgeString(E) << "\n";
        assert(EdgeValueMap.find(E) != EdgeValueMap.end());
        int64_t ActualValue = EdgeValueMap[E];
        outs() << ActualValue << "\n";
        assert(ValueEdgesMap.find(ActualValue) != ValueEdgesMap.end());
        assert(ValueEdgesMap[ActualValue].find(E) != ValueEdgesMap[ActualValue].end());
    }

    outs() << "\n";
    outs() << "Value - State" << "\n";
    for (auto& VSPair : StateMap) {
        outs() << "\t" << VSPair.first << " -- " << VSPair.second;
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
    outs() << "\n";
    outs() << "Kill Edges:" << "\n";
    for (auto& E : KillEdges) {
        outs() << "\t" << SplitMergeSpace::Edge::edgeString(E) << "\n";
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
    std::unordered_map<Function*, SplitMergeSpace::StatisticFunc> ModuleSta;

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

            if (std::abs(FitNess - double(0)) < 0.005) {
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
                //outs() << SplitMergeSpace::BlockState::bsString(BS) << " , ";
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
            AddInstNum -= RemoveInstNum;

            SplitMergeSpace::StatisticFunc SF{FitNess, AddBlockNum, AddInstNum, RemoveInstNum};

            errs() << "\t" << instInfo(PhiNode) << "\n\n";
            errs() << "\t\tOriginal CFG" << "\n";
            printCFGSplit(CFGOriGraph);
            errs() << "\n";
            errs() << "\t\tSplit CFG" << "\n";
            printCFGSplit(CFGSplitGraph);
            errs() << "\n";
            errs() << "\t\tStatistics:" << "\n";
            errs() << SplitMergeSpace::StatisticFunc::sFString(SF, "\t\t\t") << "\n";
            errs() << "\n";

            if (ModuleSta.find(&*F) == ModuleSta.end() || ModuleSta[&*F].FitNess < FitNess) {
                ModuleSta[&*F] = std::move(SF);
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
        ModuleRemoveInsts += (ModuleSta[CurFunc].RemoveInstNum);
    }

    errs() << "\n";
    errs() << "Summary:" << "\n";
    errs() << "\t" << "Total Add Blocks: " << std::to_string(ModuleAddBlocks) << "\n";
    errs() << "\t" << "Total Add Insts: " << std::to_string(ModuleAddInsts) << "\n";
    errs() << "\t" << "Total Remove Insts: " << std::to_string(ModuleRemoveInsts) << "\n";

    return false;
  }
};
} // namespace

namespace {

struct GenTarget {
    Function* Func;
    PHINode* Phi;

    GenTarget() {}

    GenTarget(Function* F, PHINode* P) {
        this->Func = F;
        this->Phi = P;
    }

    GenTarget(const GenTarget& GT) {
      this->Func = GT.Func;
      this->Phi = GT.Phi;
    }
};

// Module Split Merge Pass - The first implementation, without getAnalysisUsage.
struct ModuleSplitMerge : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    ModuleSplitMerge() : ModulePass(ID) {}

    static void replaceUsage(SplitMergeSpace::BlockState BS, Function* F,
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

        // check whether all predecessors all generate
        if (ReverseCFGSplitGraph.find(BS) != ReverseCFGSplitGraph.end()) {
            for (auto& PreBS : ReverseCFGSplitGraph[BS]) {
                replaceUsage(PreBS, F, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);
            }
        }

        // predecessor all generated
        BasicBlock* OriBB = BS.BB;

        std::unordered_set<BasicBlock*> UpdatedPre;
        if (ReverseCFGSplitGraph.find(BS) != ReverseCFGSplitGraph.end()) {
            for (auto& PreBS : ReverseCFGSplitGraph[BS]) {
                UpdatedPre.insert(PreBS.BB);
            }
        }

        // remove some current phi
        std::unordered_set<Instruction*> PhiInsts;
        for (BasicBlock::iterator IN = OriBB->begin(), INE = OriBB->end(); IN != INE; ++IN) {
            Instruction* Inst = &*IN;
            if (isa<PHINode>(Inst)) {
                PhiInsts.insert(Inst);
            }
        }

        outs() << "\n" << SplitMergeSpace::BlockState::bsString(BS) << "\n";

        for (auto& PhiInst : PhiInsts) {
            PHINode* PhiNode = cast<PHINode>(PhiInst);
            outs() << "Cur Phi " << *PhiNode << "\n";
            PHINode* RealPhiNode = cast<PHINode>((*BSValueMap[BS])[PhiNode]);

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

            outs() << "Phi Node BB:" << "\n";
            for (auto& CurB : CurBlocks) {
                outs() << CurB->getName() << " , ";
            }
            outs() << "\n";
            for (auto& NewB : RealCurBlocks) {
              outs() << NewB->getName() << " , ";
            }
            outs() << "\n";
            */

            for (auto& CurBlock : CurBlocks) {
                if (UpdatedPre.find(CurBlock) == UpdatedPre.end()) {
                    RealPhiNode->removeIncomingValue(CurBlock, false);
                }
            }
            assert(RealPhiNode->getNumIncomingValues() > 0);

            if (RealPhiNode->getNumIncomingValues() < PhiNode->getNumIncomingValues()) {
                outs() << SplitMergeSpace::BlockState::bsString(BS) << " --- " << *RealPhiNode << "\n";
            }

            std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState> PreBlockStates;
            for (auto& PreBS : ReverseCFGSplitGraph[BS]) {
                if (UpdatedPre.find(PreBS.BB) != UpdatedPre.end()) {
                    assert(PreBlockStates.find(PreBS.BB) == PreBlockStates.end());
                    PreBlockStates[PreBS.BB] = PreBS;
                }
            }

            assert(UpdatedPre.size() == PreBlockStates.size());

            for (auto& PreBlock : UpdatedPre) {
                SplitMergeSpace::BlockState CurBS = PreBlockStates[PreBlock];
                // check whether constant, no worry about constant
                Value* CurValue = RealPhiNode->getIncomingValueForBlock(PreBlock);
                BasicBlock* ActualBlock = BSGenBlockMap[CurBS];
                RealPhiNode->replaceIncomingBlockWith(PreBlock, ActualBlock);

                outs() << "\tCur BS " << SplitMergeSpace::BlockState::bsString(CurBS) << "\n";
                outs() << "\tCur Value " << *CurValue << "\n";
                if (isa<Instruction>(CurValue)) {
                    Value* ActualValue = (*BSValueMap[CurBS])[CurValue];
                    RealPhiNode->setIncomingValueForBlock(ActualBlock, ActualValue);
                }
            }
        }

        // generate new phi
        /*
        if (ReverseCFGSplitGraph.find(BS) != ReverseCFGSplitGraph.end()) {
            std::unordered_map<BasicBlock*, std::unordered_set<std::size_t>> BBStates;
            for (auto& PreBS : ReverseCFGSplitGraph[BS]) {
                BasicBlock* PreBB = BS.BB;
                if (BBStates.find(PreBB) == BBStates.end()) {
                    BBStates[PreBB] = std::unordered_set<std::size_t>();
                }
                BBStates[PreBB].insert(BS.State);
            }
        }

        for
        */

        // generate all successors
        if (CFGSplitGraph.find(BS) != CFGSplitGraph.end()) {
            for (auto& SucBS : CFGSplitGraph[BS]) {
                replaceUsage(SucBS, F, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);
            }
        }

        // replace terminator
        Instruction* Inst = OriBB->getTerminator();
        Instruction* TemCur = cast<Instruction>((*BSValueMap[BS])[Inst]);
        if (isa<BranchInst>(TemCur)) {
            BranchInst* BrInst = cast<BranchInst>(TemCur);
            assert(CFGSplitGraph.find(BS) != CFGSplitGraph.end());

            std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState> SuccMapping;

            for (auto& BSCFG : CFGSplitGraph[BS]) {
                if (SuccMapping.find(BSCFG.BB) != SuccMapping.end()) {
                    std::string CheckStr = "";
                    for (auto& BSChecks : CFGSplitGraph[BS]) {
                        CheckStr += (SplitMergeSpace::BlockState::bsString(BSChecks) + " , ");
                    }
                    errs() << "CFG generated with two same block but different states - " << BS.BB->getName() << ", " << SplitMergeSpace::BlockState::bsString(BS) << "\n";
                    errs() << CheckStr << "\n";
                    assert(false);
                }
                SuccMapping[BSCFG.BB] = BSCFG;
            }

            std::size_t NumSuccessor = BrInst->getNumSuccessors();
            assert(CFGSplitGraph[BS].size() == NumSuccessor);
            // std::string ChangeSucc = "";
            for (std::size_t I = 0; I < NumSuccessor; I++) {
                //ChangeSucc += (SplitMergeSpace::BlockState::bsString(SuccMapping[BrInst->getSuccessor(I)]) + " , ");
                BrInst->setSuccessor(I, BSGenBlockMap[SuccMapping[BrInst->getSuccessor(I)]]);
            }
            // outs() << ChangeSucc << "\n";
        }
    }

    static void generateSplitCFGCode(Function* F,
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

        printCFGSplit(CFGSplitGraph);

        for (auto& BBPair : BBStates) {
            BasicBlock* BB = BBPair.first;
            std::string States = "";
            for (auto& State : BBStates[BB]) {
                States += (std::to_string(State) + " , ");
            }
            outs() << BB->getName() << " -- [ " << States << " ]" << "\n";
        }

        std::unordered_map<BasicBlock*, SplitMergeSpace::BlockState> GenBlockBSMap;
        std::unordered_map<SplitMergeSpace::BlockState, BasicBlock*, SplitMergeSpace::BlockState::BlockStateHashFunction> BSGenBlockMap;
        std::unordered_map<SplitMergeSpace::BlockState, ValueToValueMapTy*, SplitMergeSpace::BlockState::BlockStateHashFunction> BSValueMap;
        std::unordered_map<SplitMergeSpace::BlockState, std::unordered_map<Instruction*, Instruction*>, SplitMergeSpace::BlockState::BlockStateHashFunction> BSPhiValueMap;

        // start from entry node
        SplitMergeSpace::BlockState BS = {0, &(F->getEntryBlock())};
        replaceUsage(BS, F, GenBlockBSMap, BSGenBlockMap, BSValueMap, BSPhiValueMap, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

        /*
        for (BasicBlock::iterator IN = BS.BB->begin(), INE = BS.BB->end(); IN != INE; ++IN) {
            outs() << (*BSValueMap[BS])[&*IN]->getName() << "\n";
        }
        */

        for (auto& BSValuePair : BSValueMap) {
            delete BSValuePair.second;
        }
        BSValueMap.clear();
        for (auto& BBPair : BBStates) {
            BasicBlock* BB = BBPair.first;
            BB->dropAllReferences();
            BB->removeFromParent();
        }
    }

    bool runOnModule(Module &M) override {
      errs() << "Function CFG Code Generate Pass: " << "\n";

      std::vector<GenTarget> GenTargets;
      GenTargets.reserve(20);

      for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {

        errs().write_escaped(F->getName()) << '\n';

        bool Added = false;
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
                GenTarget GT{&*F, PhiNode};
                GenTargets.push_back(GT);
                Added = true;
                break;
            }
          }

          if (Added) {
              break;
          }
        }
      }

      for (auto& GT : GenTargets) {
          Function* F = GT.Func;
          PHINode* PhiNode = GT.Phi;

          std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>> ReachableMap = std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>();
          std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>> PhiInfluenceNodes = std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>();
          std::unordered_set<BasicBlock*> RegionOfInfluence = std::unordered_set<BasicBlock*>();

          getReachableNodes(PhiNode, ReachableMap);
          getInfluencedNodes(PhiNode, PhiInfluenceNodes);
          getRegionOfInfluence(PhiNode, ReachableMap, PhiInfluenceNodes, RegionOfInfluence);

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
          generateSymbolSplitCFG(F, PhiNode, PhiInfluenceNodes, RegionOfInfluence, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);

          generateSplitCFGCode(F, CFGOriGraph, CFGSplitGraph, ReverseCFGSplitGraph);
      }
      return true;
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