#!/bin/env python3

from util import runsh
from util import *
from glob import glob
import sys
import re
import os
import argparse
import json
import itertools as it
import functools as ft

BASEDIR = os.path.abspath(f'{os.path.dirname(__file__)}/..')
VERIFREPO = os.path.abspath(f'{BASEDIR}/../..')
EPILOGUE_SCRIPT = f'{VERIFREPO}/test/add_epilogue.sh'

debugopts = ['mlir', 'translate', 'convert']

argparser = argparse.ArgumentParser()
argparser.add_argument('--skip', type=lambda t: [s.strip() for s in t.split(',')], default=[],
    help='comma-separated list of bench names to skip')
argparser.add_argument('--debug', choices=debugopts, default=[],
    help='print stderr from this stage')
argparser.add_argument('--die', choices=debugopts, default=[],
    help='stop after first error from this stage')
argparser.add_argument('config_file', type=str, default=f'{BASEDIR}/config/default-config.json', nargs='?',
    help='json file with options, default config/default-config.json')
args = argparser.parse_args()

config = json.load(open(args.config_file))
outdir = config['output_dir']
pbdir = config['polybench_dir']
cgeist_args = config['cgeist_args']
polymer_args = config['polymer_args']
mliropt_args = config['mliropt_args']
inline = config['inline']

# if os.path.isdir(outdir):
#   print('output directory already exists')
#   exit(1)
runsh(f'mkdir {outdir}')
runsh(f'mkdir {outdir}/translated')
runsh(f'mkdir {outdir}/logs')

if not os.path.isdir(f'{pbdir}/kernel') or not os.path.isdir(f'{pbdir}/epilogue'):
  print('polybench_dir should be the output of generate_polybenches.py')
  exit(1)

# cgeist_args = '-raise-scf-to-affine'
# polymer_args = '-reg2mem -extract-scop-stmt -pluto-opt'
# mliropt_args = '--affine-parallelize'
# inline = True

logfile = f'{outdir}/logs/command_log.txt'
log = []

log += [f'config file: {args.config_file}']
log += ['  ' + l.strip() for l in open(args.config_file).readlines()]

# returns stdout if successful
def runorrecord(command, listtoadd, stage, name=None):
  global args
  global log
  log += [f'    {command}']
  stdout, stderr, rc = runsh(command)
  emptymodule = '''module {
}'''
  if rc or emptymodule in stdout:
    listtoadd += [(name, command)]
    print(f'{CLR_RED}  failed{"(empty)" if emptymodule in stdout else ""}: {command}{CLR_NONE}')
    log += [f'    failed{"(empty)" if emptymodule in stdout else ""}']
    if args.debug == stage:
      print(stderr, file=sys.stderr)
    if args.die == stage:
      exit(1)
    return None
  return stdout

mlirstepsfailed = []
conversionfailed = []
translationfailed = []

for file in glob(f'{pbdir}/kernel/*.c'):
  name = os.path.basename(file).replace('.c', '')
  if name in args.skip:
    print(f'{CLR_YLW}skipping {file}{CLR_NONE}')
    log += [f'skipping {file}']
    continue
  print('converting ' + name)
  log += ['converting ' + name]

  nrunorrecord = ft.partial(runorrecord, name=name)

  stdout = nrunorrecord(f'cgeist {file} -S -function=kernel_{name.replace("-", "_")} {cgeist_args}',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  # remove module and function attributes
  stdout = re.sub(r'module attributes {.*}', 'module', stdout)
  stdout = re.sub(r'func.func (.+) attributes {.*}', r'func.func \1', stdout)
  with open(f'{outdir}/{name}.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'polymer-opt {outdir}/{name}.mlir {polymer_args}',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  # get rid of symbol()
  stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)
  with open(f'{outdir}/{name}-pluto.mlir', 'w') as f:
    f.write(stdout)


  if inline:
    stdout = nrunorrecord(f'mlir-opt --inline {outdir}/{name}-pluto.mlir',
                        mlirstepsfailed, 'mlir')
    if not stdout: continue
    # get rid of symbol()
    stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)
    with open(f'{outdir}/{name}-pluto-inline.mlir', 'w') as f:
      f.write(stdout)

  mliropt_input = f'{outdir}/{name}-pluto.mlir' if not inline else f'{outdir}/{name}-pluto-inline.mlir'


  stdout = nrunorrecord(f'mlir-opt {mliropt_input} {mliropt_args}',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  with open(f'{outdir}/{name}-parallelized.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'mlir-opt --lower-affine {outdir}/{name}-parallelized.mlir',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  with open(f'{outdir}/{name}-lowered.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'verif-opt --verif-scf-parallel-to-async {outdir}/{name}-lowered.mlir',
                       conversionfailed, 'convert')
  if not stdout: continue
  with open(f'{outdir}/{name}-converted.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'verif-translate --translate-to-past {outdir}/{name}-converted.mlir',
                       translationfailed, 'translate')
  if not stdout: continue
  with open(f'{outdir}/{name}-translated-no-includes.c', 'w') as f:
    f.write(stdout)
  _, _, rc = runsh(f'{EPILOGUE_SCRIPT} {outdir}/{name}-translated-no-includes.c {pbdir}/epilogue/{name}-epilogue.c {outdir}/translated/{name}-translated.c {VERIFREPO}')
  assert not rc

print('fail before conversion:')
for name, command in mlirstepsfailed:
  print(f'    {name}: {command}')
print('fail during conversion:')
for name, command in conversionfailed:
  print(f'    {name}: {command}')
print('fail during translation:')
for name, command in translationfailed:
  print(f'    {name}: {command}')

with open(logfile, 'w') as f:
  f.write('\n'.join(log))
