#!/bin/bash
# PACT'26 artifact — Getting Started smoke test.
#
# Checks a sequential linalg matmul against (1) a correctly tiled version
# (expected: equivalent) and (2) a buggy tiled version with a transposed
# array access (expected: NOT equivalent).
#
# Usage:  ./run-example.sh        (takes ~1 minute)

set -u
cd "$(dirname "$0")"
source "${PEQC_ENV:-./env-host.sh}"

PEQC="../../script/peqc-mlir.py"
PASTCHECKER_PATH="$(command -v pastchecker)"

# note: peqc-mlir.py always exits 0; the verdict is the YES/NO line it prints
echo "=== [1/2] sequential matmul vs tiled matmul (expected: equivalent) ==="
out1=$("$PEQC" --pastchecker-path="$PASTCHECKER_PATH" \
    example/matmul-linalg.mlir example/matmul-tile-and-parallelize.mlir A,B,C)
echo "$out1" | tail -1
echo "$out1" | grep -q "^.*YES," ; r1=$?

echo
echo "=== [2/2] sequential matmul vs BUGGY tiled matmul (expected: NOT equivalent) ==="
out2=$("$PEQC" --pastchecker-path="$PASTCHECKER_PATH" \
    example/matmul-linalg.mlir example/matmul-tile-and-parallelize-buggy.mlir A,B,C)
echo "$out2" | tail -1
echo "$out2" | grep -q "NO," ; r2=$?

echo
if [ $r1 -eq 0 ] && [ $r2 -eq 0 ]; then
    echo "SMOKE TEST PASSED: equivalent pair verified, buggy pair rejected."
    exit 0
else
    echo "SMOKE TEST FAILED (see output above)."
    exit 1
fi
