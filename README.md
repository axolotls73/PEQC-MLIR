# PEQC-MLIR

<!-- todo -->

## Building PEQC-MLIR


To build PEQC-MLIR, first install its dependencies: LLVM version 20.0.0git, MLIR-AIR commit 07174f8a, and MLIR-AIE commit c8dafd9.
Instructions to build a docker image with these installed can be found
[here](https://github.com/pouchet/docker-ubuntu-xilinx-dev).

Then,

```sh
source install-and-build.sh [path to llvm] [path to mlir-air]
# e.g. source install-and-build.sh /opt/mlir-air/llvm /opt/mlir-air
```

This script first installs
[PAST 0.7.2](https://sourceforge.net/projects/pocc/)
and adds `past-0.7.2/src` to your `PATH` (this is needed for tests):

```sh
wget -O past-0.7.2.tar.gz 'https://sourceforge.net/projects/pocc/files/1.6/testing/modules/past-0.7.2.tar.gz/download'
tar -xf past-0.7.2.tar.gz
cd past-0.7.2
./configure
make
pastpath=`realpath src`
export PATH="$pastpath:$PATH"
cd ..
```

Then defines variables needed for the build (arguments in the script):

```sh
AIR_DIR="$2"
PAST_DIR=`realpath past-0.7.2`
LLVM_DIR="$1"
```

Then configures and builds via CMake:

```sh
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_DIR/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_DIR/build/lib/cmake/mlir \
  -DAIR_DIR=$AIR_DIR \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target check-verif
```

Currently, around 16 tests will fail after building, but the executables `build/bin/verif-opt` and `build/bin/verif-translate` should exist after running these commands.

### Troubleshooting




## Usage

`peqc-mlir.py` (-h for options) is a wrapper script for the other tools below -- it takes two MLIR files and interprets them to attempt to prove that they must produce the same outputs for the same inputs.
The files taken as input have the following restrictions:

* the MLIR file must have a `func.func @main () -> ()` to serve as the entry point of the program (see files in `examples/matmul` for examples).
* variables checked for equivalence must be declared as `memref.global` variables.

Example usage and output:

```sh
$> ./peqc-mlir.py examples/matmul/matmul-linalg.mlir examples/matmul/matmul-tile-and-parallelize.mlir A,B,C

YES, examples/matmul/matmul-linalg.mlir and examples/matmul/matmul-tile-and-parallelize.mlir are equivalent
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
[here](#conversion-passes-verif-opt).

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

