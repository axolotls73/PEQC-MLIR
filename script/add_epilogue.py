#!/bin/env python3

#
# add_epilogue.py: This file is part of the PEQC-MLIR project.
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
import os
import argparse



def addincludes(instr):
  REGIONSTART = '#pragma pocc-region-start'
  macrospath = os.path.abspath(f'{VERIFDIR}/tools/verif-translate/include/interp_macros.h')
  prologuepath = os.path.abspath(f'{VERIFDIR}/tools/verif-translate/include/prologue.h')
  if not os.path.exists(macrospath) or not os.path.exists(prologuepath):
    print(f'error: interp_macros.h or prologue.h not found')
    exit(1)

  instr = instr.replace(REGIONSTART, f'{REGIONSTART}\n#include "{macrospath}"')

  def getlastblock(s):
    block = ''
    parenstack = 0
    for c in reversed(s):
      if not len(block) and c != '}': continue
      block = c + block
      if c == '}': parenstack += 1
      elif c == '{': parenstack -= 1
      if parenstack == 0: break
    return block

  lastblock = getlastblock(instr)
  instr = instr.replace(lastblock[1:-1], f'\n#include "{prologuepath}"\n' + lastblock[1:-1])
  return instr


if __name__ == '__main__':
  argparser = argparse.ArgumentParser()
  argparser.add_argument('input_file', type=str,
      help='Translated C file to add epilogue (or just #includes) to')
  argparser.add_argument('epilogue_file', type=str, nargs='?',
      help='Epilogue file - if not specified, just add #includes. Contains only a top-level block.')
  argparser.add_argument('output_file', type=str,
      help='Output file')
  args = argparser.parse_args()
  print(args)

  with open(args.input_file) as f:
    instr = f.read()

  REGIONEND = '#pragma pocc-region-end'
  if args.epilogue_file:
    with open(args.epilogue_file) as f:
      epstr = f.read()
    instr = instr.replace(REGIONEND, '')
    instr += epstr
    instr += REGIONEND

  instr = addincludes(instr)

  with open(args.output_file, 'w') as f:
    f.write(instr)
