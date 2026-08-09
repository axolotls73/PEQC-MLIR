# Environment for running the PACT'26 experiments on the authors' dev container.
# Source this before running any experiment script:
#     source experiments/pact26/env-host.sh
#
# Tool locations in this container:
#   verif-opt / verif-translate : this repo's build/bin
#   cgeist / polymer-opt        : /opt/Polygeist/Polygeist-llvm18/build/bin
#   pastchecker                 : /opt/peqc-mlir-volume/past-release/install/bin
#   mlir-opt (LLVM 19/21/23)    : /opt/mlir-air-{1124,0525,0326} — referenced by
#                                 absolute path in the config JSONs, not via PATH.

PEQC_MLIR_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

export PATH="$PEQC_MLIR_ROOT/build/bin:/opt/Polygeist/Polygeist-llvm18/build/bin:/opt/peqc-mlir-volume/past-release/install/bin:$PATH"
