# Environment for running the PACT'26 experiments. Source this before running
# any experiment script:
#     source experiments/pact26/env-host.sh
#
# Required tools (the experiments run entirely from cached MLIR inputs):
#   verif-opt / verif-translate : this repo's build/bin
#   pastchecker                 : PAST install
#   python3
#
# Only needed to REGENERATE the cached inputs (see README):
#   cgeist                      : /opt/Polygeist/Polygeist-llvm18/build/bin
#   mlir-opt (LLVM 19/21/23)    : /opt/mlir-air-{1124,0525,0326} — referenced by
#                                 absolute path in the config JSONs, not via PATH.

PEQC_MLIR_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

export PATH="$PEQC_MLIR_ROOT/build/bin:/opt/peqc-mlir-volume/past-release/install/bin:/opt/Polygeist/Polygeist-llvm18/build/bin:$PATH"
