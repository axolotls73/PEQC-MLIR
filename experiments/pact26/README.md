# PACT'26 Artifact: Practical Correctness and Equivalence Checking for MLIR

This artifact reproduces the PolyBench experimental results of the paper
(Sec. 5.3 and 5.4): correctness checking of `cgeist` C-to-MLIR raising,
`mlir-opt` affine-loop transformations under LLVM 19/21/23 (Table 3),
and Linalg lowering flags, all verified
with PEQC-MLIR.

All MLIR inputs tested in the paper are included pre-generated (the raw
`cgeist` outputs and the post-`mlir-opt` lowered files in `cached-lowered/`),
so running the experiments requires **only PEQC-MLIR's own tools
(`verif-opt`, `verif-translate`), PAST's `pastchecker`, and Python 3** —
no Polygeist and no LLVM `mlir-opt` installs.

## Artifact check-list

* **Program:** PEQC-MLIR (`verif-opt`, `verif-translate`, `script/peqc-mlir.py`), PAST (`pastchecker`)
* **Benchmarks:** PolyBench/C 4.2.1 (included in `polybench-input/`), Linalg matmul/conv2d (`linalg-input/`)
* **Inputs:** all tested MLIR variants included pre-generated (`cgeist/*/conversion/`, `cached-lowered/`)
* **Hardware:** any x86-64 machine; single core; 32 GB RAM recommended (some checks reach ~10 GB)
* **Disk:** ~300 MB for all generated results
* **Getting-started time:** ~15 minutes
* **Full-run time:** ~1.6 h for all three LLVM versions, ~1.1 h for the
  `llvm19` + `llvm23` pair, or ~0.5 h for a single version with `--llvm`;
  each experiment can also be run alone (per-experiment times below)
* **Output:** per-experiment `results.csv` / `conversion_stats.csv`, compared against paper tables

## 1. Installation

1. **PEQC-MLIR** (`verif-opt`, `verif-translate`): build this repository —
   see the top-level [README.md](../../README.md) (`install-and-build.sh`, or
   `build.sh` against an existing MLIR install). The binaries land in `build/bin`.
2. **PAST** (`pastchecker`): fetch and build `past-0.7.3-peqc-mlir`
   (see [docker/image/peqc-mlir-2026-llvm23.Dockerfile](../../docker/image/peqc-mlir-2026-llvm23.Dockerfile)
   for the exact download URL and configure/make steps).
3. **Python 3.10+**, plus **pandas** (`pip install pandas`) — the experiment
   scripts are otherwise standard-library only, but `make_results_table.py`
   builds `results.csv` with pandas. Install it before starting a long run:
   it is needed at the very last step, after all the checking is done.

Then edit the two paths in [env-host.sh](env-host.sh) for your machine (PEQC-MLIR
`build/bin` is found automatically; point the PAST entry at your install) and:

```sh
cd experiments/pact26
source env-host.sh
```

Alternatively, the bundled docker image (see [docker/README.txt](../../docker/README.txt))
contains prebuilt copies of all three requirements.

To verify the installation (~2 min):

```sh
./run-example.sh     # expected final line: SMOKE TEST PASSED
```

## 2. Running the experiments from the paper

Each experiment is one function in `run-all.sh`; run everything with
`./run-all.sh`, or one experiment at a time with `./run-all.sh <name>`:

| Command | Paper claim | All 3 versions | One version |
|---|---|---|---|
| `./run-all.sh cgeist` | Sec 5.4 "Correctness of raising C to Affine MLIR": cgeist-raised MLIR validated against the original C for all benchmarks (fixed + parametric loop bounds, mini dataset) | ~4 min | ~4 min |
| `./run-all.sh mini-initial-exp` | Sec 5.4 Table 3: `mlir-opt` affine passes (normalize, licm, unroll, fusion, unroll-jam, tile, parallelize) × LLVM 19/21/23 | ~1.5 h | ~0.5 h |
| `./run-all.sh linalg` | Sec 5.4 "Correctness of Linalg lowering": `--convert-linalg-to-{affine-loops,loops,parallel-loops}` and generalized ops all verified equivalent, × 3 LLVM versions | < 1 min | < 1 min |

Times are measured on the authors' machine at the default per-check timeouts.
The `cgeist` experiment has no LLVM-version dimension, so `--llvm` does not
change its cost.

### Choosing which LLVM versions to check

`--llvm` restricts a run to one `mlir_opt_versions` entry:

