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

  # extract kernel, make function call out of signature and declare variables
  kernel, signature = re.search(f'(void kernel_{name.replace("-", "_")}\((.*?)\).*)int main',
      filestr, flags=re.DOTALL | re.MULTILINE).groups()
  signature = re.sub('\s\s+', ' ', signature)
  decls = ''
  for var in signature.split(','):
    typename, varname = var.replace('[', '').split()[:2]
    decls += f'  {typename}{"*" if "[" in var else ""} {varname};\n'
  signature = ', '.join([re.sub('\[.*\]', '', ''.join(s.split()[1:])) for s in signature.split(',')])

  epilogue = f'''
{{
{decls}
  kernel_{name.replace("-", "_")}({signature});
}}
'''

  with open(f'{newdir}/kernel/{name}.c', 'w') as f:
    f.write(kernel)

  with open(f'{newdir}/epilogue/{name}-epilogue.c', 'w') as f:
    f.write(epilogue)

  with open(f'{newdir}/interp/{name}-interp.c', 'w') as f:
    f.write("#pragma pocc-region-start\n")
    f.write(kernel)
    f.write(epilogue)
    f.write("#pragma pocc-region-end\n")

runsh(f'rm {PB_DIR}/*.preproc.c')
