
# generate polybenches
./script/generate_polybenches.py -DMINI_DATASET -DPOLYBENCH_USE_SCALAR_LB
./script/generate_polybenches.py -DSMALL_DATASET -DPOLYBENCH_USE_SCALAR_LB
./script/generate_polybenches.py -DMEDIUM_DATASET -DPOLYBENCH_USE_SCALAR_LB

# default config
./script/convert_polybenches.py config/default-config.json
./script/run.py --self config/default-config.json
./script/run.py config/default-config.json --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
./script/collect_csv.py converted-benches-no-flags

# mini dataset
./script/convert_polybenches.py config/mini-affine-options-no-polymer.json
./script/run.py config/mini-affine-options-no-polymer.json --timeout 600 --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
./script/collect_csv.py converted-mini-affine-options-no-polymer

./script/convert_polybenches.py config/mini-affine-options.json
./script/run.py config/mini-affine-options.json --timeout 600 --compare-against generated-polybench-mini-dataset-use-scalar-lb/interp
./script/collect_csv.py converted-mini-affine-options

./script/make_tables.py config/mini-affine-options-no-polymer.json config/mini-affine-options.json \
    --csv-name run_stats_against_generated-polybench-mini-dataset-use-scalar-lb-interp.csv \
    --out-prefix mini-all-affine

