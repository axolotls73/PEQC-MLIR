#!/bin/bash

cd ../..
./build.sh
cd -

./script/generate_polybenches.py -DPOLYBENCH_USE_SCALAR_LB -DMINI_DATASET
./script/generate_polybenches.py -DPOLYBENCH_USE_SCALAR_LB -DMEDIUM_DATASET


### default option -- no flags ###

# adi hangs somewhere in polygeist, skip for now
./script/convert_polybenches.py config/default-config.json --skip adi
# self check for generated files
./script/run.py --self converted-benches/translated
# check against original C files
./script/run.py config/default-config.json --compare-against generated-polybench-use-scalar-lb-mini-dataset/interp


### mlir-opt options, pluto and no pluto ###

./script/convert_polybenches.py config/affine-options-no-polymer.json --skip adi,deriche,durbin,gramschmidt,ludcmp
./script/run.py config/affine-options-no-polymer.json --timeout 60 --compare-against generated-polybench-use-scalar-lb-mini-dataset/interp


./script/convert_polybenches.py config/affine-options.json --skip adi,deriche,durbin,gramschmidt,ludcmp
./script/run.py config/affine-options.json --timeout 60 --compare-against generated-polybench-use-scalar-lb-mini-dataset/interp

./script/make_tables.py config/affine-options.json config/affine-options-no-polymer.json  --csv-name run_stats_against_generated-polybench-use-scalar-lb-mini-dataset-interp.csv --out-prefix all-affine
