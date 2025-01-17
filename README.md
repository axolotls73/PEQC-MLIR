# PEQC-MLIR


## Building PEQC-MLIR

To build, source the script below:

```sh
source install-and-build.sh [path to mlir-air]
```

This script installs
[PAST 0.7.2](https://sourceforge.net/projects/pocc/)
and adds `past-0.7.2/src` to your `PATH`: this is needed for tests.

## Usage

An end-to-end example can be found in [`examples/README.md`](examples/README.md).

<!-- [link](#conversion-passes-verif-opt) -->

## Supported operations

### Translator (`verif-translate`)

* operations in the `verif` dialect, listed [here](#operations-in-the-verif-dialect)
* basic `arith` ops: constant, add, mul, div
* `scf.for`, `yield`
* `func.func`, `return`
* `memref.alloc`
* `memref.dealloc`
* `memref.load`
* `memref.store`
* `memref.copy`
* `memref.subview` restriction: stride 1
* `async.create_group`
* `async.add_to_group`
* `async.await_all`
* `async.execute`, `yield`

### Converter (`verif-opt`)

* `air.execute`
* `air.herd`
* `air.segment`
* `air.launch`
* `air.dma_memcpy_nd` restriction: src and dst same rank
* `air.channel`
* `scf.parallel` restriction: `init` types have to implement `


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

