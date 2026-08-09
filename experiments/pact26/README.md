# PACT'26 Artifact: Practical Correctness and Equivalence Checking for MLIR

This artifact reproduces the PolyBench experimental results of the paper
(Sec. 5.3 and 5.4): correctness checking of `cgeist` C-to-MLIR raising,
`mlir-opt` affine-loop transformations under LLVM 19/21/23 (Table 3),
Linalg lowering flags, and affine parallelization pipelines, all verified
with PEQC-MLIR.

## Artifact check-list

* **Program:** PEQC-MLIR (`verif-opt`, `verif-translate`, `script/peqc-mlir.py`), PAST (`pastchecker`)
* **Benchmarks:** PolyBench/C 4.2.1 (included in `polybench-input/`), Linalg matmul/conv2d (`linalg-input/`)
* **External tools tested:** `mlir-opt` from LLVM 19 / 21 / 23, `cgeist` (Polygeist)
* **Hardware:** any x86-64 machine; single core; ≤ 32 GB RAM
* **Disk:** ~200 MB for all generated results
* **Getting-started time:** ~10 minutes
* **Full-run time:** several hours (per-experiment estimates below); each experiment can be run alone
* **Output:** per-experiment `results.csv` / `conversion_stats.csv`, compared against paper tables

## Requirements

