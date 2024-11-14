module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c7 = arith.constant 7 : index
    %c24 = arith.constant 24 : index
    %c6 = arith.constant 6 : index
    %c128 = arith.constant 128 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c27 step %c1 {
        %6 = arith.addi %5, %arg8 : index
        %7 = arith.muli %arg8, %c-1 : index
        %8 = arith.muli %arg7, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %10 = arith.addi %9, %c27 : index
        %11 = arith.cmpi slt, %10, %c0 : index
        %12 = arith.subi %c-1, %10 : index
        %13 = arith.select %11, %12, %10 : index
        %14 = arith.divsi %13, %c4 : index
        %15 = arith.subi %c-1, %14 : index
        %16 = arith.select %11, %15, %14 : index
        scf.for %arg9 = %c0 to %16 step %c1 {
          %33 = arith.muli %arg9, %c4 : index
          %34 = arith.addi %6, %33 : index
          %35 = arith.addi %34, %c1 : index
          memref.store %cst_0, %arg4[%6, %35] : memref<?x28xf64>
          %36 = arith.addi %35, %c1 : index
          memref.store %cst_0, %arg4[%6, %36] : memref<?x28xf64>
          %37 = arith.addi %35, %c2 : index
          memref.store %cst_0, %arg4[%6, %37] : memref<?x28xf64>
          %38 = arith.addi %35, %c3 : index
          memref.store %cst_0, %arg4[%6, %38] : memref<?x28xf64>
        }
        %17 = arith.muli %arg8, %c-1 : index
        %18 = arith.muli %arg7, %c-32 : index
        %19 = arith.addi %17, %18 : index
        %20 = arith.muli %arg8, %c-1 : index
        %21 = arith.muli %arg7, %c-32 : index
        %22 = arith.addi %20, %21 : index
        %23 = arith.addi %22, %c27 : index
        %24 = arith.cmpi slt, %23, %c0 : index
        %25 = arith.subi %c-1, %23 : index
        %26 = arith.select %24, %25, %23 : index
        %27 = arith.divsi %26, %c4 : index
        %28 = arith.subi %c-1, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %30 = arith.muli %29, %c-4 : index
        %31 = arith.addi %19, %30 : index
        %32 = arith.addi %31, %c27 : index
        scf.for %arg9 = %c0 to %32 step %c1 {
          %33 = arith.addi %6, %arg9 : index
          %34 = arith.muli %6, %c-1 : index
          %35 = arith.addi %34, %c27 : index
          %36 = arith.cmpi slt, %35, %c0 : index
          %37 = arith.subi %c-1, %35 : index
          %38 = arith.select %36, %37, %35 : index
          %39 = arith.divsi %38, %c4 : index
          %40 = arith.subi %c-1, %39 : index
          %41 = arith.select %36, %40, %39 : index
          %42 = arith.muli %41, %c4 : index
          %43 = arith.addi %33, %42 : index
          %44 = arith.addi %43, %c1 : index
          memref.store %cst_0, %arg4[%6, %44] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c128 : index
      scf.for %arg8 = %c0 to %c6 step %c1 {
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
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      %6 = arith.addi %5, %c24 : index
      scf.for %arg8 = %c0 to %c3 step %c1 {
        %7 = arith.addi %6, %arg8 : index
        memref.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c128 : index
      scf.for %arg8 = %c0 to %c7 step %c1 {
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
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c128 : index
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = arith.addi %5, %arg9 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg5[%9] : memref<?xf64>
            %11 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %12 = arith.addf %10, %11 : f64
            memref.store %12, %arg5[%9] : memref<?xf64>
            %13 = arith.addi %9, %c1 : index
            %14 = memref.load %arg5[%13] : memref<?xf64>
            %15 = memref.load %arg3[%7, %13] : memref<?x28xf64>
            %16 = arith.addf %14, %15 : f64
            memref.store %16, %arg5[%13] : memref<?xf64>
            %17 = arith.addi %9, %c2 : index
            %18 = memref.load %arg5[%17] : memref<?xf64>
            %19 = memref.load %arg3[%7, %17] : memref<?x28xf64>
            %20 = arith.addf %18, %19 : f64
            memref.store %20, %arg5[%17] : memref<?xf64>
            %21 = arith.addi %9, %c3 : index
            %22 = memref.load %arg5[%21] : memref<?xf64>
            %23 = memref.load %arg3[%7, %21] : memref<?x28xf64>
            %24 = arith.addf %22, %23 : f64
            memref.store %24, %arg5[%21] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c128 : index
      scf.for %arg8 = %c0 to %c7 step %c1 {
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
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c128 : index
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = arith.addi %5, %arg9 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg6[%9] : memref<?xf64>
            %11 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %12 = memref.load %arg5[%9] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            %14 = arith.mulf %13, %13 : f64
            %15 = arith.addf %10, %14 : f64
            memref.store %15, %arg6[%9] : memref<?xf64>
            %16 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %17 = memref.load %arg5[%9] : memref<?xf64>
            %18 = arith.subf %16, %17 : f64
            memref.store %18, %arg3[%7, %9] : memref<?x28xf64>
            %19 = arith.addi %9, %c1 : index
            %20 = memref.load %arg6[%19] : memref<?xf64>
            %21 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %22 = memref.load %arg5[%19] : memref<?xf64>
            %23 = arith.subf %21, %22 : f64
            %24 = arith.mulf %23, %23 : f64
            %25 = arith.addf %20, %24 : f64
            memref.store %25, %arg6[%19] : memref<?xf64>
            %26 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %27 = memref.load %arg5[%19] : memref<?xf64>
            %28 = arith.subf %26, %27 : f64
            memref.store %28, %arg3[%7, %19] : memref<?x28xf64>
            %29 = arith.addi %9, %c2 : index
            %30 = memref.load %arg6[%29] : memref<?xf64>
            %31 = memref.load %arg3[%7, %29] : memref<?x28xf64>
            %32 = memref.load %arg5[%29] : memref<?xf64>
            %33 = arith.subf %31, %32 : f64
            %34 = arith.mulf %33, %33 : f64
            %35 = arith.addf %30, %34 : f64
            memref.store %35, %arg6[%29] : memref<?xf64>
            %36 = memref.load %arg3[%7, %29] : memref<?x28xf64>
            %37 = memref.load %arg5[%29] : memref<?xf64>
            %38 = arith.subf %36, %37 : f64
            memref.store %38, %arg3[%7, %29] : memref<?x28xf64>
            %39 = arith.addi %9, %c3 : index
            %40 = memref.load %arg6[%39] : memref<?xf64>
            %41 = memref.load %arg3[%7, %39] : memref<?x28xf64>
            %42 = memref.load %arg5[%39] : memref<?xf64>
            %43 = arith.subf %41, %42 : f64
            %44 = arith.mulf %43, %43 : f64
            %45 = arith.addf %40, %44 : f64
            memref.store %45, %arg6[%39] : memref<?xf64>
            %46 = memref.load %arg3[%7, %39] : memref<?x28xf64>
            %47 = memref.load %arg5[%39] : memref<?xf64>
            %48 = arith.subf %46, %47 : f64
            memref.store %48, %arg3[%7, %39] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c128 : index
      scf.for %arg8 = %c0 to %c7 step %c1 {
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
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c128 : index
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = arith.addi %5, %arg9 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %11 = memref.load %arg6[%9] : memref<?xf64>
            %12 = arith.mulf %1, %11 : f64
            %13 = arith.divf %10, %12 : f64
            memref.store %13, %arg3[%7, %9] : memref<?x28xf64>
            %14 = arith.addi %9, %c1 : index
            %15 = memref.load %arg3[%7, %14] : memref<?x28xf64>
            %16 = memref.load %arg6[%14] : memref<?xf64>
            %17 = arith.mulf %2, %16 : f64
            %18 = arith.divf %15, %17 : f64
            memref.store %18, %arg3[%7, %14] : memref<?x28xf64>
            %19 = arith.addi %9, %c2 : index
            %20 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %21 = memref.load %arg6[%19] : memref<?xf64>
            %22 = arith.mulf %3, %21 : f64
            %23 = arith.divf %20, %22 : f64
            memref.store %23, %arg3[%7, %19] : memref<?x28xf64>
            %24 = arith.addi %9, %c3 : index
            %25 = memref.load %arg3[%7, %24] : memref<?x28xf64>
            %26 = memref.load %arg6[%24] : memref<?xf64>
            %27 = arith.mulf %4, %26 : f64
            %28 = arith.divf %25, %27 : f64
            memref.store %28, %arg3[%7, %24] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %6 = arith.muli %arg8, %c32 : index
        scf.for %arg9 = %c0 to %c27 step %c1 {
          %7 = arith.addi %5, %arg9 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %8 = arith.addi %6, %arg10 : index
            %9 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %10 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %11 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %12 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %13 = arith.muli %arg9, %c-1 : index
            %14 = arith.muli %arg7, %c-32 : index
            %15 = arith.addi %13, %14 : index
            %16 = arith.addi %15, %c27 : index
            %17 = arith.cmpi slt, %16, %c0 : index
            %18 = arith.subi %c-1, %16 : index
            %19 = arith.select %17, %18, %16 : index
            %20 = arith.divsi %19, %c4 : index
            %21 = arith.subi %c-1, %20 : index
            %22 = arith.select %17, %21, %20 : index
            scf.for %arg11 = %c0 to %22 step %c1 {
              %40 = arith.muli %arg11, %c4 : index
              %41 = arith.addi %7, %40 : index
              %42 = arith.addi %41, %c1 : index
              %43 = memref.load %arg4[%7, %42] : memref<?x28xf64>
              %44 = memref.load %arg3[%8, %42] : memref<?x28xf64>
              %45 = arith.mulf %9, %44 : f64
              %46 = arith.addf %43, %45 : f64
              memref.store %46, %arg4[%7, %42] : memref<?x28xf64>
              %47 = arith.addi %42, %c1 : index
              %48 = memref.load %arg4[%7, %47] : memref<?x28xf64>
              %49 = memref.load %arg3[%8, %47] : memref<?x28xf64>
              %50 = arith.mulf %10, %49 : f64
              %51 = arith.addf %48, %50 : f64
              memref.store %51, %arg4[%7, %47] : memref<?x28xf64>
              %52 = arith.addi %42, %c2 : index
              %53 = memref.load %arg4[%7, %52] : memref<?x28xf64>
              %54 = memref.load %arg3[%8, %52] : memref<?x28xf64>
              %55 = arith.mulf %11, %54 : f64
              %56 = arith.addf %53, %55 : f64
              memref.store %56, %arg4[%7, %52] : memref<?x28xf64>
              %57 = arith.addi %42, %c3 : index
              %58 = memref.load %arg4[%7, %57] : memref<?x28xf64>
              %59 = memref.load %arg3[%8, %57] : memref<?x28xf64>
              %60 = arith.mulf %12, %59 : f64
              %61 = arith.addf %58, %60 : f64
              memref.store %61, %arg4[%7, %57] : memref<?x28xf64>
            }
            %23 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %24 = arith.muli %arg9, %c-1 : index
            %25 = arith.muli %arg7, %c-32 : index
            %26 = arith.addi %24, %25 : index
            %27 = arith.muli %arg9, %c-1 : index
            %28 = arith.muli %arg7, %c-32 : index
            %29 = arith.addi %27, %28 : index
            %30 = arith.addi %29, %c27 : index
            %31 = arith.cmpi slt, %30, %c0 : index
            %32 = arith.subi %c-1, %30 : index
            %33 = arith.select %31, %32, %30 : index
            %34 = arith.divsi %33, %c4 : index
            %35 = arith.subi %c-1, %34 : index
            %36 = arith.select %31, %35, %34 : index
            %37 = arith.muli %36, %c-4 : index
            %38 = arith.addi %26, %37 : index
            %39 = arith.addi %38, %c27 : index
            scf.for %arg11 = %c0 to %39 step %c1 {
              %40 = arith.addi %7, %arg11 : index
              %41 = arith.muli %7, %c-1 : index
              %42 = arith.addi %41, %c27 : index
              %43 = arith.cmpi slt, %42, %c0 : index
              %44 = arith.subi %c-1, %42 : index
              %45 = arith.select %43, %44, %42 : index
              %46 = arith.divsi %45, %c4 : index
              %47 = arith.subi %c-1, %46 : index
              %48 = arith.select %43, %47, %46 : index
              %49 = arith.muli %48, %c4 : index
              %50 = arith.addi %40, %49 : index
              %51 = arith.addi %50, %c1 : index
              %52 = memref.load %arg4[%7, %51] : memref<?x28xf64>
              %53 = memref.load %arg3[%8, %51] : memref<?x28xf64>
              %54 = arith.mulf %23, %53 : f64
              %55 = arith.addf %52, %54 : f64
              memref.store %55, %arg4[%7, %51] : memref<?x28xf64>
            }
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %5 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c27 step %c1 {
        %6 = arith.addi %5, %arg8 : index
        %7 = arith.muli %arg8, %c-1 : index
        %8 = arith.muli %arg7, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %10 = arith.addi %9, %c27 : index
        %11 = arith.cmpi slt, %10, %c0 : index
        %12 = arith.subi %c-1, %10 : index
        %13 = arith.select %11, %12, %10 : index
        %14 = arith.divsi %13, %c4 : index
        %15 = arith.subi %c-1, %14 : index
        %16 = arith.select %11, %15, %14 : index
        scf.for %arg9 = %c0 to %16 step %c1 {
          %33 = arith.muli %arg9, %c4 : index
          %34 = arith.addi %6, %33 : index
          %35 = arith.addi %34, %c1 : index
          %36 = memref.load %arg4[%6, %35] : memref<?x28xf64>
          memref.store %36, %arg4[%35, %6] : memref<?x28xf64>
          %37 = arith.addi %35, %c1 : index
          %38 = memref.load %arg4[%6, %37] : memref<?x28xf64>
          memref.store %38, %arg4[%37, %6] : memref<?x28xf64>
          %39 = arith.addi %35, %c2 : index
          %40 = memref.load %arg4[%6, %39] : memref<?x28xf64>
          memref.store %40, %arg4[%39, %6] : memref<?x28xf64>
          %41 = arith.addi %35, %c3 : index
          %42 = memref.load %arg4[%6, %41] : memref<?x28xf64>
          memref.store %42, %arg4[%41, %6] : memref<?x28xf64>
        }
        %17 = arith.muli %arg8, %c-1 : index
        %18 = arith.muli %arg7, %c-32 : index
        %19 = arith.addi %17, %18 : index
        %20 = arith.muli %arg8, %c-1 : index
        %21 = arith.muli %arg7, %c-32 : index
        %22 = arith.addi %20, %21 : index
        %23 = arith.addi %22, %c27 : index
        %24 = arith.cmpi slt, %23, %c0 : index
        %25 = arith.subi %c-1, %23 : index
        %26 = arith.select %24, %25, %23 : index
        %27 = arith.divsi %26, %c4 : index
        %28 = arith.subi %c-1, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %30 = arith.muli %29, %c-4 : index
        %31 = arith.addi %19, %30 : index
        %32 = arith.addi %31, %c27 : index
        scf.for %arg9 = %c0 to %32 step %c1 {
          %33 = arith.addi %6, %arg9 : index
          %34 = arith.muli %6, %c-1 : index
          %35 = arith.addi %34, %c27 : index
          %36 = arith.cmpi slt, %35, %c0 : index
          %37 = arith.subi %c-1, %35 : index
          %38 = arith.select %36, %37, %35 : index
          %39 = arith.divsi %38, %c4 : index
          %40 = arith.subi %c-1, %39 : index
          %41 = arith.select %36, %40, %39 : index
          %42 = arith.muli %41, %c4 : index
          %43 = arith.addi %33, %42 : index
          %44 = arith.addi %43, %c1 : index
          %45 = memref.load %arg4[%6, %44] : memref<?x28xf64>
          memref.store %45, %arg4[%44, %6] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

