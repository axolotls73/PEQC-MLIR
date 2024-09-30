
// original:
// https://github.com/Xilinx/mlir-air/blob/94177e95427c23ad68100c6c9a3f21c542cc84c6/mlir/test/Transform/AIRLinalgCodegen/air_linalg_codegen_matmul_l2.mlir

// func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
//     %c0_i32 = arith.constant 0 : i32
//     %0 = memref.alloc() : memref<128x128xi32>
//     linalg.fill ins(%c0_i32 : i32) outs(%0 : memref<128x128xi32>)
//     %1 = memref.alloc() : memref<128x128xi32>
//     linalg.copy ins(%0 : memref<128x128xi32>) outs(%1 : memref<128x128xi32>)
//     linalg.matmul ins(%arg0, %arg1 : memref<128x128xi32>, memref<128x128xi32>) outs(%1 : memref<128x128xi32>)
//     return %1 : memref<128x128xi32>
// }

// not sure why they make a seemingly useless variable to fill w/ 0s?

func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloc() : memref<128x128xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%0 : memref<128x128xi32>)
    linalg.matmul ins(%arg0, %arg1 : memref<128x128xi32>, memref<128x128xi32>) outs(%0 : memref<128x128xi32>)
    return %0 : memref<128x128xi32>
}