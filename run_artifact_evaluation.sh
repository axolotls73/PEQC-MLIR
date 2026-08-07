#!/bin/bash
#
# Artifact Evaluation Script for:
#   "Practical Correctness and Equivalence Checking for MLIR" (PACT'26)
#
# This script reproduces the key experimental results from the paper:
#   - Table 3: Verification outcomes for mlir-opt passes on PolyBench (Sec 5.4)
#   - Cgeist correctness of raising C to Affine MLIR (Sec 5.4)
#   - Linalg lowering and optimization correctness (Sec 5.4)
#   - AIR/AIE verification examples (Sec 5.1, 5.2)
#
# Prerequisites:
#   - Docker installed and running
#   - The Docker image "dockergen/peqc-mlir-2026-llvm23" built
#
# To build the Docker image (one-time, ~30 min):
#   cd docker/image && ./build.sh
#
# Usage:
#   ./run_artifact_evaluation.sh [--quick]
#
#   --quick: Run only Steps 0-3 for fast smoke-testing (~10-15 min)
#   Default: Run all experiments (~30-60 min)
#
# Output:
#   Results are written to ./artifact-eval-results/ on the host.
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
IMAGE_NAME="dockergen/peqc-mlir-2026-llvm23-with-cgeist"
RESULTS_DIR="$SCRIPT_DIR/artifact-eval-results"
QUICK_MODE=false
TIMEOUT=300

for arg in "$@"; do
    case "$arg" in
        --quick) QUICK_MODE=true; TIMEOUT=300 ;;
        *) echo "Unknown option: $arg"; exit 1 ;;
    esac
done

echo "============================================================"
echo " PEQC-MLIR Artifact Evaluation"
echo " Paper: Practical Correctness and Equivalence Checking for MLIR"
echo "============================================================"
echo ""
echo "Quick mode: $QUICK_MODE"
echo "Results will be written to: $RESULTS_DIR"
echo ""

# Check Docker image exists
if ! docker image inspect "$IMAGE_NAME" >/dev/null 2>&1; then
    echo "ERROR: Docker image '$IMAGE_NAME' not found."
    echo "Build it first:"
    echo "  cd docker/image && ./build.sh"
    exit 1
fi

mkdir -p "$RESULTS_DIR"

# We bind-mount the host repo's experiments/ directory so we have the
# latest configs (main branch) while using the container's pre-built tools.
REPO_EXPERIMENTS="$SCRIPT_DIR/experiments"

########################################################################
echo ""
echo "============================================================"
echo " Step 0: Verify Docker environment"
echo "============================================================"
echo ""

# We use a persistent container for multi-step experiments
CONTAINER_NAME="peqc-mlir-artifact-eval-$$"
docker run -d --name "$CONTAINER_NAME" \
    -v "$RESULTS_DIR:/artifact-results" \
    -v "$SCRIPT_DIR:/host-repo:ro" \
    "$IMAGE_NAME" \
    sleep infinity >/dev/null 2>&1

cleanup() {
    echo "Cleaning up container..."
    docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true
}
trap cleanup EXIT

# Helper: run in the persistent container
run_in_container() {
    local cmd="$1"
    docker exec "$CONTAINER_NAME" bash -lc "$cmd"
}

run_in_container '
    echo "=== Tool locations ==="
    echo "verif-opt:      $(which verif-opt 2>/dev/null || echo NOT FOUND)"
    echo "verif-translate: $(which verif-translate 2>/dev/null || echo NOT FOUND)"
    echo "pastchecker:    $(which pastchecker 2>/dev/null || echo NOT FOUND)"
    echo "mlir-opt:       $(which mlir-opt 2>/dev/null || echo NOT FOUND)"
    echo "air-opt:        $(which air-opt 2>/dev/null || echo NOT FOUND)"
    HAS_CGEIST=$(which cgeist 2>/dev/null || echo "")
    echo "cgeist:         ${HAS_CGEIST:-NOT AVAILABLE (polybench Table 3 requires manual cgeist install)}"
    echo ""
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d 2>/dev/null | head -1)
    echo "PEQC-MLIR dir: $PEQC_MLIR_DIR"
    echo "Docker environment OK."
