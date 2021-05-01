echo "Generate Meta"
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample1-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample2-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/sample3-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/lulesh-meta.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncPhiInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/meta/spec-bzip-meta.out 2>&1

echo "Generate Symbolic CFG"
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample1-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample2-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/sample3-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/sample3-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/lulesh-cfg-split-symbol.out 2>&1
bin/opt -load lib/LLVMSplitMerge.so -FuncCFGSplitInfo -disable-output ../llvm/lib/Transforms/SplitMerge/test/ir/spec-bzip-ssa-sccp.ll > ../llvm/lib/Transforms/SplitMerge/cfg/spec-bzip-cfg-split-symbol.out 2>&1

echo "Generate Real CFG"
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

bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-ori ../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa-sccp.ll
bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-gen ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen.ll
bin/clang++ -DUSE_MPI=0 -O3 -o ../llvm/lib/Transforms/SplitMerge/test/binary/lulesh-final ../llvm/lib/Transforms/SplitMerge/test/generate/lulesh-ssa-sccp-gen-sccp.ll
