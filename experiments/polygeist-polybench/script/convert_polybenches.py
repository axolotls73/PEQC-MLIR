#!/bin/env python3

from util import runsh
from util import *
from glob import glob
import sys
import re
import os
import shutil
import argparse
import json
import csv
import functools as ft

BASEDIR = os.path.abspath(f'{os.path.dirname(__file__)}/..')
VERIFREPO = os.path.abspath(f'{BASEDIR}/../..')
EPILOGUE_SCRIPT = f'{BASEDIR}/script/add_epilogue.sh'
EPILOGUE_SCRIPT_ASYNC = f'{BASEDIR}/script/add_epilogue_async.sh'

debugopts = ['mlir', 'translate', 'convert']

argparser = argparse.ArgumentParser()
argparser.add_argument('config_file', type=str, default=f'{BASEDIR}/config/default-config.json', nargs='?',
    help='json file with options, default config/default-config.json')
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
argparser.add_argument('--regenerate-cgeist', action='store_true',
    help='re-run cgeist instead of using cached files from cgeist_dir')
args = argparser.parse_args()

configobj = json.load(open(args.config_file))
# print(configobj)
pbdir = configobj['polybench_dir']
cgeist_dir = f'{BASEDIR}/' + configobj.get('cgeist_dir', 'polybench-cgeist')

expanded_configs = expand_configs(configobj)

executables = [
  'verif-opt',
  'verif-translate',
]
if args.regenerate_cgeist:
  executables += ['cgeist']
baseline_checked = {'mlir-opt', 'verif-opt', 'verif-translate', 'cgeist'}
extra_tools = set()
for c in expanded_configs:
  for step in c.get('pipeline', []):
    tool = step['tool']
    if tool not in baseline_checked:
      extra_tools.add(tool)
executables += list(extra_tools)
for ex in executables:
  if shutil.which(ex) is None:
    print(f'{ex} must be in PATH', file=sys.stderr)
    exit(1)

# Check that mlir-opt executables exist
for c in expanded_configs:
  path = c['_mlir_opt_path']
  if shutil.which(path) is None and not os.path.isfile(path):
    print(f'mlir-opt not found: {path}', file=sys.stderr)
    exit(1)

topdir = configobj['topdir']
runsh(f'mkdir -p {topdir}')

configdirs = [config['output_dir'] for config in expanded_configs]
assert len(configdirs) == len(set(configdirs)), 'configs must have different output directories!'

csvfile = f'{topdir}/conversion_stats.csv'
cw = csv.writer(open(csvfile, 'w'))
cw.writerow(['name', 'output_dir', 'optionset', 'mlir_opt_version', 'all_pass', 'fail_command', 'flag_did_nothing'])