'
echo "Docker environment verified."
echo ""


########################################################################
echo "============================================================"
echo " Step 1: Simple equivalence check (matmul example)"
echo "============================================================"
echo ""
echo "Checks linalg matmul vs its tiled-and-parallelized version."
echo "Expected result: YES (programs are equivalent)."
echo ""

run_in_container '
    set -e
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR"

    python3 script/peqc-mlir.py \
        examples/matmul/matmul-linalg.mlir \
        examples/matmul/matmul-tile-and-parallelize.mlir \
        C 2>&1 | tee /artifact-results/step1-matmul-check.txt

    echo ""
    echo "Step 1 complete."
'
echo ""


########################################################################
echo "============================================================"
echo " Step 2: Generate PolyBench files for experiments"
echo "============================================================"
echo ""
echo "Generates interpretable C files from PolyBench/C (mini + small datasets)."
echo ""

run_in_container '
    set -e
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR/experiments/polygeist-polybench"

    # Copy latest configs from host repo (main branch)
    cp -r /host-repo/experiments/polygeist-polybench/config/* ./config/ 2>/dev/null || true
    cp -r /host-repo/experiments/polygeist-polybench/script/* ./script/ 2>/dev/null || true

    echo "--- Generating mini dataset (scalar LB) ---"
    python3 ./script/generate_polybenches.py -DMINI_DATASET -DPOLYBENCH_USE_SCALAR_LB 2>&1
    echo "--- Generating small dataset (scalar LB) ---"
    python3 ./script/generate_polybenches.py -DSMALL_DATASET -DPOLYBENCH_USE_SCALAR_LB 2>&1
    echo "--- Generating mini dataset (parametric) ---"
    python3 ./script/generate_polybenches.py -DMINI_DATASET 2>&1
    echo "--- Generating small dataset (parametric) ---"
    python3 ./script/generate_polybenches.py -DSMALL_DATASET 2>&1

    echo ""
    echo "Generated directories:"
    ls -d generated-polybench-*/ 2>/dev/null
    echo ""
    echo "Step 2 complete."
'
echo ""


########################################################################
echo "============================================================"
echo " Step 3: Table 3 — mlir-opt pass verification (Sec 5.4)"
echo "============================================================"
echo ""
echo "Reproduces Table 3: verification of affine passes (normalize,"
echo "licm, unroll, fusion, unroll-jam, tile, parallelize) on 30"
echo "PolyBench kernels. Requires cgeist (PolyGeist) to raise C to MLIR."
echo "If cgeist is not available, this step will be skipped."
echo ""