The following must be available (see `env-host.sh`, which sets all of this up
for the authors' dev container — adapt the paths there for another machine):

* `verif-opt`, `verif-translate` — built from this repository (see top-level `README.md` for build instructions)
* `pastchecker` — PAST equivalence checker
* `cgeist` — Polygeist (only needed for the `cgeist` experiment; the others use
  cached cgeist outputs shipped in `polybench-cgeist/`)
* three `mlir-opt` builds (LLVM 19, 21, 23) — their absolute paths are set in the
  `mlir_opt_versions` field of `config/*.json`; edit those to match your installs.
  With only one LLVM version available, delete the other entries from
  `mlir_opt_versions` (the paper notes LLVM 23 results are identical to LLVM 21).
* Python 3.10+

## Getting Started Guide (~10 min)

```sh
cd experiments/pact26
source env-host.sh        # puts all tools on PATH (edit paths for your machine)
```

### 1. Check one pair of files by hand (~1 min)

Verify a sequential linalg matmul is equivalent to its tiled version:

```sh
../../script/peqc-mlir.py --pastchecker-path=$(command -v pastchecker) \
    example/matmul-linalg.mlir example/matmul-tile-and-parallelize.mlir A,B,C
# expected last line:  YES, ... are equivalent
```

Now the same check against a buggy tiled version
(`example/matmul-tile-and-parallelize-buggy.mlir` contains a transposed
array access — it computes A^T x B):

```sh
../../script/peqc-mlir.py --pastchecker-path=$(command -v pastchecker) \
    example/matmul-linalg.mlir example/matmul-tile-and-parallelize-buggy.mlir A,B,C
# expected: NO, ... could not be proved equivalent
# (preceded by a "computation trees differ" mismatch report from PAST)
```

Or run both at once: `./run-example.sh` (prints `SMOKE TEST PASSED`).

### 2. Run one benchmark through one experiment (~10 min)

```sh
./script/convert_polybenches.py ./config/mini-initial-exp.json --use-cached-cgeist --only gemm
./script/run.py ./config/mini-initial-exp.json --timeout 600 --only gemm \
    --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
```

Expected: `PASSED: 27`, `FAILED: 6` — the 6 failures are `affine-parallelize`
and `max-fuse-parallelize` under each of the three LLVM versions, matching the
paper's finding that these passes mis-parallelize gemm's reduction loop.

## Step-by-Step Instructions: full experiments

Each experiment is one function in `run-all.sh`; run all of them with
`./run-all.sh` or one at a time with `./run-all.sh <name>`. Each produces
`<name>/conversion_stats.csv` (which pipelines converted successfully) and
`<name>/results.csv` (per-benchmark verification verdicts) in this directory.

`results.csv` columns: `bench, optionset, mliropt_args, mlir_opt_version,
flag_did_nothing, correct, error`. `correct=yes` means PEQC-MLIR proved
equivalence; `flag_did_nothing=yes` means the pass left the program unchanged;
`error` distinguishes timeouts from mismatches.

| Command | Paper claim | Est. time |
|---|---|---|
| `./run-all.sh mini-initial-exp` | Table 3: `mlir-opt` affine passes (normalize, licm, unroll, fusion, unroll-jam, tile, parallelize) × LLVM 19/21/23; always-legal passes verify correct, fusion/tile/parallelize produce incorrect code on specific benchmarks, with fixes/regressions between LLVM versions | ~1–2 h |
| `./run-all.sh cgeist` | Sec 5.4 "Correctness of raising C to Affine MLIR": cgeist validated on all benchmarks (fixed + parametric bounds, mini + small datasets) | ~1 h |
| `./run-all.sh linalg` | Sec 5.4 "Correctness of Linalg lowering": `--convert-linalg-to-{affine-loops,loops,parallel-loops}` and generalized ops all verified equivalent, × 3 LLVM versions | ~10 min |
| `./run-all.sh parallel` | Sec 5.4 parallelization: affine-parallelize pipelines checked against original PolyBench | ~30 min |

To reproduce Table 3's aggregated Modified/Fail/Correct/Fix/Reg counts,
aggregate `mini-initial-exp/results.csv` per optionset and LLVM version:
`flag_did_nothing=no` ⇒ Modified; `correct=no` ⇒ Fail; a bench failing under
llvm19 and passing under llvm21 ⇒ Fix, the reverse ⇒ Reg.

Reference results produced by the authors on the paper's setup are in
`experiments/polygeist-polybench/pact26-*/results.csv` for direct comparison
(`pact26-*-asof0411` are the runs used for the submission).

### Notes / safe-to-ignore warnings

* `skipping .../polybench-cgeist/jacobi-2d.mlir` (and `symm.mlir`): expected —
  these cached cgeist outputs are excluded from cached runs.
* `adi` and `durbin` are excluded by config (`ignore_benches`), matching the
  paper (Sec 5.3: PolyBenchEq/MLIR drops ADI and durbin).
* Occasional `error=timeout` rows for the largest benchmarks are expected with
  the default per-check timeouts and are reported as such in the paper's counts.
* `pastchecker` prints verbose timing lines (`Time elapsed for timer ...`);
  only the final `YES`/`NO` verdict and the mismatch reports matter.

## Claims supported by this artifact

* Table 3 verification outcomes for mlir-opt affine passes, LLVM 19/21/23 (`mini-initial-exp`)
* Cgeist raising validated correct for all benchmarks except ADI (`cgeist`)
* Linalg lowering flags verified equivalent (`linalg`)
* Parallelization outcomes (`parallel`)
* PEQC-MLIR detects injected bugs and reports computation-tree mismatches (smoke test)

## Claims NOT supported by this artifact (and why)

* **AIR/AIE case studies (Sec 5.1, 5.2, Table 1, Fig. 4):** require the
  MLIR-AIR/MLIR-AIE toolchains; provided separately (see `examples/` and the
  docker image), not part of this directory.
* **polymer-opt research-tool results (Sec 5.4):** the polymer experiment
  configuration is not yet included here (pending consolidation).
* **Timing numbers:** wall-clock verification times in the paper were measured
  on an Intel Xeon E3-1240 v6; expect proportional but not identical times.
* **In the bundled docker image only LLVM 23 is available** and `cgeist` is
  absent, so the LLVM 19-vs-21 comparison and cgeist re-raising cannot run
  there as-is (cached cgeist outputs in `polybench-cgeist/` still allow the
  mlir-opt experiments); the paper notes LLVM 23 and 21 results are identical.

## Directory layout

* `env-host.sh` — tool paths (edit for your machine)
* `run-example.sh` — Getting Started smoke test (passing + buggy pair)
* `run-all.sh` — full experiment driver
* `config/*.json` — one config per experiment (pipelines, LLVM versions, tool paths)
* `script/` — experiment scripts (`convert_polybenches.py`, `run.py`,
  `collect_csv.py`, `make_results_table.py`, ...); see
  `experiments/polygeist-polybench/README.md` for the config-format reference
* `example/` — MLIR files for the smoke test
* `polybench-input/` — PolyBench/C 4.2.1 sources
* `generated-polybench-*/` — interpretable C variants (regenerate with
  `./script/generate_polybenches.py -D{MINI,SMALL}_DATASET [-DPOLYBENCH_USE_SCALAR_LB]`)
* `polybench-cgeist/` — cached cgeist outputs (for `--use-cached-cgeist`)
* `linalg-input/` — matmul/conv2d Linalg inputs
* `liveoutvars/` — live-out variable lists per benchmark
