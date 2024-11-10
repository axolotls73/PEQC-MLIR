module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c7 = arith.constant 7 : index
    %c24 = arith.constant 24 : index
    %c6 = arith.constant 6 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c27 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %5 = arith.addi %arg7, %arg8 : index
        %6 = arith.muli %arg7, %c-1 : index
        %7 = arith.muli %arg8, %c-1 : index
        %8 = arith.addi %6, %7 : index
        %9 = arith.addi %8, %c27 : index
        %10 = arith.cmpi slt, %9, %c0 : index
        %11 = arith.subi %c-1, %9 : index
        %12 = arith.select %10, %11, %9 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1, %13 : index
        %15 = arith.select %10, %14, %13 : index
        scf.for %arg9 = %c0 to %15 step %c1 {
          %32 = arith.muli %arg9, %c4 : index
          %33 = arith.addi %5, %32 : index
          %34 = arith.addi %33, %c1 : index
          memref.store %cst_0, %arg4[%5, %34] : memref<?x28xf64>
          %35 = arith.addi %34, %c1 : index
          memref.store %cst_0, %arg4[%5, %35] : memref<?x28xf64>
          %36 = arith.addi %34, %c2 : index
          memref.store %cst_0, %arg4[%5, %36] : memref<?x28xf64>
          %37 = arith.addi %34, %c3 : index
          memref.store %cst_0, %arg4[%5, %37] : memref<?x28xf64>
        }
        %16 = arith.muli %arg7, %c-1 : index
        %17 = arith.muli %arg8, %c-1 : index
        %18 = arith.addi %16, %17 : index
        %19 = arith.muli %arg7, %c-1 : index
        %20 = arith.muli %arg8, %c-1 : index
        %21 = arith.addi %19, %20 : index
        %22 = arith.addi %21, %c27 : index
        %23 = arith.cmpi slt, %22, %c0 : index
        %24 = arith.subi %c-1, %22 : index
        %25 = arith.select %23, %24, %22 : index
        %26 = arith.divsi %25, %c4 : index
        %27 = arith.subi %c-1, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %29 = arith.muli %28, %c-4 : index
        %30 = arith.addi %18, %29 : index
        %31 = arith.addi %30, %c27 : index
        scf.for %arg9 = %c0 to %31 step %c1 {
          %32 = arith.addi %5, %arg9 : index
          %33 = arith.muli %5, %c-1 : index
          %34 = arith.addi %33, %c27 : index
          %35 = arith.cmpi slt, %34, %c0 : index
          %36 = arith.subi %c-1, %34 : index
          %37 = arith.select %35, %36, %34 : index
          %38 = arith.divsi %37, %c4 : index
          %39 = arith.subi %c-1, %38 : index
          %40 = arith.select %35, %39, %38 : index
          %41 = arith.muli %40, %c4 : index
          %42 = arith.addi %32, %41 : index
          %43 = arith.addi %42, %c1 : index
          memref.store %cst_0, %arg4[%5, %43] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c6 step %c1 {
      %5 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
        %8 = arith.addi %7, %c1 : index
        memref.store %cst_1, %arg4[%8, %8] : memref<?x28xf64>
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_1, %arg4[%9, %9] : memref<?x28xf64>
        %10 = arith.addi %7, %c3 : index
        memref.store %cst_1, %arg4[%10, %10] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c3 step %c1 {
      %5 = arith.addi %arg7, %c24 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.addi %5, %arg8 : index
        memref.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %5 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_0, %arg6[%7] : memref<?xf64>
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
        %8 = arith.addi %7, %c1 : index
        memref.store %cst_0, %arg6[%8] : memref<?xf64>
        memref.store %cst_0, %arg5[%8] : memref<?xf64>
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_0, %arg6[%9] : memref<?xf64>
        memref.store %cst_0, %arg5[%9] : memref<?xf64>
        %10 = arith.addi %7, %c3 : index
        memref.store %cst_0, %arg6[%10] : memref<?xf64>
        memref.store %cst_0, %arg5[%10] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c7 step %c1 {
        %5 = arith.muli %arg8, %c4 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %6 = arith.addi %arg7, %arg9 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %7 = arith.muli %arg10, %c4 : index
            %8 = arith.addi %5, %7 : index
            %9 = memref.load %arg5[%8] : memref<?xf64>
            %10 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            memref.store %11, %arg5[%8] : memref<?xf64>
            %12 = arith.addi %8, %c1 : index
            %13 = memref.load %arg5[%12] : memref<?xf64>
            %14 = memref.load %arg3[%6, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            memref.store %15, %arg5[%12] : memref<?xf64>
            %16 = arith.addi %8, %c2 : index
            %17 = memref.load %arg5[%16] : memref<?xf64>
            %18 = memref.load %arg3[%6, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            memref.store %19, %arg5[%16] : memref<?xf64>
            %20 = arith.addi %8, %c3 : index
            %21 = memref.load %arg5[%20] : memref<?xf64>
            %22 = memref.load %arg3[%6, %20] : memref<?x28xf64>
            %23 = arith.addf %21, %22 : f64
            memref.store %23, %arg5[%20] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %5 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        memref.store %9, %arg5[%7] : memref<?xf64>
        %10 = arith.addi %7, %c1 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %13 = arith.addi %7, %c2 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
        %16 = arith.addi %7, %c3 : index
        %17 = memref.load %arg5[%16] : memref<?xf64>
        %18 = arith.divf %17, %arg2 : f64
        memref.store %18, %arg5[%16] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c7 step %c1 {
        %5 = arith.muli %arg8, %c4 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %6 = arith.addi %arg7, %arg9 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %7 = arith.muli %arg10, %c4 : index
            %8 = arith.addi %5, %7 : index
            %9 = memref.load %arg6[%8] : memref<?xf64>
            %10 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %11 = memref.load %arg5[%8] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            %13 = arith.mulf %12, %12 : f64
            %14 = arith.addf %9, %13 : f64
            memref.store %14, %arg6[%8] : memref<?xf64>
            %15 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %16 = memref.load %arg5[%8] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            memref.store %17, %arg3[%6, %8] : memref<?x28xf64>
            %18 = arith.addi %8, %c1 : index
            %19 = memref.load %arg6[%18] : memref<?xf64>
            %20 = memref.load %arg3[%6, %18] : memref<?x28xf64>
            %21 = memref.load %arg5[%18] : memref<?xf64>
            %22 = arith.subf %20, %21 : f64
            %23 = arith.mulf %22, %22 : f64
            %24 = arith.addf %19, %23 : f64
            memref.store %24, %arg6[%18] : memref<?xf64>
            %25 = memref.load %arg3[%6, %18] : memref<?x28xf64>
            %26 = memref.load %arg5[%18] : memref<?xf64>
            %27 = arith.subf %25, %26 : f64
            memref.store %27, %arg3[%6, %18] : memref<?x28xf64>
            %28 = arith.addi %8, %c2 : index
            %29 = memref.load %arg6[%28] : memref<?xf64>
            %30 = memref.load %arg3[%6, %28] : memref<?x28xf64>
            %31 = memref.load %arg5[%28] : memref<?xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = arith.mulf %32, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg6[%28] : memref<?xf64>
            %35 = memref.load %arg3[%6, %28] : memref<?x28xf64>
            %36 = memref.load %arg5[%28] : memref<?xf64>
            %37 = arith.subf %35, %36 : f64
            memref.store %37, %arg3[%6, %28] : memref<?x28xf64>
            %38 = arith.addi %8, %c3 : index
            %39 = memref.load %arg6[%38] : memref<?xf64>
            %40 = memref.load %arg3[%6, %38] : memref<?x28xf64>
            %41 = memref.load %arg5[%38] : memref<?xf64>
            %42 = arith.subf %40, %41 : f64
            %43 = arith.mulf %42, %42 : f64
            %44 = arith.addf %39, %43 : f64
            memref.store %44, %arg6[%38] : memref<?xf64>
            %45 = memref.load %arg3[%6, %38] : memref<?x28xf64>
            %46 = memref.load %arg5[%38] : memref<?xf64>
            %47 = arith.subf %45, %46 : f64
            memref.store %47, %arg3[%6, %38] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %5 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg6[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        %10 = math.sqrt %9 : f64
        %11 = arith.cmpf ole, %10, %cst : f64
        %12 = arith.select %11, %cst_1, %10 : f64
        memref.store %12, %arg6[%7] : memref<?xf64>
        %13 = arith.addi %7, %c1 : index
        %14 = memref.load %arg6[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        %16 = math.sqrt %15 : f64
        %17 = arith.cmpf ole, %16, %cst : f64
        %18 = arith.select %17, %cst_1, %16 : f64
        memref.store %18, %arg6[%13] : memref<?xf64>
        %19 = arith.addi %7, %c2 : index
        %20 = memref.load %arg6[%19] : memref<?xf64>
        %21 = arith.divf %20, %arg2 : f64
        %22 = math.sqrt %21 : f64
        %23 = arith.cmpf ole, %22, %cst : f64
        %24 = arith.select %23, %cst_1, %22 : f64
        memref.store %24, %arg6[%19] : memref<?xf64>
        %25 = arith.addi %7, %c3 : index
        %26 = memref.load %arg6[%25] : memref<?xf64>
        %27 = arith.divf %26, %arg2 : f64
        %28 = math.sqrt %27 : f64
        %29 = arith.cmpf ole, %28, %cst : f64
        %30 = arith.select %29, %cst_1, %28 : f64
        memref.store %30, %arg6[%25] : memref<?xf64>
      }
    }
    %1 = memref.load %alloca[%c0] : memref<1xf64>
    %2 = memref.load %alloca[%c0] : memref<1xf64>
    %3 = memref.load %alloca[%c0] : memref<1xf64>
    %4 = memref.load %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %5 = arith.addi %arg7, %arg8 : index
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %6 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %7 = arith.muli %arg10, %c4 : index
            %8 = arith.addi %6, %7 : index
            %9 = memref.load %arg3[%5, %8] : memref<?x28xf64>
            %10 = memref.load %arg6[%8] : memref<?xf64>
            %11 = arith.mulf %1, %10 : f64
            %12 = arith.divf %9, %11 : f64
            memref.store %12, %arg3[%5, %8] : memref<?x28xf64>
            %13 = arith.addi %8, %c1 : index
            %14 = memref.load %arg3[%5, %13] : memref<?x28xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %2, %15 : f64
            %17 = arith.divf %14, %16 : f64
            memref.store %17, %arg3[%5, %13] : memref<?x28xf64>
            %18 = arith.addi %8, %c2 : index
            %19 = memref.load %arg3[%5, %18] : memref<?x28xf64>
            %20 = memref.load %arg6[%18] : memref<?xf64>
            %21 = arith.mulf %3, %20 : f64
            %22 = arith.divf %19, %21 : f64
            memref.store %22, %arg3[%5, %18] : memref<?x28xf64>
            %23 = arith.addi %8, %c3 : index
            %24 = memref.load %arg3[%5, %23] : memref<?x28xf64>
            %25 = memref.load %arg6[%23] : memref<?xf64>
            %26 = arith.mulf %4, %25 : f64
            %27 = arith.divf %24, %26 : f64
            memref.store %27, %arg3[%5, %23] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %5 = arith.addi %arg7, %arg8 : index
        scf.for %arg9 = %c0 to %c32 step %c1 {
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %6 = arith.addi %arg9, %arg10 : index
            %7 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %8 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %9 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %10 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %11 = arith.muli %arg7, %c-1 : index
            %12 = arith.muli %arg8, %c-1 : index
            %13 = arith.addi %11, %12 : index
            %14 = arith.addi %13, %c27 : index
            %15 = arith.cmpi slt, %14, %c0 : index
            %16 = arith.subi %c-1, %14 : index
            %17 = arith.select %15, %16, %14 : index
            %18 = arith.divsi %17, %c4 : index
            %19 = arith.subi %c-1, %18 : index
            %20 = arith.select %15, %19, %18 : index
            scf.for %arg11 = %c0 to %20 step %c1 {
              %38 = arith.muli %arg11, %c4 : index
              %39 = arith.addi %5, %38 : index
              %40 = arith.addi %39, %c1 : index
              %41 = memref.load %arg4[%5, %40] : memref<?x28xf64>
              %42 = memref.load %arg3[%6, %40] : memref<?x28xf64>
              %43 = arith.mulf %7, %42 : f64
              %44 = arith.addf %41, %43 : f64
              memref.store %44, %arg4[%5, %40] : memref<?x28xf64>
              %45 = arith.addi %40, %c1 : index
              %46 = memref.load %arg4[%5, %45] : memref<?x28xf64>
              %47 = memref.load %arg3[%6, %45] : memref<?x28xf64>
              %48 = arith.mulf %8, %47 : f64
              %49 = arith.addf %46, %48 : f64
              memref.store %49, %arg4[%5, %45] : memref<?x28xf64>
              %50 = arith.addi %40, %c2 : index
              %51 = memref.load %arg4[%5, %50] : memref<?x28xf64>
              %52 = memref.load %arg3[%6, %50] : memref<?x28xf64>
              %53 = arith.mulf %9, %52 : f64
              %54 = arith.addf %51, %53 : f64
              memref.store %54, %arg4[%5, %50] : memref<?x28xf64>
              %55 = arith.addi %40, %c3 : index
              %56 = memref.load %arg4[%5, %55] : memref<?x28xf64>
              %57 = memref.load %arg3[%6, %55] : memref<?x28xf64>
              %58 = arith.mulf %10, %57 : f64
              %59 = arith.addf %56, %58 : f64
              memref.store %59, %arg4[%5, %55] : memref<?x28xf64>
            }
            %21 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %22 = arith.muli %arg7, %c-1 : index
            %23 = arith.muli %arg8, %c-1 : index
            %24 = arith.addi %22, %23 : index
            %25 = arith.muli %arg7, %c-1 : index
            %26 = arith.muli %arg8, %c-1 : index
            %27 = arith.addi %25, %26 : index
            %28 = arith.addi %27, %c27 : index
            %29 = arith.cmpi slt, %28, %c0 : index
            %30 = arith.subi %c-1, %28 : index
            %31 = arith.select %29, %30, %28 : index
            %32 = arith.divsi %31, %c4 : index
            %33 = arith.subi %c-1, %32 : index
            %34 = arith.select %29, %33, %32 : index
            %35 = arith.muli %34, %c-4 : index
            %36 = arith.addi %24, %35 : index
            %37 = arith.addi %36, %c27 : index
            scf.for %arg11 = %c0 to %37 step %c1 {
              %38 = arith.addi %5, %arg11 : index
              %39 = arith.muli %5, %c-1 : index
              %40 = arith.addi %39, %c27 : index
              %41 = arith.cmpi slt, %40, %c0 : index
              %42 = arith.subi %c-1, %40 : index
              %43 = arith.select %41, %42, %40 : index
              %44 = arith.divsi %43, %c4 : index
              %45 = arith.subi %c-1, %44 : index
              %46 = arith.select %41, %45, %44 : index
              %47 = arith.muli %46, %c4 : index
              %48 = arith.addi %38, %47 : index
              %49 = arith.addi %48, %c1 : index
              %50 = memref.load %arg4[%5, %49] : memref<?x28xf64>
              %51 = memref.load %arg3[%6, %49] : memref<?x28xf64>
              %52 = arith.mulf %21, %51 : f64
              %53 = arith.addf %50, %52 : f64
              memref.store %53, %arg4[%5, %49] : memref<?x28xf64>
            }
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %5 = arith.addi %arg7, %arg8 : index
        %6 = arith.muli %arg7, %c-1 : index
        %7 = arith.muli %arg8, %c-1 : index
        %8 = arith.addi %6, %7 : index
        %9 = arith.addi %8, %c27 : index
        %10 = arith.cmpi slt, %9, %c0 : index
        %11 = arith.subi %c-1, %9 : index
        %12 = arith.select %10, %11, %9 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1, %13 : index
        %15 = arith.select %10, %14, %13 : index
        scf.for %arg9 = %c0 to %15 step %c1 {
          %32 = arith.muli %arg9, %c4 : index
          %33 = arith.addi %5, %32 : index
          %34 = arith.addi %33, %c1 : index
          %35 = memref.load %arg4[%5, %34] : memref<?x28xf64>
          memref.store %35, %arg4[%34, %5] : memref<?x28xf64>
          %36 = arith.addi %34, %c1 : index
          %37 = memref.load %arg4[%5, %36] : memref<?x28xf64>
          memref.store %37, %arg4[%36, %5] : memref<?x28xf64>
          %38 = arith.addi %34, %c2 : index
          %39 = memref.load %arg4[%5, %38] : memref<?x28xf64>
          memref.store %39, %arg4[%38, %5] : memref<?x28xf64>
          %40 = arith.addi %34, %c3 : index
          %41 = memref.load %arg4[%5, %40] : memref<?x28xf64>
          memref.store %41, %arg4[%40, %5] : memref<?x28xf64>
        }
        %16 = arith.muli %arg7, %c-1 : index
        %17 = arith.muli %arg8, %c-1 : index
        %18 = arith.addi %16, %17 : index
        %19 = arith.muli %arg7, %c-1 : index
        %20 = arith.muli %arg8, %c-1 : index
        %21 = arith.addi %19, %20 : index
        %22 = arith.addi %21, %c27 : index
        %23 = arith.cmpi slt, %22, %c0 : index
        %24 = arith.subi %c-1, %22 : index
        %25 = arith.select %23, %24, %22 : index
        %26 = arith.divsi %25, %c4 : index
        %27 = arith.subi %c-1, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %29 = arith.muli %28, %c-4 : index
        %30 = arith.addi %18, %29 : index
        %31 = arith.addi %30, %c27 : index
        scf.for %arg9 = %c0 to %31 step %c1 {
          %32 = arith.addi %5, %arg9 : index
          %33 = arith.muli %5, %c-1 : index
          %34 = arith.addi %33, %c27 : index
          %35 = arith.cmpi slt, %34, %c0 : index
          %36 = arith.subi %c-1, %34 : index
          %37 = arith.select %35, %36, %34 : index
          %38 = arith.divsi %37, %c4 : index
          %39 = arith.subi %c-1, %38 : index
          %40 = arith.select %35, %39, %38 : index
          %41 = arith.muli %40, %c4 : index
          %42 = arith.addi %32, %41 : index
          %43 = arith.addi %42, %c1 : index
          %44 = memref.load %arg4[%5, %43] : memref<?x28xf64>
          memref.store %44, %arg4[%43, %5] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

