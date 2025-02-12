#!/bin/env python3

#
# util.py: This file is part of the PEQC-MLIR project.
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


from subprocess import run as subprocess_run
import os


def run(arg):
  out = subprocess_run(arg, shell=True, capture_output=True)
  return out.stdout.decode(), out.stderr.decode(), out.returncode

CLR_RED = '\033[31m'
CLR_GRN = '\033[32m'
CLR_YLW = '\033[33m'
CLR_GRAY = '\033[90m'
CLR_NONE = '\033[0m'

SCRIPTDIR = os.path.dirname(os.path.realpath(__file__))
VERIFDIR = os.path.realpath(f'{SCRIPTDIR}/..')
