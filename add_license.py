#!/bin/env python3

from subprocess import run as subprocess_run
from glob import glob
import os
import sys
import argparse
import re


argparser = argparse.ArgumentParser()
argparser.add_argument('file', type=str,
    help='add license to this file')
args = argparser.parse_args()

LICENSE = '''
/*
 * {filename}: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2024 Colorado State University
 *
 * This program can be redistributed and/or modified under the terms
 * of the license specified in the LICENSE.txt file at the root of the
 * project.
 *
 * Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
 *          Emily Tucker <emily.tucker@colostate.edu>
 * Author: Emily Tucker <emily.tucker@colostate.edu>
 *
 */

'''

typecommentmap = {
  '.sh': '#',
  '.py': '#',
  '.td': None,
  '.c': None,
  '.mlir': '//',
  '._mlir': '//',
}
replacecoms = [' */', '/*', ' *']

filename = args.file
with open(filename) as file:
  filestr = file.read()
  if 'Copyright (C)' in filestr:
    print('file already licensed')
    exit()

  license = LICENSE.format(filename=os.path.basename(filename))
  found = False
  for t in typecommentmap:
    ext, com = t, typecommentmap[t]
    if ext not in filename: continue
    found = True
    print(f'{ext} {com}')
    if com is not None:
      for rep in replacecoms:
        license = license.replace(rep, com)
  if not found:
    print(f'{filename}: file extension not supported')
    exit(1)

  if filestr[:2] == '#!':
    lines = filestr.splitlines(keepends=True)
    license = lines[0] + '\n' + license
    filestr = ''.join(lines[1:])

  filestr = license + filestr

with open(filename, 'w') as file:
  file.write(filestr)
