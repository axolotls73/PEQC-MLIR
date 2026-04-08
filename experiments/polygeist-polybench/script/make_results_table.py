#!/bin/env python3

from util import *
from glob import glob
import json
import argparse
import csv
import os
import pandas as pd

argparser = argparse.ArgumentParser()
argparser.add_argument('config_file', type=str,
    help='json config file used with convert_polybenches.py and run.py')
argparser.add_argument('--csv-name', type=str, required=True,
    help='run_stats csv filename produced by collect_csv.py, e.g. run_stats_against_generated-polybench-mini-dataset-use-scalar-lb-interp.csv')
argparser.add_argument('--out', type=str, required=True,
    help='output csv file path')
args = argparser.parse_args()

configobj = json.load(open(args.config_file))
topdir = getdirpath(configobj['topdir'])
configs = expand_configs(configobj)

# Base mliropt_args per optionset name — before version overrides
options_all = configobj.get('options_all', {})
base_mliropt_args = {
    c['output_dir']: {**options_all, **c}.get('mliropt_args', '')
    for c in configobj['optionsets']
}

# Load conversion stats — indexed by (output_dir, name)
conv_df = pd.read_csv(f'{topdir}/conversion_stats.csv').set_index(['output_dir', 'name'])

ERROR_COLS = ['timeout', 'conflict', 'tree_difference', 'interp_error', 'out_of_bounds']

rows = []
for config in configs:
    output_dir = config['output_dir']
    optionset = config['_optionset']
    mlir_opt_name = config['_mlir_opt_name']
    mliropt_args = base_mliropt_args.get(optionset, config.get('mliropt_args', ''))
    if mliropt_args.startswith('-'):
      mliropt_args = ' ' + mliropt_args

    # Load run stats for this config if present
    run_stats_path = f'{topdir}/{output_dir}/{args.csv_name}'
    if os.path.isfile(run_stats_path):
        run_df = pd.read_csv(run_stats_path).set_index('name')
    else:
        run_df = None

    for bench in sorted(benchnames):
        # Conversion info
        try:
            conv_row = conv_df.loc[(output_dir, bench)]
            flag_did_nothing = conv_row['flag_did_nothing']
            converted = conv_row['all_pass'] == 'yes'
        except KeyError:
            flag_did_nothing = 'N/A'
            converted = False

        # Run info
        if run_df is not None and bench in run_df.index:
            run_row = run_df.loc[bench]
            correct = 'yes' if run_row['result'] == 'pass' else 'no'
            errors = [col for col in ERROR_COLS if run_row.get(col) == 'yes']
            error = ', '.join(errors)
        elif not converted:
            correct = 'N/A'
            error = 'conversion failed'
        else:
            correct = 'N/A'
            error = 'not run'

        rows.append([bench, mliropt_args, mlir_opt_name, flag_did_nothing, correct, error])

with open(args.out, 'w', newline='') as f:
    cw = csv.writer(f)
    cw.writerow(['bench', 'mliropt_args', 'mlir_opt_version', 'flag_did_nothing', 'correct', 'error'])
    cw.writerows(rows)

print(f'wrote {len(rows)} rows to {args.out}')