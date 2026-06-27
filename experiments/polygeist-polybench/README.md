# Polygeist polybench experiments

## TODO

* change medium dataset back to default:
    * floyd-warshall
    * ludcmp
    * nussinov
* add small, medium exps to `script/run_all.sh`

## Scripts

Before running these scripts, run `pip3 install -r requirements.txt` to install dependencies.

Tools you need in your PATH:
* verif-opt, verif-translate
* MLIR: mlir-opt
* PAST: pastchecker
* Polygeist: cgeist, polymer-opt

`script/generate_polybenches.py`: generate interpretable C files from polybenches, args are definitions (see usage below).

`script/convert_polybenches.py`: run benches through cgeist, polymer, verif conversion and translation. -h for options.

`script/run.py`: run translated files in interpreter. -h for options.


## Config file format

Both `convert_polybenches.py` and `run.py` take a JSON config file as their first argument. The configs are in `config/`.

**Top-level fields:**

| Field | Description |
|---|---|
| `topdir` | Output root directory for this experiment |
| `polybench_dir` | Path to `generate_polybenches.py` output (must have `kernel/` and `epilogue/` subdirs) |
| `cgeist_dir` | Path to cached cgeist `.mlir` outputs (used with `--use-cached-cgeist`), default is `polybench-cgeist` |
| `pastchecker` | Absolute path to the `pastchecker` binary |
| `mlir_opt_versions` | List of `{"name": "...", "path": "..."}` every optionset is run with every version |
| `ignore_benches` | List of bench names to always skip |
| `pipeline_comparisons` | List of `["dir-A", "dir-B"]` pairs used by `run.py --compare-pipelines` |
| `input_dir` / `input_ext` | Alternative non-polybench input directory (e.g. `"linalg-input"` / `".mlir"`) |
| `options_all` | Object merged into every optionset as shared defaults |
| `optionsets` | List of per-experiment configs (see below) |

**Each entry in `optionsets`:**

| Field | Description |
|---|---|
| `output_dir` | Subdirectory name; prefixed with the mlir-opt version name when run with that version |
| `pipeline` | Ordered list of tool steps (see below) |
| `version_overrides` | Map from version name to fields that override the optionset for that version only |
| `polybench_dir` | Per-optionset override of the top-level `polybench_dir` |

**Each step in `pipeline`:**

| Field | Description |
|---|---|
| `tool` | Tool to invoke: `cgeist`, `mlir-opt` (resolved via `mlir_opt_versions`), or any other tool in PATH |
| `args` | Arguments passed to the tool |
| `label` | Used in intermediate filenames, e.g. `{name}-2-after-mliropt.mlir` for `"label": "after-mliropt"` |
| `track_did_nothing` | If `true`, warns when the pass output is identical to its input (recorded in `conversion_stats.csv`) (not tested well outside `mlir-opt`) |

After the user-defined pipeline steps, `convert_polybenches.py` always does:
1. `mlir-opt --lower-affine`
2. `verif-opt --verif-scf-parallel-to-async`
3. `verif-translate --translate-to-past`
4. append epilogue script to produce the final translated `.c` file

Output layout under `topdir/` for conversion:
* `{mlir-opt version}-{output_dir}/conversion/` — intermediate `.mlir` and `.stderr` files for each pipeline step
* `{mlir-opt version}-{output_dir}/translated/` — final translated `.c` files
* `{mlir-opt version}-{output_dir}/logs/` — command log for conversion
* `conversion_stats.csv` — per-bench pass/fail and `flag_did_nothing` column

**Multiple LLVM versions and version_overrides:**

When `mlir_opt_versions` has multiple entries, each optionset is run under each version. Use `version_overrides` to substitute a different pipeline for a specific version (e.g. when a flag was renamed between LLVM releases):

```json
{
    "output_dir": "affine-unroll",
    "pipeline": [
        {"tool": "mlir-opt", "args": "--affine-loop-unroll", "label": "after-mliropt", "track_did_nothing": true}
    ],
    "version_overrides": {
        "llvm21": {"pipeline": [
            {"tool": "mlir-opt", "args": "--pass-pipeline=\"builtin.module(func.func(affine-loop-unroll))\"",
             "label": "after-mliropt", "track_did_nothing": true}
        ]}
    }
}
```

