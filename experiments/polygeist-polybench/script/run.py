#!/bin/env python3

from util import runsh
from util import *
from glob import glob
from sys import argv
import re
import os
import argparse
import itertools

PASTCOMMAND = 'pastchecker --verbose --timing-mode --enable-preprocessor --enable-subtrees'

argparser = argparse.ArgumentParser()
rungroup = argparser.add_mutually_exclusive_group()
rungroup.add_argument('--self', action='store_true',
    help='only compare all benches with themselves')
rungroup.add_argument('--compare-against', metavar='compare-dir', type=str,
    help='only compare against corresponding benches in compare-dir (instead of cartesian product of all)')
argparser.add_argument('polybench_directory', nargs='+')
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
args = argparser.parse_args()


def getbenchname(file):
  # want to catch biggest matching substring
  bn = sorted(benchnames, key=lambda s: len(s), reverse=True)
  for n in bn:
    if n in file: return n
  return None

benches = []
for benchdir in args.polybench_directory:
  for file in glob(f'{benchdir}/*'):
    name = getbenchname(os.path.basename(file))
    if name in args.skip: continue
    if name is None:
      print(f'{CLR_YLW}unrecognized bench: "{name}" in "{file}"')
      continue

    benches += [(file, name)]

pairs = []

if args.self:
  pairs += [(file, file, name, benchtoliveout[name]) for file, name in benches]

elif args.compare_against:
  pass

# default: cartesian product of all files in all dirs
else:
  pairs = None

failedruns = []

for file1, file2, name, liveout in pairs:
  if liveout is None:
    print(f'{CLR_YLW}skipping run "{file1} {file2}"{CLR_NONE}')
    continue
  command = f'{PASTCOMMAND} {file1} {file2} {liveout}'
  stdout, stderr, rc = runsh(command)
  if 'YES' in stdout:
    print(f'pass: {file1} {file2}')
  else:
    print(f'{CLR_RED}FAIL: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
    failedruns += [command]

print(f'{CLR_RED}\nFAILED RUNS:')
for run in failedruns: print(run)
print(CLR_NONE, end=None)