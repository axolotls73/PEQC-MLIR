#!/bin/env python3

from util import runsh
from util import *
from glob import glob
import sys
import re
import os
import argparse
import json
import csv
import itertools as it
import functools as ft

BASEDIR = os.path.abspath(f'{os.path.dirname(__file__)}/..')
VERIFREPO = os.path.abspath(f'{BASEDIR}/../..')
EPILOGUE_SCRIPT = f'{BASEDIR}/script/add_epilogue.sh'
EPILOGUE_SCRIPT_ASYNC = f'{BASEDIR}/script/add_epilogue_async.sh'

debugopts = ['mlir', 'translate', 'convert']

argparser = argparse.ArgumentParser()
argparser.add_argument('config_file', type=str, default=f'{BASEDIR}/config/default-config.json', nargs='?',
    help='json file with options, default config/default-config.json')
argparser.add_argument('--topdir', type=str,
    help='put all runs in this directory')
argparser.add_argument('--timeout', type=int, default=60,
    help='timeout for conversion, default 60')
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
argparser.add_argument('--only', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='only convert this comma-separated list of bench names')
argparser.add_argument('--debug', choices=debugopts, default=[],
    help='print stderr from this stage')
argparser.add_argument('--die', choices=debugopts, default=[],
    help='stop after first error from this stage')
args = argparser.parse_args()

configs = json.load(open(args.config_file))
if not(type(configs) is list): configs = [configs]
configdirs = [config['output_dir'] for config in configs]
assert len(configdirs) == len(set(configdirs)), 'configs must have different output directories!'

if not args.topdir:
  assert len(configs) == 1
  args.topdir = configs[0]['output_dir']

csvfile = f'{args.topdir}/stats.csv'
cw = csv.writer(open(csvfile, 'w'))
cw.writerow(['name', 'output_dir', 'all_pass', 'fail_command', 'flag_did_nothing'])

# returns stdout if successful
def runorrecord(command, listtoadd, stage, name=None, log=None, outdir=None):
  global args
  global cw
  log += [f'    {command}']
  stdout, stderr, rc = runsh(command, timeout=args.timeout)
  emptymodule = '''module {
}'''
  if (rc or rc is None) or emptymodule in stdout:
    listtoadd += [(name, command)]
    empty = "(empty)" if stdout and emptymodule in stdout else ""
    timeoutstr = "(timeout)" if rc is None else ""
    print(f'{CLR_RED}  failed{empty}{timeoutstr}: {command}{CLR_NONE}')
    log += [f'    failed{empty}{timeoutstr}']
    cw.writerow([name, outdir, 'no', command])
    if args.debug == stage:
      print(stderr, file=sys.stderr)
    if args.die == stage:
      exit(1)
    return None
  return stdout

# returns true if files are different
def checkdiff(f1, f2, command, log):
  _, _, rc = runsh(f'diff -wbB {f1} {f2}')
  if rc: return True
  print(f'  {CLR_YLW}pass output same as input: {command}{CLR_NONE}')
  log += ['    **pass output same as input**']
  return False


