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

      for (Function::iterator BB = F->begin(), BBE = F->end(); BB != BBE; ++BB) {

        for (BasicBlock::iterator IN = BB->begin(), INE = BB->end(); IN != INE; ++IN) {


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