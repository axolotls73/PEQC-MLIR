module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloc = memref.alloc() : memref<1x28xf64>
    %alloc_2 = memref.alloc() : memref<1xf64>
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %1 = arith.addi %arg7, %c28 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %15 = memref.load %arg3[%arg10, %arg8] : memref<?x28xf64>
            %16 = memref.load %arg5[%arg8] : memref<?xf64>
            %17 = arith.addf %16, %15 : f64
            memref.store %17, %arg5[%arg8] : memref<?xf64>
          }
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = arith.divf %7, %arg2 : f64
          memref.store %8, %arg5[%arg8] : memref<?xf64>
          %9 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %10 = memref.load %arg5[%arg8] : memref<?xf64>
          %11 = arith.subf %9, %10 : f64
          %12 = arith.mulf %11, %11 : f64
          %13 = memref.load %arg6[%arg8] : memref<?xf64>
          %14 = arith.addf %13, %12 : f64
          memref.store %14, %arg6[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst : f64
        %6 = arith.select %5, %cst_1, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    scf.for %arg7 = %c0 to %c32 step %c32 {
      scf.for %arg8 = %c0 to %c28 step %c32 {
        %1 = arith.addi %arg7, %c32 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c28 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            memref.store %cst_0, %alloc_2[%c0] : memref<1xf64>
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = memref.load %arg5[%arg10] : memref<?xf64>
              %16 = arith.subf %14, %15 : f64
              %17 = arith.mulf %16, %16 : f64
              %18 = memref.load %alloc_2[%c0] : memref<1xf64>
              %19 = arith.addf %18, %17 : f64
              memref.store %19, %alloc_2[%c0] : memref<1xf64>
            }
            %3 = memref.load %alloc_2[%c0] : memref<1xf64>
            %4 = arith.divf %3, %arg2 : f64
            %5 = math.sqrt %4 : f64
            %6 = arith.cmpf ole, %5, %cst : f64
            %7 = arith.select %6, %cst_1, %5 : f64
            memref.store %7, %alloc_2[%c0] : memref<1xf64>
            %8 = memref.load %arg5[%arg10] : memref<?xf64>
            %9 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %10 = arith.subf %9, %8 : f64
            memref.store %10, %arg3[%arg9, %arg10] : memref<?x28xf64>
            %11 = memref.load %alloc_2[%c0] : memref<1xf64>
            %12 = arith.mulf %0, %11 : f64
            %13 = arith.divf %10, %12 : f64
            memref.store %13, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c32 {
      %1 = arith.addi %arg7, %c27 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_1, %arg4[%arg8, %arg8] : memref<?x28xf64>
        %2 = arith.muli %arg8, %c-1 : index
        %3 = arith.addi %2, %c27 : index
        scf.for %arg9 = %c0 to %3 step %c1 {
          %4 = arith.addi %arg8, %arg9 : index
          %5 = arith.addi %4, %c1 : index
          memref.store %cst_0, %arg4[%arg8, %5] : memref<?x28xf64>
          scf.for %arg10 = %c0 to %c32 step %c1 {
            scf.for %arg11 = %c0 to %c28 step %c1 {
              memref.store %cst_0, %alloc_2[%c0] : memref<1xf64>
              scf.for %arg12 = %c0 to %c32 step %c1 {
                %33 = arith.muli %arg10, %c-1 : index
                %34 = arith.addi %33, %arg12 : index
                %35 = memref.load %alloc[%34, %arg11] : memref<1x28xf64>
                %36 = memref.load %arg5[%arg11] : memref<?xf64>
                %37 = arith.subf %35, %36 : f64
                %38 = arith.mulf %37, %37 : f64
                %39 = memref.load %alloc_2[%c0] : memref<1xf64>
                %40 = arith.addf %39, %38 : f64
                memref.store %40, %alloc_2[%c0] : memref<1xf64>
              }
              %22 = memref.load %alloc_2[%c0] : memref<1xf64>
              %23 = arith.divf %22, %arg2 : f64
              %24 = math.sqrt %23 : f64
              %25 = arith.cmpf ole, %24, %cst : f64
              %26 = arith.select %25, %cst_1, %24 : f64
              memref.store %26, %alloc_2[%c0] : memref<1xf64>
              %27 = memref.load %arg5[%arg11] : memref<?xf64>
              %28 = memref.load %alloc[%c0, %arg11] : memref<1x28xf64>
              %29 = arith.subf %28, %27 : f64
              memref.store %29, %alloc[%c0, %arg11] : memref<1x28xf64>
              %30 = memref.load %alloc_2[%c0] : memref<1xf64>
              %31 = arith.mulf %0, %30 : f64
              %32 = arith.divf %29, %31 : f64
              memref.store %32, %alloc[%c0, %arg11] : memref<1x28xf64>
            }
            %11 = memref.load %alloc[%c0, %arg8] : memref<1x28xf64>
            %12 = arith.addi %arg8, %arg9 : index
            %13 = arith.addi %12, %c1 : index
            %14 = memref.load %alloc[%c0, %13] : memref<1x28xf64>
            %15 = arith.mulf %11, %14 : f64
            %16 = arith.addi %arg8, %arg9 : index
            %17 = arith.addi %16, %c1 : index
            %18 = memref.load %arg4[%arg8, %17] : memref<?x28xf64>
            %19 = arith.addf %18, %15 : f64
            %20 = arith.addi %arg8, %arg9 : index
            %21 = arith.addi %20, %c1 : index
            memref.store %19, %arg4[%arg8, %21] : memref<?x28xf64>
          }
          %6 = arith.addi %arg8, %arg9 : index
          %7 = arith.addi %6, %c1 : index
          %8 = memref.load %arg4[%arg8, %7] : memref<?x28xf64>
          %9 = arith.addi %arg8, %arg9 : index
          %10 = arith.addi %9, %c1 : index
          memref.store %8, %arg4[%10, %arg8] : memref<?x28xf64>
        }
      }
    }
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

