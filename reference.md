1. LLVM Phi Node
https://stackoverflow.com/questions/11485531/what-exactly-phi-instruction-does-and-how-to-use-it-in-llvm


## Command
### Build
cmake -DLLVM_FORCE_ENABLE_STATS=1 -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_TARGETS_TO_BUILD=host ../llvm

Use `-disable-llvm-passes` for generating IR.

### sample1
bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/SplitMerge/test/src/sample1.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/SplitMerge/test/src/sample1.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-no.ll

bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/sample1.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa.ll

bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll

### sample2
bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/SplitMerge/test/src/sample2.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/SplitMerge/test/src/sample2.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no.ll

bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/sample2.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa.ll

bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll

### sample3
bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/SplitMerge/test/src/sample3.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample3.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/SplitMerge/test/src/sample3.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-no.ll

bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/sample3.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa.ll

bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll

### Benchmarks
~/cs6241/llvm-project/build/bin/clang++ -S -emit-llvm -O1 -Xclang -disable-llvm-passes -DUSE_MPI=0 *.cc
~/cs6241/llvm-project/build/bin/llvm-link *.ll -o ~/cs6241/llvm-project/llvm/lib/Transforms/SplitMerge/test/ir/lulesh-single.ll
bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-single.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa.ll
bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll

~/cs6241/llvm-project/build/bin/clang -S -emit-llvm *.c
~/cs6241/llvm-project/build/bin/llvm-link *.ll -o ~/cs6241/llvm-project/llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-single.ll
bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-single.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa.ll
bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll


### Run Pass
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll

### Generate CFG
bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
dot sample1-ssa-sccp.ll.callgraph.dot -Tpng -o sample1.png
dot sample2-ssa-sccp.ll.callgraph.dot -Tpng -o sample2.png

bin/opt -dot-cfg ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
mv .dm_sample_cond_3.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-cfg.dot
dot sample1-cfg.dot -Tpng -o sample1-cfg.png

bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
mv .dm_sample_cond_loop.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-cfg.dot
dot sample2-cfg.dot -Tpng -o sample2-cfg.png

### Output
1. CFG Symbol
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll

bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/sample1-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/sample2-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/sample3-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/lulesh-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/spec-bzip-cfg-split-symbol.out 2>&1

2. Actual CFG

## Notions
- Undecidable problem

In computability theory and computational complexity theory, an undecidable problem is a decision problem for which it is proved to be impossible to construct an algorithm that always leads to a correct yes-or-no answer.