```sh
./run-all.sh --llvm llvm23                    # all experiments, LLVM 23 only
./run-all.sh --llvm llvm23 mini-initial-exp   # one experiment, LLVM 23 only
```

The name must be one of `llvm19`, `llvm21`, `llvm23`; an unknown name fails
immediately and lists the valid ones. `results.csv` then contains only that
version's rows, comparable directly against the matching rows of the reference
results.

**Running all three versions is wasted work.** For every benchmark and optionset
in `mini-initial-exp`, LLVM 21 and LLVM 23 emit *byte-identical* MLIR (330/330
cached files, and 330/330 translated C files) — which is the mechanical reason
behind the Table 3 caption "LLVM23 results are identical to LLVM21 ones". LLVM 19
genuinely differs (86/330 files). So:

* **`llvm19` + `llvm23`** (or `llvm19` + `llvm21`) reproduces *all* of Table 3,
  including the Fix and Reg columns, at two-thirds the cost. This is the
  recommended configuration.
* **One version alone** gives one column of Table 3 and cannot produce Fix or
  Reg, which are by definition LLVM 19 → 21 deltas. `llvm21` (or the identical
  `llvm23`) reproduces the "21" column; `llvm19` reproduces the "19" column.
* `llvm23` is what the bundled docker image ships, so it is the natural choice
  when evaluating inside the image.

Benchmarks listed in a config's `ignore_benches` (`adi`, `durbin`) are skipped at
check time, not merely omitted from the results table.

**Which optionset is which Table 3 row.** The eight Table 3 rows map to the
optionsets `no-args` (none), `affine-normalize`, `affine-loop-inv-code-motion`
(licm), `affine-unroll`, `affine-loop-fusion`, `affine-unroll-jam`,
`affine-tile`, and `affine-parallelize-maxnest1`. The parallelize row is the
`--affine-parallelize="max-nested=1"` variant — nested parallelism off. The
one remaining optionset, `max-fuse` (`--affine-loop-fusion="maximal"`), is the
parameterised form of fusion and is not tabulated separately.

**Reading the results.** `<experiment>/results.csv` has columns
`bench, optionset, mliropt_args, mlir_opt_version, flag_did_nothing, correct, error`:
`correct=yes` means PEQC-MLIR proved equivalence; `flag_did_nothing=yes` means
the pass left the program unchanged; `error` distinguishes `timeout` from
`tree_difference` (computation mismatch).

Reference results produced by the authors are in
`experiments/polygeist-polybench/pact26-*/results.csv` for direct comparison.
After a `--llvm` run, compare against the matching subset, e.g.
`diff <(tail -n +2 mini-initial-exp/results.csv | sort) \
      <(grep llvm23 ../polygeist-polybench/pact26-mini-initial-exp/results.csv | sort)`.
Note on timeouts: the run uses a 240 s per-check timeout (the reference runs
used 180–600 s); a check that times out is incorrect-or-unproven under either
limit, and only a handful of slow-but-correct rows (noted in the reference
data) need 600 s to complete.

## 3. Checking a single pair of files by hand

`script/peqc-mlir.py` (repo root) checks any two MLIR files for equivalence.
The `example/` directory contains a sequential 32x32 matmul
(`matmul-sequential.mlir`), a correctly loop-tiled version
(`matmul-tile-and-parallelize.mlir`), and a buggy tiled version with a
transposed access that computes A^T x B
(`matmul-tile-and-parallelize-buggy.mlir`).

A passing check — the tiled program is equivalent to the sequential one
(`A,B,C` are the global memrefs to compare as live-out):

```sh
../../script/peqc-mlir.py --pastchecker-path=$(command -v pastchecker) \
    example/matmul-sequential.mlir example/matmul-tile-and-parallelize.mlir A,B,C
# expected last line:  YES, ... are equivalent
```

A failing check — the bug is caught as a computation-tree mismatch:

```sh
../../script/peqc-mlir.py --pastchecker-path=$(command -v pastchecker) \
    example/matmul-sequential.mlir example/matmul-tile-and-parallelize-buggy.mlir A,B,C
# expected: NO, ... could not be proved equivalent
# (preceded by a "computation trees differ" report from PAST)
```

`./run-example.sh` runs both. Inputs using the `linalg` dialect (e.g.
`example/matmul-linalg.mlir`, the un-lowered original of the sequential matmul)
additionally need an `mlir-opt` in PATH for the linalg-to-affine lowering.

