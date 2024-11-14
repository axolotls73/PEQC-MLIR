module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c43 = arith.constant 43 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c7 = arith.constant 7 : index
    %c19 = arith.constant 19 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c-29 = arith.constant -29 : index
    %c1024 = arith.constant 1024 : index
    %c2 = arith.constant 2 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %0 = arith.muli %arg8, %c32 : index
            %1 = arith.addi %arg10, %0 : index
            %2 = arith.cmpi eq, %1, %c0 : index
            scf.if %2 {
              %7 = arith.muli %arg9, %c32 : index
              %8 = arith.muli %arg7, %c1024 : index
              %9 = arith.addi %7, %8 : index
              %10 = arith.addi %9, %c-29 : index
              %11 = arith.maxsi %10, %c0 : index
              scf.for %arg11 = %11 to %c20 step %c1 {
                %12 = arith.muli %arg7, %c32 : index
                %13 = arith.addi %arg9, %12 : index
                %14 = arith.cmpi eq, %13, %c0 : index
                scf.if %14 {
                  %30 = memref.load %arg6[%arg11] : memref<?xf64>
                  memref.store %30, %arg4[%c0, %c0] : memref<?x30xf64>
                }
                %15 = memref.load %arg6[%arg11] : memref<?xf64>
                %16 = arith.muli %arg9, %c32 : index
                %17 = arith.muli %arg7, %c1024 : index
                %18 = arith.addi %16, %17 : index
                %19 = arith.addi %arg11, %c1 : index
                %20 = arith.maxsi %18, %19 : index
                %21 = arith.muli %arg9, %c32 : index
                %22 = arith.muli %arg7, %c1024 : index
                %23 = arith.addi %21, %22 : index
                %24 = arith.addi %23, %c32 : index
                %25 = arith.addi %arg11, %c30 : index
                %26 = arith.minsi %24, %25 : index
                scf.for %arg12 = %20 to %26 step %c1 {
                  %30 = arith.muli %arg11, %c-1 : index
                  %31 = arith.addi %30, %arg12 : index
                  memref.store %15, %arg4[%c0, %31] : memref<?x30xf64>
                  %32 = arith.muli %arg11, %c-1 : index
                  %33 = arith.addi %32, %arg12 : index
                  %34 = memref.load %arg3[%c0, %33] : memref<?x30xf64>
                  %35 = arith.muli %arg11, %c-1 : index
                  %36 = arith.addi %35, %arg12 : index
                  %37 = memref.load %arg5[%c0, %36] : memref<?x30xf64>
                  %38 = arith.muli %arg11, %c-1 : index
                  %39 = arith.addi %38, %arg12 : index
                  %40 = arith.addi %39, %c-1 : index
                  %41 = memref.load %arg5[%c0, %40] : memref<?x30xf64>
                  %42 = arith.subf %37, %41 : f64
                  %43 = arith.mulf %42, %cst_0 : f64
                  %44 = arith.subf %34, %43 : f64
                  %45 = arith.muli %arg11, %c-1 : index
                  %46 = arith.addi %45, %arg12 : index
                  memref.store %44, %arg3[%c0, %46] : memref<?x30xf64>
                }
                %27 = arith.muli %arg11, %c-1 : index
                %28 = arith.addi %27, %c31 : index
                %29 = arith.minsi %28, %c19 : index
                scf.for %arg12 = %c0 to %29 step %c1 {
                  %30 = arith.addi %arg11, %arg12 : index
                  %31 = arith.addi %30, %c1 : index
                  %32 = arith.muli %arg7, %c32 : index
                  %33 = arith.addi %arg9, %32 : index
                  %34 = arith.cmpi eq, %33, %c0 : index
                  scf.if %34 {
                    %46 = arith.muli %31, %c-1 : index
                    %47 = arith.addi %46, %arg11 : index
                    %48 = memref.load %arg4[%47, %c0] : memref<?x30xf64>
                    %49 = arith.muli %31, %c-1 : index
                    %50 = arith.addi %49, %arg11 : index
                    %51 = memref.load %arg5[%50, %c0] : memref<?x30xf64>
                    %52 = arith.muli %31, %c-1 : index
                    %53 = arith.addi %52, %arg11 : index
                    %54 = arith.addi %53, %c-1 : index
                    %55 = memref.load %arg5[%54, %c0] : memref<?x30xf64>
                    %56 = arith.subf %51, %55 : f64
                    %57 = arith.mulf %56, %cst_0 : f64
                    %58 = arith.subf %48, %57 : f64
                    %59 = arith.muli %31, %c-1 : index
                    %60 = arith.addi %59, %arg11 : index
                    memref.store %58, %arg4[%60, %c0] : memref<?x30xf64>
                  }
                  %35 = arith.muli %arg9, %c32 : index
                  %36 = arith.muli %arg7, %c1024 : index
                  %37 = arith.addi %35, %36 : index
                  %38 = arith.addi %arg11, %c1 : index
                  %39 = arith.maxsi %37, %38 : index
                  %40 = arith.muli %arg9, %c32 : index
                  %41 = arith.muli %arg7, %c1024 : index
                  %42 = arith.addi %40, %41 : index
                  %43 = arith.addi %42, %c32 : index
                  %44 = arith.addi %arg11, %c30 : index
                  %45 = arith.minsi %43, %44 : index
                  scf.for %arg13 = %39 to %45 step %c1 {
                    %46 = arith.muli %31, %c-1 : index
                    %47 = arith.addi %46, %arg11 : index
                    %48 = arith.muli %arg11, %c-1 : index
                    %49 = arith.addi %48, %arg13 : index
                    %50 = memref.load %arg4[%47, %49] : memref<?x30xf64>
                    %51 = arith.muli %31, %c-1 : index
                    %52 = arith.addi %51, %arg11 : index
                    %53 = arith.muli %arg11, %c-1 : index
                    %54 = arith.addi %53, %arg13 : index
                    %55 = memref.load %arg5[%52, %54] : memref<?x30xf64>
                    %56 = arith.muli %31, %c-1 : index
                    %57 = arith.addi %56, %arg11 : index
                    %58 = arith.addi %57, %c-1 : index
                    %59 = arith.muli %arg11, %c-1 : index
                    %60 = arith.addi %59, %arg13 : index
                    %61 = memref.load %arg5[%58, %60] : memref<?x30xf64>
                    %62 = arith.subf %55, %61 : f64
                    %63 = arith.mulf %62, %cst_0 : f64
                    %64 = arith.subf %50, %63 : f64
                    %65 = arith.muli %31, %c-1 : index
                    %66 = arith.addi %65, %arg11 : index
                    %67 = arith.muli %arg11, %c-1 : index
                    %68 = arith.addi %67, %arg13 : index
                    memref.store %64, %arg4[%66, %68] : memref<?x30xf64>
                    %69 = arith.muli %31, %c-1 : index
                    %70 = arith.addi %69, %arg11 : index
                    %71 = arith.muli %arg11, %c-1 : index
                    %72 = arith.addi %71, %arg13 : index
                    %73 = memref.load %arg3[%70, %72] : memref<?x30xf64>
                    %74 = arith.muli %31, %c-1 : index
                    %75 = arith.addi %74, %arg11 : index
                    %76 = arith.muli %arg11, %c-1 : index
                    %77 = arith.addi %76, %arg13 : index
                    %78 = memref.load %arg5[%75, %77] : memref<?x30xf64>
                    %79 = arith.muli %31, %c-1 : index
                    %80 = arith.addi %79, %arg11 : index
                    %81 = arith.muli %arg11, %c-1 : index
                    %82 = arith.addi %81, %arg13 : index
                    %83 = arith.addi %82, %c-1 : index
                    %84 = memref.load %arg5[%80, %83] : memref<?x30xf64>
                    %85 = arith.subf %78, %84 : f64
                    %86 = arith.mulf %85, %cst_0 : f64
                    %87 = arith.subf %73, %86 : f64
                    %88 = arith.muli %31, %c-1 : index
                    %89 = arith.addi %88, %arg11 : index
                    %90 = arith.muli %arg11, %c-1 : index
                    %91 = arith.addi %90, %arg13 : index
                    memref.store %87, %arg3[%89, %91] : memref<?x30xf64>
                    %92 = arith.muli %31, %c-1 : index
                    %93 = arith.addi %92, %arg11 : index
                    %94 = arith.addi %93, %c-1 : index
                    %95 = arith.muli %arg11, %c-1 : index
                    %96 = arith.addi %95, %arg13 : index
                    %97 = arith.addi %96, %c-1 : index
                    %98 = memref.load %arg5[%94, %97] : memref<?x30xf64>
                    %99 = arith.muli %31, %c-1 : index
                    %100 = arith.addi %99, %arg11 : index
                    %101 = arith.addi %100, %c-1 : index
                    %102 = arith.muli %arg11, %c-1 : index
                    %103 = arith.addi %102, %arg13 : index
                    %104 = memref.load %arg3[%101, %103] : memref<?x30xf64>
                    %105 = arith.muli %31, %c-1 : index
                    %106 = arith.addi %105, %arg11 : index
                    %107 = arith.addi %106, %c-1 : index
                    %108 = arith.muli %arg11, %c-1 : index
                    %109 = arith.addi %108, %arg13 : index
                    %110 = arith.addi %109, %c-1 : index
                    %111 = memref.load %arg3[%107, %110] : memref<?x30xf64>
                    %112 = arith.subf %104, %111 : f64
                    %113 = arith.muli %31, %c-1 : index
                    %114 = arith.addi %113, %arg11 : index
                    %115 = arith.muli %arg11, %c-1 : index
                    %116 = arith.addi %115, %arg13 : index
                    %117 = arith.addi %116, %c-1 : index
                    %118 = memref.load %arg4[%114, %117] : memref<?x30xf64>
                    %119 = arith.addf %112, %118 : f64
                    %120 = arith.muli %31, %c-1 : index
                    %121 = arith.addi %120, %arg11 : index
                    %122 = arith.addi %121, %c-1 : index
                    %123 = arith.muli %arg11, %c-1 : index
                    %124 = arith.addi %123, %arg13 : index
                    %125 = arith.addi %124, %c-1 : index
                    %126 = memref.load %arg4[%122, %125] : memref<?x30xf64>
                    %127 = arith.subf %119, %126 : f64
                    %128 = arith.mulf %127, %cst : f64
                    %129 = arith.subf %98, %128 : f64
                    %130 = arith.muli %31, %c-1 : index
                    %131 = arith.addi %130, %arg11 : index
                    %132 = arith.addi %131, %c-1 : index
                    %133 = arith.muli %arg11, %c-1 : index
                    %134 = arith.addi %133, %arg13 : index
                    %135 = arith.addi %134, %c-1 : index
                    memref.store %129, %arg5[%132, %135] : memref<?x30xf64>
                  }
                }
              }
            }
            %3 = arith.muli %arg8, %c32 : index
            %4 = arith.addi %arg10, %3 : index
            %5 = arith.addi %4, %c-1 : index
            %6 = arith.cmpi eq, %5, %c0 : index
            scf.if %6 {
              scf.for %arg11 = %c0 to %c7 step %c1 {
                %7 = arith.addi %arg11, %c13 : index
                %8 = arith.addi %arg11, %c1 : index
                scf.for %arg12 = %c0 to %8 step %c1 {
                  %9 = arith.addi %arg12, %c32 : index
                  %10 = arith.muli %arg7, %c32 : index
                  %11 = arith.addi %arg9, %10 : index
                  %12 = arith.cmpi eq, %11, %c0 : index
                  scf.if %12 {
                    %24 = arith.muli %9, %c-1 : index
                    %25 = arith.addi %24, %7 : index
                    %26 = memref.load %arg4[%25, %c0] : memref<?x30xf64>
                    %27 = arith.muli %9, %c-1 : index
                    %28 = arith.addi %27, %7 : index
                    %29 = memref.load %arg5[%28, %c0] : memref<?x30xf64>
                    %30 = arith.muli %9, %c-1 : index
                    %31 = arith.addi %30, %7 : index
                    %32 = arith.addi %31, %c-1 : index
                    %33 = memref.load %arg5[%32, %c0] : memref<?x30xf64>
                    %34 = arith.subf %29, %33 : f64
                    %35 = arith.mulf %34, %cst_0 : f64
                    %36 = arith.subf %26, %35 : f64
                    %37 = arith.muli %9, %c-1 : index
                    %38 = arith.addi %37, %7 : index
                    memref.store %36, %arg4[%38, %c0] : memref<?x30xf64>
                  }
                  %13 = arith.muli %arg9, %c32 : index
                  %14 = arith.muli %arg7, %c1024 : index
                  %15 = arith.addi %13, %14 : index
                  %16 = arith.addi %arg11, %c14 : index
                  %17 = arith.maxsi %15, %16 : index
                  %18 = arith.muli %arg9, %c32 : index
                  %19 = arith.muli %arg7, %c1024 : index
                  %20 = arith.addi %18, %19 : index
                  %21 = arith.addi %20, %c32 : index
                  %22 = arith.addi %arg11, %c43 : index
                  %23 = arith.minsi %21, %22 : index
                  scf.for %arg13 = %17 to %23 step %c1 {
                    %24 = arith.muli %9, %c-1 : index
                    %25 = arith.addi %24, %7 : index
                    %26 = arith.muli %7, %c-1 : index
                    %27 = arith.addi %26, %arg13 : index
                    %28 = memref.load %arg4[%25, %27] : memref<?x30xf64>
                    %29 = arith.muli %9, %c-1 : index
                    %30 = arith.addi %29, %7 : index
                    %31 = arith.muli %7, %c-1 : index
                    %32 = arith.addi %31, %arg13 : index
                    %33 = memref.load %arg5[%30, %32] : memref<?x30xf64>
                    %34 = arith.muli %9, %c-1 : index
                    %35 = arith.addi %34, %7 : index
                    %36 = arith.addi %35, %c-1 : index
                    %37 = arith.muli %7, %c-1 : index
                    %38 = arith.addi %37, %arg13 : index
                    %39 = memref.load %arg5[%36, %38] : memref<?x30xf64>
                    %40 = arith.subf %33, %39 : f64
                    %41 = arith.mulf %40, %cst_0 : f64
                    %42 = arith.subf %28, %41 : f64
                    %43 = arith.muli %9, %c-1 : index
                    %44 = arith.addi %43, %7 : index
                    %45 = arith.muli %7, %c-1 : index
                    %46 = arith.addi %45, %arg13 : index
                    memref.store %42, %arg4[%44, %46] : memref<?x30xf64>
                    %47 = arith.muli %9, %c-1 : index
                    %48 = arith.addi %47, %7 : index
                    %49 = arith.muli %7, %c-1 : index
                    %50 = arith.addi %49, %arg13 : index
                    %51 = memref.load %arg3[%48, %50] : memref<?x30xf64>
                    %52 = arith.muli %9, %c-1 : index
                    %53 = arith.addi %52, %7 : index
                    %54 = arith.muli %7, %c-1 : index
                    %55 = arith.addi %54, %arg13 : index
                    %56 = memref.load %arg5[%53, %55] : memref<?x30xf64>
                    %57 = arith.muli %9, %c-1 : index
                    %58 = arith.addi %57, %7 : index
                    %59 = arith.muli %7, %c-1 : index
                    %60 = arith.addi %59, %arg13 : index
                    %61 = arith.addi %60, %c-1 : index
                    %62 = memref.load %arg5[%58, %61] : memref<?x30xf64>
                    %63 = arith.subf %56, %62 : f64
                    %64 = arith.mulf %63, %cst_0 : f64
                    %65 = arith.subf %51, %64 : f64
                    %66 = arith.muli %9, %c-1 : index
                    %67 = arith.addi %66, %7 : index
                    %68 = arith.muli %7, %c-1 : index
                    %69 = arith.addi %68, %arg13 : index
                    memref.store %65, %arg3[%67, %69] : memref<?x30xf64>
                    %70 = arith.muli %9, %c-1 : index
                    %71 = arith.addi %70, %7 : index
                    %72 = arith.addi %71, %c-1 : index
                    %73 = arith.muli %7, %c-1 : index
                    %74 = arith.addi %73, %arg13 : index
                    %75 = arith.addi %74, %c-1 : index
                    %76 = memref.load %arg5[%72, %75] : memref<?x30xf64>
                    %77 = arith.muli %9, %c-1 : index
                    %78 = arith.addi %77, %7 : index
                    %79 = arith.addi %78, %c-1 : index
                    %80 = arith.muli %7, %c-1 : index
                    %81 = arith.addi %80, %arg13 : index
                    %82 = memref.load %arg3[%79, %81] : memref<?x30xf64>
                    %83 = arith.muli %9, %c-1 : index
                    %84 = arith.addi %83, %7 : index
                    %85 = arith.addi %84, %c-1 : index
                    %86 = arith.muli %7, %c-1 : index
                    %87 = arith.addi %86, %arg13 : index
                    %88 = arith.addi %87, %c-1 : index
                    %89 = memref.load %arg3[%85, %88] : memref<?x30xf64>
                    %90 = arith.subf %82, %89 : f64
                    %91 = arith.muli %9, %c-1 : index
                    %92 = arith.addi %91, %7 : index
                    %93 = arith.muli %7, %c-1 : index
                    %94 = arith.addi %93, %arg13 : index
                    %95 = arith.addi %94, %c-1 : index
                    %96 = memref.load %arg4[%92, %95] : memref<?x30xf64>
                    %97 = arith.addf %90, %96 : f64
                    %98 = arith.muli %9, %c-1 : index
                    %99 = arith.addi %98, %7 : index
                    %100 = arith.addi %99, %c-1 : index
                    %101 = arith.muli %7, %c-1 : index
                    %102 = arith.addi %101, %arg13 : index
                    %103 = arith.addi %102, %c-1 : index
                    %104 = memref.load %arg4[%100, %103] : memref<?x30xf64>
                    %105 = arith.subf %97, %104 : f64
                    %106 = arith.mulf %105, %cst : f64
                    %107 = arith.subf %76, %106 : f64
                    %108 = arith.muli %9, %c-1 : index
                    %109 = arith.addi %108, %7 : index
                    %110 = arith.addi %109, %c-1 : index
                    %111 = arith.muli %7, %c-1 : index
                    %112 = arith.addi %111, %arg13 : index
                    %113 = arith.addi %112, %c-1 : index
                    memref.store %107, %arg5[%110, %113] : memref<?x30xf64>
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

