#!/bin/env python3

from util import runsh
from util import *
from glob import glob
from sys import argv
import re
import csv
import os
import argparse
import itertools

PASTCOMMAND = 'pastchecker --verbose --timing-mode --enable-preprocessor --enable-subtrees'

argparser = argparse.ArgumentParser()
argparser.add_argument('polybench_directory', nargs='+')
argparser.add_argument('--timeout', type=int, default=None,
    help='timeout in seconds, default none')
argparser.add_argument('--outdir', type=str, required=True,
    help='dir where stats csv and logs will be stored')
rungroup = argparser.add_mutually_exclusive_group(required=True)
rungroup.add_argument('--self', action='store_true',
    help='only compare all benches with themselves')
rungroup.add_argument('--compare-against', metavar='compare-dir', type=str,
    help='only compare against corresponding benches in compare-dir (instead of cartesian product of all)')
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
args = argparser.parse_args()

# if os.path.isdir(args.outdir):
#   print(f'directory {args.outdir} already exists')
#   exit(1)
runsh(f'mkdir -p {args.outdir}')
outputlogdir = f'{args.outdir}/output'
runsh(f'mkdir -p {outputlogdir}')

statsfilename = f'{os.path.abspath(args.outdir)}/stats.csv'
statsfile = open(statsfilename, 'w')
cw = csv.writer(statsfile)
cw.writerow([
  'name', 'file1', 'file2', 'result',
  'timeout', 'conflict', 'tree_difference',
  'time_interp_file1', 'time_interp_file2', 'time_equivalence',
  'num_stmts', 'num_tasks',
])

def getbenchname(file):
  # want to catch biggest matching substring
  bn = sorted(benchnames, key=lambda s: len(s), reverse=True)
  for n in bn:
    if n in file: return n
  return None

def getbenches(dir):
  benches = []
  for file in glob(f'{dir}/*'):
    name = getbenchname(os.path.basename(file))
    if name in args.skip: continue
    if name is None:
      print(f'{CLR_YLW}unrecognized bench: "{name}" in "{file}"')
      continue
    else: benches += [(file, name)]
  return benches

benches = []
print(args.polybench_directory)
for benchdir in args.polybench_directory:
  benches += getbenches(benchdir)

compareagainstbenches = getbenches(args.compare_against)

pairs = []

if args.self:
  outputfilename = lambda file1, file2: file1.replace('/', '-')
  pairs += [(file, file, name, benchtoliveout[name]) for file, name in benches]

elif args.compare_against:
  outputfilename = lambda file1, file2: file2.replace('/', '-')
  for cbfile, cbname in compareagainstbenches:
    otherfiles = [(file, name) for file, name in benches if name == cbname]
    if not len(otherfiles): continue
    pairs += [(cbfile, file, cbname, benchtoliveout[cbname]) for file, _ in otherfiles]

# default: cartesian product of all files in all dirs
else:
  pairs = None

# pairs = sorted(pairs, key=lambda x: x[0])
# print('\n'.join([p[1] for p in pairs]))
# exit()

failedruns = []

for file1, file2, name, liveout in pairs:
  if liveout is None:
    print(f'{CLR_YLW}skipping run "{file1} {file2}"{CLR_NONE}')
    continue
  command = f'{PASTCOMMAND} {file1} {file2} "{liveout}"'
  stdout, stderr, rc = runsh(command, timeout=args.timeout)

  # with open(f'{outputlogdir}/{outputfilename(file1, file2)}.stdout.txt', 'w') as f:
  #   f.write(stdout if stdout else "")
  # with open(f'{outputlogdir}/{outputfilename(file1, file2)}.stderr.txt', 'w') as f:
  #   f.write(stderr if stderr else "")

  timeout = rc is None
  conflict = stdout and "conflict" in stdout
  treediff = stdout and 'trees differ' in stdout
  runpass = stdout and 'YES' in stdout

  if runpass:
    print(f'pass: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
  else:
    conflictstr = "(conflict)" if conflict else ""
    timeoutstr = "(timeout)" if timeout else ""
    print(f'{CLR_RED}FAIL{conflictstr}{timeoutstr}: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
    failedruns += [command]

  yn = lambda b: 'yes' if b else 'no'
  cw.writerow([
    name, file1, file2, 'pass' if runpass else 'fail',
    yn(timeout), yn(conflict), yn(treediff),
    'time_interp_file1', 'time_interp_file2', 'time_equivalence',
    'num_stmts', 'num_tasks',
  ])
  statsfile.flush()


# cw = csv.writer(statsfile)
# for row in stats:
#   cw.writerow(row)

print(f'{CLR_RED}\nFAILED RUNS:')
for run in failedruns: print(run)
print(CLR_NONE, end=None)