To run a single benchmark through a single experiment (~5 min):

```sh
./script/convert_polybenches.py ./config/mini-initial-exp.json --use-cached-mliropt --only gemm
./script/run.py ./config/mini-initial-exp.json --timeout 240 --only gemm \
    --compare-against-polybench
```

Expected: `PASSED: 27`, `FAILED: 0` — 9 optionsets x 3 LLVM versions. (For one
version, `PASSED: 9` / `FAILED: 0`.) (With `--only`, every non-selected benchmark prints a yellow
`skipping` line — that is expected; a full run skips nothing.)

## Notes / safe-to-ignore output

* `adi` and `durbin` appear in some result rows although the paper's suite
  drops them (Sec 5.3); they are reported for completeness and excluded from
  the paper's aggregate counts.
* `pastchecker` prints verbose timing lines (`Time elapsed for timer ...`);
  only the final `YES`/`NO` verdict and the mismatch reports matter.
* `skipping version summary: no mlir_opt_versions in config` (cgeist
  experiment): expected — that experiment does not vary the LLVM version.
* Rows with `error=timeout` are expected for the incorrect parallelized
  variants, as reported in the paper's counts.

## Claims supported by this artifact

* Table 3 verification outcomes for mlir-opt affine passes, LLVM 19/21/23 (`mini-initial-exp`)
* Cgeist raising validated correct for all benchmarks except ADI (`cgeist`)
* Linalg lowering flags verified equivalent (`linalg`)
* PEQC-MLIR detects injected bugs and reports computation-tree mismatches (smoke test)

## Claims NOT supported by this artifact (and why)

* **AIR/AIE case studies (Sec 5.1, 5.2, Table 1, Fig. 4):** require the
  MLIR-AIR/MLIR-AIE toolchains; provided separately (see `examples/` and the
  docker image), not part of this directory.
* **polymer-opt research-tool results (Sec 5.4):** the polymer experiment
  configuration is not yet included here (pending consolidation).

## Regenerating the cached inputs (optional)

The `cached-lowered/` files were produced by running the full toolchains and
snapshotting the last `mlir-opt` stage with `script/cache_lowered.py`. To
regenerate them from scratch you need Polygeist's `cgeist` and three `mlir-opt`
builds (LLVM 19/21/23) with their paths set in `config/*.json`
(`mlir_opt_versions`); then, per experiment:

```sh
./script/convert_polybenches.py ./config/<exp>.json          # full toolchain run
./script/cache_lowered.py <exp>                              # snapshot the caches
```

For `mini-initial-exp`, adding `--use-cached-cgeist` reuses the
raw cgeist outputs committed under `cgeist/*/conversion/`, so only the three
`mlir-opt` builds are needed and not Polygeist. Conversion is cheap — seconds
per experiment; it is the equivalence checking, not the lowering, that takes
hours. To confirm a rebuilt cache reproduces the shipped one, re-run the
conversion with `--use-cached-mliropt` and a PATH containing neither `mlir-opt`
nor `cgeist`: the `translated/*.c` files should be byte-identical.

`generated-polybench-*/` (the interpretable C variants) can likewise be
regenerated with `./script/generate_polybenches.py -DMINI_DATASET
[-DPOLYBENCH_USE_SCALAR_LB]`.

## Directory layout

* `env-host.sh` — tool paths (edit for your machine)
* `run-example.sh` — smoke test (passing + buggy pair)
* `run-all.sh` — full experiment driver
* `config/*.json` — one config per experiment (pipelines, LLVM versions, tool paths)
* `script/` — experiment scripts (`convert_polybenches.py`, `run.py`,
  `collect_csv.py`, `make_results_table.py`, `cache_lowered.py`,
  `filter_config.py` — backs `run-all.sh --llvm`, ...); see
  `experiments/polygeist-polybench/README.md` for the config-format reference
* `example/` — MLIR files for the by-hand checks
* `polybench-input/` — PolyBench/C 4.2.1 sources
* `generated-polybench-*/` — interpretable C variants
* `polybench-cgeist/` — raw cgeist outputs (`-raise-scf-to-affine`)
* `cgeist/*/conversion/*-after-cgeist.mlir` — raw cgeist outputs per optionset
* `cached-lowered/` — post-`mlir-opt` lowered MLIR per experiment (the cached inputs)
* `linalg-input/` — matmul/conv2d Linalg inputs
* `liveoutvars/` — live-out variable lists per benchmark
