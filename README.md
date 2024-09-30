# Verif dialect -- WIP



Original template taken from the example Standalone dialect in `llvm/mlir/examples/standalone`
(on github [here](https://github.com/llvm/llvm-project/tree/main/mlir/examples/standalone)).

## Building

To build, set the following paths in `build.sh`:

- `AIR_REPO`: path to mlir-air repo, assumes the llvm installation has been built with `-DLLVM_INSTALL_UTILS=ON`.
- `PAST_DIR`: path to PAST directory in pocc-devel repo

The just run:

```sh
./build.sh
```
