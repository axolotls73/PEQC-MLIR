#!/bin/env python3

from util import runsh
from util import *
from glob import glob
from sys import argv
import re
import csv
import os
import json
import argparse
import itertools
import pandas as pd

PASTCOMMAND = 'pastchecker --verbose --timing-mode --enable-preprocessor --enable-subtrees'

argparser = argparse.ArgumentParser()
argparser.add_argument('config_file', type=str, default=f'{BASEDIR}/config/default-config.json', nargs='+',
    help='json file with options, default config/default-config.json')
argparser.add_argument('--csv-name', type=str, required=True,
    help='name of input csv in each directory, e.g. "run_stats_self_check.csv"')
argparser.add_argument('--out-prefix', type=str, required=True,
    help='output file name prefix')
args = argparser.parse_args()

data = None
convertdata = None

opts = []
for configfile in args.config_file:
  configobj = json.load(open(configfile))
  print(configobj)

  opts += configobj['optionsets']
  topdir = configobj['topdir']

  cdata = pd.read_csv(f'{topdir}/{args.csv_name}')
  if data is None:
    data = cdata
  else:
    data = pd.concat([data, cdata])

  cdata = pd.read_csv(f'{topdir}/conversion_stats.csv')
  if convertdata is None:
    convertdata = cdata
  else:
    convertdata = pd.concat([convertdata, cdata])


data = data.set_index(['name', 'dir']).sort_index()
convertdata = convertdata.set_index(['name', 'output_dir'])
print(data)


# bench vs opt chart

runchartfilename = f'{args.out_prefix}_opt_vs_bench_run.csv'
runchartw = csv.writer(open(runchartfilename, 'w'))

# convchartfilename = f'{args.out_prefix}_opt_vs_bench_run.csv'
# convchartw = csv.writer(open(convchartfilename, 'w'))

flags = [opt['output_dir'] for opt in opts]
print(flags)
runchartw.writerow([''] + flags)
# convchartw.writerow([''] + flags)

for benchname in sorted(benchnames):
  runrow = [benchname]
  convrow = [benchname]

  for opt in opts:
    try:
      datarow = data.loc[(benchname, opt['output_dir'])]
      result = datarow['result'][0]
      for col in ['timeout', 'conflict', 'tree_difference', 'interp_error', 'out_of_bounds']:
        if datarow[col][0] == 'yes':
          result += f'({col})'
    except Exception:
      result = 'N/A'

    runrow += [result]

  runchartw.writerow(runrow)

# fail list

faillistfilename = f'{args.out_prefix}_fail_list.csv'
flw = csv.writer(open(faillistfilename, 'w'))

for opt in opts:
  optstr = opt['output_dir']
  if not len(optstr): optstr = '(no flags)'
  frow = [f'{optstr}']

  for benchname in sorted(benchnames):
    try:
      datarow = data.loc[(benchname, opt['output_dir'])]
      result = datarow['result'][0]
      if result == 'pass': continue

      fb = benchname
      for col in ['timeout', 'conflict', 'tree_difference', 'interp_error', 'out_of_bounds']:
        if datarow[col][0] == 'yes':
          fb += f'({col})'
    except Exception:
      fb = benchname + '(not generated)'

    frow += [fb]

  # flfile.write(fstr + '\n')
  flw.writerow(frow)