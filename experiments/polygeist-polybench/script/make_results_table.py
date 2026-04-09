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
argparser.add_argument('--out', type=str, required=True,
    help='output csv file path (version summary written to <out>_version_summary.csv)')
args = argparser.parse_args()

configobj = json.load(open(args.config_file))
topdir = getdirpath(configobj['topdir'])
configs = expand_configs(configobj)

ignore_benches = set(configobj.get('ignore_benches', []))
active_benches = [b for b in benchnames if b not in ignore_benches]

options_all = configobj.get('options_all', {})

def get_mliropt_args(config):
    # New pipeline format: prefer track_did_nothing step, then first mlir-opt step with args
    for step in config.get('pipeline', []):
        if step['tool'] == 'mlir-opt' and step.get('track_did_nothing'):
            return step.get('args', '')
    for step in config.get('pipeline', []):
        if step['tool'] == 'mlir-opt' and step.get('args'):
            return step.get('args', '')
    # Legacy flat format
    return {**options_all, **config}.get('mliropt_args', '')

# Load conversion stats — indexed by (output_dir, name)
conv_df = pd.read_csv(f'{topdir}/conversion_stats.csv').set_index(['output_dir', 'name'])

ERROR_COLS = ['timeout', 'conflict', 'tree_difference', 'interp_error', 'out_of_bounds']

rows = []
for config in configs:
    output_dir = config['output_dir']
    optionset = config['_optionset']
    mlir_opt_name = config['_mlir_opt_name']
    mliropt_args = get_mliropt_args(config)
    if mliropt_args.startswith('-'):
      mliropt_args = ' ' + mliropt_args

    # Load run stats for this config if present
    config_pbdir = config.get('polybench_dir', configobj.get('polybench_dir', ''))
    csv_name = f'run_stats_against_polybench_{pathtoname(config_pbdir)}.csv'
    run_stats_path = f'{topdir}/{output_dir}/{csv_name}'
    if os.path.isfile(run_stats_path):
        run_df = pd.read_csv(run_stats_path).set_index('name')
    else:
        run_df = None

    for bench in sorted(active_benches):
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

        rows.append([bench, optionset, mliropt_args, mlir_opt_name, flag_did_nothing, correct, error])

with open(args.out, 'w', newline='') as f:
    cw = csv.writer(f)
    cw.writerow(['bench', 'optionset', 'mliropt_args', 'mlir_opt_version', 'flag_did_nothing', 'correct', 'error'])
    cw.writerows(rows)

print(f'wrote {len(rows)} rows to {args.out}')


def make_version_summary(rows, configobj, out_path):
    versions_cfg = configobj.get('mlir_opt_versions', [])
    if not versions_cfg:
        print('skipping version summary: no mlir_opt_versions in config')
        return

    versions = [v['name'] for v in versions_cfg]
    df = pd.DataFrame(rows, columns=['bench', 'optionset', 'mliropt_args', 'mlir_opt_version', 'flag_did_nothing', 'correct', 'error'])
    optionsets = [c['output_dir'] for c in configobj['optionsets']]

    # Pivot correct values: index=(bench, optionset), columns=version
    correct_pivot = df.pivot_table(
        index=['bench', 'optionset'],
        columns='mlir_opt_version',
        values='correct',
        aggfunc='first'
    )

    header1 = ['version']
    header2 = ['']
    for opt in optionsets:
        header1 += [opt, '', '', '']
        header2 += ['modified', 'correct', 'regression', 'fixed']

    summary_rows = []
    for i, ver in enumerate(versions):
        row = [ver]
        for opt in optionsets:
            opt_df = df[(df['mlir_opt_version'] == ver) & (df['optionset'] == opt)]
            n_modified = (opt_df['flag_did_nothing'] == 'no').sum()
            n_correct = (opt_df['correct'] == 'yes').sum()

            if i == 0 or versions[i-1] not in correct_pivot.columns or ver not in correct_pivot.columns:
                n_regression = 'N/A'
                n_fixed = 'N/A'
            else:
                prev_ver = versions[i-1]
                try:
                    opt_pivot = correct_pivot.xs(opt, level='optionset')
                    n_regression = ((opt_pivot[prev_ver] == 'yes') & (opt_pivot[ver] == 'no')).sum()
                    n_fixed     = ((opt_pivot[prev_ver] == 'no')  & (opt_pivot[ver] == 'yes')).sum()
                except KeyError:
                    n_regression = 'N/A'
                    n_fixed = 'N/A'

            row += [n_modified, n_correct, n_regression, n_fixed]
        summary_rows.append(row)

    with open(out_path, 'w', newline='') as f:
        cw = csv.writer(f)
        cw.writerow(header1)
        cw.writerow(header2)
        cw.writerows(summary_rows)
    print(f'wrote version summary ({len(summary_rows)} rows) to {out_path}')


summary_out = args.out.removesuffix('.csv') + '_version_summary.csv'
make_version_summary(rows, configobj, summary_out)