## CS6241 Compiler Design

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
i.e. 15 and 5. However, after the PHI merge, $\%x.0$ is no longer a constant and thus prevents 
some further optimization. We then perform the split and generate a symbolic representation 
of blocks shown in second graph. The suffix represents the state of the constructed automata. 
It is clear that the CFG is now a clear two branch with each branch representing an unified 
state, i.e. a constant. Then, some further optimizations can be performed. Given this, it is 
clear that the split will recover some constants from the original destructive merges. Although 
the code size is increased, we can still expect some optimizations available.

<img src="/graph/sample1.png" width="800"/>
<img src="/graph/sample1.if.end.png.png" width="800"/>

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
1. Update the data directory in `script.sh`
2. Run `script.sh` under the build directory.