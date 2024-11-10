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

PASTCOMMAND = 'pastchecker --verbose --timing-mode --enable-preprocessor --enable-subtrees'

argparser = argparse.ArgumentParser()
argparser.add_argument('config_file', type=str, default=f'{BASEDIR}/config/default-config.json', nargs='?',
    help='json file with options, default config/default-config.json')
argparser.add_argument('--timeout', type=int, default=None,
    help='timeout in seconds, default none')
rungroup = argparser.add_mutually_exclusive_group(required=True)
rungroup.add_argument('--self', action='store_true',
    help='only compare all benches with themselves')
rungroup.add_argument('--compare-against', metavar='compare-dir', type=str,
    help='only compare against corresponding benches in compare-dir (instead of cartesian product of all)')
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
argparser.add_argument('--only', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='only run this comma-separated list of bench names')
args = argparser.parse_args()

configobj = json.load(open(args.config_file))
configs = configobj['optionsets']
pbdir = configobj['polybench_dir']
topdir = configobj['topdir']

if args.self:
  check_suffix = 'self_check'
elif args.compare_against:
  check_suffix = f'against_{args.compare_against.replace("/", "-")}'
if args.only:
  check_suffix += '-'.join(args.only)


statsfilename = f'{topdir}/run_stats_{check_suffix}.csv'
statsfile = open(statsfilename, 'w')
cw = csv.writer(statsfile)
cw.writerow([
  'name', 'dir', 'file1', 'file2', 'result',
  'timeout', 'conflict', 'tree_difference', 'interp_error',
  'f1_diff_after_polymer', 'f2_diff_after_polymer',
  'f1_diff_after_mliropt', 'f2_diff_after_mliropt',
  'time_interp_file1', 'time_interp_file2', 'time_equivalence',
  'num_stmts_file1', 'num_stmts_file2', 'num_tasks_file1', 'num_tasks_file2',
  'command'
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
    if (args.only and name not in args.only) or (args.skip and name in args.skip):
      continue
    if name is None:
      print(f'{CLR_YLW}unrecognized bench: "{name}" in "{file}"')
      continue
    else: benches += [(file, name)]
  return benches


failedruns = []
def checkpairs(pairs, outdir, configdir):
  global failedruns
  global cw
  global statsfile

  for file1, file2, name, liveout in pairs:
    if liveout is None:
      print(f'{CLR_YLW}skipping run "{file1} {file2}"{CLR_NONE}')
      continue
    command = f'{PASTCOMMAND} {file1} {file2} "{liveout}"'
    stdout, stderr, rc = runsh(command, timeout=args.timeout)

    with open(f'{outdir}/{getbenchname(file1)}.stdout.txt', 'w') as f:
      f.write(stdout if stdout else "")
    with open(f'{outdir}/{getbenchname(file1)}.stderr.txt', 'w') as f:
      f.write(stderr if stderr else "")

    timeout = rc is None
    conflict = stdout and "conflict" in stdout
    interperror = stderr and 'interpretation failed' in stderr
    treediff = stderr and 'trees differ' in stderr
    runpass = stdout and 'YES' in stdout

    # check file diff
    def getfilediff(ogfile, f1, f2):
      convfilesdir = re.sub(f'/translated.*', '/converted', ogfile)
      if not os.path.isdir(convfilesdir): return 'N/A'
      file1 = f'{convfilesdir}/{f1}'
      file2 = f'{convfilesdir}/{f2}'
      assert os.path.isfile(file1) and os.path.isfile(file2)
      _, _, rc = runsh(f'diff -wbB {file1} {file2}')
      return 'yes' if rc else 'no'

    f1_diff_after_polymer = getfilediff(file1, f'{name}-1-original.mlir', f'{name}-2-after-polymer.mlir')
    f2_diff_after_polymer = getfilediff(file2, f'{name}-1-original.mlir', f'{name}-2-after-polymer.mlir')
    f1_diff_after_mliropt = getfilediff(file1, f'{name}-3-after-inline.mlir', f'{name}-4-after-mliropt.mlir')
    f2_diff_after_mliropt = getfilediff(file2, f'{name}-3-after-inline.mlir', f'{name}-4-after-mliropt.mlir')

    print(command)

    if stdout and not timeout:
      try:
        interp_f1, = re.search(r'Interpret P1: (\d+.?\d*)', stdout).groups()
        interp_f2, = re.search(r'Interpret P2: (\d+.?\d*)', stdout).groups()
        equivalence, = re.search(r'Equivalence checking: (\d+.?\d*)', stdout).groups()
        num_stmts_f1, num_stmts_f2 = re.findall(r'(\d+) calls to evaluate statements', stdout)
        num_workers_f1, num_workers_f2 = re.findall(r'(\d+) maximum concurrent workers', stdout)
      except Exception:
        interp_f1 = interp_f2 = equivalence = num_stmts_f1 = num_stmts_f2 = num_workers_f1 = num_workers_f2 = 'N/A'
    else:
      interp_f1 = interp_f2 = equivalence = num_stmts_f1 = num_stmts_f2 = num_workers_f1 = num_workers_f2 = 'N/A'

    if runpass:
      print(f'pass: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
    else:
      conflictstr = "(conflict)" if conflict else ""
      timeoutstr = "(timeout)" if timeout else ""
      print(f'{CLR_RED}FAIL{conflictstr}{timeoutstr}: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
      failedruns += [command]

    yn = lambda b: 'yes' if b else 'no'
    cw.writerow([
      name, configdir, file1, file2, 'pass' if runpass else 'fail',
      yn(timeout), yn(conflict), yn(treediff), yn(interperror),
      f1_diff_after_polymer, f2_diff_after_polymer,
      f1_diff_after_mliropt, f2_diff_after_mliropt,
      interp_f1, interp_f2, equivalence,
      num_stmts_f1, num_stmts_f2, num_workers_f1, num_workers_f2,
      command
    ])
    statsfile.flush()



for config in configs:
  benchdir = f'{topdir}/{config["output_dir"]}/translated'
  outdir = f'{topdir}/{config["output_dir"]}/output_{check_suffix}'
  runsh(f'mkdir -p {outdir}')

  benches = getbenches(benchdir)

  if args.self:
    pairs = [(file, file, name, benchtoliveout[name]) for file, name in benches]

  elif args.compare_against:
    compareagainstbenches = getbenches(args.compare_against)
    pairs = []
    for cbfile, cbname in compareagainstbenches:
      otherfiles = [(file, name) for file, name in benches if name == cbname]
      if not len(otherfiles): continue
      pairs += [(cbfile, file, cbname, benchtoliveout[cbname]) for file, _ in otherfiles]

  checkpairs(pairs, outdir, config["output_dir"])



print(f'{CLR_RED}\nFAILED RUNS:')
for run in failedruns: print(run)
print(CLR_NONE, end=None)