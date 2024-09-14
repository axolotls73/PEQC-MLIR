# Verif dialect -- WIP



Original template taken from the example Standalone dialect in `llvm/mlir/examples/standalone`
(on github [here](https://github.com/llvm/llvm-project/tree/main/mlir/examples/standalone)).

## Building

If you're using the mlir-air docker, this should work out-of-the-box:

```sh
./build.sh
```
If you're not, you'll need to modify `LLVM_REPO` to point to your llvm installation.
This assumes your llvm installation has been built with `-DLLVM_INSTALL_UTILS=ON`.

