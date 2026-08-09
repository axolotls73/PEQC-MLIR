#!/bin/bash
# PACT'26 artifact — run the PolyBench experiments from the paper (Sec. 5.3/5.4).
#
# Usage:
#   ./run-all.sh                  # run all experiments
#   ./run-all.sh mini-initial-exp # run a single experiment
#                                 # (cgeist | mini-initial-exp | linalg | parallel)
#
# Results land in <experiment>/results.csv and <experiment>/conversion_stats.csv.
# Environment: sources env-host.sh by default; override with PEQC_ENV=<file>.

set -u
cd "$(dirname "$0")"
source "${PEQC_ENV:-./env-host.sh}"

run_cgeist() {
    # Sec 5.4 "Correctness of raising C to Affine MLIR": run cgeist on every
    # PolyBench/C kernel (mini + small, fixed and parametric loop bounds) and
    # check the raised MLIR against the original C. ~45-90 min.
    ./script/convert_polybenches.py ./config/cgeist.json --timeout 600 &&
    ./script/run.py ./config/cgeist.json --timeout 600 --compare-against-polybench
    ./script/collect_csv.py cgeist/
    ./script/make_results_table.py config/cgeist.json --out cgeist/results.csv
}

run_mini_initial_exp() {
    # Sec 5.4 Table 3: mlir-opt affine passes (normalize, licm, unroll, fusion,
    # unroll-jam, tile, parallelize) under LLVM 19/21/23, checked against the
    # interpreted original. Uses cached cgeist outputs. ~1-2 h.
    ./script/convert_polybenches.py ./config/mini-initial-exp.json --use-cached-cgeist &&
    ./script/run.py ./config/mini-initial-exp.json --timeout 600 \
        --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
    ./script/collect_csv.py mini-initial-exp/
    ./script/make_results_table.py config/mini-initial-exp.json --out mini-initial-exp/results.csv
}

run_linalg() {
    # Sec 5.4 "Correctness of Linalg lowering": --convert-linalg-to-{affine-loops,
    # loops,parallel-loops} and generalized ops on matmul/conv2d, pairwise
    # pipeline comparison, under LLVM 19/21/23. ~10 min.
    ./script/convert_polybenches.py ./config/linalg.json &&
    ./script/run.py ./config/linalg.json --timeout 600 --compare-pipelines
    ./script/collect_csv.py linalg/
    ./script/make_results_table.py config/linalg.json --out linalg/results.csv
}

run_parallel() {
    # Sec 5.4 parallelization experiments: affine parallelization pipelines,
    # checked against the original PolyBench. Uses cached cgeist outputs. ~30 min.
    ./script/convert_polybenches.py ./config/parallel.json --use-cached-cgeist &&
    ./script/run.py ./config/parallel.json --timeout 180 --compare-against-polybench
    ./script/collect_csv.py parallel/
    ./script/make_results_table.py config/parallel.json --out parallel/results.csv
}

EXPERIMENTS=${@:-cgeist mini-initial-exp linalg parallel}
for exp in $EXPERIMENTS; do
    echo "############ running experiment: $exp ############"
    case $exp in
        cgeist)           run_cgeist ;;
        mini-initial-exp) run_mini_initial_exp ;;
        linalg)           run_linalg ;;
        parallel)         run_parallel ;;
        *) echo "unknown experiment: $exp (valid: cgeist mini-initial-exp linalg parallel)"; exit 1 ;;
    esac
done
