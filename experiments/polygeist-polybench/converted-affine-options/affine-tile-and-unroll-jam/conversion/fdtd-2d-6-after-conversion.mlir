module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-14 = arith.constant -14 : index
    %c-13 = arith.constant -13 : index
    %c43 = arith.constant 43 : index
    %c14 = arith.constant 14 : index
    %c-20 = arith.constant -20 : index
    %c-19 = arith.constant -19 : index
    %c7 = arith.constant 7 : index
    %c-2 = arith.constant -2 : index
    %c19 = arith.constant 19 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c-29 = arith.constant -29 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0 to %c2 step %c32 {
      scf.for %arg8 = %c0 to %c2 step %c32 {
        %0 = arith.addi %arg7, %c2 : index
        scf.for %arg9 = %arg7 to %0 step %c1 {
          %1 = arith.addi %arg8, %c2 : index
          scf.for %arg10 = %arg8 to %1 step %c1 {
            %2 = arith.cmpi eq, %arg10, %c0 : index
            scf.if %2 {
              %5 = arith.muli %arg9, %c32 : index
              %6 = arith.addi %5, %c-29 : index
              %7 = arith.maxsi %6, %c0 : index
              scf.for %arg11 = %7 to %c20 step %c1 {
                %8 = arith.cmpi eq, %arg9, %c0 : index
                scf.if %8 {
                  %19 = memref.load %arg6[%arg11] : memref<?xf64>
                  memref.store %19, %arg4[%c0, %c0] : memref<?x30xf64>
                }
                %9 = arith.muli %arg9, %c32 : index
                %10 = arith.addi %arg11, %c1 : index
                %11 = arith.maxsi %9, %10 : index
                %12 = arith.muli %arg9, %c32 : index
                %13 = arith.addi %12, %c32 : index
                %14 = arith.addi %arg11, %c30 : index
                %15 = arith.minsi %13, %14 : index
                scf.for %arg12 = %11 to %15 step %c1 {
                  %19 = memref.load %arg6[%arg11] : memref<?xf64>
                  %20 = arith.muli %arg11, %c-1 : index
                  %21 = arith.addi %20, %arg12 : index
                  memref.store %19, %arg4[%c0, %21] : memref<?x30xf64>
                  %22 = arith.muli %arg11, %c-1 : index
                  %23 = arith.addi %22, %arg12 : index
                  %24 = memref.load %arg3[%c0, %23] : memref<?x30xf64>
                  %25 = arith.muli %arg11, %c-1 : index
                  %26 = arith.addi %25, %arg12 : index
                  %27 = memref.load %arg5[%c0, %26] : memref<?x30xf64>
                  %28 = arith.muli %arg11, %c-1 : index
                  %29 = arith.addi %28, %arg12 : index
                  %30 = arith.addi %29, %c-1 : index
                  %31 = memref.load %arg5[%c0, %30] : memref<?x30xf64>
                  %32 = arith.subf %27, %31 : f64
                  %33 = arith.mulf %32, %cst_0 : f64
                  %34 = arith.subf %24, %33 : f64
                  %35 = arith.muli %arg11, %c-1 : index
                  %36 = arith.addi %35, %arg12 : index
                  memref.store %34, %arg3[%c0, %36] : memref<?x30xf64>
                }
                %16 = arith.muli %arg11, %c-1 : index
                %17 = arith.addi %16, %c31 : index
                %18 = arith.minsi %17, %c19 : index
                scf.for %arg12 = %c0 to %18 step %c1 {
                  %19 = arith.cmpi eq, %arg9, %c0 : index
                  scf.if %19 {
                    %27 = arith.muli %arg12, %c-1 : index
                    %28 = arith.addi %27, %c-1 : index
                    %29 = memref.load %arg4[%28, %c0] : memref<?x30xf64>
                    %30 = arith.muli %arg12, %c-1 : index
                    %31 = arith.addi %30, %c-1 : index
                    %32 = memref.load %arg5[%31, %c0] : memref<?x30xf64>
                    %33 = arith.muli %arg12, %c-1 : index
                    %34 = arith.addi %33, %c-2 : index
                    %35 = memref.load %arg5[%34, %c0] : memref<?x30xf64>
                    %36 = arith.subf %32, %35 : f64
                    %37 = arith.mulf %36, %cst_0 : f64
                    %38 = arith.subf %29, %37 : f64
                    %39 = arith.muli %arg12, %c-1 : index
                    %40 = arith.addi %39, %c-1 : index
                    memref.store %38, %arg4[%40, %c0] : memref<?x30xf64>
                  }
                  %20 = arith.muli %arg9, %c32 : index
                  %21 = arith.addi %arg11, %c1 : index
                  %22 = arith.maxsi %20, %21 : index
                  %23 = arith.muli %arg9, %c32 : index
                  %24 = arith.addi %23, %c32 : index
                  %25 = arith.addi %arg11, %c30 : index
                  %26 = arith.minsi %24, %25 : index
                  scf.for %arg13 = %22 to %26 step %c1 {
                    %27 = arith.muli %arg12, %c-1 : index
                    %28 = arith.addi %27, %c-1 : index
                    %29 = arith.muli %arg11, %c-1 : index
                    %30 = arith.addi %29, %arg13 : index
                    %31 = memref.load %arg4[%28, %30] : memref<?x30xf64>
                    %32 = arith.muli %arg12, %c-1 : index
                    %33 = arith.addi %32, %c-1 : index
                    %34 = arith.muli %arg11, %c-1 : index
                    %35 = arith.addi %34, %arg13 : index
                    %36 = memref.load %arg5[%33, %35] : memref<?x30xf64>
                    %37 = arith.muli %arg12, %c-1 : index
                    %38 = arith.addi %37, %c-2 : index
                    %39 = arith.muli %arg11, %c-1 : index
                    %40 = arith.addi %39, %arg13 : index
                    %41 = memref.load %arg5[%38, %40] : memref<?x30xf64>
                    %42 = arith.subf %36, %41 : f64
                    %43 = arith.mulf %42, %cst_0 : f64
                    %44 = arith.subf %31, %43 : f64
                    %45 = arith.muli %arg12, %c-1 : index
                    %46 = arith.addi %45, %c-1 : index
                    %47 = arith.muli %arg11, %c-1 : index
                    %48 = arith.addi %47, %arg13 : index
                    memref.store %44, %arg4[%46, %48] : memref<?x30xf64>
                    %49 = arith.muli %arg12, %c-1 : index
                    %50 = arith.addi %49, %c-1 : index
                    %51 = arith.muli %arg11, %c-1 : index
                    %52 = arith.addi %51, %arg13 : index
                    %53 = memref.load %arg3[%50, %52] : memref<?x30xf64>
                    %54 = arith.muli %arg12, %c-1 : index
                    %55 = arith.addi %54, %c-1 : index
                    %56 = arith.muli %arg11, %c-1 : index
                    %57 = arith.addi %56, %arg13 : index
                    %58 = memref.load %arg5[%55, %57] : memref<?x30xf64>
                    %59 = arith.muli %arg12, %c-1 : index
                    %60 = arith.addi %59, %c-1 : index
                    %61 = arith.muli %arg11, %c-1 : index
                    %62 = arith.addi %61, %arg13 : index
                    %63 = arith.addi %62, %c-1 : index
                    %64 = memref.load %arg5[%60, %63] : memref<?x30xf64>
                    %65 = arith.subf %58, %64 : f64
                    %66 = arith.mulf %65, %cst_0 : f64
                    %67 = arith.subf %53, %66 : f64
                    %68 = arith.muli %arg12, %c-1 : index
                    %69 = arith.addi %68, %c-1 : index
                    %70 = arith.muli %arg11, %c-1 : index
                    %71 = arith.addi %70, %arg13 : index
                    memref.store %67, %arg3[%69, %71] : memref<?x30xf64>
                    %72 = arith.muli %arg12, %c-1 : index
                    %73 = arith.addi %72, %c-2 : index
                    %74 = arith.muli %arg11, %c-1 : index
                    %75 = arith.addi %74, %arg13 : index
                    %76 = arith.addi %75, %c-1 : index
                    %77 = memref.load %arg5[%73, %76] : memref<?x30xf64>
                    %78 = arith.muli %arg12, %c-1 : index
                    %79 = arith.addi %78, %c-2 : index
                    %80 = arith.muli %arg11, %c-1 : index
                    %81 = arith.addi %80, %arg13 : index
                    %82 = memref.load %arg3[%79, %81] : memref<?x30xf64>
                    %83 = arith.muli %arg12, %c-1 : index
                    %84 = arith.addi %83, %c-2 : index
                    %85 = arith.muli %arg11, %c-1 : index
                    %86 = arith.addi %85, %arg13 : index
                    %87 = arith.addi %86, %c-1 : index
                    %88 = memref.load %arg3[%84, %87] : memref<?x30xf64>
                    %89 = arith.subf %82, %88 : f64
                    %90 = arith.muli %arg12, %c-1 : index
                    %91 = arith.addi %90, %c-1 : index
                    %92 = arith.muli %arg11, %c-1 : index
                    %93 = arith.addi %92, %arg13 : index
                    %94 = arith.addi %93, %c-1 : index
                    %95 = memref.load %arg4[%91, %94] : memref<?x30xf64>
                    %96 = arith.addf %89, %95 : f64
                    %97 = arith.muli %arg12, %c-1 : index
                    %98 = arith.addi %97, %c-2 : index
                    %99 = arith.muli %arg11, %c-1 : index
                    %100 = arith.addi %99, %arg13 : index
                    %101 = arith.addi %100, %c-1 : index
                    %102 = memref.load %arg4[%98, %101] : memref<?x30xf64>
                    %103 = arith.subf %96, %102 : f64
                    %104 = arith.mulf %103, %cst : f64
                    %105 = arith.subf %77, %104 : f64
                    %106 = arith.muli %arg12, %c-1 : index
                    %107 = arith.addi %106, %c-2 : index
                    %108 = arith.muli %arg11, %c-1 : index
                    %109 = arith.addi %108, %arg13 : index
                    %110 = arith.addi %109, %c-1 : index
                    memref.store %105, %arg5[%107, %110] : memref<?x30xf64>
                  }
                }
              }
            }
            %3 = arith.addi %arg10, %c-1 : index
            %4 = arith.cmpi eq, %3, %c0 : index
            scf.if %4 {
              scf.for %arg11 = %c0 to %c7 step %c1 {
                %5 = arith.addi %arg11, %c1 : index
                scf.for %arg12 = %c0 to %5 step %c1 {
                  %6 = arith.cmpi eq, %arg9, %c0 : index
                  scf.if %6 {
                    %14 = arith.muli %arg12, %c-1 : index
                    %15 = arith.addi %14, %arg11 : index
                    %16 = arith.addi %15, %c-19 : index
                    %17 = memref.load %arg4[%16, %c0] : memref<?x30xf64>
                    %18 = arith.muli %arg12, %c-1 : index
                    %19 = arith.addi %18, %arg11 : index
                    %20 = arith.addi %19, %c-19 : index
                    %21 = memref.load %arg5[%20, %c0] : memref<?x30xf64>
                    %22 = arith.muli %arg12, %c-1 : index
                    %23 = arith.addi %22, %arg11 : index
                    %24 = arith.addi %23, %c-20 : index
                    %25 = memref.load %arg5[%24, %c0] : memref<?x30xf64>
                    %26 = arith.subf %21, %25 : f64
                    %27 = arith.mulf %26, %cst_0 : f64
                    %28 = arith.subf %17, %27 : f64
                    %29 = arith.muli %arg12, %c-1 : index
                    %30 = arith.addi %29, %arg11 : index
                    %31 = arith.addi %30, %c-19 : index
                    memref.store %28, %arg4[%31, %c0] : memref<?x30xf64>
                  }
                  %7 = arith.muli %arg9, %c32 : index
                  %8 = arith.addi %arg11, %c14 : index
                  %9 = arith.maxsi %7, %8 : index
                  %10 = arith.muli %arg9, %c32 : index
                  %11 = arith.addi %10, %c32 : index
                  %12 = arith.addi %arg11, %c43 : index
                  %13 = arith.minsi %11, %12 : index
                  scf.for %arg13 = %9 to %13 step %c1 {
                    %14 = arith.muli %arg12, %c-1 : index
                    %15 = arith.addi %14, %arg11 : index
                    %16 = arith.addi %15, %c-19 : index
                    %17 = arith.muli %arg11, %c-1 : index
                    %18 = arith.addi %arg13, %17 : index
                    %19 = arith.addi %18, %c-13 : index
                    %20 = memref.load %arg4[%16, %19] : memref<?x30xf64>
                    %21 = arith.muli %arg12, %c-1 : index
                    %22 = arith.addi %21, %arg11 : index
                    %23 = arith.addi %22, %c-19 : index
                    %24 = arith.muli %arg11, %c-1 : index
                    %25 = arith.addi %arg13, %24 : index
                    %26 = arith.addi %25, %c-13 : index
                    %27 = memref.load %arg5[%23, %26] : memref<?x30xf64>
                    %28 = arith.muli %arg12, %c-1 : index
                    %29 = arith.addi %28, %arg11 : index
                    %30 = arith.addi %29, %c-20 : index
                    %31 = arith.muli %arg11, %c-1 : index
                    %32 = arith.addi %arg13, %31 : index
                    %33 = arith.addi %32, %c-13 : index
                    %34 = memref.load %arg5[%30, %33] : memref<?x30xf64>
                    %35 = arith.subf %27, %34 : f64
                    %36 = arith.mulf %35, %cst_0 : f64
                    %37 = arith.subf %20, %36 : f64
                    %38 = arith.muli %arg12, %c-1 : index
                    %39 = arith.addi %38, %arg11 : index
                    %40 = arith.addi %39, %c-19 : index
                    %41 = arith.muli %arg11, %c-1 : index
                    %42 = arith.addi %arg13, %41 : index
                    %43 = arith.addi %42, %c-13 : index
                    memref.store %37, %arg4[%40, %43] : memref<?x30xf64>
                    %44 = arith.muli %arg12, %c-1 : index
                    %45 = arith.addi %44, %arg11 : index
                    %46 = arith.addi %45, %c-19 : index
                    %47 = arith.muli %arg11, %c-1 : index
                    %48 = arith.addi %arg13, %47 : index
                    %49 = arith.addi %48, %c-13 : index
                    %50 = memref.load %arg3[%46, %49] : memref<?x30xf64>
                    %51 = arith.muli %arg12, %c-1 : index
                    %52 = arith.addi %51, %arg11 : index
                    %53 = arith.addi %52, %c-19 : index
                    %54 = arith.muli %arg11, %c-1 : index
                    %55 = arith.addi %arg13, %54 : index
                    %56 = arith.addi %55, %c-13 : index
                    %57 = memref.load %arg5[%53, %56] : memref<?x30xf64>
                    %58 = arith.muli %arg12, %c-1 : index
                    %59 = arith.addi %58, %arg11 : index
                    %60 = arith.addi %59, %c-19 : index
                    %61 = arith.muli %arg11, %c-1 : index
                    %62 = arith.addi %arg13, %61 : index
                    %63 = arith.addi %62, %c-14 : index
                    %64 = memref.load %arg5[%60, %63] : memref<?x30xf64>
                    %65 = arith.subf %57, %64 : f64
                    %66 = arith.mulf %65, %cst_0 : f64
                    %67 = arith.subf %50, %66 : f64
                    %68 = arith.muli %arg12, %c-1 : index
                    %69 = arith.addi %68, %arg11 : index
                    %70 = arith.addi %69, %c-19 : index
                    %71 = arith.muli %arg11, %c-1 : index
                    %72 = arith.addi %arg13, %71 : index
                    %73 = arith.addi %72, %c-13 : index
                    memref.store %67, %arg3[%70, %73] : memref<?x30xf64>
                    %74 = arith.muli %arg12, %c-1 : index
                    %75 = arith.addi %74, %arg11 : index
                    %76 = arith.addi %75, %c-20 : index
                    %77 = arith.muli %arg11, %c-1 : index
                    %78 = arith.addi %arg13, %77 : index
                    %79 = arith.addi %78, %c-14 : index
                    %80 = memref.load %arg5[%76, %79] : memref<?x30xf64>
                    %81 = arith.muli %arg12, %c-1 : index
                    %82 = arith.addi %81, %arg11 : index
                    %83 = arith.addi %82, %c-20 : index
                    %84 = arith.muli %arg11, %c-1 : index
                    %85 = arith.addi %arg13, %84 : index
                    %86 = arith.addi %85, %c-13 : index
                    %87 = memref.load %arg3[%83, %86] : memref<?x30xf64>
                    %88 = arith.muli %arg12, %c-1 : index
                    %89 = arith.addi %88, %arg11 : index
                    %90 = arith.addi %89, %c-20 : index
                    %91 = arith.muli %arg11, %c-1 : index
                    %92 = arith.addi %arg13, %91 : index
                    %93 = arith.addi %92, %c-14 : index
                    %94 = memref.load %arg3[%90, %93] : memref<?x30xf64>
                    %95 = arith.subf %87, %94 : f64
                    %96 = arith.muli %arg12, %c-1 : index
                    %97 = arith.addi %96, %arg11 : index
                    %98 = arith.addi %97, %c-19 : index
                    %99 = arith.muli %arg11, %c-1 : index
                    %100 = arith.addi %arg13, %99 : index
                    %101 = arith.addi %100, %c-14 : index
                    %102 = memref.load %arg4[%98, %101] : memref<?x30xf64>
                    %103 = arith.addf %95, %102 : f64
                    %104 = arith.muli %arg12, %c-1 : index
                    %105 = arith.addi %104, %arg11 : index
                    %106 = arith.addi %105, %c-20 : index
                    %107 = arith.muli %arg11, %c-1 : index
                    %108 = arith.addi %arg13, %107 : index
                    %109 = arith.addi %108, %c-14 : index
                    %110 = memref.load %arg4[%106, %109] : memref<?x30xf64>
                    %111 = arith.subf %103, %110 : f64
                    %112 = arith.mulf %111, %cst : f64
                    %113 = arith.subf %80, %112 : f64
                    %114 = arith.muli %arg12, %c-1 : index
                    %115 = arith.addi %114, %arg11 : index
                    %116 = arith.addi %115, %c-20 : index
                    %117 = arith.muli %arg11, %c-1 : index
                    %118 = arith.addi %arg13, %117 : index
                    %119 = arith.addi %118, %c-14 : index
                    memref.store %113, %arg5[%116, %119] : memref<?x30xf64>
                  }
                }
              }
            }
          }
        }
      }
    }
    return
  }
}

