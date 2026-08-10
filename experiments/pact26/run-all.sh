#!/bin/bash
# PACT'26 artifact — run the PolyBench experiments from the paper (Sec. 5.3/5.4).
#
# Usage:
#   ./run-all.sh                       # run all experiments, all LLVM versions
#   ./run-all.sh mini-initial-exp      # run a single experiment
#                                      # (cgeist | mini-initial-exp | linalg)
#   ./run-all.sh --llvm llvm23         # only check one LLVM version (~3x faster
#                                      # on the version-parameterised experiments)
#
# All experiments run from the cached post-mlir-opt files in cached-lowered/,
# so only verif-opt, verif-translate, pastchecker, and python3 are required
# (see README "Regenerating the cached inputs" to rebuild the caches from
# cgeist/mlir-opt instead).
#
# Results land in <experiment>/results.csv and <experiment>/conversion_stats.csv.
# Environment: sources env-host.sh by default; override with PEQC_ENV=<file>.

set -u
cd "$(dirname "$0")"
source "${PEQC_ENV:-./env-host.sh}"

# --llvm <name> restricts every experiment to a single mlir-opt version by
# filtering mlir_opt_versions into a temporary config set; without it all
# versions defined in config/*.json run.
LLVM_VERSION=""
POSITIONAL=()
while [ $# -gt 0 ]; do
    case "$1" in
        --llvm)   LLVM_VERSION="${2:-}"; shift 2 ;;
        --llvm=*) LLVM_VERSION="${1#*=}"; shift ;;
        -h|--help) awk 'NR>1 { if (/^#/) print; else exit }' "$0"; exit 0 ;;
        -*) echo "unknown option: $1" >&2; exit 1 ;;
        *) POSITIONAL+=("$1"); shift ;;
    esac
done
set -- ${POSITIONAL[@]+"${POSITIONAL[@]}"}

CONFIG=./config
if [ -n "$LLVM_VERSION" ]; then
    CONFIG=$(mktemp -d "${TMPDIR:-/tmp}/peqc-config-$LLVM_VERSION-XXXXXX")
    trap 'rm -rf "$CONFIG"' EXIT
    ./script/filter_config.py --llvm "$LLVM_VERSION" --out-dir "$CONFIG" \
        ./config/*.json || exit 1
fi

run_cgeist() {
    # Sec 5.4 "Correctness of raising C to Affine MLIR": check cgeist-raised
    # MLIR (mini + small, fixed and parametric loop bounds) against the
    # original C. ~1.5-2 h.
    ./script/convert_polybenches.py $CONFIG/cgeist.json --use-cached-mliropt &&
    ./script/run.py $CONFIG/cgeist.json --timeout 600 --compare-against-polybench
    ./script/collect_csv.py cgeist/
    ./script/make_results_table.py $CONFIG/cgeist.json --out cgeist/results.csv
}

run_mini_initial_exp() {
    # Sec 5.4 Table 3: mlir-opt affine passes (normalize, licm, unroll, fusion,
    # unroll-jam, tile, parallelize) under LLVM 19/21/23, checked against the
    # interpreted original. ~2 h per LLVM version (~6 h total); the wall-clock
    # is dominated by timeouts on incorrect parallelized variants.
    ./script/convert_polybenches.py $CONFIG/mini-initial-exp.json --use-cached-mliropt &&
    # --compare-against-polybench (rather than --compare-against <pbdir>/interp,
    # which builds the identical pair list) so the run_stats file is named
    # run_stats_against_polybench_<pbdir>.csv, which is what
    # make_results_table.py looks for; otherwise every row reads "not run".
    ./script/run.py $CONFIG/mini-initial-exp.json --timeout 240 \
        --compare-against-polybench
    ./script/collect_csv.py mini-initial-exp/
    ./script/make_results_table.py $CONFIG/mini-initial-exp.json --out mini-initial-exp/results.csv
}

run_linalg() {
    # Sec 5.4 "Correctness of Linalg lowering": --convert-linalg-to-{affine-loops,
    # loops,parallel-loops} and generalized ops on matmul/conv2d, pairwise
    # pipeline comparison, under LLVM 19/21/23. ~15 min.
    ./script/convert_polybenches.py $CONFIG/linalg.json --use-cached-mliropt &&
    ./script/run.py $CONFIG/linalg.json --timeout 600 --compare-pipelines
    ./script/collect_csv.py linalg/
    ./script/make_results_table.py $CONFIG/linalg.json --out linalg/results.csv
}

EXPERIMENTS=${@:-cgeist mini-initial-exp linalg}
for exp in $EXPERIMENTS; do
    echo "############ running experiment: $exp ############"
    case $exp in
        cgeist)           run_cgeist ;;
        mini-initial-exp) run_mini_initial_exp ;;
        linalg)           run_linalg ;;
        *) echo "unknown experiment: $exp (valid: cgeist mini-initial-exp linalg)"; exit 1 ;;
    esac
done
