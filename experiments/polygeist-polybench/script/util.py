from subprocess import run as subprocess_run, Popen, PIPE, TimeoutExpired
from signal import SIGINT
import os
from glob import glob

STDOUT = 0
STDERR = 1
RETURNCODE = 2

def runsh_success(*args, timeout=None):
  out = subprocess_run(args, capture_output=True, shell=True, timeout=timeout)
  return out.returncode == 0

def run(*args, timeout=None):
  out = subprocess_run(args, capture_output=True, timeout=timeout)
  return out.stdout.decode(), out.stderr.decode(), out.returncode

def runsh(command, timeout=None):
  #https://stackoverflow.com/a/36955420
  with Popen(command, shell=True, stdout=PIPE, stderr=PIPE, start_new_session=True) as process:
    try:
        output = process.communicate(timeout=timeout)
        returncode = process.returncode
    except TimeoutExpired:
        os.killpg(process.pid, SIGINT) # send signal to the process group
        output = process.communicate()
        returncode = None
  stdout, stderr = output

  # out = subprocess_run(args, capture_output=True, shell=True, timeout=timeout)
  return stdout.decode() if stdout else None, stderr.decode() if stderr else None, returncode

CLR_RED = '\033[31m'
CLR_GRN = '\033[32m'
CLR_YLW = '\033[33m'
CLR_GRAY = '\033[90m'
CLR_NONE = '\033[0m'
NL = '\n'

SCRIPTDIR = os.path.dirname(os.path.realpath(__file__))
BASEDIR = os.getcwd()

def getpath(s, isfunc):
  if isfunc(f'{BASEDIR}/{s}'):
    return f'{BASEDIR}/{s}'
  elif isfunc(s):
    return s
  else: assert 0, f'[run_exps] invalid file path {s}'

def getdirpath(d): return getpath(d, os.path.isdir)
def getfilepath(f): return getpath(f, os.path.isfile)

BASEDIR = os.path.abspath(f'{os.path.dirname(__file__)}/..')

# get all bench names
benchnames = [os.path.basename(f).replace('.c', '') for f in glob(f'{BASEDIR}/polybench-input/*.c')]

# get liveout vars for benches
getliveoutvarfile = lambda name : f'{BASEDIR}/liveoutvars/polybench_{name.replace("-", "_")}-liveoutvars.txt'
benchtoliveout = {name:
    ''.join(open(getliveoutvarfile(name)).readlines()).strip()
        if os.path.isfile(getliveoutvarfile(name))
        else print(f'{CLR_YLW}no liveout var file found for bench "{name}" (checked at {getliveoutvarfile(name)}){CLR_NONE}')
      for name in benchnames}