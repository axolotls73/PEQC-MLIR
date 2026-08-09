// mlir-opt matmul-linalg.mlir --convert-linalg-to-affine-loops --affine-loop-tile="tile-size=4" --lower-affine

module {
  func.func @matmul_on_memref(%arg0: memref<32x32xi32>, %arg1: memref<32x32xi32>) -> memref<32x32xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<32x32xi32>
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c4 = arith.constant 4 : index
    scf.for %arg2 = %c0 to %c32 step %c4 {
      %c0_3 = arith.constant 0 : index
      %c32_4 = arith.constant 32 : index
      %c4_5 = arith.constant 4 : index
      scf.for %arg3 = %c0_3 to %c32_4 step %c4_5 {
        %c4_6 = arith.constant 4 : index
        %0 = arith.addi %arg2, %c4_6 : index
        %c1 = arith.constant 1 : index
        scf.for %arg4 = %arg2 to %0 step %c1 {
          %c4_7 = arith.constant 4 : index
          %1 = arith.addi %arg3, %c4_7 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg5 = %arg3 to %1 step %c1_8 {
            memref.store %c0_i32, %alloc[%arg4, %arg5] : memref<32x32xi32>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c32_1 = arith.constant 32 : index
    %c4_2 = arith.constant 4 : index
    scf.for %arg2 = %c0_0 to %c32_1 step %c4_2 {
      %c0_3 = arith.constant 0 : index
      %c32_4 = arith.constant 32 : index
      %c4_5 = arith.constant 4 : index
      scf.for %arg3 = %c0_3 to %c32_4 step %c4_5 {
        %c0_6 = arith.constant 0 : index
        %c32_7 = arith.constant 32 : index
        %c4_8 = arith.constant 4 : index
        scf.for %arg4 = %c0_6 to %c32_7 step %c4_8 {
          %c4_9 = arith.constant 4 : index
          %0 = arith.addi %arg2, %c4_9 : index
          %c1 = arith.constant 1 : index
          scf.for %arg5 = %arg2 to %0 step %c1 {
            %c4_10 = arith.constant 4 : index
            %1 = arith.addi %arg3, %c4_10 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg6 = %arg3 to %1 step %c1_11 {
              %c4_12 = arith.constant 4 : index
              %2 = arith.addi %arg4, %c4_12 : index
              %c1_13 = arith.constant 1 : index
              scf.for %arg7 = %arg4 to %2 step %c1_13 {
                %3 = memref.load %arg0[%arg5, %arg7] : memref<32x32xi32>
                %4 = memref.load %arg1[%arg7, %arg6] : memref<32x32xi32>
                %5 = memref.load %alloc[%arg5, %arg6] : memref<32x32xi32>
                %6 = arith.muli %3, %4 : i32
                %7 = arith.addi %5, %6 : i32
                memref.store %7, %alloc[%arg5, %arg6] : memref<32x32xi32>
              }
            }
          }
        }
      }
    }
    return %alloc : memref<32x32xi32>
  }
  memref.global "private" @A : memref<32x32xi32>
  memref.global "private" @B : memref<32x32xi32>
  memref.global "private" @C : memref<32x32xi32>
  func.func @main() {
    %0 = memref.get_global @A : memref<32x32xi32>
    %1 = memref.get_global @B : memref<32x32xi32>
    %2 = memref.get_global @C : memref<32x32xi32>
    %3 = call @matmul_on_memref(%0, %1) : (memref<32x32xi32>, memref<32x32xi32>) -> memref<32x32xi32>
    memref.copy %3, %2 : memref<32x32xi32> to memref<32x32xi32>
    return
  }
}

