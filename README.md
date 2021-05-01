## CS6241 Compiler Design
*Shangru Yi*

This is the term project repo for **CS6241 Spring 2021** in ***Georgia Institution of Technology***.
In this project, we implement a LLVM pass for the paper "Comprehensive path-sensitive 
data-flow analysis". Within this paper, the idea of destructive merge, which prevents 
further constant propagation or other dataflow analysis are explored. The key idea is 
that there are some nodes (phi node in SSA form) will merge the results propagated 
from predecessors. Due to these merges, some certain values or useful dataflow analysis 
will be invalided. By splitting those merge back to separated path along with duplicated 
blocks, it is possible to recover those lost values and enable dataflow analysis performing 
separately along the split paths. There are several steps in the algorithm for the merge 
splits and block duplication for better dataflow propagation.

We generate some samples for illustrating the idea of block duplication. The generated code 
CFG are shown in the first figure. It is clear that there are several destructive merges shown 
in the CFG. For example, `%x.0 = phi i32 [ 15, %if.then ], [ 5, %if.else ]` in the `if.end` 
block is a destructive merge. Before this merge, there are two constant value for `%x.0`, 
i.e. 15 and 5. However, after the PHI merge, `%x.0` is no longer a constant and thus prevents 
some further optimization. We then perform the split and generate a symbolic representation 
of blocks shown in second graph. The suffix represents the state of the constructed automata. 
It is clear that the CFG is now a clear two branch with each branch representing an unified 
state, i.e. a constant. Then, some further optimizations can be performed. Given this, it is 
clear that the split will recover some constants from the original destructive merges. Although 
the code size is increased, we can still expect some optimizations available. The actual 
generated code with its CFG are shown in the third figure.

---

<p float="middle">
    <img src="/graph/sample1-cfg.png" width="360" height="600"/>
    <img src="/graph/sample1.if.end.png" width="450" height="600"/>
    <img src="/graph/sample1-gen-sccp-cfg.png" width="600" height="600"/>
</p>

### Directory Structure
- cfg: generated symbolic cfg with block duplications
- graph: call-graphs, cfg, and symbolic cfg after splits
- meta: meta information about phi with fitness
- split: statistics for the actual generated code
- test: 
    1. binary: generated binary for benchmarks
    2. generate: generated original ir and ir after another sccp (sparse conditional constant propagation)
    3. ir: original ir with transform passes applied (sccp, mem2reg, ...)
    4. src: src for test samples
    
### Project Run
We use LLVM 11.0.0 on Ubuntu 18.04 with `release` mode and assert enable.

`cmake -DLLVM_FORCE_ENABLE_STATS=1 -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_TARGETS_TO_BUILD=host ../llvm`

1. Update the data directory in `script.sh`
2. Run `script.sh` under the build directory.
3. There are more commands for running in `reference.md`