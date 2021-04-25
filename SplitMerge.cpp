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
        Pending.erase(Visiting);

        std::size_t CurSize = 0;
        if (ReachableMap.find(Visiting) != ReachableMap.end()) {
            CurSize = ReachableMap[Visiting].size();
        } else {
            ReachableMap[Visiting] = std::unordered_set<BasicBlock*>();
            for (BasicBlock *Succ : successors(Visiting)) {
                ReachableMap[Visiting].insert(Succ);
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
                errs() << "Neith Unary Op Or Binary Op" << "\n";
                assert(false);
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

static double getFitNess( Instruction* PhiInstruction, 
                          std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>& PhiInfluenceNodes,
                          std::unordered_set<BasicBlock*>& RegionOfInfluence) {
    
    // get the fitness of phi instruction
    BasicBlock* PhiBB = PhiInstruction->getParent();
    return double(PhiInfluenceNodes[PhiBB].size()) / double(RegionOfInfluence.size());
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
    errs() << "\tFitness: " << getFitNess(PhiInstruction, PhiInfluenceNodes, RegionOfInfluence) << "\n";
    outs() << "\tReachable BB: " << ReachBBString << "\n";
    outs() << "\tInfluence BB: " << InfluenceBBString << "\n";
    outs() << "\tROI: " << ROIString << "\n";
}

static void generateSplitCFG() {

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

struct Query {
public:
  enum QueryAnswer {
    UNDEF = 0,
    TRUE = 1,
    FALSE = 2,
    UNAVAIL = 3
  };

  struct QueryHashFunction {
    std::size_t operator()(const Query& Q) const {
      std::string Operand1String;
      if (isa<ConstantInt>(Q.QOperand1)) {
        ConstantInt* ConstOp1 = cast<ConstantInt>(Q.QOperand1);
        Operand1String = std::to_string(ConstOp1->getSExtValue());
      } else {
        std::stringstream Strm;
        Strm << Q.QOperand1;
        Operand1String = Strm.str();
      }
      std::string Operand2String;
      if (isa<ConstantInt>(Q.QOperand2)) {
        ConstantInt* ConstOp2 = cast<ConstantInt>(Q.QOperand2);
        Operand2String = std::to_string(ConstOp2->getSExtValue());
      } else {
        std::stringstream Strm;
        Strm << Q.QOperand2;
        Operand2String = Strm.str();
      }
      std::string HashString = std::to_string(Q.QPredicate) + Operand1String + Operand2String;
      return std::hash<std::string>{}(HashString);
    }
  };

  Value* QOperand1;
  Value* QOperand2;
  CmpInst::Predicate QPredicate;

  Query() {}

  Query(Value* Operand1, Value* Operand2, CmpInst::Predicate CmpPredicate) {
    assert(isa<ConstantInt>(Operand2));
    this->QOperand1 = Operand1;
    this->QOperand2 = Operand2;
    this->QPredicate = CmpPredicate;
    this->HashValue = QueryHashFunction{}(*this);
  }

  Query(const Query& Q) {
    this->QOperand1 = Q.QOperand1;
    this->QOperand2 = Q.QOperand2;
    this->QPredicate = Q.QPredicate;
    this->HashValue = Q.HashValue;
  }

  bool operator==(const Query& Q) const {
    if (this->HashValue != Q.HashValue) {
      return false;
    }
    if (Q.QPredicate != this->QPredicate) {
      return false;
    }
    return (compareValue(this->QOperand1, Q.QOperand1) && compareValue(this->QOperand2, Q.QOperand2));
  }

private:
  std::size_t HashValue;
  static bool compareValue(Value* Value1, Value* Value2) {
    if ((!isa<ConstantInt>(Value1)) && (!isa<Instruction>(Value1))) {
      //outs() << "Value1 Not As Constant Or INST" << "\n";
      assert(false);
    }
    if ((!isa<ConstantInt>(Value2)) && (!isa<Instruction>(Value2))) {
      //outs() << "Value2 Not As Constant Or INST" << "\n";
      assert(false);
    }
    if (isa<ConstantInt>(Value1)) {
      if (!isa<ConstantInt>(Value2)) {
        return false;
      }
      // compare content int
      ConstantInt* Const1 = cast<ConstantInt>(Value1);
      ConstantInt* Const2 = cast<ConstantInt>(Value2);
      return (Const1->getSExtValue()) == (Const2->getSExtValue());
    } else {
      Instruction* Inst1 = cast<Instruction>(Value1);
      Instruction* Inst2 = cast<Instruction>(Value2);
      return Inst1 == Inst2;
    }
  }
};

static std::unordered_map<Query::QueryAnswer, std::string, std::hash<int>> QueryAnswerStringMap {
    {Query::QueryAnswer::UNAVAIL, "Not Avail"},
    {Query::QueryAnswer::FALSE, "False"},
    {Query::QueryAnswer::TRUE, "True"},
    {Query::QueryAnswer::UNDEF, "Undef"},
};

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