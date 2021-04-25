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


static void getReachableNodes(BasicBlock* PhiBB, std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>& ReachableMap) {
    // get reach node for Cur BB in the current CFG
    if (succ_empty(PhiBB)) {
        return;
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
            for (BasicBlock *Pred : predessors(Visiting)) {
                if (ReachableMap.find(Pred) != ReachableMap.end()) {
                    Pending.insert(Pred);
                }
            }
        }
    }
}

// intruction -> BasicBlock -> Instruction set
static void getInfluencedNodes( Instruction* PhiInstruction, 
                                std::unordered_map<Instruction*, std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>>& PhiInfluenceNodes) {
    
    // get the influenced nodes for a destructive merges
    std::unordered_set<Instruction*> Pending;
    std::unordered_set<Instruction*> Visited;

    Pending.insert(PhiInstruction);
    while (!Pending.empty()) {

        Instruction* Visiting;
        for (auto& Inst : Pending) {
            Visiting = Inst;
            break;
        }
        Pending.erase(Visiting);
        Visited.insert(Visiting);

        for (auto *U : Inst->users()) {
            if (!isa<Instruction>(&*U)) {
                continue;
            }
            Instruction* Usage = cast<Instruction>(&*U);
            if (Visited.find(Usage) != Visited.end()) {
                continue;
            }

            bool whetherUpdateInfluence = false;

            if (!isa<PHINode>(Usage)) {
                if (Usage->isUnaryOp()) {
                    whetherUpdateInfluence = true;
                } else if (Usage->isBinaryOp()) {
                    whetherUpdateInfluence = true;
                } else {
                    errs() << "Neith Unary Op Or Binary Op" << "\n";
                    assert(false);
                }
            } else {
                PHINode* PhiNode = cast<PHINode>(Usage);
                
                bool whetherAllVisited = false;
                for (std::size_t i = 0; i < PhiNode->getNumIncomingValues(); i++) {
                    Value* ComeValue = PhiNode->getIncomingValue(i);
                    if (isa<ConstantInt>(ComeValue)) {
                        continue;
                    }
                    
                }
            }

            if (!whetherUpdateInfluence) {
                continue;
            }

            // update PhiInfluenceNodes
        }
    }
}

// instruction -> BasicBlock -> 
static void getRegionOfInfluence( Instruction* PhiInstruction, 
                                  std::unordered_map<BasicBlock*, std::unordered_set<BasicBlock*>>& ReachableMap, 
                                  std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>>& PhiInfluenceNodes, 
                                  std::unordered_map<Instruction*, std::unordered_set<BasicBlock*>>& RegionOfInfluence) {

    // get the region of influence for a destructive merges

}

static double getFitNess( Instruction* PhiInstruction, 
                          std::unordered_map<Instruction*, std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>>& PhiInfluenceNodes, 
                          std::unordered_map<Instruction*, std::unordered_set<BasicBlock*>>& RegionOfInfluence) {
    
    // get the fitness of phi instruction

}

static void PrintStatisticForDM(  Instruction* PhiInstruction, 
                                  std::unordered_map<BasicBlock*, std::unordered_set<Instruction*>>>& PhiInfluenceNodes, 
                                  std::unordered_map<Instruction*, std::unordered_set<BasicBlock*>>& RegionOfInfluence) {
    // print the statistics

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

      outs() .write_escaped(F->getName()) << '\n';

      // initial for print statistics


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
            for (std::size_t i = 0; i < TotalValues; i++) {
                Value* ComeValue = PhiNode->getIncomingValue(i);
                if (!isa<ConstantInt>(ComeValue)) {
                    AllConstant = false;
                    break;
                }
            }

            if (AllConstant) {
                // print


                outs() << PhiNode->getParent()->getName() << " --- " << *PhiNode << "\n";
                outs() << "\t" << "\n";
                outs() << "\n\n";
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