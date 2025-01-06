module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c40 step %c32 {
      %1 = arith.addi %arg5, %c32 : index
      %2 = arith.minsi %1, %c40 : index
      scf.for %arg6 = %arg5 to %2 step %c1 {
        scf.for %arg7 = %c0 to %arg6 step %c1 {
          %3 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          memref.store %3, %alloca[] : memref<f64>
          scf.for %arg8 = %c0 to %arg7 step %c1 {
            %7 = memref.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %8 = memref.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %alloca[] : memref<f64>
            %11 = arith.subf %10, %9 : f64
            memref.store %11, %alloca[] : memref<f64>
          }
          %4 = memref.load %alloca[] : memref<f64>
          %5 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %6 = arith.divf %4, %5 : f64
          memref.store %6, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
        scf.for %arg7 = %arg6 to %c40 step %c1 {
          %3 = memref.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          memref.store %3, %alloca[] : memref<f64>
          scf.for %arg8 = %c0 to %arg6 step %c1 {
            %5 = memref.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %6 = memref.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %alloca[] : memref<f64>
            %9 = arith.subf %8, %7 : f64
            memref.store %9, %alloca[] : memref<f64>
          }
          %4 = memref.load %alloca[] : memref<f64>
          memref.store %4, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
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
        %6 = arith.muli %arg6, %c-1 : index
        %7 = arith.addi %6, %c40 : index
        scf.for %arg7 = %7 to %c40 step %c1 {
          %17 = arith.muli %arg6, %c-1 : index
          %18 = arith.addi %17, %c39 : index
          %19 = memref.load %arg1[%18, %arg7] : memref<?x40xf64>
          %20 = memref.load %arg3[%arg7] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloca[] : memref<f64>
          %23 = arith.subf %22, %21 : f64
          memref.store %23, %alloca[] : memref<f64>
        }
        %8 = memref.load %alloca[] : memref<f64>
        %9 = arith.muli %arg6, %c-1 : index
        %10 = arith.addi %9, %c39 : index
        %11 = arith.muli %arg6, %c-1 : index
        %12 = arith.addi %11, %c39 : index
        %13 = memref.load %arg1[%10, %12] : memref<?x40xf64>
        %14 = arith.divf %8, %13 : f64
        %15 = arith.muli %arg6, %c-1 : index
        %16 = arith.addi %15, %c39 : index
        memref.store %14, %arg3[%16] : memref<?xf64>
      }
    }
    return
  }
}

