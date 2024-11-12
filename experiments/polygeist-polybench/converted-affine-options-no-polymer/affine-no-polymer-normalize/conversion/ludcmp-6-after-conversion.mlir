module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c40 = arith.constant 40 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c40 step %c1 {
      scf.for %arg6 = %c0 to %arg5 step %c1 {
        %3 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %3, %alloca[] : memref<f64>
        scf.for %arg7 = %c0 to %arg6 step %c1 {
          %7 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %8 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %alloca[] : memref<f64>
          %11 = arith.subf %10, %9 : f64
          memref.store %11, %alloca[] : memref<f64>
        }
        %4 = memref.load %alloca[] : memref<f64>
        %5 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %6 = arith.divf %4, %5 : f64
        memref.store %6, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      %1 = arith.muli %arg5, %c-1 : index
      %2 = arith.addi %1, %c40 : index
      scf.for %arg6 = %c0 to %2 step %c1 {
        %3 = arith.addi %arg5, %arg6 : index
        %4 = memref.load %arg1[%arg5, %3] : memref<?x40xf64>
        memref.store %4, %alloca[] : memref<f64>
        scf.for %arg7 = %c0 to %arg5 step %c1 {
          %6 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %7 = memref.load %arg1[%arg7, %3] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          memref.store %10, %alloca[] : memref<f64>
        }
        %5 = memref.load %alloca[] : memref<f64>
        memref.store %5, %arg1[%arg5, %3] : memref<?x40xf64>
      }
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = memref.load %arg2[%arg5] : memref<?xf64>
      memref.store %1, %alloca[] : memref<f64>
      scf.for %arg6 = %c0 to %arg5 step %c1 {
        %3 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %4 = memref.load %arg4[%arg6] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
      }
      %2 = memref.load %alloca[] : memref<f64>
      memref.store %2, %arg4[%arg5] : memref<?xf64>
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = arith.muli %arg5, %c-1 : index
      %2 = arith.addi %1, %c39 : index
      %3 = memref.load %arg4[%2] : memref<?xf64>
      memref.store %3, %alloca[] : memref<f64>
      scf.for %arg6 = %c0 to %arg5 step %c1 {
        %13 = arith.muli %arg5, %c-1 : index
        %14 = arith.addi %13, %arg6 : index
        %15 = arith.addi %14, %c40 : index
        %16 = arith.muli %arg5, %c-1 : index
        %17 = arith.addi %16, %c39 : index
        %18 = memref.load %arg1[%17, %15] : memref<?x40xf64>
        %19 = memref.load %arg3[%15] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.subf %21, %20 : f64
        memref.store %22, %alloca[] : memref<f64>
      }
      %4 = memref.load %alloca[] : memref<f64>
      %5 = arith.muli %arg5, %c-1 : index
      %6 = arith.addi %5, %c39 : index
      %7 = arith.muli %arg5, %c-1 : index
      %8 = arith.addi %7, %c39 : index
      %9 = memref.load %arg1[%6, %8] : memref<?x40xf64>
      %10 = arith.divf %4, %9 : f64
      %11 = arith.muli %arg5, %c-1 : index
      %12 = arith.addi %11, %c39 : index
      memref.store %10, %arg3[%12] : memref<?xf64>
    }
    return
  }
}

