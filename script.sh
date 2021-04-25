bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/SplitMerge/test/src/sample1.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/SplitMerge/test/src/sample1.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample1-no.ll

bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa.ll

bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa-sccp.ll

bin/clang -S -emit-llvm -O1 -Xclang -disable-llvm-passes ../llvm/lib/Transforms/SplitMerge/test/src/sample2.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2.ll

bin/clang -S -emit-llvm ../llvm/lib/Transforms/SplitMerge/test/src/sample2.c -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no.ll

bin/opt -S -mem2reg ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa.ll

bin/opt -S -sccp ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa.ll -o ../llvm/lib/Transforms/SplitMerge/test/ir/sample2-no-ssa-sccp.ll
