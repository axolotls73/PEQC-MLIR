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
$> ./script/generate_polybenches.py -DPOLYBENCH_USE_SCALAR_LB -DMEDIUM_DATASET

# adi hangs somewhere in polygeist, skip for now
$> ./script/convert_polybenches.py config/default-config.json --skip adi

$> ./script/run.py --self converted-benches/translated
```

Affine transfos tests:
```sh
./script/convert_polybenches.py config/affine-options-no-polymer.json --topdir converted-affine-options-no-polymer --skip adi,deriche,durbin,gramschmidt,symm,ludcmp
./script/run.py --timeout 180 --outdir output-affine-options-no-polymer --compare-against generated-polybench-use-scalar-lb-mini-dataset/interp generated-polybench-use-scalar-lb-mini-dataset/interp converted-affine-options-no-polymer/affine-no-polymer-all-except-parallelize/translated converted-affine-options-no-polymer/affine-no-polymer-fuse-and-tile/translated converted-affine-options-no-polymer/affine-no-polymer-all/translated converted-affine-options-no-polymer/affine-no-polymer-loop-fusion/translated converted-affine-options-no-polymer/affine-no-polymer-tile-and-unroll-jam/translated converted-affine-options-no-polymer/affine-no-polymer-normalize/translated converted-affine-options-no-polymer/affine-no-polymer-parallelize/translated converted-affine-options-no-polymer/affine-no-polymer-unroll/translated converted-affine-options-no-polymer/affine-no-polymer-loop-inv-code-motion/translated converted-affine-options-no-polymer/affine-no-polymer-unroll-jam/translated converted-affine-options-no-polymer/affine-no-polymer-tile/translated


./script/convert_polybenches.py config/affine-options.json --topdir converted-affine-options --skip adi,deriche,durbin,gramschmidt,symm,ludcmp
./script/run.py --timeout 180 --outdir output-affine-options --compare-against generated-polybench-use-scalar-lb-mini-dataset/interp converted-affine-options/affine-no-polymer-fuse-and-tile/translated converted-affine-options/affine-loop-fusion/translated converted-affine-options/affine-no-polymer-tile-and-unroll-jam/translated converted-affine-options/affine-parallelize/translated converted-affine-options/affine-unroll/translated converted-affine-options/affine-all-except-parallelize/translated converted-affine-options/affine-tile/translated converted-affine-options/affine-all/translated converted-affine-options/affine-loop-inv-code-motion/translated converted-affine-options/affine-normalize/translated converted-affine-options/affine-unroll-jam/translated
```