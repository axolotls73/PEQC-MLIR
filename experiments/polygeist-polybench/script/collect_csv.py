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

argparser = argparse.ArgumentParser()
argparser.add_argument('topdir', type=str,
    help='top-level directory produced by convert_polybenches.py')
args = argparser.parse_args()

topdir = getdirpath(args.topdir)

_, dirs, _ = next(os.walk(topdir))


# def getfilediff(ogfile, f1, f2):
#   convfilesdir = re.sub(f'/translated.*', '/converted', ogfile)
#   if not os.path.isdir(convfilesdir): return 'N/A'
#   file1 = f'{convfilesdir}/{f1}'
#   file2 = f'{convfilesdir}/{f2}'
#   assert os.path.isfile(file1) and os.path.isfile(file2)
#   _, _, rc = runsh(f'diff -wbB {file1} {file2}')
#   return 'yes' if rc else 'no'

def processfile(cw, name, stdout, stderr, outdir):

  command, = re.search(r'command line: (.*)', stdout).groups()
  file1, file2 = command.split()[-3:-1]

  # f1_diff_after_polymer = getfilediff(file1, f'{name}-1-original.mlir', f'{name}-2-after-polymer.mlir')
  # f2_diff_after_polymer = getfilediff(file2, f'{name}-1-original.mlir', f'{name}-2-after-polymer.mlir')
  # f1_diff_after_mliropt = getfilediff(file1, f'{name}-3-after-inline.mlir', f'{name}-4-after-mliropt.mlir')
  # f2_diff_after_mliropt = getfilediff(file2, f'{name}-3-after-inline.mlir', f'{name}-4-after-mliropt.mlir')

  timeout = 'return code: None' in stdout
  conflict = 'conflict' in stdout
  interperror = 'interpretation failed' in stderr
  oob = 'Requested location does not exist' in stderr
  treediff = 'trees differ' in stderr
  runpass = 'YES' in stdout
  minutes, seconds, = re.search(r'Elapsed.*\): (\d+):([\d\.]+)', stderr).groups()
  elapsed = int(minutes) * 60 + float(seconds)


  if not timeout:
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

  yn = lambda b: 'yes' if b else 'no'
  cw.writerow([
    name, outdir, file1, file2, 'pass' if runpass else 'fail',
    yn(timeout), yn(conflict), yn(treediff), yn(interperror), yn(oob),
    # f1_diff_after_polymer, f2_diff_after_polymer,
    # f1_diff_after_mliropt, f2_diff_after_mliropt,
    interp_f1, interp_f2, equivalence, elapsed,
    num_stmts_f1, num_stmts_f2, num_workers_f1, num_workers_f2,
    command
  ])


def processdir(dir, outdir):
  # separate stats file per subdir
  check_suffix = re.sub('.*output_', '', outdir)
  statsfilename = f'{outdir}/../run_stats_{check_suffix}.csv'
  statsfile = open(statsfilename, 'w')
  cw = csv.writer(statsfile)
  cw.writerow([
    'name', 'dir', 'file1', 'file2', 'result',
    'timeout', 'conflict', 'tree_difference', 'interp_error', 'out_of_bounds',
    # 'f1_diff_after_polymer', 'f2_diff_after_polymer',
    # 'f1_diff_after_mliropt', 'f2_diff_after_mliropt',
    'time_interp_file1', 'time_interp_file2', 'time_equivalence', 'time_elapsed',
    'num_stmts_file1', 'num_stmts_file2', 'num_tasks_file1', 'num_tasks_file2',
    'command'
  ])


  files = glob(f'{outdir}/*.stdout.txt')
  for file in files:
    stdout = open(getfilepath(file)).read()
    stderr = open(getfilepath(file.replace('stdout', 'stderr'))).read()
    name, = re.match('.*/([\w-]+).stdout.txt', file).groups()
    processfile(cw, name, stdout, stderr, dir)


for dir in dirs:
  outputdirs = glob(f'{topdir}/{dir}/output_**', recursive=True)
  for outputdir in outputdirs:
    print(f'processing {outputdir}')
    processdir(dir, outputdir)