# returns stdout if successful; writes stderr to stderrfile unconditionally
def runorrecord(command, listtoadd, stage, name=None, log=None, outdir=None, stderrfile=None, optionset=None, mlir_opt_name=None):
  global args
  global cw
  log += [f'    {command}']
  stdout, stderr, rc = runsh(command, timeout=args.timeout)
  if stderrfile is not None:
    with open(stderrfile, 'w') as f:
      f.write(stderr if stderr else '')
  emptymodule = '''module {
}'''
  if (rc or rc is None) or emptymodule in stdout:
    listtoadd += [(name, command)]
    empty = "(empty)" if stdout and emptymodule in stdout else ""
    timeoutstr = "(timeout)" if rc is None else ""
    print(f'{CLR_RED}  failed{empty}{timeoutstr}: {command}{CLR_NONE}')
    log += [f'    failed{empty}{timeoutstr}']
    cw.writerow([name, re.sub(r'.*/', '', outdir), optionset, mlir_opt_name, 'no', command, 'N/A'])
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
  global pbdir
  global mlirstepsfailed
  global conversionfailed
  global translationfailed
  global args
  global cw
  runmlirfailed = []
  runconvfailed = []
  runtranfailed = []

  outdir = topdir + '/' + config['output_dir']
  mlir_opt = config['_mlir_opt_path']
  mlir_opt_name = config['_mlir_opt_name']
  optionset = config['_optionset']
  steps = config['pipeline']
  n = len(steps)

  logfile = f'{outdir}/logs/command_log.txt'
  log = []

  log += [f'config file: {args.config_file}, output dir {outdir}']
  log += [f'{config}']

  runsh(f'mkdir -p {outdir}')
  runsh(f'mkdir -p {outdir}/translated')
  runsh(f'mkdir -p {outdir}/conversion')
  runsh(f'mkdir -p {outdir}/logs')

  if not os.path.isdir(f'{pbdir}/kernel') or not os.path.isdir(f'{pbdir}/epilogue'):
    print('polybench_dir should be the output of generate_polybenches.py')
    exit(1)

  if args.regenerate_cgeist:
    source_files = glob(f'{pbdir}/kernel/*.c')
    def get_name(file): return os.path.basename(file).replace('.c', '')
  else:
    if not os.path.isdir(cgeist_dir):
      print(f'cgeist_dir not found: {cgeist_dir}', file=sys.stderr)
      exit(1)
    source_files = glob(f'{cgeist_dir}/*.mlir')
    def get_name(file): return os.path.basename(file).replace('.mlir', '')
    if not source_files:
      print(f'no .mlir files found in cgeist_dir: {cgeist_dir}', file=sys.stderr)
      exit(1)

  for file in source_files:
    uselesspass = False
    name = get_name(file)
    if (args.only and name not in args.only) or (args.skip and name in args.skip):
      print(f'{CLR_YLW}skipping {file}{CLR_NONE}')
      log += [f'skipping {file}']
      continue
    print('converting ' + name)
    log += ['converting ' + name]

    nrunorrecord = ft.partial(runorrecord, name=name, log=log, outdir=outdir, optionset=optionset, mlir_opt_name=mlir_opt_name)

    current_file = None
    failed = False

    for i, step in enumerate(steps):
      tool_name = step['tool']
      step_args = step.get('args', '')
      label = step.get('label', tool_name)
      step_num = i + 1
      tool = mlir_opt if tool_name == 'mlir-opt' else tool_name
      outfile = f'{outdir}/conversion/{name}-{step_num}-{label}.mlir'
      stderrfile = f'{outdir}/conversion/{name}-{step_num}-{label}.stderr'

      if tool_name == 'cgeist':
        if args.regenerate_cgeist:
          stdout = nrunorrecord(
              f'cgeist {file} -S -function=kernel_{name.replace("-", "_")} {step_args}',
              runmlirfailed, 'mlir', stderrfile=stderrfile)
          if not stdout:
            failed = True
            break
          stdout = re.sub(r'module attributes {.*}', 'module', stdout)
          stdout = re.sub(r'func.func (.+) attributes {.*}', r'func.func \1', stdout)
        else:
          stdout = open(file).read()
          stdout = re.sub(r'module attributes {.*}', 'module', stdout)
          stdout = re.sub(r'func.func (.+) attributes {.*}', r'func.func \1', stdout)
          with open(stderrfile, 'w') as f:
            pass  # empty — no cgeist run
        with open(outfile, 'w') as f:
          f.write(stdout)

      else:
        stdout = nrunorrecord(f'{tool} {current_file} {step_args}',
                              runmlirfailed, 'mlir', stderrfile=stderrfile)
        if not stdout:
          failed = True
          break
        stdout = re.sub(r'symbol\((.*?)\)', r'\1', stdout)
        with open(outfile, 'w') as f:
          f.write(stdout)
        if step.get('track_did_nothing', False):
          diff = checkdiff(current_file, outfile, f'{tool} {step_args}', log)
          if not diff:
            uselesspass = True

      current_file = outfile

    if failed:
      continue

    # --- hardcoded tail ---
    file_after_loweraffine = f'{outdir}/conversion/{name}-{n+1}-after-loweraffine.mlir'
    stdout = nrunorrecord(f'{mlir_opt} --lower-affine {current_file}',
                        runmlirfailed, 'mlir',
                        stderrfile=f'{outdir}/conversion/{name}-{n+1}-after-loweraffine.stderr')
    if not stdout:
      continue
    with open(file_after_loweraffine, 'w') as f:
      f.write(stdout)

    file_after_conversion = f'{outdir}/conversion/{name}-{n+2}-after-conversion.mlir'
    stdout = nrunorrecord(f'verif-opt --verif-scf-parallel-to-async {file_after_loweraffine}',
                        runconvfailed, 'convert',
                        stderrfile=f'{outdir}/conversion/{name}-{n+2}-after-conversion.stderr')
    if not stdout:
      continue
    with open(file_after_conversion, 'w') as f:
      f.write(stdout)

    file_translated_no_includes = f'{outdir}/conversion/{name}-{n+3}-translated-no-includes.c'
    stdout = nrunorrecord(f'verif-translate --translate-to-past {file_after_conversion}',
                        runtranfailed, 'translate',
                        stderrfile=f'{outdir}/conversion/{name}-{n+3}-translated-no-includes.stderr')
    if not stdout:
      continue
    with open(file_translated_no_includes, 'w') as f:
      f.write(stdout)
    if 'async' in stdout:
      _, _, rc = runsh(f'{EPILOGUE_SCRIPT_ASYNC} {file_translated_no_includes} {pbdir}/epilogue/{name}-epilogue.c {outdir}/translated/{name}-{n+4}-translated.c {VERIFREPO}')
      assert not rc
    else:
      _, _, rc = runsh(f'{EPILOGUE_SCRIPT} {file_translated_no_includes} {pbdir}/epilogue/{name}-epilogue-noasync.c {outdir}/translated/{name}-{n+4}-translated-noasyncepilogue.c {VERIFREPO}')
      assert not rc

    cw.writerow([name, config['output_dir'], optionset, mlir_opt_name, 'yes', 'N/A', 'yes' if uselesspass else 'no'])

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

for config in expanded_configs:
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