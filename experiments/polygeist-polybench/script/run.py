#!/bin/env python3

from util import runsh
from util import *
from glob import glob
from sys import argv
import os
import json
import argparse


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
  check_suffix = f'against_{pathtoname(args.compare_against)}'
if args.only:
  check_suffix += '-only-' + '-'.join(args.only)


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
    stdout, stderr, rc = runsh(command, timeout=args.timeout)

    with open(f'{outdir}/{getbenchname(file1)}.stdout.txt', 'w') as f:
      f.write('command line: ' + command + '\n')
      f.write('return code: ' + str(rc) + '\n')
      f.write(stdout if stdout else "")
    with open(f'{outdir}/{getbenchname(file1)}.stderr.txt', 'w') as f:
      f.write(stderr if stderr else "")

    runpass = stdout and 'YES' in stdout
    if runpass:
      print(f'pass: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
      numpass += 1
    else:
      print(f'{CLR_RED}FAIL: {name}: {file1} {file2} {CLR_GRAY}(command line: {command}){CLR_NONE}')
      numfail += 1



for config in configs:
  benchdir = f'{topdir}/{config["output_dir"]}/translated'
  outdir = f'{topdir}/{config["output_dir"]}/output_{check_suffix}'
  runsh(f'mkdir -p {outdir}')

  benches = getbenches(benchdir)
  print(benches)

  if args.self:
    pairs = [(file, file, name, benchtoliveout[name]) for file, name in benches]

  elif args.compare_against:
    compareagainstbenches = getbenches(args.compare_against)
    print(compareagainstbenches)
    pairs = []
    for cbfile, cbname in compareagainstbenches:
      otherfiles = [(file, name) for file, name in benches if name == cbname]
      if not len(otherfiles): continue
      pairs += [(cbfile, file, cbname, benchtoliveout[cbname]) for file, _ in otherfiles]

  checkpairs(pairs, outdir, config["output_dir"])

print(f'FAILED: {numfail}\nPASSED: {numpass}')
