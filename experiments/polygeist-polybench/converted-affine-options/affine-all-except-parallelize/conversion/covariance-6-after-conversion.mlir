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
    %c-4 = arith.constant -4 : index
    %c-32 = arith.constant -32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c-8 = arith.constant -8 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
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
        %4 = arith.muli %arg7, %c-1 : index
        %5 = arith.cmpi slt, %4, %c0 : index
        %6 = arith.subi %c-1, %4 : index
        %7 = arith.select %5, %6, %4 : index
        %8 = arith.divsi %7, %c4 : index
        %9 = arith.subi %c-1, %8 : index
        %10 = arith.select %5, %9, %8 : index
        %11 = arith.muli %arg6, %c-8 : index
        %12 = arith.addi %10, %11 : index
        %13 = arith.addi %12, %c7 : index
        scf.for %arg8 = %c0 to %13 step %c1 {
          %28 = arith.muli %arg8, %c4 : index
          %29 = arith.addi %3, %28 : index
          memref.store %cst_0, %arg4[%3, %29] : memref<?x28xf64>
          %30 = arith.addi %29, %c1 : index
          memref.store %cst_0, %arg4[%3, %30] : memref<?x28xf64>
          %31 = arith.addi %29, %c2 : index
          memref.store %cst_0, %arg4[%3, %31] : memref<?x28xf64>
          %32 = arith.addi %29, %c3 : index
          memref.store %cst_0, %arg4[%3, %32] : memref<?x28xf64>
        }
        %14 = arith.muli %arg7, %c-1 : index
        %15 = arith.muli %arg6, %c-32 : index
        %16 = arith.addi %14, %15 : index
        %17 = arith.muli %arg7, %c-1 : index
        %18 = arith.cmpi slt, %17, %c0 : index
        %19 = arith.subi %c-1, %17 : index
        %20 = arith.select %18, %19, %17 : index
        %21 = arith.divsi %20, %c4 : index
        %22 = arith.subi %c-1, %21 : index
        %23 = arith.select %18, %22, %21 : index
        %24 = arith.muli %arg6, %c-8 : index
        %25 = arith.addi %23, %24 : index
        %26 = arith.muli %25, %c-4 : index
        %27 = arith.addi %16, %26 : index
        scf.for %arg8 = %c0 to %27 step %c1 {
          %28 = arith.addi %3, %arg8 : index
          %29 = arith.muli %3, %c-1 : index
          %30 = arith.cmpi slt, %29, %c0 : index
          %31 = arith.subi %c-1, %29 : index
          %32 = arith.select %30, %31, %29 : index
          %33 = arith.divsi %32, %c4 : index
          %34 = arith.subi %c-1, %33 : index
          %35 = arith.select %30, %34, %33 : index
          %36 = arith.muli %35, %c4 : index
          %37 = arith.addi %28, %36 : index
          %38 = arith.addi %37, %c28 : index
          memref.store %cst_0, %arg4[%3, %38] : memref<?x28xf64>
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
            %10 = arith.muli %arg8, %c-1 : index
            %11 = arith.cmpi slt, %10, %c0 : index
            %12 = arith.subi %c-1, %10 : index
            %13 = arith.select %11, %12, %10 : index
            %14 = arith.divsi %13, %c4 : index
            %15 = arith.subi %c-1, %14 : index
            %16 = arith.select %11, %15, %14 : index
            %17 = arith.muli %arg6, %c-8 : index
            %18 = arith.addi %16, %17 : index
            %19 = arith.addi %18, %c7 : index
            scf.for %arg10 = %c0 to %19 step %c1 {
              %35 = arith.muli %arg10, %c4 : index
              %36 = arith.addi %4, %35 : index
              %37 = memref.load %arg4[%4, %36] : memref<?x28xf64>
              %38 = memref.load %arg3[%5, %36] : memref<?x28xf64>
              %39 = arith.mulf %6, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %arg4[%4, %36] : memref<?x28xf64>
              %41 = arith.addi %36, %c1 : index
              %42 = memref.load %arg4[%4, %41] : memref<?x28xf64>
              %43 = memref.load %arg3[%5, %41] : memref<?x28xf64>
              %44 = arith.mulf %7, %43 : f64
              %45 = arith.addf %42, %44 : f64
              memref.store %45, %arg4[%4, %41] : memref<?x28xf64>
              %46 = arith.addi %36, %c2 : index
              %47 = memref.load %arg4[%4, %46] : memref<?x28xf64>
              %48 = memref.load %arg3[%5, %46] : memref<?x28xf64>
              %49 = arith.mulf %8, %48 : f64
              %50 = arith.addf %47, %49 : f64
              memref.store %50, %arg4[%4, %46] : memref<?x28xf64>
              %51 = arith.addi %36, %c3 : index
              %52 = memref.load %arg4[%4, %51] : memref<?x28xf64>
              %53 = memref.load %arg3[%5, %51] : memref<?x28xf64>
              %54 = arith.mulf %9, %53 : f64
              %55 = arith.addf %52, %54 : f64
              memref.store %55, %arg4[%4, %51] : memref<?x28xf64>
            }
            %20 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %21 = arith.muli %arg8, %c-1 : index
            %22 = arith.muli %arg6, %c-32 : index
            %23 = arith.addi %21, %22 : index
            %24 = arith.muli %arg8, %c-1 : index
            %25 = arith.cmpi slt, %24, %c0 : index
            %26 = arith.subi %c-1, %24 : index
            %27 = arith.select %25, %26, %24 : index
            %28 = arith.divsi %27, %c4 : index
            %29 = arith.subi %c-1, %28 : index
            %30 = arith.select %25, %29, %28 : index
            %31 = arith.muli %arg6, %c-8 : index
            %32 = arith.addi %30, %31 : index
            %33 = arith.muli %32, %c-4 : index
            %34 = arith.addi %23, %33 : index
            scf.for %arg10 = %c0 to %34 step %c1 {
              %35 = arith.addi %4, %arg10 : index
              %36 = arith.muli %4, %c-1 : index
              %37 = arith.cmpi slt, %36, %c0 : index
              %38 = arith.subi %c-1, %36 : index
              %39 = arith.select %37, %38, %36 : index
              %40 = arith.divsi %39, %c4 : index
              %41 = arith.subi %c-1, %40 : index
              %42 = arith.select %37, %41, %40 : index
              %43 = arith.muli %42, %c4 : index
              %44 = arith.addi %35, %43 : index
              %45 = arith.addi %44, %c28 : index
              %46 = memref.load %arg4[%4, %45] : memref<?x28xf64>
              %47 = memref.load %arg3[%5, %45] : memref<?x28xf64>
              %48 = arith.mulf %20, %47 : f64
              %49 = arith.addf %46, %48 : f64
              memref.store %49, %arg4[%4, %45] : memref<?x28xf64>
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

