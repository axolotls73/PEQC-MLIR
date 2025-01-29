# PEQC-MLIR examples

The `matmul` directory contains a few versions of matrix multiply over memrefs.

The `air-to-aie/matmul` directory contains example conversions/translations from
[an mlir-air test](https://github.com/Xilinx/mlir-air/blob/9f75b4658e2e732bc093882ff2c88942f7d3555d/test/xrt/01_air_to_npu/aie.py).

## Usage examples

### Using `peqc-mlir.py`

`peqc-mlir.py` composes transformations performed in `verif-opt` and `verif-translate`, and runs the PEQC interpreter to verify equivalence.
An example that uses the tools separately can be found
[below](#individual-steps).



```mlir
module {

  func.func @matmul_on_memref(%arg0: memref<32x32xi32>, %arg1: memref<32x32xi32>) -> memref<32x32xi32> {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloc() : memref<32x32xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%0 : memref<32x32xi32>)
    linalg.matmul ins(%arg0, %arg1 : memref<32x32xi32>, memref<32x32xi32>) outs(%0 : memref<32x32xi32>)
    return %0 : memref<32x32xi32>
  }

  memref.global "private" @A : memref<32x32xi32>
  memref.global "private" @B : memref<32x32xi32>
  memref.global "private" @C : memref<32x32xi32>

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
```




### Individual steps


First, the linalg operations in `air_input.mlir` need to be converted to the subset of operations supported in `verif-translate`.
We can then translate the resulting file to C.

```bash
# convert
mlir-opt --convert-linalg-to-affine-loops --lower-affine air-to-aie/matmul/mm-16/air_input.mlir > air_input_lowered.mlir

# translate
verif-translate --translate-to-past air_input_lowered.mlir > air_input_translated.c
```

This translates the `forward` function, but the interpreter needs the function invocation as well.
We can use the `add_epilogue.sh` script to add the "main" block found in `epilogue.c`.

```bash
../verif-translate/scripts/add_epilogue.sh air_input_translated.c air-to-aie/matmul/mm-16/epilogue.c air_input_translated_main.c
```

For `air_tiled.mlir`, we also need to convert the `scf.parallel` operations using `verif-opt`.

```bash
# convert
mlir-opt --convert-linalg-to-affine-loops --lower-affine air-to-aie/matmul/mm-16/air_tiled.mlir > air_tiled_lowered.mlir
verif-opt --verif-scf-parallel-to-async air_tiled_lowered.mlir > air_tiled_converted.mlir

#translate
verif-translate --translate-to-past air_tiled_converted.mlir > air_tiled_translated.c
../verif-translate/scripts/add_epilogue.sh air_tiled_translated.c air-to-aie/matmul/mm-16/epilogue.c air_tiled_translated_main.c
```

After translating both files to C, we can use `pastchecker` to verify their equivalence.

```bash
pastchecker --enable-preprocessor air_input_translated_main.c air_tiled_translated_main.c A,B,C
```
