# Examples

The `matmul` directory contains a few versions of matrix multiply over memrefs. These files can be processed with the AIR-independent peqc-mlir.py script.

The `air-to-aie/matmul` directory contains example conversions/translations from Linalg to AMD AIR/AIE dialects with air-opt, from
[an mlir-air test](https://github.com/Xilinx/mlir-air/blob/9f75b4658e2e732bc093882ff2c88942f7d3555d/test/xrt/01_air_to_npu/aie.py).
For these examples, use the dedicated peqc-mlir-air script in the examples/ directory.


## Usage examples

### Using `peqc-mlir.py` on non-AIR files

`peqc-mlir.py` composes transformations performed in `verif-opt` and `verif-translate`, and runs the PEQC interpreter to verify equivalence.
An example that uses the tools separately can be found
[below](#individual-steps).

[The main README](../README.md) has an example of verifying self-equivalence:

```
$> cat matmul/matmul-linalg.mlir

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

$> ../script/peqc-mlir.py matmul/matmul-linalg.mlir matmul/matmul-linalg.mlir A,B,C

YES, matmul/matmul-linalg.mlir and matmul/matmul-linalg.mlir are equivalent
```

Verifying different files equivalent is similar, with both files needing to match the requirements [here](../README.md#usage):

```
$> ../script/peqc-mlir.py matmul/matmul-linalg.mlir matmul/matmul-tile-and-parallelize.mlir A,B,C

YES, matmul/matmul-linalg.mlir and matmul/matmul-linalg.mlir are equivalent
```


### Individual steps to convert and translate AIR files

To verify that `air-to-aie/matmul/mm-16/air_input.mlir` and the generated file `air-to-aie/matmul/mm-16/air_sync.mlir` are equivalent, we can use `verif-opt/translate` along with the PEQC interpreter.
First, the linalg operations in `air_input.mlir` need to be converted to the subset of operations supported in `verif-translate`.
We can then translate the resulting file to C.

```bash
# convert
mlir-opt --convert-linalg-to-affine-loops --lower-affine air-to-aie/matmul/mm-16/air_input.mlir > air_input_lowered.mlir

# add main function to invoke the existing forward function
verif-opt --verif-create-main=argument-names="A,B,C" air_input_lowered.mlir > air_input_converted.mlir

# translate
verif-translate --translate-to-past air_input_converted.mlir > air_input_translated.c
```

To add `#include`s needed by the interpreter (not necessary for this file, but a good practice in general), we can run `add_epilogue.py`:

```bash
../script/add_epilogue.py air_input_translated.c air_input_result.c
```


For `air_sync.mlir`, we also need to convert the AIR operations using `verif-opt`.

```bash
# convert
air-opt --convert-linalg-to-affine-loops --lower-affine air-to-aie/matmul/mm-16/air_sync.mlir > air_sync_lowered.mlir
verif-opt --verif-air-to-scf-par --verif-scf-parallel-to-async --verif-air-dma-to-memref --verif-create-main=argument-names="A,B,C" air_sync_lowered.mlir > air_sync_converted.mlir

# translate
verif-translate --translate-to-past air_sync_converted.mlir > air_sync_translated.c
../script/add_epilogue.py air_sync_translated.c air_sync_result.c
```

After translating both files to C, we can use `pastchecker` (make sure it's in your path, see the main README.md) to verify their equivalence.

```bash
pastchecker --happens-before --enable-preprocessor --enable-subtrees air_input_result.c air_sync_result.c A,B,C
```
