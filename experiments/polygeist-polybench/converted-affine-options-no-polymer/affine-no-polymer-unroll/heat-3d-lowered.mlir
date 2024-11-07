module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg4 = %c1 to %c21 step %c1_1 {
      %c1_2 = arith.constant 1 : index
      %c9 = arith.constant 9 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %c9 step %c1_3 {
        %c1_7 = arith.constant 1 : index
        %c9_8 = arith.constant 9 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %c9_8 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c9_11 = arith.constant 9 : index
          %c4 = arith.constant 4 : index
          scf.for %arg7 = %c1_10 to %c9_11 step %c4 {
            %c1_12 = arith.constant 1 : index
            %0 = arith.addi %arg5, %c1_12 : index
            %1 = memref.load %arg2[%0, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = memref.load %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %arg5, %c-1 : index
            %6 = memref.load %arg2[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %c1_13 = arith.constant 1 : index
            %9 = arith.addi %arg6, %c1_13 : index
            %10 = memref.load %arg2[%arg5, %9, %arg7] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %c-1_14 = arith.constant -1 : index
            %12 = arith.addi %arg6, %c-1_14 : index
            %13 = memref.load %arg2[%arg5, %12, %arg7] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %8, %15 : f64
            %c1_15 = arith.constant 1 : index
            %17 = arith.addi %arg7, %c1_15 : index
            %18 = memref.load %arg2[%arg5, %arg6, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %c-1_16 = arith.constant -1 : index
            %20 = arith.addi %arg7, %c-1_16 : index
            %21 = memref.load %arg2[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_0 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %c1_17 = arith.constant 1 : index
            %26 = arith.addi %arg7, %c1_17 : index
            %c1_18 = arith.constant 1 : index
            %27 = arith.addi %arg5, %c1_18 : index
            %28 = memref.load %arg2[%27, %arg6, %26] : memref<?x10x10xf64>
            %29 = memref.load %arg2[%arg5, %arg6, %26] : memref<?x10x10xf64>
            %30 = arith.mulf %29, %cst : f64
            %31 = arith.subf %28, %30 : f64
            %c-1_19 = arith.constant -1 : index
            %32 = arith.addi %arg5, %c-1_19 : index
            %33 = memref.load %arg2[%32, %arg6, %26] : memref<?x10x10xf64>
            %34 = arith.addf %31, %33 : f64
            %35 = arith.mulf %34, %cst_0 : f64
            %c1_20 = arith.constant 1 : index
            %36 = arith.addi %arg6, %c1_20 : index
            %37 = memref.load %arg2[%arg5, %36, %26] : memref<?x10x10xf64>
            %38 = arith.subf %37, %30 : f64
            %c-1_21 = arith.constant -1 : index
            %39 = arith.addi %arg6, %c-1_21 : index
            %40 = memref.load %arg2[%arg5, %39, %26] : memref<?x10x10xf64>
            %41 = arith.addf %38, %40 : f64
            %42 = arith.mulf %41, %cst_0 : f64
            %43 = arith.addf %35, %42 : f64
            %c1_22 = arith.constant 1 : index
            %44 = arith.addi %26, %c1_22 : index
            %45 = memref.load %arg2[%arg5, %arg6, %44] : memref<?x10x10xf64>
            %46 = arith.subf %45, %30 : f64
            %c-1_23 = arith.constant -1 : index
            %47 = arith.addi %26, %c-1_23 : index
            %48 = memref.load %arg2[%arg5, %arg6, %47] : memref<?x10x10xf64>
            %49 = arith.addf %46, %48 : f64
            %50 = arith.mulf %49, %cst_0 : f64
            %51 = arith.addf %43, %50 : f64
            %52 = arith.addf %51, %29 : f64
            memref.store %52, %arg3[%arg5, %arg6, %26] : memref<?x10x10xf64>
            %c2 = arith.constant 2 : index
            %53 = arith.addi %arg7, %c2 : index
            %c1_24 = arith.constant 1 : index
            %54 = arith.addi %arg5, %c1_24 : index
            %55 = memref.load %arg2[%54, %arg6, %53] : memref<?x10x10xf64>
            %56 = memref.load %arg2[%arg5, %arg6, %53] : memref<?x10x10xf64>
            %57 = arith.mulf %56, %cst : f64
            %58 = arith.subf %55, %57 : f64
            %c-1_25 = arith.constant -1 : index
            %59 = arith.addi %arg5, %c-1_25 : index
            %60 = memref.load %arg2[%59, %arg6, %53] : memref<?x10x10xf64>
            %61 = arith.addf %58, %60 : f64
            %62 = arith.mulf %61, %cst_0 : f64
            %c1_26 = arith.constant 1 : index
            %63 = arith.addi %arg6, %c1_26 : index
            %64 = memref.load %arg2[%arg5, %63, %53] : memref<?x10x10xf64>
            %65 = arith.subf %64, %57 : f64
            %c-1_27 = arith.constant -1 : index
            %66 = arith.addi %arg6, %c-1_27 : index
            %67 = memref.load %arg2[%arg5, %66, %53] : memref<?x10x10xf64>
            %68 = arith.addf %65, %67 : f64
            %69 = arith.mulf %68, %cst_0 : f64
            %70 = arith.addf %62, %69 : f64
            %c1_28 = arith.constant 1 : index
            %71 = arith.addi %53, %c1_28 : index
            %72 = memref.load %arg2[%arg5, %arg6, %71] : memref<?x10x10xf64>
            %73 = arith.subf %72, %57 : f64
            %c-1_29 = arith.constant -1 : index
            %74 = arith.addi %53, %c-1_29 : index
            %75 = memref.load %arg2[%arg5, %arg6, %74] : memref<?x10x10xf64>
            %76 = arith.addf %73, %75 : f64
            %77 = arith.mulf %76, %cst_0 : f64
            %78 = arith.addf %70, %77 : f64
            %79 = arith.addf %78, %56 : f64
            memref.store %79, %arg3[%arg5, %arg6, %53] : memref<?x10x10xf64>
            %c3 = arith.constant 3 : index
            %80 = arith.addi %arg7, %c3 : index
            %c1_30 = arith.constant 1 : index
            %81 = arith.addi %arg5, %c1_30 : index
            %82 = memref.load %arg2[%81, %arg6, %80] : memref<?x10x10xf64>
            %83 = memref.load %arg2[%arg5, %arg6, %80] : memref<?x10x10xf64>
            %84 = arith.mulf %83, %cst : f64
            %85 = arith.subf %82, %84 : f64
            %c-1_31 = arith.constant -1 : index
            %86 = arith.addi %arg5, %c-1_31 : index
            %87 = memref.load %arg2[%86, %arg6, %80] : memref<?x10x10xf64>
            %88 = arith.addf %85, %87 : f64
            %89 = arith.mulf %88, %cst_0 : f64
            %c1_32 = arith.constant 1 : index
            %90 = arith.addi %arg6, %c1_32 : index
            %91 = memref.load %arg2[%arg5, %90, %80] : memref<?x10x10xf64>
            %92 = arith.subf %91, %84 : f64
            %c-1_33 = arith.constant -1 : index
            %93 = arith.addi %arg6, %c-1_33 : index
            %94 = memref.load %arg2[%arg5, %93, %80] : memref<?x10x10xf64>
            %95 = arith.addf %92, %94 : f64
            %96 = arith.mulf %95, %cst_0 : f64
            %97 = arith.addf %89, %96 : f64
            %c1_34 = arith.constant 1 : index
            %98 = arith.addi %80, %c1_34 : index
            %99 = memref.load %arg2[%arg5, %arg6, %98] : memref<?x10x10xf64>
            %100 = arith.subf %99, %84 : f64
            %c-1_35 = arith.constant -1 : index
            %101 = arith.addi %80, %c-1_35 : index
            %102 = memref.load %arg2[%arg5, %arg6, %101] : memref<?x10x10xf64>
            %103 = arith.addf %100, %102 : f64
            %104 = arith.mulf %103, %cst_0 : f64
            %105 = arith.addf %97, %104 : f64
            %106 = arith.addf %105, %83 : f64
            memref.store %106, %arg3[%arg5, %arg6, %80] : memref<?x10x10xf64>
          }
        }
      }
      %c1_4 = arith.constant 1 : index
      %c9_5 = arith.constant 9 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg5 = %c1_4 to %c9_5 step %c1_6 {
        %c1_7 = arith.constant 1 : index
        %c9_8 = arith.constant 9 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %c9_8 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c9_11 = arith.constant 9 : index
          %c4 = arith.constant 4 : index
          scf.for %arg7 = %c1_10 to %c9_11 step %c4 {
            %c1_12 = arith.constant 1 : index
            %0 = arith.addi %arg5, %c1_12 : index
            %1 = memref.load %arg3[%0, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = memref.load %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %arg5, %c-1 : index
            %6 = memref.load %arg3[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %c1_13 = arith.constant 1 : index
            %9 = arith.addi %arg6, %c1_13 : index
            %10 = memref.load %arg3[%arg5, %9, %arg7] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %c-1_14 = arith.constant -1 : index
            %12 = arith.addi %arg6, %c-1_14 : index
            %13 = memref.load %arg3[%arg5, %12, %arg7] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %8, %15 : f64
            %c1_15 = arith.constant 1 : index
            %17 = arith.addi %arg7, %c1_15 : index
            %18 = memref.load %arg3[%arg5, %arg6, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %c-1_16 = arith.constant -1 : index
            %20 = arith.addi %arg7, %c-1_16 : index
            %21 = memref.load %arg3[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_0 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %c1_17 = arith.constant 1 : index
            %26 = arith.addi %arg7, %c1_17 : index
            %c1_18 = arith.constant 1 : index
            %27 = arith.addi %arg5, %c1_18 : index
            %28 = memref.load %arg3[%27, %arg6, %26] : memref<?x10x10xf64>
            %29 = memref.load %arg3[%arg5, %arg6, %26] : memref<?x10x10xf64>
            %30 = arith.mulf %29, %cst : f64
            %31 = arith.subf %28, %30 : f64
            %c-1_19 = arith.constant -1 : index
            %32 = arith.addi %arg5, %c-1_19 : index
            %33 = memref.load %arg3[%32, %arg6, %26] : memref<?x10x10xf64>
            %34 = arith.addf %31, %33 : f64
            %35 = arith.mulf %34, %cst_0 : f64
            %c1_20 = arith.constant 1 : index
            %36 = arith.addi %arg6, %c1_20 : index
            %37 = memref.load %arg3[%arg5, %36, %26] : memref<?x10x10xf64>
            %38 = arith.subf %37, %30 : f64
            %c-1_21 = arith.constant -1 : index
            %39 = arith.addi %arg6, %c-1_21 : index
            %40 = memref.load %arg3[%arg5, %39, %26] : memref<?x10x10xf64>
            %41 = arith.addf %38, %40 : f64
            %42 = arith.mulf %41, %cst_0 : f64
            %43 = arith.addf %35, %42 : f64
            %c1_22 = arith.constant 1 : index
            %44 = arith.addi %26, %c1_22 : index
            %45 = memref.load %arg3[%arg5, %arg6, %44] : memref<?x10x10xf64>
            %46 = arith.subf %45, %30 : f64
            %c-1_23 = arith.constant -1 : index
            %47 = arith.addi %26, %c-1_23 : index
            %48 = memref.load %arg3[%arg5, %arg6, %47] : memref<?x10x10xf64>
            %49 = arith.addf %46, %48 : f64
            %50 = arith.mulf %49, %cst_0 : f64
            %51 = arith.addf %43, %50 : f64
            %52 = arith.addf %51, %29 : f64
            memref.store %52, %arg2[%arg5, %arg6, %26] : memref<?x10x10xf64>
            %c2 = arith.constant 2 : index
            %53 = arith.addi %arg7, %c2 : index
            %c1_24 = arith.constant 1 : index
            %54 = arith.addi %arg5, %c1_24 : index
            %55 = memref.load %arg3[%54, %arg6, %53] : memref<?x10x10xf64>
            %56 = memref.load %arg3[%arg5, %arg6, %53] : memref<?x10x10xf64>
            %57 = arith.mulf %56, %cst : f64
            %58 = arith.subf %55, %57 : f64
            %c-1_25 = arith.constant -1 : index
            %59 = arith.addi %arg5, %c-1_25 : index
            %60 = memref.load %arg3[%59, %arg6, %53] : memref<?x10x10xf64>
            %61 = arith.addf %58, %60 : f64
            %62 = arith.mulf %61, %cst_0 : f64
            %c1_26 = arith.constant 1 : index
            %63 = arith.addi %arg6, %c1_26 : index
            %64 = memref.load %arg3[%arg5, %63, %53] : memref<?x10x10xf64>
            %65 = arith.subf %64, %57 : f64
            %c-1_27 = arith.constant -1 : index
            %66 = arith.addi %arg6, %c-1_27 : index
            %67 = memref.load %arg3[%arg5, %66, %53] : memref<?x10x10xf64>
            %68 = arith.addf %65, %67 : f64
            %69 = arith.mulf %68, %cst_0 : f64
            %70 = arith.addf %62, %69 : f64
            %c1_28 = arith.constant 1 : index
            %71 = arith.addi %53, %c1_28 : index
            %72 = memref.load %arg3[%arg5, %arg6, %71] : memref<?x10x10xf64>
            %73 = arith.subf %72, %57 : f64
            %c-1_29 = arith.constant -1 : index
            %74 = arith.addi %53, %c-1_29 : index
            %75 = memref.load %arg3[%arg5, %arg6, %74] : memref<?x10x10xf64>
            %76 = arith.addf %73, %75 : f64
            %77 = arith.mulf %76, %cst_0 : f64
            %78 = arith.addf %70, %77 : f64
            %79 = arith.addf %78, %56 : f64
            memref.store %79, %arg2[%arg5, %arg6, %53] : memref<?x10x10xf64>
            %c3 = arith.constant 3 : index
            %80 = arith.addi %arg7, %c3 : index
            %c1_30 = arith.constant 1 : index
            %81 = arith.addi %arg5, %c1_30 : index
            %82 = memref.load %arg3[%81, %arg6, %80] : memref<?x10x10xf64>
            %83 = memref.load %arg3[%arg5, %arg6, %80] : memref<?x10x10xf64>
            %84 = arith.mulf %83, %cst : f64
            %85 = arith.subf %82, %84 : f64
            %c-1_31 = arith.constant -1 : index
            %86 = arith.addi %arg5, %c-1_31 : index
            %87 = memref.load %arg3[%86, %arg6, %80] : memref<?x10x10xf64>
            %88 = arith.addf %85, %87 : f64
            %89 = arith.mulf %88, %cst_0 : f64
            %c1_32 = arith.constant 1 : index
            %90 = arith.addi %arg6, %c1_32 : index
            %91 = memref.load %arg3[%arg5, %90, %80] : memref<?x10x10xf64>
            %92 = arith.subf %91, %84 : f64
            %c-1_33 = arith.constant -1 : index
            %93 = arith.addi %arg6, %c-1_33 : index
            %94 = memref.load %arg3[%arg5, %93, %80] : memref<?x10x10xf64>
            %95 = arith.addf %92, %94 : f64
            %96 = arith.mulf %95, %cst_0 : f64
            %97 = arith.addf %89, %96 : f64
            %c1_34 = arith.constant 1 : index
            %98 = arith.addi %80, %c1_34 : index
            %99 = memref.load %arg3[%arg5, %arg6, %98] : memref<?x10x10xf64>
            %100 = arith.subf %99, %84 : f64
            %c-1_35 = arith.constant -1 : index
            %101 = arith.addi %80, %c-1_35 : index
            %102 = memref.load %arg3[%arg5, %arg6, %101] : memref<?x10x10xf64>
            %103 = arith.addf %100, %102 : f64
            %104 = arith.mulf %103, %cst_0 : f64
            %105 = arith.addf %97, %104 : f64
            %106 = arith.addf %105, %83 : f64
            memref.store %106, %arg2[%arg5, %arg6, %80] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

