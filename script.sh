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