run_in_container '
    set -e
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR/experiments/polygeist-polybench"

    # Copy latest experiment infrastructure from host
    cp -r /host-repo/experiments/polygeist-polybench/config/* ./config/ 2>/dev/null || true
    cp -r /host-repo/experiments/polygeist-polybench/script/* ./script/ 2>/dev/null || true

    pip3 install pandas 2>/dev/null || true

    # Copy docker-compatible config
    cp /host-repo/docker/data-host-share/docker-mini-initial-exp.json ./config/ 2>/dev/null || true
    CONFIG=./config/docker-mini-initial-exp.json

    echo "=== Phase 1: Convert PolyBench with mlir-opt passes ==="
    echo "  (Using LLVM23 mlir-opt from Docker image)"
    python3 ./script/convert_polybenches.py "$CONFIG" --timeout 60 2>&1 | tail -60
    echo ""

    echo "=== Phase 2: Run equivalence checks ==="
    python3 ./script/run.py "$CONFIG" \
        --timeout '"$TIMEOUT"' \
        --compare-against-polybench 2>&1 | tee /artifact-results/step3-table3-run.txt
    echo ""

    echo "=== Phase 3: Collect stats ==="
    python3 ./script/collect_csv.py mini-initial-exp/ 2>&1
    echo ""

    echo "=== Phase 4: Generate results table ==="
    python3 ./script/make_results_table.py "$CONFIG" \
        --out mini-initial-exp/results.csv 2>&1

    echo ""
    echo "=== RESULTS ==="
    if [ -f mini-initial-exp/results.csv ]; then
        cp mini-initial-exp/results.csv /artifact-results/table3-results.csv
        echo "Per-benchmark results -> table3-results.csv"
    fi
    if [ -f mini-initial-exp/results_version_summary.csv ]; then
        cp mini-initial-exp/results_version_summary.csv /artifact-results/table3-version-summary.csv
        echo ""
        echo "=== TABLE 3 VERSION SUMMARY (LLVM23 = paper LLVM21/23 column) ==="
        cat mini-initial-exp/results_version_summary.csv
        echo ""
    fi

    # Copy all CSV stats for detailed analysis
    find mini-initial-exp -name "*.csv" -exec cp {} /artifact-results/ \; 2>/dev/null || true

    echo ""
    echo "NOTE: Docker image has LLVM23 only. Paper Table 3 shows LLVM 19/21/23."
    echo "LLVM23 results are identical to LLVM21 (confirmed in paper)."
    echo "Expected: fusion=2 fail, tile=2 fail, unroll-jam=1 fail, rest=0 fail."
    echo ""
    echo "Step 3 complete."
' 2>&1 | tee "$RESULTS_DIR/step3-full-log.txt"
echo ""


if [ "$QUICK_MODE" = true ]; then
    echo "============================================================"
    echo " Quick mode: skipping Steps 4-6"
    echo "============================================================"
    echo ""
else

########################################################################
echo "============================================================"
echo " Step 4: Cgeist raising correctness (Sec 5.4)"
echo "============================================================"
echo ""
echo "Tests correctness of raising C to MLIR Affine using cgeist"
echo "with various options (no-args, raise-scf-to-affine, scal-rep, unroll)."
echo ""

run_in_container '
    set -e
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR/experiments/polygeist-polybench"
    cp -r /host-repo/experiments/polygeist-polybench/config/* ./config/ 2>/dev/null || true
    cp -r /host-repo/experiments/polygeist-polybench/script/* ./script/ 2>/dev/null || true
    pip3 install pandas 2>/dev/null || true

    cp /host-repo/docker/data-host-share/docker-cgeist.json ./config/ 2>/dev/null || true
    CONFIG=./config/docker-cgeist.json

    echo "=== Converting with cgeist options ==="
    python3 ./script/convert_polybenches.py "$CONFIG" --timeout 60 2>&1 | tail -30

    echo "=== Running equivalence checks ==="
    python3 ./script/run.py "$CONFIG" \
        --timeout '"$TIMEOUT"' \
        --compare-against-polybench 2>&1 | tee /artifact-results/step4-cgeist-run.txt

    echo "=== Collecting stats & generating results ==="
    python3 ./script/collect_csv.py cgeist/ 2>&1
    python3 ./script/make_results_table.py "$CONFIG" \
        --out cgeist/results.csv 2>&1 || echo "(make_results_table returned non-zero)"
    cp cgeist/results*.csv /artifact-results/ 2>/dev/null || true
    echo "Step 4 complete."
' 2>&1 | tee "$RESULTS_DIR/step4-full-log.txt"
echo ""


########################################################################
echo "============================================================"
echo " Step 5: Linalg lowering correctness (Sec 5.4)"
echo "============================================================"
echo ""
echo "Compares linalg-to-affine-loops vs to-loops vs to-parallel-loops."
echo ""

run_in_container '
    set -e
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR/experiments/polygeist-polybench"
    cp -r /host-repo/experiments/polygeist-polybench/config/* ./config/ 2>/dev/null || true
    cp -r /host-repo/experiments/polygeist-polybench/script/* ./script/ 2>/dev/null || true
    pip3 install pandas 2>/dev/null || true

    cp /host-repo/docker/data-host-share/docker-linalg.json ./config/ 2>/dev/null || true
    CONFIG=./config/docker-linalg.json

    if [ -d "linalg-input" ]; then
        echo "=== Converting linalg variants ==="
        python3 ./script/convert_polybenches.py "$CONFIG" --timeout 60 2>&1 | tail -20

        echo "=== Running pipeline comparisons ==="
        python3 ./script/run.py "$CONFIG" \
            --timeout '"$TIMEOUT"' \
            --compare-pipelines 2>&1 | tee /artifact-results/step5-linalg-run.txt

        echo "=== Collecting stats ==="
        python3 ./script/collect_csv.py linalg/ 2>&1
        python3 ./script/make_results_table.py "$CONFIG" \
            --out linalg/results.csv 2>&1 || true
        cp linalg/results*.csv /artifact-results/ 2>/dev/null || true
    else
        echo "linalg-input/ not found — skipping (requires pre-generated linalg MLIR inputs)"
    fi
    echo "Step 5 complete."
' 2>&1 | tee "$RESULTS_DIR/step5-full-log.txt"
echo ""


########################################################################
echo "============================================================"
echo " Step 6: AIR/AIE verification (Sec 5.1, 5.2)"
echo "============================================================"
echo ""
echo "Verifies MLIR-AIR and MLIR-AIE matmul designs."
echo ""

run_in_container '
    PEQC_MLIR_DIR=$(find /opt/mlir/peqc-mlir -maxdepth 2 -name "peqc-mlir-*" -type d | head -1)
    cd "$PEQC_MLIR_DIR"
    ADD_EPILOGUE="$PEQC_MLIR_DIR/script/add_epilogue.py"

    echo "=== AIR demo verification (Table 1, Sec 5.1) ==="
    echo "Running the AIR pipeline: linalg -> air.input -> air.tiled -> air.placed"
    echo ""
    INPUT_DIR="$PEQC_MLIR_DIR/examples/air-to-aie-demo/demo/input-small"
    GEN_DIR="$PEQC_MLIR_DIR/examples/air-to-aie-demo/demo/generated"
    mkdir -p "$GEN_DIR"

    if [ -d "$INPUT_DIR" ]; then
        # --- air_input: sequential matmul lowered from linalg ---
        echo "--- 1. air_input (sequential linalg -> scf) ---"
        mlir-opt --convert-linalg-to-affine-loops --lower-affine "$INPUT_DIR/air_input.mlir" \
            > "$GEN_DIR/air_input-lowered.mlir" 2>/dev/null
        verif-opt --verif-create-main=argument-names="A,B,C" "$GEN_DIR/air_input-lowered.mlir" \
            > "$GEN_DIR/air_input-converted.mlir" 2>/dev/null
        verif-translate --translate-to-past "$GEN_DIR/air_input-converted.mlir" \
            > "$GEN_DIR/air_input-result.c" 2>/dev/null
        python3 "$ADD_EPILOGUE" "$GEN_DIR/air_input-result.c" "$GEN_DIR/air_input-translated.c" > /dev/null
        echo "  Converted air_input -> $(wc -l < $GEN_DIR/air_input-translated.c) lines"

        # --- air_tiled: tiled version ---
        echo "--- 2. air_tiled (tiled with scf.parallel) ---"
        mlir-opt --convert-linalg-to-affine-loops --lower-affine "$INPUT_DIR/air_tiled.mlir" \
            > "$GEN_DIR/air_tiled-lowered.mlir" 2>/dev/null
        verif-opt --verif-scf-parallel-to-async --verif-create-main=argument-names="A,B,C" \
            "$GEN_DIR/air_tiled-lowered.mlir" > "$GEN_DIR/air_tiled-converted.mlir" 2>/dev/null
        verif-translate --translate-to-past "$GEN_DIR/air_tiled-converted.mlir" \
            > "$GEN_DIR/air_tiled-result.c" 2>/dev/null
        python3 "$ADD_EPILOGUE" "$GEN_DIR/air_tiled-result.c" "$GEN_DIR/air_tiled-translated.c" > /dev/null
        echo "  Converted air_tiled -> $(wc -l < $GEN_DIR/air_tiled-translated.c) lines"

        # --- Check air_input vs air_tiled equivalence ---
        echo "--- 3. Checking air_input == air_tiled ---"
        pastchecker --enable-preprocessor --enable-subtrees --verbose --happens-before \
            "$GEN_DIR/air_input-translated.c" "$GEN_DIR/air_tiled-translated.c" "A,B,C" 2>&1 \
            | tee /artifact-results/step6-air-input-vs-tiled.txt || true
        echo ""

        # --- air_sync: uses AIR ops (herd, DMA) ---
        if [ -f "$INPUT_DIR/air_sync.mlir" ]; then
            echo "--- 4. air_sync (AIR herd + DMA) ---"
            air-opt --convert-linalg-to-affine-loops --lower-affine "$INPUT_DIR/air_sync.mlir" \
                > "$GEN_DIR/air_sync-lowered.mlir" 2>/dev/null || echo "  (air-opt not available)"
            if [ -f "$GEN_DIR/air_sync-lowered.mlir" ]; then
                verif-opt --verif-air-to-scf-par --verif-scf-parallel-to-async \
                    --verif-air-dma-to-memref --verif-create-main=argument-names="A,B,C" \
                    "$GEN_DIR/air_sync-lowered.mlir" > "$GEN_DIR/air_sync-converted.mlir" 2>/dev/null
                verif-translate --translate-to-past "$GEN_DIR/air_sync-converted.mlir" \
                    > "$GEN_DIR/air_sync-result.c" 2>/dev/null
                python3 "$ADD_EPILOGUE" "$GEN_DIR/air_sync-result.c" "$GEN_DIR/air_sync-translated.c" > /dev/null
                echo "  Converted air_sync -> $(wc -l < $GEN_DIR/air_sync-translated.c) lines"

                echo "--- 5. Checking air_input == air_sync ---"
                pastchecker --enable-preprocessor --enable-subtrees --verbose --happens-before \
                    "$GEN_DIR/air_input-translated.c" "$GEN_DIR/air_sync-translated.c" "A,B,C" 2>&1 \
                    | tee /artifact-results/step6-air-input-vs-sync.txt || true
            fi
        fi

        # --- placed: uses AIR channels ---
        if [ -f "$INPUT_DIR/placed.air.mlir" ]; then
            echo "--- 6. placed (AIR channels) ---"
            air-opt --convert-linalg-to-affine-loops --lower-affine "$INPUT_DIR/placed.air.mlir" \
                > "$GEN_DIR/placed-lowered.mlir" 2>/dev/null || echo "  (air-opt not available)"
            if [ -f "$GEN_DIR/placed-lowered.mlir" ]; then
                verif-opt --verif-air-convert-channel --verif-create-main=argument-names="A,B,C" \
                    "$GEN_DIR/placed-lowered.mlir" > "$GEN_DIR/placed-channels-converted.mlir" 2>/dev/null
                verif-opt --lower-affine --verif-air-to-scf-par --verif-scf-parallel-to-async \
                    --verif-air-execute-to-async --verif-air-dma-to-memref \
                    --verif-scf-parallel-to-async --verif-move-to-main \
                    "$GEN_DIR/placed-channels-converted.mlir" > "$GEN_DIR/placed-converted.mlir" 2>/dev/null
                sed -i "s/!air.async.token/!async.token/g" "$GEN_DIR/placed-converted.mlir"
                verif-translate --translate-to-past "$GEN_DIR/placed-converted.mlir" \
                    > "$GEN_DIR/placed-result.c" 2>/dev/null
                python3 "$ADD_EPILOGUE" "$GEN_DIR/placed-result.c" "$GEN_DIR/placed-translated.c" > /dev/null
                echo "  Converted placed -> $(wc -l < $GEN_DIR/placed-translated.c) lines"

                echo "--- 7. Checking air_input == placed ---"
                pastchecker --enable-preprocessor --enable-subtrees --verbose --happens-before \
                    "$GEN_DIR/air_input-translated.c" "$GEN_DIR/placed-translated.c" "A,B,C" 2>&1 \
                    | tee /artifact-results/step6-air-input-vs-placed.txt || true
            fi
        fi

        # --- AIE: NPU design ---
        if [ -f "$INPUT_DIR/modified-npu.air.mlir" ]; then
            echo ""
            echo "--- 8. AIE NPU design (Sec 5.2) ---"
            verif-opt --verif-convert-aie --lower-affine "$INPUT_DIR/modified-npu.air.mlir" \
                > "$GEN_DIR/npu-converted.mlir" 2>/dev/null
            verif-translate --translate-to-past "$GEN_DIR/npu-converted.mlir" \
                > "$GEN_DIR/npu-result.c" 2>/dev/null
            python3 "$ADD_EPILOGUE" "$GEN_DIR/npu-result.c" "$GEN_DIR/npu-translated.c" > /dev/null
            echo "  Converted AIE NPU -> $(wc -l < $GEN_DIR/npu-translated.c) lines"

            echo "--- 9. Checking air_input == AIE NPU ---"
            pastchecker --enable-preprocessor --enable-subtrees --verbose --happens-before \
                "$GEN_DIR/air_input-translated.c" "$GEN_DIR/npu-translated.c" "A,B,C" 2>&1 \
                | tee /artifact-results/step6-air-vs-aie.txt || true
        fi
    else
        echo "AIR demo input directory not found, skipping."
    fi

    echo ""
    echo "Step 6 complete."
' 2>&1 | tee "$RESULTS_DIR/step6-full-log.txt"
echo ""

fi  # end of non-quick mode


########################################################################
echo "============================================================"
echo " Summary of Results"
echo "============================================================"
echo ""
echo "All results are in: $RESULTS_DIR/"
echo ""
ls -la "$RESULTS_DIR/" 2>/dev/null || true
echo ""

if [ -f "$RESULTS_DIR/table3-version-summary.csv" ]; then
    echo ""
    echo "==============================="
    echo " TABLE 3 VERSION SUMMARY"
    echo "==============================="
    echo ""
    echo "This corresponds to Table 3 in the paper (LLVM23 column)."
    echo ""
    cat "$RESULTS_DIR/table3-version-summary.csv"
    echo ""
fi

echo ""
echo "============================================================"
echo " Expected Paper Results"
echo "============================================================"
echo ""
echo "TABLE 3 (Sec 5.4) - Verification of mlir-opt passes:"
echo "  Pass          | LLVM19 Fail | LLVM21/23 Fail | Fix | Reg"
echo "  ------------- | ----------- | -------------- | --- | ---"
echo "  (none)        |      0      |       0        |  0  |  0"
echo "  normalize     |      0      |       0        |  0  |  0"
echo "  licm          |      0      |       0        |  0  |  0"
echo "  unroll        |      0      |       0        |  0  |  0"
echo "  fusion        |      4      |       2        |  3  |  1"
echo "  unroll-jam    |      1      |       1        |  0  |  0"
echo "  tile          |      2      |       2        |  0  |  0"
echo "  parallelize   |      0      |       0        |  0  |  0"
echo ""
echo "TABLE 1 (Sec 5.1) - AIR verification flow (32x32 matmul):"
echo "  Reproduces pairwise equivalence of: linalg -> air.input -> air.tiled -> air.placed"
echo "  Step 1 (matmul equivalence): YES ✓"
echo "  air_input == air_tiled: YES ✓"
echo "  air_input == air_sync: YES ✓"
echo ""
echo "NOTES on reproducibility:"
echo "  - Only LLVM23 included: full Table 3 comparison needs LLVM 19 and 21"
echo "  - cgeist is from Polygeist (LLVM 18 bundled); module attributes are"
echo "    stripped for LLVM 23 compatibility (done automatically by scripts)"
echo "  - fusion uses basic --affine-loop-fusion (not maximal) to match paper"
echo "  - parallelize results may differ from paper due to cgeist version"
echo "    differences in scalar privatization handling"
echo "  - Some AIE examples use npu1_4col device (not supported in bundled MLIR-AIE)"
echo ""
echo "============================================================"
echo " Artifact Evaluation Complete"
echo "============================================================"
