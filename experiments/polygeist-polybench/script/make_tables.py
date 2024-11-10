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
args = argparser.parse_args()

data = None

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


data = data.set_index(['name', 'dir'])
print(data)


# bench vs opt chart

chartfilename = 'TEST.csv'
cw = csv.writer(open(chartfilename, 'w'))

flags = [('pluto + ' if len(opt['polymer_args']) else '') + opt['mliropt_args']
         for opt in configobj['optionsets']]
cw.writerow([''] + flags)

for benchname in sorted(benchnames):
  row = [benchname]

  for opt in opts:
    try:
      result = data.loc[(benchname, opt['output_dir'])]['result']
    except Exception:
      result = 'N/A'
    print(opt['output_dir'], result)

    row += [result]

  cw.writerow(row)