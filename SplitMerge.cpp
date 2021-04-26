#include "llvm/IR/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
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
    outs() << "\tReachable BB: " << ReachBBString << "\n";
    outs() << "\tInfluence BB: " << InfluenceBBString << "\n";
    outs() << "\tROI: " << ROIString << "\n";
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
      /*
      if (E.ExactValue != this->ExactValue) {
          return false;
      }
      */
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
        std::string BsS = BS.BB->getName().str() + "-";
        BsS += std::to_string(BS.State);
        return BsS;
      }
  };
} // namespace SplitMergeSpace

static void printCFGSplit (std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction>& CFGSplitGraph) {
  for (auto& BSSourcePair: CFGSplitGraph) {
    SplitMergeSpace::BlockState BSSource = BSSourcePair.first;
    for (auto& BSEND: CFGSplitGraph[BSSource]) {
      errs() << SplitMergeSpace::BlockState::bsString(BSSource) << " -> " << SplitMergeSpace::BlockState::bsString(BSEND) << "\n";
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

static void generateNewFunction(Module* M,
                                Function* Func,
                                Instruction* PhiInstruction,
                                std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                                std::unordered_set<BasicBlock*>& RegionOfInfluence) {

}

static void generateSplitCFG( Function* Func,
                              Instruction* PhiInstruction,
                              std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                              std::unordered_set<BasicBlock*>& RegionOfInfluence) {

    assert(isa<PHINode>(PhiInstruction));
    PHINode* PhiInst = cast<PHINode>(PhiInstruction);
    BasicBlock* PhiBB = PhiInst->getParent();

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
    std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> KillEdges;
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
            outs() << "Same Edge in Kill and Revival" << "\n";
            assert(false);
        }
    }

    // generate fake CFG graph - start from entry
    BasicBlock* EntryBlock = &Func->getEntryBlock();

    // dfs check
    std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGOriGraph;
    stateTransition(0, EntryBlock, false, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGOriGraph);
    printCFGSplit(CFGOriGraph);

    //std::unordered_map<SplitMergeSpace::BlockState, std::unordered_set<SplitMergeSpace::BlockState, SplitMergeSpace::BlockState::BlockStateHashFunction>, SplitMergeSpace::BlockState::BlockStateHashFunction> CFGSplitGraph;
    //stateTransition(0, EntryBlock, true, RevivalEdges, EdgeValueMap, ValueEdgesMap, StateMap, StateReverseMap, KillEdges, CFGSplitGraph);
    //printCFGSplit(CFGSplitGraph);
    // print cfg generated

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
    errs() << "Function CFG Generate Pass: " << "\n";

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

            // generate cfg for test
            generateSplitCFG(&*F, PhiNode, PhiInfluenceNodes, RegionOfInfluence);
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

// Infeasible Pass - The first implementation, without getAnalysisUsage.
struct FuncSplitMerge : public FunctionPass {
  static char ID; // Pass identification, replacement for typeid
  FuncSplitMerge() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {

    errs() << "Function Split Merge Pass:" << "\n";

    for (Function::iterator BB = F.begin(), BBE = F.end(); BB != BBE; ++BB) {

    }
    return false;
  }
};
} // namespace

namespace {
// Module Split Merge Pass - The first implementation, without getAnalysisUsage.
struct ModuleSplitMerge : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    ModuleSplitMerge() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {

        errs() << "Module Split Merge Pass:" << "\n";

        for (Module::iterator F = M.begin(), FE = M.end(); F != FE; ++F) {
            errs().write_escaped((&*F)->getName()) << '\n';
        }

        // delete the original generated function

        return false;
    }
};
} // namespace

// register pass
char ModuleSplitMerge::ID = 0;
static RegisterPass<ModuleSplitMerge> W("ModuleSplitMerge", "Module Split Merge Pass");

char FuncSplitMerge::ID = 1;
static RegisterPass<FuncSplitMerge> X("FuncSplitMerge", "Function Split Merge Pass");

char FuncPhiInfo::ID = 2;
static RegisterPass<FuncPhiInfo> Y("FuncPhiInfo", "Function Phi Node Info");

char FuncCFGSplitInfo::ID = 2;
static RegisterPass<FuncCFGSplitInfo> Z("FuncCFGSplitInfo", "Func CFG Split Info");