#!/bin/env python3

#
# peqc-mlir.py: This file is part of the PEQC-MLIR project.
#
# Copyright (C) 2024 Colorado State University
#
# This program can be redistributed and/or modified under the terms
# of the license specified in the LICENSE.txt file at the root of the
# project.
#
# Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
#          Emily Tucker <emily.tucker@colostate.edu>
# Author: Emily Tucker <emily.tucker@colostate.edu>
#
#


from util import *
from add_epilogue import addincludes
import sys
import shutil
import os
import argparse
import re


argparser = argparse.ArgumentParser(
  # prog="PEQC-MLIR",
  description="Check two MLIR files for equivalence: each file must \
define 'func.func @main' as the entry point of the program."
)
argparser.add_argument('file1', type=str,
    help='MLIR file to check for equivalence')
argparser.add_argument('file2', type=str,
    help='MLIR file to check for equivalence')
argparser.add_argument('liveoutvars', type=lambda t: [s.strip() for s in t.split(',')],
    help='comma-separated list of variable names to check for equivalence: each must be declared as memref.global')
argparser.add_argument('--verbose', action='store_true',
    help='show output from PEQC')
argparser.add_argument('--debug', action='store_true',
    help='runs PEQC with "--verbose --debug"')
argparser.add_argument('--peqc-options', type=lambda t: {s.strip() for s in t.split()},
    help='replaces default options to PEQC (overrides --verbose and --debug above)')
argparser.add_argument('--keep', action='store_true',
    help='keep intermediate translation/conversion files')
argparser.add_argument('--temp-dir', type=str, default='.peqc-files',
    help='the directory to store intermediate files in, default .peqc-files')
argparser.add_argument('--seq-verif-only', action='store_true',
    help='runs PEQC with "--seq-verif-only"')
argparser.add_argument('--pastchecker-path', type=str,
    help='how to invoke pastchecker: default is pastchecker (assumes pastchecker is in your path)')
args = argparser.parse_args()

pastcheckerpath = args.pastchecker_path if args.pastchecker_path else 'pastchecker'

executables = [
  'mlir-opt',
]
if not args.pastchecker_path:
  executables += [pastcheckerpath]
for ex in executables:
  if shutil.which(ex) is None:
    print(f'{ex} must be in PATH', file=sys.stderr)
    exit(1)

file1 = args.file1
file2 = args.file2
liveoutvars = args.liveoutvars

tempfiles = []
removetempdir = False

def die():
  global tempfiles
  if not args.keep:
    for file in set(tempfiles):
      if os.path.isfile(file):
        os.remove(file)
    if removetempdir and os.path.isdir(args.temp_dir):
      os.rmdir(args.temp_dir)
  exit(1)

pastoptions = {
  '--verbose',
  '--timing-mode',
  '--enable-preprocessor',
  '--enable-subtrees',
  '--symbolic-conditionals',
}
if args.seq_verif_only:
  pastoptions.add('--seq-verif-only')
if args.debug:
  pastoptions = pastoptions.union({'--debug', '--verbose'})
if args.peqc_options:
  pastoptions = args.peqc_options

PASTCOMMAND = f'{pastcheckerpath} {" ".join(pastoptions)}'


# check that files are valid
for filename in [file1, file2]:
  file = open(filename).read()

  if re.search(r'(?<!%)func.func', file):
    assert re.search(r'(?<!%)func.func\s*@main', file), \
        f'main function not found in {filename}'

  for var in liveoutvars:
    assert re.search(rf'(?<!%)memref.global.*@{var}\s+:', file), \
        f'memref.global declaration for variable "{var}" not found in {filename}'

eqfiles = []

# convert and translate files
for filename, id in zip([file1, file2], ['1', '2']):
  file = open(filename).read()

  tempdir = args.temp_dir
  _, filebasename = os.path.split(filename)
  if not os.path.isdir(tempdir):
    os.mkdir(tempdir)
    removetempdir = True
  lfilename = f'{tempdir}/peqc-{id}-{filebasename}-lowered.mlir'
  cfilename = f'{tempdir}/peqc-{id}-{filebasename}-conversion.mlir'
  tfilename = f'{tempdir}/peqc-{id}-{filebasename}-translation.c'
  eqfiles += [tfilename]
  tempfiles += [tfilename, cfilename, lfilename]


  out, err, rc = run(f'mlir-opt --convert-linalg-to-affine-loops --lower-affine {filename} > {lfilename}')
  if rc:
    print(f'{err}\n{CLR_RED}mlir-opt error{CLR_NONE}')
    die()

  out, err, rc = run(f'{VERIFDIR}/build/bin/verif-opt --verif-scf-parallel-to-async {lfilename} > {cfilename}')
  if rc:
    print(f'{err}\n{CLR_RED}verif-opt error{CLR_NONE}')
    die()

  out, err, rc = run(f'{VERIFDIR}/build/bin/verif-translate --translate-to-past {cfilename}')
  if rc:
    print(f'{err}\n{CLR_RED}verif-translate error{CLR_NONE}')
    die()

  out = addincludes(out)

  with open(tfilename, 'w') as tfile:
    tfile.write(out)

# check equivalence
liveoutvars = ','.join(liveoutvars)
out, err, rc = run(f'{PASTCOMMAND} {eqfiles[0]} {eqfiles[1]} "{liveoutvars}"')

if args.verbose:
  print(out)
  print(err, file=sys.stderr)

if rc:
  print(f'{err}\n{CLR_RED}PEQC error{CLR_NONE}')
  die()

if 'YES' in out:
  print(f'{CLR_GRN}YES, {file1} and {file2} are equivalent{CLR_NONE}')
else:
  print(out)
  print(err)
  print(f'{CLR_RED}NO, {file1} and {file2} could not be proved equivalent{CLR_NONE}')


if not args.keep:
  for file in set(tempfiles):
    os.remove(file)
