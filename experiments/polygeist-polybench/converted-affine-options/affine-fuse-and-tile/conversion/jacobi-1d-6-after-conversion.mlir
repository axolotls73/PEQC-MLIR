module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c27 = arith.constant 27 : index
    %c-2 = arith.constant -2 : index
    %c29 = arith.constant 29 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c15 = arith.constant 15 : index
    %c20 = arith.constant 20 : index
    %c-14 = arith.constant -14 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c3 step %c32 {
      %0 = arith.addi %arg4, %c3 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        %1 = arith.muli %arg5, %c16 : index
        %2 = arith.addi %1, %c-14 : index
        %3 = arith.maxsi %2, %c0 : index
        %4 = arith.muli %arg5, %c16 : index
        %5 = arith.addi %4, %c15 : index
        %6 = arith.minsi %5, %c20 : index
        scf.for %arg6 = %3 to %6 step %c1 {
          %8 = arith.cmpi slt, %arg6, %c0 : index
          %9 = arith.subi %c-1, %arg6 : index
          %10 = arith.select %8, %9, %arg6 : index
          %11 = arith.divsi %10, %c16 : index
          %12 = arith.subi %c-1, %11 : index
          %13 = arith.select %8, %12, %11 : index
          %14 = arith.muli %arg5, %c-1 : index
          %15 = arith.addi %13, %14 : index
          %16 = arith.cmpi sge, %15, %c0 : index
          scf.if %16 {
            %38 = memref.load %arg2[%c0] : memref<?xf64>
            %39 = memref.load %arg2[%c1] : memref<?xf64>
            %40 = arith.addf %38, %39 : f64
            %41 = memref.load %arg2[%c2] : memref<?xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = arith.mulf %42, %cst : f64
            memref.store %43, %arg3[%c1] : memref<?xf64>
          }
          %17 = arith.muli %arg5, %c32 : index
          %18 = arith.muli %arg6, %c2 : index
          %19 = arith.addi %18, %c2 : index
          %20 = arith.maxsi %17, %19 : index
          %21 = arith.muli %arg5, %c32 : index
          %22 = arith.addi %21, %c32 : index
          %23 = arith.muli %arg6, %c2 : index
          %24 = arith.addi %23, %c29 : index
          %25 = arith.minsi %22, %24 : index
          scf.for %arg7 = %20 to %25 step %c1 {
            %38 = arith.muli %arg6, %c-2 : index
            %39 = arith.addi %38, %arg7 : index
            %40 = arith.addi %39, %c-1 : index
            %41 = memref.load %arg2[%40] : memref<?xf64>
            %42 = arith.muli %arg6, %c-2 : index
            %43 = arith.addi %42, %arg7 : index
            %44 = memref.load %arg2[%43] : memref<?xf64>
            %45 = arith.addf %41, %44 : f64
            %46 = arith.muli %arg6, %c-2 : index
            %47 = arith.addi %46, %arg7 : index
            %48 = arith.addi %47, %c1 : index
            %49 = memref.load %arg2[%48] : memref<?xf64>
            %50 = arith.addf %45, %49 : f64
            %51 = arith.mulf %50, %cst : f64
            %52 = arith.muli %arg6, %c-2 : index
            %53 = arith.addi %52, %arg7 : index
            memref.store %51, %arg3[%53] : memref<?xf64>
            %54 = arith.muli %arg6, %c-2 : index
            %55 = arith.addi %54, %arg7 : index
            %56 = arith.addi %55, %c-2 : index
            %57 = memref.load %arg3[%56] : memref<?xf64>
            %58 = arith.muli %arg6, %c-2 : index
            %59 = arith.addi %58, %arg7 : index
            %60 = arith.addi %59, %c-1 : index
            %61 = memref.load %arg3[%60] : memref<?xf64>
            %62 = arith.addf %57, %61 : f64
            %63 = arith.muli %arg6, %c-2 : index
            %64 = arith.addi %63, %arg7 : index
            %65 = memref.load %arg3[%64] : memref<?xf64>
            %66 = arith.addf %62, %65 : f64
            %67 = arith.mulf %66, %cst : f64
            %68 = arith.muli %arg6, %c-2 : index
            %69 = arith.addi %68, %arg7 : index
            %70 = arith.addi %69, %c-1 : index
            memref.store %67, %arg2[%70] : memref<?xf64>
          }
          %26 = arith.addi %arg6, %c-1 : index
          %27 = arith.cmpi sle, %26, %c0 : index
          %28 = arith.subi %c0, %26 : index
          %29 = arith.subi %26, %c1 : index
          %30 = arith.select %27, %28, %29 : index
          %31 = arith.divsi %30, %c16 : index
          %32 = arith.subi %c0, %31 : index
          %33 = arith.addi %31, %c1 : index
          %34 = arith.select %27, %32, %33 : index
          %35 = arith.muli %34, %c-1 : index
          %36 = arith.addi %arg5, %35 : index
          %37 = arith.cmpi sge, %36, %c0 : index
          scf.if %37 {
            %38 = memref.load %arg3[%c27] : memref<?xf64>
            %39 = memref.load %arg3[%c28] : memref<?xf64>
            %40 = arith.addf %38, %39 : f64
            %41 = memref.load %arg3[%c29] : memref<?xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = arith.mulf %42, %cst : f64
            memref.store %43, %arg2[%c28] : memref<?xf64>
          }
        }
        %7 = arith.cmpi eq, %arg5, %c0 : index
        scf.if %7 {
          %8 = memref.load %arg2[%c0] : memref<?xf64>
          %9 = memref.load %arg2[%c1] : memref<?xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = memref.load %arg2[%c2] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          memref.store %13, %arg3[%c1] : memref<?xf64>
        }
      }
    }
    return
  }
}

