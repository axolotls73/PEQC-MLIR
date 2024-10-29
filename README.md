# Verif dialect -- WIP



Original template taken from the example Standalone dialect in `llvm/mlir/examples/standalone`
(on github [here](https://github.com/llvm/llvm-project/tree/main/mlir/examples/standalone)).

## Building

To build, set the following paths in `build.sh`:

- `AIR_REPO`: path to mlir-air repo, assumes the llvm installation has been built with `-DLLVM_INSTALL_UTILS=ON`.
- `PAST_DIR`: path to PAST directory in pocc-devel repo

Then just run:

```sh
./build.sh
```

The tests in `tests/` assume `pastchecker` is in your `PATH`.

## Supported ops

### Translator

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

### Converter

* `air.execute`
* `air.herd`
* `air.segment`
* `air.launch`
* `air.dma_memcpy_nd` restriction: src and dst same rank
* `scf.parallel` restriction: `init` types have to be storable in memref
