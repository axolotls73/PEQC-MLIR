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

`script/run.py`: run translated files in interpreter. -h for options.

## Generating and running polybench translations

```sh
$> ./script/generate_polybenches.py -DPOLYBENCH_USE_SCALAR_LB -DMINI_DATASET

# adi hangs somewhere in polygeist, skip for now
$> ./script/convert_polybenches.py config/default-config.json --skip adi

$> ./script/run.py --self converted-benches/translated
```

Affine transfos tests:
```sh
./script/convert_polybenches.py config/affine-options-no-polymer.json --topdir converted-affine-options-no-polymer --skip adi,deriche,durbin,gramschmidt,symm,ludcmp
./script/convert_polybenches.py config/affine-options.json --topdir converted-affine-options --skip adi,deriche,durbin,gramschmidt,symm,ludcmp
```