#!/bin/env python3

from util import runsh
from util import *
from glob import glob
import sys
import re
import os
import argparse
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
argparser.add_argument('polybench_dir', type=str)
argparser.add_argument('output_dir', type=str)
args = argparser.parse_args()

outdir = args.output_dir
# if os.path.isdir(outdir):
#   print('output directory already exists')
#   exit(1)
runsh(f'mkdir {outdir}')
runsh(f'mkdir {outdir}/translated')

pbdir = args.polybench_dir
if not os.path.isdir(f'{pbdir}/kernel') or not os.path.isdir(f'{pbdir}/epilogue'):
  print('polybench_dir should be the output of generate_polybenches.py')
  exit(1)


# returns stdout if successful
def runorrecord(command, listtoadd, stage, name=None):
  global args
  stdout, stderr, rc = runsh(command)
  emptymodule = '''module {
}'''
  if rc or emptymodule in stdout:
    listtoadd += [(name, command)]
    print(f'{CLR_RED}  failed{"(empty)" if emptymodule in stdout else ""}: {command}{CLR_NONE}')
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
    continue
  print('converting ' + name)

  nrunorrecord = ft.partial(runorrecord, name=name)

  stdout = nrunorrecord(f'cgeist {file} -S -function=kernel_{name} -raise-scf-to-affine',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  # remove module and function attributes
  stdout = re.sub(r'module attributes {.*}', 'module', stdout)
  stdout = re.sub(r'func.func (.+) attributes {.*}', r'func.func \1', stdout)

  with open(f'{outdir}/{name}.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'polymer-opt -reg2mem -extract-scop-stmt -pluto-opt {outdir}/{name}.mlir | /opt/mlir-air/llvm/build/bin/mlir-opt --inline',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue
  # get rid of symbol()
  stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)

  with open(f'{outdir}/{name}-pluto-inline.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'mlir-opt --affine-parallelize {outdir}/{name}-pluto-inline.mlir',
                       mlirstepsfailed, 'mlir')
  if not stdout: continue

  with open(f'{outdir}/{name}-parallelized.mlir', 'w') as f:
    f.write(stdout)


  stdout = nrunorrecord(f'mlir-opt --affine-parallelize {outdir}/{name}-pluto-inline.mlir',
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
  # stdout = stdout.replace('#pragma pocc-region-end', '')
  # with open(f'{pbdir}/epilogue/{name}-epilogue.c') as f:
  #   stdout += ''.join(f.readlines())
  # stdout += '#pragma pocc-region-end\n'

  # with open(f'{outdir}/translated/{name}-translated.c', 'w') as f:
  #   f.write(stdout)

print('fail before conversion:')
for name, command in mlirstepsfailed:
  print(f'    {name}: {command}')
print('fail during conversion:')
for name, command in conversionfailed:
  print(f'    {name}: {command}')
print('fail during translation:')
for name, command in translationfailed:
  print(f'    {name}: {command}')

