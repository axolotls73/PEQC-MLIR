module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c-26 = arith.constant -26 : index
    %c26 = arith.constant 26 : index
    %c27 = arith.constant 27 : index
    %c31 = arith.constant 31 : index
    %c13 = arith.constant 13 : index
    %c-13 = arith.constant -13 : index
    %c16 = arith.constant 16 : index
    %c23 = arith.constant 23 : index
    %c128 = arith.constant 128 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c-8 = arith.constant -8 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c32 : index
      scf.for %arg7 = %c0 to %c28 step %c1 {
        %3 = arith.addi %2, %arg7 : index
        %4 = arith.muli %arg6, %c-8 : index
        %5 = arith.muli %arg7, %c-1 : index
        %6 = arith.cmpi slt, %5, %c0 : index
        %7 = arith.subi %c-1, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %12 = arith.addi %4, %11 : index
        %13 = arith.addi %12, %c7 : index
        scf.for %arg8 = %c0 to %13 step %c1 {
          %19 = arith.muli %arg8, %c4 : index
          %20 = arith.addi %3, %19 : index
          memref.store %cst_0, %arg4[%3, %20] : memref<?x28xf64>
          %21 = arith.addi %20, %c1 : index
          memref.store %cst_0, %arg4[%3, %21] : memref<?x28xf64>
          %22 = arith.addi %20, %c2 : index
          memref.store %cst_0, %arg4[%3, %22] : memref<?x28xf64>
          %23 = arith.addi %20, %c3 : index
          memref.store %cst_0, %arg4[%3, %23] : memref<?x28xf64>
        }
        %14 = arith.muli %arg7, %c-1 : index
        %15 = arith.remsi %14, %c4 : index
        %16 = arith.cmpi slt, %15, %c0 : index
        %17 = arith.addi %15, %c4 : index
        %18 = arith.select %16, %17, %15 : index
        scf.for %arg8 = %c0 to %18 step %c1 {
          %19 = arith.addi %3, %arg8 : index
          %20 = arith.muli %3, %c-1 : index
          %21 = arith.cmpi slt, %20, %c0 : index
          %22 = arith.subi %c-1, %20 : index
          %23 = arith.select %21, %22, %20 : index
          %24 = arith.divsi %23, %c4 : index
          %25 = arith.subi %c-1, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %27 = arith.muli %26, %c4 : index
          %28 = arith.addi %19, %27 : index
          %29 = arith.addi %28, %c28 : index
          memref.store %cst_0, %arg4[%3, %29] : memref<?x28xf64>
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    memref.store %0, %alloca_1[%c0] : memref<1xf64>
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c128 : index
      scf.for %arg7 = %c0 to %c7 step %c1 {
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst_0, %arg5[%4] : memref<?xf64>
        %5 = arith.addi %4, %c1 : index
        memref.store %cst_0, %arg5[%5] : memref<?xf64>
        %6 = arith.addi %4, %c2 : index
        memref.store %cst_0, %arg5[%6] : memref<?xf64>
        %7 = arith.addi %4, %c3 : index
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c32 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg7, %c128 : index
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %4 = arith.addi %2, %arg8 : index
          scf.for %arg9 = %c0 to %c7 step %c1 {
            %5 = arith.muli %arg9, %c4 : index
            %6 = arith.addi %3, %5 : index
            %7 = memref.load %arg5[%6] : memref<?xf64>
            %8 = memref.load %arg3[%4, %6] : memref<?x28xf64>
            %9 = arith.addf %7, %8 : f64
            memref.store %9, %arg5[%6] : memref<?xf64>
            %10 = arith.addi %6, %c1 : index
            %11 = memref.load %arg5[%10] : memref<?xf64>
            %12 = memref.load %arg3[%4, %10] : memref<?x28xf64>
            %13 = arith.addf %11, %12 : f64
            memref.store %13, %arg5[%10] : memref<?xf64>
            %14 = arith.addi %6, %c2 : index
            %15 = memref.load %arg5[%14] : memref<?xf64>
            %16 = memref.load %arg3[%4, %14] : memref<?x28xf64>
            %17 = arith.addf %15, %16 : f64
            memref.store %17, %arg5[%14] : memref<?xf64>
            %18 = arith.addi %6, %c3 : index
            %19 = memref.load %arg5[%18] : memref<?xf64>
            %20 = memref.load %arg3[%4, %18] : memref<?x28xf64>
            %21 = arith.addf %19, %20 : f64
            memref.store %21, %arg5[%18] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c128 : index
      scf.for %arg7 = %c0 to %c7 step %c1 {
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = arith.divf %5, %arg2 : f64
        memref.store %6, %arg5[%4] : memref<?xf64>
        %7 = arith.addi %4, %c1 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        memref.store %9, %arg5[%7] : memref<?xf64>
        %10 = arith.addi %4, %c2 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %13 = arith.addi %4, %c3 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c32 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg7, %c128 : index
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %4 = arith.addi %2, %arg8 : index
          scf.for %arg9 = %c0 to %c7 step %c1 {
            %5 = arith.muli %arg9, %c4 : index
            %6 = arith.addi %3, %5 : index
            %7 = memref.load %arg3[%4, %6] : memref<?x28xf64>
            %8 = memref.load %arg5[%6] : memref<?xf64>
            %9 = arith.subf %7, %8 : f64
            memref.store %9, %arg3[%4, %6] : memref<?x28xf64>
            %10 = arith.addi %6, %c1 : index
            %11 = memref.load %arg3[%4, %10] : memref<?x28xf64>
            %12 = memref.load %arg5[%10] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            memref.store %13, %arg3[%4, %10] : memref<?x28xf64>
            %14 = arith.addi %6, %c2 : index
            %15 = memref.load %arg3[%4, %14] : memref<?x28xf64>
            %16 = memref.load %arg5[%14] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            memref.store %17, %arg3[%4, %14] : memref<?x28xf64>
            %18 = arith.addi %6, %c3 : index
            %19 = memref.load %arg3[%4, %18] : memref<?x28xf64>
            %20 = memref.load %arg5[%18] : memref<?xf64>
            %21 = arith.subf %19, %20 : f64
            memref.store %21, %arg3[%4, %18] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %2 = arith.muli %arg6, %c32 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg7, %c32 : index
        scf.for %arg8 = %c0 to %c28 step %c1 {
          %4 = arith.addi %2, %arg8 : index
          scf.for %arg9 = %c0 to %c32 step %c1 {
            %5 = arith.addi %3, %arg9 : index
            %6 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %7 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %8 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %9 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %10 = arith.muli %arg6, %c-8 : index
            %11 = arith.muli %arg8, %c-1 : index
            %12 = arith.cmpi slt, %11, %c0 : index
            %13 = arith.subi %c-1, %11 : index
            %14 = arith.select %12, %13, %11 : index
            %15 = arith.divsi %14, %c4 : index
            %16 = arith.subi %c-1, %15 : index
            %17 = arith.select %12, %16, %15 : index
            %18 = arith.addi %10, %17 : index
            %19 = arith.addi %18, %c7 : index
            scf.for %arg10 = %c0 to %19 step %c1 {
              %26 = arith.muli %arg10, %c4 : index
              %27 = arith.addi %4, %26 : index
              %28 = memref.load %arg4[%4, %27] : memref<?x28xf64>
              %29 = memref.load %arg3[%5, %27] : memref<?x28xf64>
              %30 = arith.mulf %6, %29 : f64
              %31 = arith.addf %28, %30 : f64
              memref.store %31, %arg4[%4, %27] : memref<?x28xf64>
              %32 = arith.addi %27, %c1 : index
              %33 = memref.load %arg4[%4, %32] : memref<?x28xf64>
              %34 = memref.load %arg3[%5, %32] : memref<?x28xf64>
              %35 = arith.mulf %7, %34 : f64
              %36 = arith.addf %33, %35 : f64
              memref.store %36, %arg4[%4, %32] : memref<?x28xf64>
              %37 = arith.addi %27, %c2 : index
              %38 = memref.load %arg4[%4, %37] : memref<?x28xf64>
              %39 = memref.load %arg3[%5, %37] : memref<?x28xf64>
              %40 = arith.mulf %8, %39 : f64
              %41 = arith.addf %38, %40 : f64
              memref.store %41, %arg4[%4, %37] : memref<?x28xf64>
              %42 = arith.addi %27, %c3 : index
              %43 = memref.load %arg4[%4, %42] : memref<?x28xf64>
              %44 = memref.load %arg3[%5, %42] : memref<?x28xf64>
              %45 = arith.mulf %9, %44 : f64
              %46 = arith.addf %43, %45 : f64
              memref.store %46, %arg4[%4, %42] : memref<?x28xf64>
            }
            %20 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %21 = arith.muli %arg8, %c-1 : index
            %22 = arith.remsi %21, %c4 : index
            %23 = arith.cmpi slt, %22, %c0 : index
            %24 = arith.addi %22, %c4 : index
            %25 = arith.select %23, %24, %22 : index
            scf.for %arg10 = %c0 to %25 step %c1 {
              %26 = arith.addi %4, %arg10 : index
              %27 = arith.muli %4, %c-1 : index
              %28 = arith.cmpi slt, %27, %c0 : index
              %29 = arith.subi %c-1, %27 : index
              %30 = arith.select %28, %29, %27 : index
              %31 = arith.divsi %30, %c4 : index
              %32 = arith.subi %c-1, %31 : index
              %33 = arith.select %28, %32, %31 : index
              %34 = arith.muli %33, %c4 : index
              %35 = arith.addi %26, %34 : index
              %36 = arith.addi %35, %c28 : index
              %37 = memref.load %arg4[%4, %36] : memref<?x28xf64>
              %38 = memref.load %arg3[%5, %36] : memref<?x28xf64>
              %39 = arith.mulf %20, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %arg4[%4, %36] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %1 = memref.load %alloca_1[%c0] : memref<1xf64>
    scf.for %arg6 = %c0 to %c23 step %c1 {
      %2 = arith.muli %arg6, %c16 : index
      %3 = arith.addi %2, %c-13 : index
      %4 = arith.cmpi sle, %3, %c0 : index
      %5 = arith.subi %c0, %3 : index
      %6 = arith.subi %3, %c1 : index
      %7 = arith.select %4, %5, %6 : index
      %8 = arith.divsi %7, %c13 : index
      %9 = arith.subi %c0, %8 : index
      %10 = arith.addi %8, %c1 : index
      %11 = arith.select %4, %9, %10 : index
      %12 = arith.maxsi %11, %c0 : index
      %13 = arith.muli %arg6, %c32 : index
      %14 = arith.addi %13, %c31 : index
      %15 = arith.cmpi slt, %14, %c0 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c27 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %21 = arith.addi %20, %c1 : index
      scf.for %arg7 = %12 to %21 step %c1 {
        %22 = arith.muli %arg6, %c32 : index
        %23 = arith.muli %arg7, %c27 : index
        %24 = arith.maxsi %22, %23 : index
        %25 = arith.muli %arg6, %c32 : index
        %26 = arith.addi %25, %c32 : index
        %27 = arith.muli %arg7, %c26 : index
        %28 = arith.addi %27, %c28 : index
        %29 = arith.minsi %26, %28 : index
        scf.for %arg8 = %24 to %29 step %c1 {
          %30 = arith.muli %arg8, %c-26 : index
          %31 = arith.addi %30, %arg7 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x28xf64>
          %33 = arith.divf %32, %1 : f64
          memref.store %33, %alloca[%c0] : memref<1xf64>
          %34 = arith.muli %arg8, %c-26 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %36 = memref.load %alloca[%c0] : memref<1xf64>
          %37 = arith.muli %arg8, %c-26 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

