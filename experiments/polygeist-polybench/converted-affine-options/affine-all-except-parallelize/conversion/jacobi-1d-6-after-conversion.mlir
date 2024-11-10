module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c27 = arith.constant 27 : index
    %c-2 = arith.constant -2 : index
    %c29 = arith.constant 29 : index
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c15 = arith.constant 15 : index
    %c20 = arith.constant 20 : index
    %c-14 = arith.constant -14 : index
    %c16 = arith.constant 16 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      scf.for %arg5 = %c0 to %c1 step %c1 {
        %0 = arith.muli %arg4, %c16 : index
        %1 = arith.muli %arg5, %c16 : index
        %2 = arith.addi %0, %1 : index
        %3 = arith.addi %2, %c-14 : index
        %4 = arith.maxsi %3, %c0 : index
        %5 = arith.muli %arg4, %c16 : index
        %6 = arith.muli %arg5, %c16 : index
        %7 = arith.addi %5, %6 : index
        %8 = arith.addi %7, %c15 : index
        %9 = arith.minsi %8, %c20 : index
        scf.for %arg6 = %4 to %9 step %c1 {
          %12 = arith.muli %arg4, %c-1 : index
          %13 = arith.muli %arg5, %c-1 : index
          %14 = arith.addi %12, %13 : index
          %15 = arith.cmpi slt, %arg6, %c0 : index
          %16 = arith.subi %c-1, %arg6 : index
          %17 = arith.select %15, %16, %arg6 : index
          %18 = arith.divsi %17, %c16 : index
          %19 = arith.subi %c-1, %18 : index
          %20 = arith.select %15, %19, %18 : index
          %21 = arith.addi %14, %20 : index
          %22 = arith.cmpi sge, %21, %c0 : index
          scf.if %22 {
            %49 = memref.load %arg2[%c0] : memref<?xf64>
            %50 = memref.load %arg2[%c1] : memref<?xf64>
            %51 = arith.addf %49, %50 : f64
            %52 = memref.load %arg2[%c2] : memref<?xf64>
            %53 = arith.addf %51, %52 : f64
            %54 = arith.mulf %53, %cst : f64
            memref.store %54, %arg3[%c1] : memref<?xf64>
          }
          %23 = arith.muli %arg4, %c32 : index
          %24 = arith.muli %arg5, %c32 : index
          %25 = arith.addi %23, %24 : index
          %26 = arith.muli %arg6, %c2 : index
          %27 = arith.addi %26, %c2 : index
          %28 = arith.maxsi %25, %27 : index
          %29 = arith.muli %arg4, %c32 : index
          %30 = arith.muli %arg5, %c32 : index
          %31 = arith.addi %29, %30 : index
          %32 = arith.addi %31, %c32 : index
          %33 = arith.muli %arg6, %c2 : index
          %34 = arith.addi %33, %c29 : index
          %35 = arith.minsi %32, %34 : index
          scf.for %arg7 = %28 to %35 step %c1 {
            %49 = arith.muli %arg6, %c-2 : index
            %50 = arith.addi %49, %arg7 : index
            %51 = arith.addi %50, %c-1 : index
            %52 = memref.load %arg2[%51] : memref<?xf64>
            %53 = arith.muli %arg6, %c-2 : index
            %54 = arith.addi %53, %arg7 : index
            %55 = memref.load %arg2[%54] : memref<?xf64>
            %56 = arith.addf %52, %55 : f64
            %57 = arith.muli %arg6, %c-2 : index
            %58 = arith.addi %57, %arg7 : index
            %59 = arith.addi %58, %c1 : index
            %60 = memref.load %arg2[%59] : memref<?xf64>
            %61 = arith.addf %56, %60 : f64
            %62 = arith.mulf %61, %cst : f64
            %63 = arith.muli %arg6, %c-2 : index
            %64 = arith.addi %63, %arg7 : index
            memref.store %62, %arg3[%64] : memref<?xf64>
            %65 = arith.muli %arg6, %c-2 : index
            %66 = arith.addi %65, %arg7 : index
            %67 = arith.addi %66, %c-2 : index
            %68 = memref.load %arg3[%67] : memref<?xf64>
            %69 = arith.muli %arg6, %c-2 : index
            %70 = arith.addi %69, %arg7 : index
            %71 = arith.addi %70, %c-1 : index
            %72 = memref.load %arg3[%71] : memref<?xf64>
            %73 = arith.addf %68, %72 : f64
            %74 = arith.muli %arg6, %c-2 : index
            %75 = arith.addi %74, %arg7 : index
            %76 = memref.load %arg3[%75] : memref<?xf64>
            %77 = arith.addf %73, %76 : f64
            %78 = arith.mulf %77, %cst : f64
            %79 = arith.muli %arg6, %c-2 : index
            %80 = arith.addi %79, %arg7 : index
            %81 = arith.addi %80, %c-1 : index
            memref.store %78, %arg2[%81] : memref<?xf64>
          }
          %36 = arith.addi %arg4, %arg5 : index
          %37 = arith.addi %arg6, %c-1 : index
          %38 = arith.cmpi sle, %37, %c0 : index
          %39 = arith.subi %c0, %37 : index
          %40 = arith.subi %37, %c1 : index
          %41 = arith.select %38, %39, %40 : index
          %42 = arith.divsi %41, %c16 : index
          %43 = arith.subi %c0, %42 : index
          %44 = arith.addi %42, %c1 : index
          %45 = arith.select %38, %43, %44 : index
          %46 = arith.muli %45, %c-1 : index
          %47 = arith.addi %36, %46 : index
          %48 = arith.cmpi sge, %47, %c0 : index
          scf.if %48 {
            %49 = memref.load %arg3[%c27] : memref<?xf64>
            %50 = memref.load %arg3[%c28] : memref<?xf64>
            %51 = arith.addf %49, %50 : f64
            %52 = memref.load %arg3[%c29] : memref<?xf64>
            %53 = arith.addf %51, %52 : f64
            %54 = arith.mulf %53, %cst : f64
            memref.store %54, %arg2[%c28] : memref<?xf64>
          }
        }
        %10 = arith.addi %arg4, %arg5 : index
        %11 = arith.cmpi eq, %10, %c0 : index
        scf.if %11 {
          %12 = memref.load %arg2[%c0] : memref<?xf64>
          %13 = memref.load %arg2[%c1] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = memref.load %arg2[%c2] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = arith.mulf %16, %cst : f64
          memref.store %17, %arg3[%c1] : memref<?xf64>
        }
      }
    }
    return
  }
}

