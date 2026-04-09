#!/bin/env python3

from util import runsh
from util import *
from glob import glob
from sys import argv
import re
import os

BASEDIR = os.path.abspath(f'{os.path.dirname(__file__)}/..')
PB_DIR = f'{BASEDIR}/polybench-input'
CPP_SCRIPT = f'{PB_DIR}/create_cpped_version.pl'

flags = argv[1:]

def get_int_param_values(name, int_params):
  """Evaluate polybench size defines for each int scalar param via CPP.
  Uses the convention that param 'ni' corresponds to define 'NI'."""
  if not int_params:
    return {}
  stub = f'#include "{name}.h"\n'
  stub += '\n'.join(f'int {p} = {p.upper()};' for p in int_params)
  import tempfile
  with tempfile.NamedTemporaryFile(suffix='.c', dir=PB_DIR, mode='w', delete=False) as f:
    f.write(stub)
    tmppath = f.name
  stdout, _, _ = runsh(f'gcc -E -I {PB_DIR} {" ".join(flags)} {tmppath} 2>/dev/null')
  os.unlink(tmppath)
  values = {}
  for line in stdout.splitlines():
    m = re.match(r'\s*int (\w+) = (\d+);', line)
    if m:
      values[m.group(1)] = int(m.group(2))
  return values
newdir = BASEDIR + "/generated-polybench-" + "-".join(
    [f.replace("-D", "").replace("POLYBENCH_", "").lower().replace("_", "-") for f in flags])

runsh(f'mkdir -p {newdir}')
runsh(f'mkdir -p {newdir}/interp')
runsh(f'mkdir -p {newdir}/epilogue')
runsh(f'mkdir -p {newdir}/kernel')

for cfile in glob(f'{PB_DIR}/*.c'):
  stdout, stderr, rc = runsh(' '.join([CPP_SCRIPT, cfile, '"' + ' '.join(flags) + '"']))

for cfile in glob(f'{PB_DIR}/*.preproc.c'):
  with open(cfile) as f:
    filestr = ''.join(f.readlines())

  name, = re.search('.*\/(.+)\.preproc\.c', cfile).groups()
  print(name)

  # get rid of cpp stuff
  filestr = re.sub('# .*', '', filestr)

  # for adi: get rid of cast
  filestr = re.sub('\(double\)(\d+)', r'\1.0', filestr)

  # extract kernel, make function call out of signature and declare variables
  kernel, signature = re.search(f'(void kernel_{name.replace("-", "_")}\((.*?)\).*)int main',
      filestr, flags=re.DOTALL | re.MULTILINE).groups()
  signature = re.sub('\s\s+', ' ', signature)
  int_params = [var.strip().split()[1] for var in signature.split(',')
                if '[' not in var and var.strip().startswith('int')]
  param_values = get_int_param_values(name, int_params)
  decls = ''
  for var in signature.split(','):
    typename, varname = var.replace('[', '').split()[:2]
    if '[' in var:
      decls += f'  {typename}* {varname};\n'
    elif varname in param_values:
      decls += f'  {typename} {varname} = {param_values[varname]};\n'
    else:
      decls += f'  {typename} {varname};\n'
  signature = ', '.join([re.sub('\[.*\]', '', ''.join(s.split()[1:])) for s in signature.split(',')])

  includes = '''
#include <math.h>
'''

  interp_defines = '''
#define expf exp
#define powf pow

'''

  epilogue = lambda asyncpragma : f'''
{{
{decls}
{f"#pragma peqc async_execute{NL}{{" if asyncpragma else ""}
  kernel_{name.replace("-", "_")}({signature});
{"}" if asyncpragma else ""}
}}
'''

  with open(f'{newdir}/kernel/{name}.c', 'w') as f:
    f.write(includes)
    f.write(kernel)

  with open(f'{newdir}/epilogue/{name}-epilogue.c', 'w') as f:
    f.write(epilogue(True))
  with open(f'{newdir}/epilogue/{name}-epilogue-noasync.c', 'w') as f:
    f.write(epilogue(False))

  with open(f'{newdir}/interp/{name}-interp.c', 'w') as f:
    f.write(interp_defines)
    f.write("#pragma pocc-region-start\n")
    f.write(kernel)
    f.write(epilogue(False))
    f.write("#pragma pocc-region-end\n")

runsh(f'rm {PB_DIR}/*.preproc.c')
