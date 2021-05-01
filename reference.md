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
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/generate/spec-bzip-ssa-sccp-gen.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/spec-bzip-ssa-sccp-gen-sccp.ll

bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll

~/cs6241/llvm-project/build/bin/clang -S -emit-llvm *.c
~/cs6241/llvm-project/build/bin/llvm-link *.ll -o ~/cs6241/llvm-project/llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-single.ll
bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-single.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa.ll
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll

bin/clang -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/spec ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll

### Generate CFG
bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
dot sample1-ssa-sccp.ll.callgraph.dot -Tpng -o sample1.png
dot sample2-ssa-sccp.ll.callgraph.dot -Tpng -o sample2.png

bin/opt -dot-cfg ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
mv .dm_sample_cond_3.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-cfg.dot
dot sample1-cfg.dot -Tpng -o sample1-cfg.png
mv sample1-cfg.png ../../graph/

bin/opt -dot-cfg ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen-sccp.ll
mv .dm_sample_cond_3.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-gen-sccp-cfg.dot
dot sample1-gen-sccp-cfg.dot -Tpng -o sample1-gen-sccp-cfg.png
mv sample1-gen-sccp-cfg.png ../../graph/

bin/opt -dot-callgraph ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
mv .dm_sample_cond_loop.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-cfg.dot
dot sample2-cfg.dot -Tpng -o sample2-cfg.png
mv sample2-cfg.png ../../graph/

bin/opt -dot-cfg ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen-sccp.ll
mv .dm_sample_cond_loop.dot ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-gen-sccp-cfg.dot
dot sample2-gen-sccp-cfg.dot -Tpng -o sample2-gen-sccp-cfg.png
mv sample2-gen-sccp-cfg.png ../../graph/

### Output
1. Meta
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll

bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample1-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample2-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample3-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/lulesh-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/spec-bzip-meta.out 2>&1

2. CFG Symbol
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll

bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample1-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample2-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample3-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/lulesh-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/spec-bzip-cfg-split-symbol.out 2>&1

3. Actual CFG
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen.ll
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen.ll
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen.ll
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen.ll
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/spec-bzip-ssa-sccp-gen.ll

bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen.ll > ../llvm/lib/Transforms/SplitMerge/split/sample1-gen.out 2>&1
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen.ll > ../llvm/lib/Transforms/SplitMerge/split/sample2-gen.out 2>&1
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen.ll > ../llvm/lib/Transforms/SplitMerge/split/sample3-gen.out 2>&1
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen.ll > ../llvm/lib/Transforms/SplitMerge/split/lulesh-gen.out 2>&1
bin/opt -S -load lib/LLVMSplitMerge.so -ModuleSplitMerge ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/spec-bzip-ssa-sccp-gen.ll > ../llvm/lib/Transforms/SplitMerge/split/spec-bzip-gen.out 2>&1

echo "sample1 - after sccp"
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen-sccp.ll

echo "sample2 - after sccp"
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen-sccp.ll

echo "sample3 - after sccp"
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen-sccp.ll

echo "lelush - after sccp"
bin/opt -S -stats -sccp ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen.ll -o ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen-sccp.ll

bin/clang -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/sample1 ../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen-sccp.ll
bin/clang -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/sample2 ../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen-sccp.ll
bin/clang -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/sample3 ../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen-sccp.ll

bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-ori ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-gen ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen.ll
bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-final ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen-sccp.ll

## Notions
- Undecidable problem

In computability theory and computational complexity theory, an undecidable problem is a decision problem for which it is proved to be impossible to construct an algorithm that always leads to a correct yes-or-no answer.