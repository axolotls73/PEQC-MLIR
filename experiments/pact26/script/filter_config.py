#!/bin/env python3
"""Write copies of experiment configs restricted to a single mlir-opt version.

Used by `run-all.sh --llvm <name>` to validate one LLVM version instead of all
three. Filtering happens on `mlir_opt_versions`, which is the only place the
version dimension enters: expand_configs() builds the cartesian product from
it, and output/cache directories are named <version>-<optionset>, so a filtered
config picks up exactly its own subset of cached-lowered/.

Configs with no `mlir_opt_versions` key (cgeist) are copied through unchanged.

Usage: ./script/filter_config.py --llvm <name> --out-dir <dir> <config.json>...
"""

import argparse
import json
import os
import shutil

argparser = argparse.ArgumentParser()
argparser.add_argument('--llvm', required=True,
    help='mlir_opt_versions entry to keep (e.g. llvm23)')
argparser.add_argument('--out-dir', required=True,
    help='directory to write the rewritten configs into')
argparser.add_argument('config_files', nargs='+')
args = argparser.parse_args()

os.makedirs(args.out_dir, exist_ok=True)

for path in args.config_files:
    out = f'{args.out_dir}/{os.path.basename(path)}'
    configobj = json.load(open(path))
    versions = configobj.get('mlir_opt_versions')

    if versions is None:
        # no version dimension (cgeist) — nothing to filter
        shutil.copyfile(path, out)
        continue

    kept = [v for v in versions if v['name'] == args.llvm]
    if not kept:
        available = ', '.join(v['name'] for v in versions)
        raise SystemExit(
            f'{path}: no mlir_opt_versions entry named "{args.llvm}" '
            f'(available: {available})')
    configobj['mlir_opt_versions'] = kept

    with open(out, 'w') as f:
        json.dump(configobj, f, indent=2)

print(f'wrote {len(args.config_files)} configs filtered to {args.llvm} '
      f'into {args.out_dir}')