## convert_polybenches.py reference

```
./script/convert_polybenches.py [config_file] [options]

  config_file             JSON config (default: config/default-config.json)
  --timeout N             Per-bench timeout in seconds (default: 60)
  --use-cached-cgeist     Read .mlir files from cgeist_dir instead of re-running cgeist
```

## run.py reference

Exactly one run mode flag is required:

```
./script/run.py [config_file] <run-mode> [options]

Run modes (mutually exclusive):
  --self                       Compare each translated bench against itself (sanity check)
  --compare-against-polybench  Compare each bench against the polybench interp file from polybench_dir
  --compare-pipelines [A B]    Compare two pipeline output dirs by name; with no args reads all
                               pairs from pipeline_comparisons in the config

Other options:
  --timeout N             Per-bench timeout in seconds
  --seq-verif-only        Pass --seq-verif-only to pastchecker
```

## Generating and running polybench translations

After generating files:
* interpretable polybench files found in `generated-.../interp`
* final translations in `converted-.../[flags dir]/translated`
* intermediate conversion files in `converted-.../[flags dir]/conversion`

Generating all interpretable polybench files and running with no flags:

```sh
$> ./script/generate_polybenches.py -DMINI_DATASET -DPOLYBENCH_USE_SCALAR_LB
$> ./script/generate_polybenches.py -DSMALL_DATASET -DPOLYBENCH_USE_SCALAR_LB
$> ./script/generate_polybenches.py -DMEDIUM_DATASET -DPOLYBENCH_USE_SCALAR_LB

$> ./script/convert_polybenches.py config/default-config.json

# self check for generated files
$> ./script/run.py --self config/default-config.json
# check against original C files
$> ./script/run.py config/default-config.json --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
```

## Experiments

```sh
./script/generate_polybenches.py -DMINI_DATASET -DPOLYBENCH_USE_SCALAR_LB
./script/generate_polybenches.py -DSMALL_DATASET -DPOLYBENCH_USE_SCALAR_LB

# initial pb mlir-opt exps
./script/convert_polybenches.py ./config/mini-initial-exp.json --use-cached-cgeist
./script/run.py ./config/mini-initial-exp.json --timeout 600 --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
./script/collect_csv.py mini-initial-exp/
./script/make_results_table.py config/mini-initial-exp.json \
     --out mini-initial-exp/results.csv

# cgeist exps
./script/convert_polybenches.py ./config/cgeist.json
./script/run.py ./config/cgeist.json --timeout 600 --compare-against-polybench
./script/collect_csv.py cgeist/
./script/make_results_table.py config/cgeist.json \
     --out cgeist/results.csv

# linalg exps
./script/convert_polybenches.py ./config/linalg.json
./script/run.py ./config/linalg.json --timeout 600 --compare-pipelines
./script/collect_csv.py linalg/
./script/make_results_table.py config/linalg.json \
     --out linalg/results.csv

# parallel exps
./script/convert_polybenches.py ./config/parallel.json --use-cached-cgeist
./script/run.py ./config/parallel.json --timeout 180 --compare-against-polybench
./script/collect_csv.py parallel/
./script/make_results_table.py config/parallel.json \
     --out parallel/results.csv
```

to try:

```
{
    "output_dir": "affine-parallelize-async",
    "pipeline": [
        {"tool": "cgeist",
            "args": "-raise-scf-to-affine",
            "label": "original"},
        {"tool": "mlir-opt",
            "args": "--affine-parallelize",
            "label": "after-mliropt",
            "track_did_nothing": true},
        {"tool": "mlir-opt",
            "args": "--lower-affine",
            "label": "after-mliropt",
            "track_did_nothing": true},
        {"tool": "mlir-opt",
            "args": "--async-parallel-for",
            "label": "after-mliropt",
            "track_did_nothing": true}
    ]
}
```