def convertbenches(config):
  print(f'PROCESSING DIR: {config["output_dir"]}')
  global mlirstepsfailed
  global conversionfailed
  global translationfailed
  global args
  global cw
  runmlirfailed = []
  runconvfailed = []
  runtranfailed = []

  uselesspass = False

  outdir = args.topdir + '/' + config['output_dir'] if args.topdir else config['output_dir']
  pbdir = config['polybench_dir']
  cgeist_args = config['cgeist_args']
  polymer_args = config['polymer_args']
  mliropt_args = config['mliropt_args']
  inline = config['inline'] if 'inline' in config else True

  logfile = f'{outdir}/logs/command_log.txt'
  log = []

  log += [f'config file: {args.config_file}, output dir {outdir}']
  log += [f'{config}']

  # if os.path.isdir(outdir):
  #   print('output directory already exists')
  #   exit(1)
  runsh(f'mkdir -p {outdir}')
  runsh(f'mkdir -p {outdir}/translated')
  runsh(f'mkdir -p {outdir}/logs')

  if not os.path.isdir(f'{pbdir}/kernel') or not os.path.isdir(f'{pbdir}/epilogue'):
    print('polybench_dir should be the output of generate_polybenches.py')
    exit(1)

  for file in glob(f'{pbdir}/kernel/*.c'):
    name = os.path.basename(file).replace('.c', '')
    if (args.only and name not in args.only) or (args.skip and name in args.skip):
      print(f'{CLR_YLW}skipping {file}{CLR_NONE}')
      log += [f'skipping {file}']
      continue
    print('converting ' + name)
    log += ['converting ' + name]

    nrunorrecord = ft.partial(runorrecord, name=name, log=log, outdir=outdir)

    file_original_mlir = f'{outdir}/{name}-1-original.mlir'
    stdout = nrunorrecord(f'cgeist {file} -S -function=kernel_{name.replace("-", "_")} {cgeist_args}',
                        runmlirfailed, 'mlir')
    if not stdout: continue
    # remove module and function attributes
    stdout = re.sub(r'module attributes {.*}', 'module', stdout)
    stdout = re.sub(r'func.func (.+) attributes {.*}', r'func.func \1', stdout)
    with open(file_original_mlir, 'w') as f:
      f.write(stdout)


    file_after_polymer = f'{outdir}/{name}-2-after-polymer.mlir'
    command = f'polymer-opt {file_original_mlir} {polymer_args}'
    stdout = nrunorrecord(command, runmlirfailed, 'mlir')
    if not stdout: continue
    # get rid of symbol()
    stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)
    with open(file_after_polymer, 'w') as f:
      f.write(stdout)
    if len(polymer_args):
      diff = checkdiff(file_original_mlir, file_after_polymer, command, log)
      if not diff: uselesspass = True

    file_after_inline = f'{outdir}/{name}-3-after-inline.mlir'
    if inline:
      stdout = nrunorrecord(f'mlir-opt --inline {file_after_polymer}',
                          runmlirfailed, 'mlir')
      if not stdout: continue
      # get rid of symbol()
      stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)
      with open(file_after_inline, 'w') as f:
        f.write(stdout)

    mliropt_input = file_after_polymer if not inline else file_after_inline


    file_after_mliropt = f'{outdir}/{name}-4-after-mliropt.mlir'
    command = f'mlir-opt {mliropt_input} {mliropt_args}'
    stdout = nrunorrecord(command, runmlirfailed, 'mlir')
    if not stdout: continue
    with open(file_after_mliropt, 'w') as f:
      f.write(stdout)
    if len(mliropt_args):
      diff = checkdiff(mliropt_input, file_after_mliropt, command, log)
      if not diff: uselesspass = True


    file_after_loweraffine = f'{outdir}/{name}-5-after-loweraffine.mlir'
    stdout = nrunorrecord(f'mlir-opt --lower-affine {file_after_mliropt}',
                        runmlirfailed, 'mlir')
    if not stdout: continue
    with open(file_after_loweraffine, 'w') as f:
      f.write(stdout)


    stdout = nrunorrecord(f'verif-opt --verif-scf-parallel-to-async {file_after_loweraffine}',
                        runconvfailed, 'convert')
    if not stdout: continue
    with open(f'{outdir}/{name}-6-after-conversion.mlir', 'w') as f:
      f.write(stdout)


    stdout = nrunorrecord(f'verif-translate --translate-to-past {outdir}/{name}-6-after-conversion.mlir',
                        runtranfailed, 'translate')
    if not stdout: continue
    with open(f'{outdir}/{name}-7-translated-no-includes.c', 'w') as f:
      f.write(stdout)
    if 'async' in stdout:
      _, _, rc = runsh(f'{EPILOGUE_SCRIPT_ASYNC} {outdir}/{name}-7-translated-no-includes.c {pbdir}/epilogue/{name}-epilogue.c {outdir}/translated/{name}-8-translated.c {VERIFREPO}')
      assert not rc
    else:
      _, _, rc = runsh(f'{EPILOGUE_SCRIPT} {outdir}/{name}-7-translated-no-includes.c {pbdir}/epilogue/{name}-epilogue-noasync.c {outdir}/translated/{name}-8-translated-noasyncepilogue.c {VERIFREPO}')
      assert not rc

    cw.writerow([name, outdir, 'yes', 'N/A', 'yes' if uselesspass else 'no'])

  log += ['\n\nfail before conversion:']
  for name, command in runmlirfailed:
    log += [f'    {name}: {command}']
  log += ['fail during conversion:']
  for name, command in runconvfailed:
    log += [f'    {name}: {command}']
  log += ['fail during translation:']
  for name, command in runtranfailed:
    log += [f'    {name}: {command}']

  mlirstepsfailed += runmlirfailed
  conversionfailed += runconvfailed
  translationfailed += runtranfailed

  with open(logfile, 'w') as f:
    f.write('\n'.join(log))



mlirstepsfailed = []
conversionfailed = []
translationfailed = []

for config in configs:
  convertbenches(config)


print('fail before conversion:')
for name, command in mlirstepsfailed:
  print(f'    {name}: {command}')
print('fail during conversion:')
for name, command in conversionfailed:
  print(f'    {name}: {command}')
print('fail during translation:')
for name, command in translationfailed:
  print(f'    {name}: {command}')

