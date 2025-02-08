# PEQC-MLIR



## Building PEQC-MLIR

### Prerequisites

To build PEQC-MLIR, first install its dependencies: LLVM version 20.0.0git with MLIR,
and optionally MLIR-AIR commit 07174f8a and MLIR-AIE commit c8dafd9.

#### MLIR-AIR

MLIR_AIR is an optional dependency: if installed, PEQC-MLIR will support a subset of operations in the AIR dialect.

Instructions for building MLIR-AIR can be found
[here](https://xilinx.github.io/mlir-air/buildingRyzenLin.html), copied below and fixing the install directory for aienginev2:

```sh
# clone repo
git clone https://github.com/Xilinx/mlir-air.git
cd mlir-air
source utils/setup_python_packages.sh

# clone and build dependencies
./utils/clone-llvm.sh
./utils/build-llvm-local.sh llvm
./utils/github-clone-build-libxaie.sh
./utils/clone-mlir-aie.sh
./utils/build-mlir-aie-local.sh llvm mlir-aie/cmake/modulesXilinx aienginev2/install mlir-aie

# build
./utils/build-mlir-air-xrt.sh llvm mlir-aie/cmake/modulesXilinx mlir-aie aienginev2/install /opt/xilinx/xrt
source utils/env_setup.sh install-xrt/ mlir-aie/install/ llvm/install/
```


#### PAST/PEQC

To install
[PAST 0.7.3-beta](https://sourceforge.net/projects/pocc/),
run the commands below, and add `past-0.7.3-beta/src` to your `PATH` (this is needed for tests):

```sh
wget -O past-0.7.3-beta.tar.gz 'https://sourceforge.net/projects/pocc/files/1.6/testing/modules/unstable-testing/past-0.7.3-beta.tar.gz/download'
tar -xf past-0.7.3-beta.tar.gz
cd past-0.7.3-beta
./configure
make

pastpath=`realpath src`
export PATH="$pastpath:$PATH"
cd ..
```


### Building

#### Option 1: Build via script

This script downloads and installs PAST/PEQC in the current directory (as described
[above](#pastpeqc)),
then configures and builds via CMake:

```sh
source install-and-build.sh [path to llvm build/lib/cmake directory] [optional: path to mlir-air project root]
# e.g. source install-and-build.sh /opt/mlir-air/llvm/build/lib/cmake /opt/mlir-air
```

#### Option 2: Manual build

After installing the prerequisites, run the commands below to build PEQC-MLIR with the following substitutions:

* `[llvm-cmake]` replaced with LLVM's CMake configuration directory, e.g. `/opt/mlir-air/llvm/build/lib/cmake`.
* `[air-repo]` replaced with the MLIR-AIR project root, e.g. `/opt/mlir-air`. This line should be omitted if compiling without air.
* `[past]` replaced with the location of PAST/PEQC, e.g. `./past-0.7.2`.

```sh
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=[llvm-cmake]/llvm \
  -DMLIR_DIR=[llvm-cmake]/mlir \
  -DAIR_DIR=[air-repo] \
  -DPAST_DIR=[past]

cmake --build . --target mlir-doc
cmake --build . --target check-verif
```

If `AIR_DIR` isn't passed to CMake as a definition, PEQC-MLIR will be built without MLIR-AIR passes.

Currently, around 16 tests will fail after building, but the executables `build/bin/verif-opt` and `build/bin/verif-translate` should exist after running these commands.

### Troubleshooting

If you see the following error message, you may not have built LLVM with `-DLLVM_ENABLE_PROJECTS=mlir` or specified the wrong CMake directory for `install-and-build.sh` or `-DLLVM_DIR/-DMLIR_DIR` when configuring CMake:

```
Could not find a package configuration file provided by "MLIR" with any of
the following names:

  MLIRConfig.cmake
  mlir-config.cmake
```

If you're trying to build with MLIR-AIR support and see "Unsupported" tests, or see an error message of the form `air/ ... .h: No such file or directory`, you may have specified the wrong MLIR-AIR directory for `install-and-build.sh` or `-DAIR_DIR` when configuring CMake.


## Overview

PEQC-MLIR is composed of two main parts: an [MLIR-to-MLIR converter](#mlir-to-mlir-conversion) (`verif-opt`) and an [MLIR-to-C translator](#mlir-to-c-translation) (`verif-translate`).
The MLIR-to-C translator only supports a subset of MLIR operations: the converter's job is to convert other operations into a semantically equivalent collection of supported operations.
`peqc-mlir.py` wraps these scripts for convenience, more information below.


## Usage

`peqc-mlir.py` (-h for options) is a wrapper script for the other tools below -- it takes two MLIR files and interprets them to attempt to prove that they must produce the same outputs for the same inputs.
Requires Python >= 3.10.

To use, make sure `build/bin` is in your PATH.

```
$> ./peqc-mlir.py -h

usage: peqc-mlir.py [-h] [--verbose] [--debug] [--peqc-options PEQC_OPTIONS] [--keep]
                    [--temp-dir TEMP_DIR] [--seq-verif-only]
                    file1 file2 liveoutvars

Check two MLIR files for equivalence: each file must define 'func.func @main' as the entry point of the program.

positional arguments:
  file1                 MLIR file to check for equivalence
  file2                 MLIR file to check for equivalence
  liveoutvars           comma-separated list of variable names to check for equivalence: each must
                        be declared as memref.global

options:
  -h, --help            show this help message and exit
  --verbose             show output from PEQC
  --debug               runs PEQC with "--verbose --debug"
  --peqc-options PEQC_OPTIONS
                        replaces default options to PEQC (overrides --verbose and --debug above)
  --keep                keep intermediate translation/conversion files
  --temp-dir TEMP_DIR   the directory to store intermediate files in, default .peqc-files
  --seq-verif-only      runs PEQC with "--seq-verif-only"
```

The files taken as input have the following restrictions:

* The top-level operation in the MLIR file must be `builtin.module`.
* The MLIR file must contain a `func.func @main () -> ()` to serve as the entry point of the program (see files in `examples/matmul` for more examples).
* Variables checked for equivalence must be declared as `memref.global` variables.

Example usage and output shown below: this checks that `examples/matmul/matmul-linalg.mlir` is equivalent to itself.

```
$> cat examples/matmul/matmul-linalg.mlir

// module must be the top-level operation
module {
  func.func @matmul_on_memref(%arg0: memref<32x32xi32>, %arg1: memref<32x32xi32>) -> memref<32x32xi32> {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloc() : memref<32x32xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%0 : memref<32x32xi32>)
    linalg.matmul ins(%arg0, %arg1 : memref<32x32xi32>, memref<32x32xi32>) outs(%0 : memref<32x32xi32>)
    return %0 : memref<32x32xi32>
  }

// to check A, B, and C for equivalence, declare as memref.global
  memref.global "private" @A : memref<32x32xi32>
  memref.global "private" @B : memref<32x32xi32>
  memref.global "private" @C : memref<32x32xi32>

// entry point of the program: calls matmul_on_memref with A and B
  func.func @main () -> () {
    %c = arith.constant 1 : i1
    %A = memref.get_global @A : memref<32x32xi32>
    %B = memref.get_global @B : memref<32x32xi32>
    %C = memref.get_global @C : memref<32x32xi32>
    %res = func.call @matmul_on_memref(%A, %B) : (memref<32x32xi32>, memref<32x32xi32>) -> memref<32x32xi32>
    memref.copy %res, %C : memref<32x32xi32> to memref<32x32xi32>
    return
  }
}

$> ./peqc-mlir.py examples/matmul/matmul-linalg.mlir examples/matmul/matmul-linalg.mlir A,B,C

YES, examples/matmul/matmul-linalg.mlir and examples/matmul/matmul-linalg.mlir are equivalent
```

More detailed information can be found in [`examples/README.md`](examples/README.md) and below.


## MLIR-to-C translation

The `verif-translate` tool translates the supported MLIR operations below to C files interpretable by PEQC.

Example usage:

```sh
verif-translate --translate-to-past [input file]
```

### Supported operations

* operations in the `verif` dialect, listed [here](#operations-in-the-verif-dialect)
* basic `arith` ops: constant, add, mul, div
* `scf.for`, `scf.yield`
* `scf.if`
* `func.func`, `func.call`, `func.return`
* `memref.alloc`, `memref.alloca`, `memref.dealloc`
* `memref.global`, `memref.get_global`
* `memref.load`, `memref.store`
* `memref.copy`
* `memref.subview` restriction: stride 1
* `async.execute`, `yield`
* `async.create_group`, `async.add_to_group`, `async.await_all`


## MLIR-to-MLIR conversion

The `verif-opt` tool converts operations not supported by the translator to a combination of operations that are supported, using the passes defined
[below](#conversion-passes-verif-opt).

### Supported operations

* `air.execute`
* `air.herd`, `air.segment`, `air.launch`
* `air.dma_memcpy_nd` restriction: src and dst same rank
* `air.channel`
* `scf.parallel` restriction: `init` types have to implement `MemRefElementTypeInterface`



## Conversion passes (`verif-opt`)

This documentation is automatically generated from `include/VerifPasses.td` and is found at
`build/docs/Dialect/VerifPasses.md` after building PEQC-MLIR.


### `-verif-air-dma-to-memref`

_Convert air.dma_memcpy_nd to memref operations_

Convert `air.dma_memcpy_nd` to a combination of `memref.subview` and `memref.copy` operations,
wrapping in `async.execute` if `async` is specified.

See tests `test/verif/convert/unit/air-dma-nd-basic.mlir`, `test/verif/convert/unit/air-dma-nd-basic-async.mlir`.
### `-verif-air-execute-to-async`

_Convert air.execute to async.execute_

Convert `air.execute` to `async.execute`, converting `air.token` dependencies and results to `async.token`.

To avoid wrapping `air.execute` return variables in an `async.value`, this pass also moves the
declaration of some return variables to make them visible outside the `async.execute` region.
If declared inside the `air.execute` region,
scalar return values are stored in a memref declared outside the region,
and the `memref.alloc` ops are moved outside of the region.

See tests `test/verif/convert/unit/air-exec-scalar.mlir`, `test/verif/convert/unit/air-exec-alloc.mlir`.
### `-verif-air-to-scf-par`

_Convert air.launch, air.segment, and air.herd to scf.parallel_

Convert `air.launch`, `air.segment`, and `air.herd` to an `scf.parallel` operation with
loop iterators starting at 0.
If air ops are `async`, the `scf.parallel` operation is wrapped in `async.execute`.

See tests `test/verif/convert/unit/air-herd-basic.mlir`, `test/verif/convert/unit/air-launch-basic-async.mlir`.
### `-verif-scf-parallel-to-async`

_Convert scf.parallel to scf.for and async.execute_

Convert 'scf.parallel' to nested `scf.for` loops with an `async.execute` body.
Requires the `scf.parallel` `init` argument types to implement `MemRefElementTypeInterface`,
i.e. be storable in a memref.

See tests `test/verif/convert/unit/par-basic.mlir`, `test/verif/convert/unit/par-docs-example.mlir`.


## Operations in the `verif` dialect

This documentation is automatically generated from `include/VerifOps.td` and is found at
`build/docs/Dialect/VerifOps.md` after building PEQC-MLIR.


### `verif.semaphore` (verif::SemaphoreOp)

Syntax:

```
operation ::= `verif.semaphore` attr-dict `init` $init
```

Declares a new semaphore.

Interfaces: `InferTypeOpInterface`

#### Operands:

| Operand | Description |
| :-----: | ----------- |
| `init` | index

#### Results:

| Result | Description |
| :----: | ----------- |
| `sem` | semaphore

### `verif.semaphore.set` (verif::SemaphoreSetOp)

Syntax:

```
operation ::= `verif.semaphore.set` $sem attr-dict `,` $val
```

Set semaphore `sem` to value `val`.

#### Operands:

| Operand | Description |
| :-----: | ----------- |
| `sem` | semaphore
| `val` | index

### `verif.semaphore.wait` (verif::SemaphoreWaitOp)

Syntax:

```
operation ::= `verif.semaphore.wait` $sem attr-dict `,` $val
```

Blocking wait on semaphore `sem` until it is assigned the value `val`.

#### Operands:

| Operand | Description |
| :-----: | ----------- |
| `sem` | semaphore
| `val` | index

## Polybench experiments

More information on experiments can be found [here](experiments/polygeist-polybench/README.md).

To run polybench verification experiments (using `MINI_DATASET`):

```sh
cd experiments/polygeist-polybench
./script/run_mini_pb.sh
```

Requirements:
* Python >= 3.10 (+ packages in `requirements.txt`)
* GNU Time: in `/usr/bin/time`


## Citing PEQC-MLIR

```
@inproceedings{peqc-fpga24,
  title={Formal Verification of Source-to-Source Transformations for HLS},
  author={Pouchet, Louis-No{\"e}l and Tucker, Emily and Zhang, Niansong and Chen, Hongzheng and Pal, Debjit and Rodr{\'\i}guez, Gabriel and Zhang, Zhiru},
  booktitle={Proceedings of the 2024 ACM/SIGDA International Symposium on Field Programmable Gate Arrays},
  pages={97--107},
  year={2024}
}
```
