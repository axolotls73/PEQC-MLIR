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

`script/run_all.sh`: run all experiments, including those below.

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

## PACT 2026 Experiments

```sh
./script/generate_polybenches.py -DMINI_DATASET -DPOLYBENCH_USE_SCALAR_LB

./script/convert_polybenches.py ./config/pact26/mini-initial-exp.json
./script/run.py ./config/pact26/mini-initial-exp.json --timeout 600 --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
./script/collect_csv.py pact26-mini-initial-exp/
./script/make_results_table.py config/pact26/mini-initial-exp.json \
     --csv-name run_stats_against_generated-polybench-mini-dataset-use-scalar-lb-interp.csv \
     --out pact26-mini-initial-exp/results.csv
```

