#!/bin/env python3

from util import runsh
from util import *
from glob import glob
import sys
import os
import json
import argparse
import shutil


PASTCOMMAND = '{pastchecker} --verbose --timing-mode --enable-preprocessor --enable-subtrees --happens-before'

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
rungroup.add_argument('--compare-pipelines', metavar='dir', nargs='*', type=str,
    help='compare pipeline outputs: with no args runs all pairs from config pipeline_comparisons; with two args (dir-A dir-B) runs that one pair')
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
argparser.add_argument('--only', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='only run this comma-separated list of bench names')
argparser.add_argument('--seq-verif-only', action='store_true',
    help='run pastchecker with --seq-verif-only')
args = argparser.parse_args()

configobj = json.load(open(args.config_file))
configs = expand_configs(configobj)
pbdir = configobj['polybench_dir']
topdir = configobj['topdir']

executables = [
  'pastchecker',
  configobj['pastchecker'],
]
for ex in executables:
  if shutil.which(ex) is None:
    print(f'{ex} must exist/be in PATH', file=sys.stderr)
    exit(1)

PASTCOMMAND = PASTCOMMAND.format(pastchecker=configobj['pastchecker'])

if args.self:
  check_suffix = 'self_check'
elif args.compare_against:
  check_suffix = f'against_{pathtoname(args.compare_against)}'
elif args.compare_pipelines is not None:
  if len(args.compare_pipelines) == 2:
    pipeline_pairs = [args.compare_pipelines]
  elif len(args.compare_pipelines) == 0:
    pipeline_pairs = configobj.get('pipeline_comparisons', [])
    if not pipeline_pairs:
      print('--compare-pipelines with no args requires pipeline_comparisons in config', file=sys.stderr)
      exit(1)
  else:
    print('--compare-pipelines takes 0 args (read from config) or exactly 2 args (dir-A dir-B)', file=sys.stderr)
    exit(1)
if args.only and args.compare_pipelines is None:
  check_suffix += '-only-' + '-'.join(args.only)

if args.seq_verif_only:
  PASTCOMMAND += ' --seq-verif-only'


def getbenchname(file):
  # want to catch biggest matching substring
  bn = sorted(benchnames, key=lambda s: len(s), reverse=True)
  for n in bn:
    if n in file: return n
  return None

def getbenches(dir):
  benches = []
  # print(glob(f'{dir}/*'))
  for file in glob(f'{dir}/*'):
    name = getbenchname(os.path.basename(file))
    if (args.only and name not in args.only) or (args.skip and name in args.skip):
      continue
    if name is None:
      print(f'{CLR_YLW}unrecognized bench: "{name}" in "{file}"')
      continue
    else: benches += [(file, name)]
  # print(benches)
  return benches

numfail = 0
numpass = 0

def checkpairs(pairs, outdir, configdir):
  global numfail
  global numpass
  global cw
  global statsfile

  for file1, file2, name, liveout in pairs:
    if liveout is None:
      print(f'{CLR_YLW}skipping run "{file1} {file2}"{CLR_NONE}')
      continue
    command = f'/usr/bin/time -v {PASTCOMMAND} {file1} {file2} "{liveout}"'
    output, rc = runsh_combined(command, timeout=args.timeout)

    with open(f'{outdir}/{getbenchname(file1)}.output.txt', 'w') as f:
      f.write('command line: ' + command + '\n')
      f.write('return code: ' + str(rc) + '\n')
      f.write(output if output else "")

    runpass = output and 'YES' in output
    if runpass:
      print(f'pass: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
      numpass += 1
    else:
      print(f'{CLR_RED}FAIL: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
      numfail += 1



if args.compare_pipelines is not None:
  for dir_a, dir_b in pipeline_pairs:
    suffix = f'against_pipeline_{dir_b}'
    if args.only:
      suffix += '-only-' + '-'.join(args.only)
    outdir = f'{topdir}/{dir_a}/output_{suffix}'
    runsh(f'mkdir -p {outdir}')
    benches_a = getbenches(f'{topdir}/{dir_a}/translated')
    benches_b = getbenches(f'{topdir}/{dir_b}/translated')
    pairs = []
    for bfile, bname in benches_b:
      afiles = [(file, name) for file, name in benches_a if name == bname]
      if not len(afiles): continue
      pairs += [(bfile, file, bname, benchtoliveout[bname]) for file, _ in afiles]
    checkpairs(pairs, outdir, dir_a)

else:
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

print(f'FAILED: {numfail}\nPASSED: {numpass}')
