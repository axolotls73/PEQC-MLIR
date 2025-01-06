module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c40 = arith.constant 40 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
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
          %7 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %8 = arith.addi %arg5, %arg6 : index
          %9 = memref.load %arg1[%arg7, %8] : memref<?x40xf64>
          %10 = arith.mulf %7, %9 : f64
          %11 = memref.load %alloca[] : memref<f64>
          %12 = arith.subf %11, %10 : f64
          memref.store %12, %alloca[] : memref<f64>
        }
        %5 = memref.load %alloca[] : memref<f64>
        %6 = arith.addi %arg5, %arg6 : index
        memref.store %5, %arg1[%arg5, %6] : memref<?x40xf64>
      }
    }
    scf.for %arg5 = %c0 to %c40 step %c32 {
      %1 = arith.addi %arg5, %c32 : index
      %2 = arith.minsi %1, %c40 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        %3 = memref.load %arg2[%arg6] : memref<?xf64>
        memref.store %3, %alloca[] : memref<f64>
        scf.for %arg7 = %c0 to %arg6 step %c1 {
          %5 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          %6 = memref.load %arg4[%arg7] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %alloca[] : memref<f64>
        }
        %4 = memref.load %alloca[] : memref<f64>
        memref.store %4, %arg4[%arg6] : memref<?xf64>
      }
    }
    scf.for %arg5 = %c0 to %c40 step %c32 {
      %1 = arith.addi %arg5, %c32 : index
      %2 = arith.minsi %1, %c40 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        %3 = arith.muli %arg6, %c-1 : index
        %4 = arith.addi %3, %c39 : index
        %5 = memref.load %arg4[%4] : memref<?xf64>
        memref.store %5, %alloca[] : memref<f64>
        scf.for %arg7 = %c0 to %arg6 step %c1 {
          %15 = arith.muli %arg6, %c-1 : index
          %16 = arith.addi %15, %c39 : index
          %17 = arith.muli %arg6, %c-1 : index
          %18 = arith.addi %17, %arg7 : index
          %19 = arith.addi %18, %c40 : index
          %20 = memref.load %arg1[%16, %19] : memref<?x40xf64>
          %21 = arith.muli %arg6, %c-1 : index
          %22 = arith.addi %21, %arg7 : index
          %23 = arith.addi %22, %c40 : index
          %24 = memref.load %arg3[%23] : memref<?xf64>
          %25 = arith.mulf %20, %24 : f64
          %26 = memref.load %alloca[] : memref<f64>
          %27 = arith.subf %26, %25 : f64
          memref.store %27, %alloca[] : memref<f64>
        }
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.muli %arg6, %c-1 : index
        %8 = arith.addi %7, %c39 : index
        %9 = arith.muli %arg6, %c-1 : index
        %10 = arith.addi %9, %c39 : index
        %11 = memref.load %arg1[%8, %10] : memref<?x40xf64>
        %12 = arith.divf %6, %11 : f64
        %13 = arith.muli %arg6, %c-1 : index
        %14 = arith.addi %13, %c39 : index
        memref.store %12, %arg3[%14] : memref<?xf64>
      }
    }
    return
  }
}

