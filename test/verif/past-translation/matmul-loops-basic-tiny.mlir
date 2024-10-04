// RUN: verif-translate --translate-to-past %s -o %t && \
// RUN: %S/../../add_epilogue.sh %t %S/../../Inputs/matmul-tiny-epilogue.c %t-2 && \
// RUN: pastchecker %t-2 %t-2 A,B,C | grep "YES"

// RUN: verif-translate --translate-to-past %s -o %t && \
// RUN: %S/../../add_epilogue.sh %t %S/../../Inputs/matmul-tiny-epilogue.c %t-2 && \
// RUN: pastchecker %t-2 %S/../../Inputs/matmul-tiny.c A,B,C | grep "YES"

// RUN: verif-translate --translate-to-past %s -o %t && \
// RUN: %S/../../add_epilogue.sh %t %S/../../Inputs/matmul-tiny-epilogue.c %t-2 && \
// RUN: pastchecker %t-2 %S/../../Inputs/matmul-tiny-bug.c A,B,C | not grep "YES"

module {
  func.func @matmul_on_memref(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>) -> memref<10x10xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<10x10xi32>
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c10 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c10_4 = arith.constant 10 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c10_4 step %c1_5 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<10x10xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c10_1 = arith.constant 10 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c10_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c10_4 = arith.constant 10 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c10_4 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c10_7 = arith.constant 10 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg4 = %c0_6 to %c10_7 step %c1_8 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<10x10xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<10x10xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<10x10xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<10x10xi32>
        }
      }
    }
    return %alloc : memref<10x10xi32>
  }
}

