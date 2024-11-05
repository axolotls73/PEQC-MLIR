# Polygeist polybench experiments

* original interpretable polybench files are in `generated-polybench-use-scalar-lb-mini-dataset/interp`
* intermediate conversion files are in `converted-benches`
* final translations are in `converted-benches/translated`

## Scripts

Tools you need in your PATH:
* verif-opt, verif-translate
* MLIR: mlir-opt
* PAST: pastchecker
* Polygeist: cgeist, polymer-opt

`script/generate_polybenches.py`: generate interpretable C files from polybenches, args are definitions (see usage below)

`script/convert_polybenches.py`: run benches through cgeist, polymer, verif conversion and translation. -h for options.

`script/run.py`: run translated files in interpreter. -h for options (only --self implemented currently...).

## Generating and running polybench translations

```sh
$> ./script/generate_polybenches.py -DPOLYBENCH_USE_SCALAR_LB -DMINI_DATASET

# adi hangs somewhere in polygeist, skip for now
$> ./script/convert_polybenches.py generated-polybench-use-scalar-lb-mini-dataset/ converted-benches --skip adi

$> ./script/run.py --self converted-benches/translated
```