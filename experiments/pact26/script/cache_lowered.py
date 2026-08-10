#!/bin/env python3
"""Snapshot the post-lower-affine .mlir files (the last mlir-opt stage) of a
completed experiment into a cache usable by
`convert_polybenches.py --use-cached-mliropt`, which then needs neither cgeist
nor any mlir-opt install.

Usage: ./script/cache_lowered.py <experiment-topdir> [<cache-root>]
       (default cache root: cached-lowered/<topdir>)
"""

from glob import glob
import os
import shutil
import sys

if len(sys.argv) < 2:
    print(__doc__, file=sys.stderr)
    exit(1)
topdir = sys.argv[1].rstrip('/')
cacheroot = sys.argv[2].rstrip('/') if len(sys.argv) > 2 else f'cached-lowered/{topdir}'

ncopied = 0
for conv in sorted(glob(f'{topdir}/*/conversion')):
    outdir = os.path.basename(os.path.dirname(conv))
    files = glob(f'{conv}/*-after-loweraffine.mlir')
    if not files:
        continue
    os.makedirs(f'{cacheroot}/{outdir}', exist_ok=True)
    for f in files:
        shutil.copyfile(f, f'{cacheroot}/{outdir}/{os.path.basename(f)}')
        ncopied += 1

stats = f'{topdir}/conversion_stats.csv'
if os.path.isfile(stats):
    os.makedirs(cacheroot, exist_ok=True)
    shutil.copyfile(stats, f'{cacheroot}/conversion_stats.csv')

print(f'cached {ncopied} lowered files from {topdir} into {cacheroot}')
