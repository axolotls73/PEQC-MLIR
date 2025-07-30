module {
  func.func @matmul_on_memref(%arg0: memref<32x32xi32>, %arg1: memref<32x32xi32>) -> memref<32x32xi32> {
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<32x32xi32>
    scf.for %arg2 = %c0 to %c32 step %c4 {
      scf.for %arg3 = %c0 to %c32 step %c4 {
        %0 = arith.addi %arg2, %c4 : index
        scf.for %arg4 = %arg2 to %0 step %c1 {
          %1 = arith.addi %arg3, %c4 : index
          scf.for %arg5 = %arg3 to %1 step %c1 {
            memref.store %c0_i32, %alloc[%arg4, %arg5] : memref<32x32xi32>
          }
        }
      }
    }
    scf.for %arg2 = %c0 to %c32 step %c4 {
      scf.for %arg3 = %c0 to %c32 step %c4 {
        scf.for %arg4 = %c0 to %c32 step %c4 {
          %0 = arith.addi %arg2, %c4 : index
          scf.for %arg5 = %arg2 to %0 step %c1 {
            %1 = arith.addi %arg3, %c4 : index
            scf.for %arg6 = %arg3 to %1 step %c1 {
              %2 = arith.addi %arg4, %c4 : index
              scf.for %arg7 = %arg4 to %2 step %c1 {
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

