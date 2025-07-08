#!/usr/bin/env python3

import subprocess
import os
from pygments import highlight
from pygments.lexers import get_lexer_by_name
from pygments.formatters import TerminalFormatter
from MLIRLexer import MlirLexer

# ANSI escape codes for bold text
BOLD = '\033[1m'
END_BOLD = '\033[0m'

PASTCHECKER_DIR = '../../../past-0.7.3-peqc-mlir/src/'
PASTCHECKER_COMMAND = 'pastchecker --enable-preprocessor --enable-subtrees --happens-before'
PASTCHECKER_COMMAND_VERBOSE = 'pastchecker --enable-preprocessor --enable-subtrees --verbose --happens-before'

INPUT_DIR = 'input-small'

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ADD_EPILOGUE = f'{SCRIPT_DIR}/../../../script/add_epilogue.py'

USE_PYGMENTS = True
WAIT_FOR_INPUT = True

def wait():
  if not WAIT_FOR_INPUT: return
  input()

def run(command_string: str, output_file=None, print_command=True, wait_before_run=False):
  if print_command:
    print(f'{BOLD}{command_string}{END_BOLD}\n')
  if wait_before_run:
    wait()
  if output_file:
    command_string += f' > {output_file}'
  subprocess.run(command_string, shell=True, capture_output=False)

def fprint(file_path: str, print_name = False):
  if print_name:
    print(f'{BOLD}{os.path.basename(file_path)}{END_BOLD}\n')
    wait()
  if os.path.exists(file_path):
    with open(file_path, 'r') as f:
      filestr = f.read().strip()
      if USE_PYGMENTS and file_path.endswith('.mlir'):
        highlighted_content = highlight(filestr, MlirLexer(), TerminalFormatter())
        print(highlighted_content.strip() + '\n')
      elif USE_PYGMENTS and file_path.endswith('.c'):
        highlighted_content = highlight(filestr, get_lexer_by_name('c', stripall=True), TerminalFormatter())
        print(highlighted_content.strip() + '\n')
      else:
        print(filestr + '\n')
  else:
    print(f'file not found')

def single_pass(command, output_file, print_out=True, wait_after=True):
  run(command, output_file=output_file)
  if wait_after:
    wait()
  if print_out:
    fprint(output_file)
    if wait_after:
      wait()



