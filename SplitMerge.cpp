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
        errs() << "BB has no successors." << "\n";
    }

    std::unordered_set<BasicBlock*> Pending;
    ReachableMap[PhiBB] = std::unordered_set<BasicBlock*>();
    
    // initial
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
              if (Usage->isUnaryOp()) {
                WhetherUpdateInfluence = true;
              } else if (Usage->isBinaryOp()) {
                WhetherUpdateInfluence = true;
              } else {
                outs() << "Neith Unary Op Or Binary Op -- [ " << *Usage  << " ]" << "\n";
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
                  assert(isa<Instruction>(ComeValue));

                  Instruction* InstValue = cast<Instruction>(ComeValue);
                  if (InstValue == PhiInstruction) {
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

        std::string HashString = Strm1.str() + Strm2.str();
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
      return true;
    }
  };
} // namespace SplitMergeSpace

static void generateSplitCFG(Instruction* PhiInstruction,
                             std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                             std::unordered_set<BasicBlock*>& RegionOfInfluence) {

    assert(isa<PHINode>(PhiInstruction));
    PHINode* PhiInst = cast<PHINode>(PhiInstruction);

    // revival edges
    std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> RevivalEdges;

    // associate data fact with edge


    // kill edges
    std::unordered_set<SplitMergeSpace::Edge, SplitMergeSpace::Edge::EdgeHashFunction> KillEdges;

    // data flow fact

}

static void generateNewFunction() {

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
            
            bool AllConstant = true;
            for (std::size_t I = 0; I < TotalValues; I++) {
                Value* ComeValue = PhiNode->getIncomingValue(I);
                if (!isa<ConstantInt>(ComeValue)) {
                    AllConstant = false;
                    break;
                }
            }

            if (AllConstant) {
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
static RegisterPass<ModuleSplitMerge> X("ModuleSplitMerge", "Module Split Merge Pass");

char FuncSplitMerge::ID = 1;
static RegisterPass<FuncSplitMerge> Y("FuncSplitMerge", "Function Split Merge Pass");

char FuncPhiInfo::ID = 2;
static RegisterPass<FuncPhiInfo> Z("FuncPhiInfo", "Function Phi Node Info");