def main():
  # put version of pastchecker above at beginning of path
  os.environ['PATH'] = PASTCHECKER_DIR + os.pathsep + os.environ.get('PATH', '')
  run('which pastchecker')

  print()

  # INPUT

  fprint(f'{INPUT_DIR}/air_input.mlir', print_name=True)
  wait()

  single_pass(f'mlir-opt --convert-linalg-to-affine-loops --lower-affine {INPUT_DIR}/air_input.mlir',
      'generated/air_input-lowered.mlir')

  single_pass('verif-opt --verif-create-main=argument-names="A,B,C" generated/air_input-lowered.mlir',
      'generated/air_input-converted.mlir')

  run('verif-translate --translate-to-past generated/air_input-converted.mlir',
      output_file='generated/air_input-result.c')
  run(f'{ADD_EPILOGUE} generated/air_input-result.c generated/air_input-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/air_input-translated.c')
  wait()

  fprint(f'{INPUT_DIR}/compare.c', print_name=True)
  wait()

  run(f'{PASTCHECKER_COMMAND} {INPUT_DIR}/compare.c generated/air_input-translated.c "A,B,C"',
      wait_before_run=True)
  wait()

  # TILED

  fprint(f'{INPUT_DIR}/air_tiled.mlir', print_name=True)
  wait()

  single_pass(f'mlir-opt --convert-linalg-to-affine-loops --lower-affine {INPUT_DIR}/air_tiled.mlir',
      'generated/air_tiled-lowered.mlir')

  single_pass('verif-opt --verif-scf-parallel-to-async --verif-create-main=argument-names="A,B,C" generated/air_tiled-lowered.mlir',
      'generated/air_tiled-converted.mlir')

  run('verif-translate --translate-to-past generated/air_tiled-converted.mlir',
      output_file='generated/air_tiled-result.c')
  run(f'{ADD_EPILOGUE} generated/air_tiled-result.c generated/air_tiled-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/air_tiled-translated.c')
  wait()

  # maybe don't need to print this again
  # fprint(f'{INPUT_DIR}/compare.c', print_name=True)
  # wait()


  run(f'{PASTCHECKER_COMMAND} generated/air_input-translated.c generated/air_tiled-translated.c "A,B,C"',
      wait_before_run=True)
  wait()

  # SYNC

  fprint(f'{INPUT_DIR}/air_sync.mlir', print_name=True)
  wait()

  single_pass(f'air-opt --convert-linalg-to-affine-loops --lower-affine {INPUT_DIR}/air_sync.mlir',
      'generated/air_sync-lowered.mlir')

  single_pass('verif-opt --verif-air-to-scf-par --verif-scf-parallel-to-async --verif-air-dma-to-memref --verif-create-main=argument-names="A,B,C" generated/air_sync-lowered.mlir',
      'generated/air_sync-converted.mlir')

  run('verif-translate --translate-to-past generated/air_sync-converted.mlir',
      output_file='generated/air_sync-result.c')
  run(f'{ADD_EPILOGUE} generated/air_sync-result.c generated/air_sync-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/air_sync-translated.c')
  wait()

  run(f'{PASTCHECKER_COMMAND} generated/air_input-translated.c generated/air_sync-translated.c "A,B,C"',
      wait_before_run=True)
  wait()

  # PLACED

  fprint(f'{INPUT_DIR}/placed.air.mlir', print_name=True)
  wait()

  single_pass(f'air-opt --convert-linalg-to-affine-loops --lower-affine {INPUT_DIR}/placed.air.mlir',
      'generated/placed-lowered.mlir')

  single_pass('verif-opt --verif-air-convert-channel --verif-create-main=argument-names="A,B,C" generated/placed-lowered.mlir',
      'generated/placed-channels-converted.mlir')

  single_pass('verif-opt --lower-affine --verif-air-to-scf-par --verif-scf-parallel-to-async\
 --verif-air-execute-to-async --verif-air-dma-to-memref\
 --verif-scf-parallel-to-async --verif-move-to-main generated/placed-channels-converted.mlir',
      'generated/placed-converted.mlir')
  # this is a dumb hack so I didn't have to make an mlir pass to get rid of all the conversion
  # between air.async.token and async.token
  run("sed -i 's/!air.async.token/!async.token/g' generated/placed-converted.mlir",
      print_command=False)

  run('verif-translate --translate-to-past generated/placed-converted.mlir',
      output_file='generated/placed-result.c')
  run(f'{ADD_EPILOGUE} generated/placed-result.c generated/placed-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/placed-translated.c')
  wait()

  run(f'{PASTCHECKER_COMMAND_VERBOSE} generated/air_input-translated.c generated/placed-translated.c "A,B,C"',
      wait_before_run=True)
  wait()

  # AIE

  fprint(f'{INPUT_DIR}/npu.air.mlir', print_name=True)
  wait()

  fprint(f'{INPUT_DIR}/modified-npu.air.mlir', print_name=True)
  wait()

  single_pass(f'verif-opt --verif-convert-aie --lower-affine {INPUT_DIR}/modified-npu.air.mlir',
      'generated/npu-converted.mlir')

  run('verif-translate --translate-to-past generated/npu-converted.mlir',
      output_file='generated/npu-result.c')
  run(f'{ADD_EPILOGUE} generated/npu-result.c generated/npu-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/npu-translated.c')
  wait()

  run(f'{PASTCHECKER_COMMAND_VERBOSE} generated/air_input-translated.c generated/npu-translated.c "A,B,C"',
      wait_before_run=True)
  wait()

  # AIE with lock->spawn conversion

  # fprint(f'{INPUT_DIR}/npu.air.mlir', print_name=True)
  # wait()

  # fprint(f'{INPUT_DIR}/modified-npu.air.mlir', print_name=True)
  # wait()

  single_pass(f'verif-opt --verif-convert-aie=counting-semaphore-to-spawn --lower-affine {INPUT_DIR}/modified-npu.air.mlir',
      'generated/npu-locks-converted.mlir')

  run('verif-translate --translate-to-past generated/npu-locks-converted.mlir',
      output_file='generated/npu-locks-result.c')
  run(f'{ADD_EPILOGUE} generated/npu-locks-result.c generated/npu-locks-translated.c > /dev/null',
      print_command=False)
  wait()
  fprint('generated/npu-locks-translated.c')
  wait()

  run(f'{PASTCHECKER_COMMAND_VERBOSE} generated/air_input-translated.c generated/npu-locks-translated.c "A,B,C"',
      wait_before_run=True)
  wait()



if __name__ == '__main__':
  main()
