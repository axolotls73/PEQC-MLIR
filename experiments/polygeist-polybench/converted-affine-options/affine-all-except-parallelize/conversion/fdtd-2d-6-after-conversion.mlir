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
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        scf.for %arg9 = %c0 to %c1 step %c1 {
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %0 = arith.addi %arg8, %arg10 : index
            %1 = arith.cmpi eq, %0, %c0 : index
            scf.if %1 {
              %5 = arith.muli %arg7, %c32 : index
              %6 = arith.muli %arg9, %c32 : index
              %7 = arith.addi %5, %6 : index
              %8 = arith.addi %7, %c-29 : index
              %9 = arith.maxsi %8, %c0 : index
              scf.for %arg11 = %9 to %c20 step %c1 {
                %10 = arith.addi %arg7, %arg9 : index
                %11 = arith.cmpi eq, %10, %c0 : index
                scf.if %11 {
                  %27 = memref.load %arg6[%arg11] : memref<?xf64>
                  memref.store %27, %arg4[%c0, %c0] : memref<?x30xf64>
                }
                %12 = memref.load %arg6[%arg11] : memref<?xf64>
                %13 = arith.muli %arg7, %c32 : index
                %14 = arith.muli %arg9, %c32 : index
                %15 = arith.addi %13, %14 : index
                %16 = arith.addi %arg11, %c1 : index
                %17 = arith.maxsi %15, %16 : index
                %18 = arith.muli %arg7, %c32 : index
                %19 = arith.muli %arg9, %c32 : index
                %20 = arith.addi %18, %19 : index
                %21 = arith.addi %20, %c32 : index
                %22 = arith.addi %arg11, %c30 : index
                %23 = arith.minsi %21, %22 : index
                scf.for %arg12 = %17 to %23 step %c1 {
                  %27 = arith.muli %arg11, %c-1 : index
                  %28 = arith.addi %27, %arg12 : index
                  memref.store %12, %arg4[%c0, %28] : memref<?x30xf64>
                  %29 = arith.muli %arg11, %c-1 : index
                  %30 = arith.addi %29, %arg12 : index
                  %31 = memref.load %arg3[%c0, %30] : memref<?x30xf64>
                  %32 = arith.muli %arg11, %c-1 : index
                  %33 = arith.addi %32, %arg12 : index
                  %34 = memref.load %arg5[%c0, %33] : memref<?x30xf64>
                  %35 = arith.muli %arg11, %c-1 : index
                  %36 = arith.addi %35, %arg12 : index
                  %37 = arith.addi %36, %c-1 : index
                  %38 = memref.load %arg5[%c0, %37] : memref<?x30xf64>
                  %39 = arith.subf %34, %38 : f64
                  %40 = arith.mulf %39, %cst_0 : f64
                  %41 = arith.subf %31, %40 : f64
                  %42 = arith.muli %arg11, %c-1 : index
                  %43 = arith.addi %42, %arg12 : index
                  memref.store %41, %arg3[%c0, %43] : memref<?x30xf64>
                }
                %24 = arith.muli %arg11, %c-1 : index
                %25 = arith.addi %24, %c31 : index
                %26 = arith.minsi %25, %c19 : index
                scf.for %arg12 = %c0 to %26 step %c1 {
                  %27 = arith.addi %arg11, %arg12 : index
                  %28 = arith.addi %27, %c1 : index
                  %29 = arith.addi %arg7, %arg9 : index
                  %30 = arith.cmpi eq, %29, %c0 : index
                  scf.if %30 {
                    %42 = arith.muli %28, %c-1 : index
                    %43 = arith.addi %42, %arg11 : index
                    %44 = memref.load %arg4[%43, %c0] : memref<?x30xf64>
                    %45 = arith.muli %28, %c-1 : index
                    %46 = arith.addi %45, %arg11 : index
                    %47 = memref.load %arg5[%46, %c0] : memref<?x30xf64>
                    %48 = arith.muli %28, %c-1 : index
                    %49 = arith.addi %48, %arg11 : index
                    %50 = arith.addi %49, %c-1 : index
                    %51 = memref.load %arg5[%50, %c0] : memref<?x30xf64>
                    %52 = arith.subf %47, %51 : f64
                    %53 = arith.mulf %52, %cst_0 : f64
                    %54 = arith.subf %44, %53 : f64
                    %55 = arith.muli %28, %c-1 : index
                    %56 = arith.addi %55, %arg11 : index
                    memref.store %54, %arg4[%56, %c0] : memref<?x30xf64>
                  }
                  %31 = arith.muli %arg7, %c32 : index
                  %32 = arith.muli %arg9, %c32 : index
                  %33 = arith.addi %31, %32 : index
                  %34 = arith.addi %arg11, %c1 : index
                  %35 = arith.maxsi %33, %34 : index
                  %36 = arith.muli %arg7, %c32 : index
                  %37 = arith.muli %arg9, %c32 : index
                  %38 = arith.addi %36, %37 : index
                  %39 = arith.addi %38, %c32 : index
                  %40 = arith.addi %arg11, %c30 : index
                  %41 = arith.minsi %39, %40 : index
                  scf.for %arg13 = %35 to %41 step %c1 {
                    %42 = arith.muli %28, %c-1 : index
                    %43 = arith.addi %42, %arg11 : index
                    %44 = arith.muli %arg11, %c-1 : index
                    %45 = arith.addi %44, %arg13 : index
                    %46 = memref.load %arg4[%43, %45] : memref<?x30xf64>
                    %47 = arith.muli %28, %c-1 : index
                    %48 = arith.addi %47, %arg11 : index
                    %49 = arith.muli %arg11, %c-1 : index
                    %50 = arith.addi %49, %arg13 : index
                    %51 = memref.load %arg5[%48, %50] : memref<?x30xf64>
                    %52 = arith.muli %28, %c-1 : index
                    %53 = arith.addi %52, %arg11 : index
                    %54 = arith.addi %53, %c-1 : index
                    %55 = arith.muli %arg11, %c-1 : index
                    %56 = arith.addi %55, %arg13 : index
                    %57 = memref.load %arg5[%54, %56] : memref<?x30xf64>
                    %58 = arith.subf %51, %57 : f64
                    %59 = arith.mulf %58, %cst_0 : f64
                    %60 = arith.subf %46, %59 : f64
                    %61 = arith.muli %28, %c-1 : index
                    %62 = arith.addi %61, %arg11 : index
                    %63 = arith.muli %arg11, %c-1 : index
                    %64 = arith.addi %63, %arg13 : index
                    memref.store %60, %arg4[%62, %64] : memref<?x30xf64>
                    %65 = arith.muli %28, %c-1 : index
                    %66 = arith.addi %65, %arg11 : index
                    %67 = arith.muli %arg11, %c-1 : index
                    %68 = arith.addi %67, %arg13 : index
                    %69 = memref.load %arg3[%66, %68] : memref<?x30xf64>
                    %70 = arith.muli %28, %c-1 : index
                    %71 = arith.addi %70, %arg11 : index
                    %72 = arith.muli %arg11, %c-1 : index
                    %73 = arith.addi %72, %arg13 : index
                    %74 = memref.load %arg5[%71, %73] : memref<?x30xf64>
                    %75 = arith.muli %28, %c-1 : index
                    %76 = arith.addi %75, %arg11 : index
                    %77 = arith.muli %arg11, %c-1 : index
                    %78 = arith.addi %77, %arg13 : index
                    %79 = arith.addi %78, %c-1 : index
                    %80 = memref.load %arg5[%76, %79] : memref<?x30xf64>
                    %81 = arith.subf %74, %80 : f64
                    %82 = arith.mulf %81, %cst_0 : f64
                    %83 = arith.subf %69, %82 : f64
                    %84 = arith.muli %28, %c-1 : index
                    %85 = arith.addi %84, %arg11 : index
                    %86 = arith.muli %arg11, %c-1 : index
                    %87 = arith.addi %86, %arg13 : index
                    memref.store %83, %arg3[%85, %87] : memref<?x30xf64>
                    %88 = arith.muli %28, %c-1 : index
                    %89 = arith.addi %88, %arg11 : index
                    %90 = arith.addi %89, %c-1 : index
                    %91 = arith.muli %arg11, %c-1 : index
                    %92 = arith.addi %91, %arg13 : index
                    %93 = arith.addi %92, %c-1 : index
                    %94 = memref.load %arg5[%90, %93] : memref<?x30xf64>
                    %95 = arith.muli %28, %c-1 : index
                    %96 = arith.addi %95, %arg11 : index
                    %97 = arith.addi %96, %c-1 : index
                    %98 = arith.muli %arg11, %c-1 : index
                    %99 = arith.addi %98, %arg13 : index
                    %100 = memref.load %arg3[%97, %99] : memref<?x30xf64>
                    %101 = arith.muli %28, %c-1 : index
                    %102 = arith.addi %101, %arg11 : index
                    %103 = arith.addi %102, %c-1 : index
                    %104 = arith.muli %arg11, %c-1 : index
                    %105 = arith.addi %104, %arg13 : index
                    %106 = arith.addi %105, %c-1 : index
                    %107 = memref.load %arg3[%103, %106] : memref<?x30xf64>
                    %108 = arith.subf %100, %107 : f64
                    %109 = arith.muli %28, %c-1 : index
                    %110 = arith.addi %109, %arg11 : index
                    %111 = arith.muli %arg11, %c-1 : index
                    %112 = arith.addi %111, %arg13 : index
                    %113 = arith.addi %112, %c-1 : index
                    %114 = memref.load %arg4[%110, %113] : memref<?x30xf64>
                    %115 = arith.addf %108, %114 : f64
                    %116 = arith.muli %28, %c-1 : index
                    %117 = arith.addi %116, %arg11 : index
                    %118 = arith.addi %117, %c-1 : index
                    %119 = arith.muli %arg11, %c-1 : index
                    %120 = arith.addi %119, %arg13 : index
                    %121 = arith.addi %120, %c-1 : index
                    %122 = memref.load %arg4[%118, %121] : memref<?x30xf64>
                    %123 = arith.subf %115, %122 : f64
                    %124 = arith.mulf %123, %cst : f64
                    %125 = arith.subf %94, %124 : f64
                    %126 = arith.muli %28, %c-1 : index
                    %127 = arith.addi %126, %arg11 : index
                    %128 = arith.addi %127, %c-1 : index
                    %129 = arith.muli %arg11, %c-1 : index
                    %130 = arith.addi %129, %arg13 : index
                    %131 = arith.addi %130, %c-1 : index
                    memref.store %125, %arg5[%128, %131] : memref<?x30xf64>
                  }
                }
              }
            }
            %2 = arith.addi %arg8, %arg10 : index
            %3 = arith.addi %2, %c-1 : index
            %4 = arith.cmpi eq, %3, %c0 : index
            scf.if %4 {
              scf.for %arg11 = %c0 to %c7 step %c1 {
                %5 = arith.addi %arg11, %c13 : index
                %6 = arith.addi %arg11, %c1 : index
                scf.for %arg12 = %c0 to %6 step %c1 {
                  %7 = arith.addi %arg12, %c32 : index
                  %8 = arith.addi %arg7, %arg9 : index
                  %9 = arith.cmpi eq, %8, %c0 : index
                  scf.if %9 {
                    %21 = arith.muli %7, %c-1 : index
                    %22 = arith.addi %21, %5 : index
                    %23 = memref.load %arg4[%22, %c0] : memref<?x30xf64>
                    %24 = arith.muli %7, %c-1 : index
                    %25 = arith.addi %24, %5 : index
                    %26 = memref.load %arg5[%25, %c0] : memref<?x30xf64>
                    %27 = arith.muli %7, %c-1 : index
                    %28 = arith.addi %27, %5 : index
                    %29 = arith.addi %28, %c-1 : index
                    %30 = memref.load %arg5[%29, %c0] : memref<?x30xf64>
                    %31 = arith.subf %26, %30 : f64
                    %32 = arith.mulf %31, %cst_0 : f64
                    %33 = arith.subf %23, %32 : f64
                    %34 = arith.muli %7, %c-1 : index
                    %35 = arith.addi %34, %5 : index
                    memref.store %33, %arg4[%35, %c0] : memref<?x30xf64>
                  }
                  %10 = arith.muli %arg7, %c32 : index
                  %11 = arith.muli %arg9, %c32 : index
                  %12 = arith.addi %10, %11 : index
                  %13 = arith.addi %arg11, %c14 : index
                  %14 = arith.maxsi %12, %13 : index
                  %15 = arith.muli %arg7, %c32 : index
                  %16 = arith.muli %arg9, %c32 : index
                  %17 = arith.addi %15, %16 : index
                  %18 = arith.addi %17, %c32 : index
                  %19 = arith.addi %arg11, %c43 : index
                  %20 = arith.minsi %18, %19 : index
                  scf.for %arg13 = %14 to %20 step %c1 {
                    %21 = arith.muli %7, %c-1 : index
                    %22 = arith.addi %21, %5 : index
                    %23 = arith.muli %5, %c-1 : index
                    %24 = arith.addi %23, %arg13 : index
                    %25 = memref.load %arg4[%22, %24] : memref<?x30xf64>
                    %26 = arith.muli %7, %c-1 : index
                    %27 = arith.addi %26, %5 : index
                    %28 = arith.muli %5, %c-1 : index
                    %29 = arith.addi %28, %arg13 : index
                    %30 = memref.load %arg5[%27, %29] : memref<?x30xf64>
                    %31 = arith.muli %7, %c-1 : index
                    %32 = arith.addi %31, %5 : index
                    %33 = arith.addi %32, %c-1 : index
                    %34 = arith.muli %5, %c-1 : index
                    %35 = arith.addi %34, %arg13 : index
                    %36 = memref.load %arg5[%33, %35] : memref<?x30xf64>
                    %37 = arith.subf %30, %36 : f64
                    %38 = arith.mulf %37, %cst_0 : f64
                    %39 = arith.subf %25, %38 : f64
                    %40 = arith.muli %7, %c-1 : index
                    %41 = arith.addi %40, %5 : index
                    %42 = arith.muli %5, %c-1 : index
                    %43 = arith.addi %42, %arg13 : index
                    memref.store %39, %arg4[%41, %43] : memref<?x30xf64>
                    %44 = arith.muli %7, %c-1 : index
                    %45 = arith.addi %44, %5 : index
                    %46 = arith.muli %5, %c-1 : index
                    %47 = arith.addi %46, %arg13 : index
                    %48 = memref.load %arg3[%45, %47] : memref<?x30xf64>
                    %49 = arith.muli %7, %c-1 : index
                    %50 = arith.addi %49, %5 : index
                    %51 = arith.muli %5, %c-1 : index
                    %52 = arith.addi %51, %arg13 : index
                    %53 = memref.load %arg5[%50, %52] : memref<?x30xf64>
                    %54 = arith.muli %7, %c-1 : index
                    %55 = arith.addi %54, %5 : index
                    %56 = arith.muli %5, %c-1 : index
                    %57 = arith.addi %56, %arg13 : index
                    %58 = arith.addi %57, %c-1 : index
                    %59 = memref.load %arg5[%55, %58] : memref<?x30xf64>
                    %60 = arith.subf %53, %59 : f64
                    %61 = arith.mulf %60, %cst_0 : f64
                    %62 = arith.subf %48, %61 : f64
                    %63 = arith.muli %7, %c-1 : index
                    %64 = arith.addi %63, %5 : index
                    %65 = arith.muli %5, %c-1 : index
                    %66 = arith.addi %65, %arg13 : index
                    memref.store %62, %arg3[%64, %66] : memref<?x30xf64>
                    %67 = arith.muli %7, %c-1 : index
                    %68 = arith.addi %67, %5 : index
                    %69 = arith.addi %68, %c-1 : index
                    %70 = arith.muli %5, %c-1 : index
                    %71 = arith.addi %70, %arg13 : index
                    %72 = arith.addi %71, %c-1 : index
                    %73 = memref.load %arg5[%69, %72] : memref<?x30xf64>
                    %74 = arith.muli %7, %c-1 : index
                    %75 = arith.addi %74, %5 : index
                    %76 = arith.addi %75, %c-1 : index
                    %77 = arith.muli %5, %c-1 : index
                    %78 = arith.addi %77, %arg13 : index
                    %79 = memref.load %arg3[%76, %78] : memref<?x30xf64>
                    %80 = arith.muli %7, %c-1 : index
                    %81 = arith.addi %80, %5 : index
                    %82 = arith.addi %81, %c-1 : index
                    %83 = arith.muli %5, %c-1 : index
                    %84 = arith.addi %83, %arg13 : index
                    %85 = arith.addi %84, %c-1 : index
                    %86 = memref.load %arg3[%82, %85] : memref<?x30xf64>
                    %87 = arith.subf %79, %86 : f64
                    %88 = arith.muli %7, %c-1 : index
                    %89 = arith.addi %88, %5 : index
                    %90 = arith.muli %5, %c-1 : index
                    %91 = arith.addi %90, %arg13 : index
                    %92 = arith.addi %91, %c-1 : index
                    %93 = memref.load %arg4[%89, %92] : memref<?x30xf64>
                    %94 = arith.addf %87, %93 : f64
                    %95 = arith.muli %7, %c-1 : index
                    %96 = arith.addi %95, %5 : index
                    %97 = arith.addi %96, %c-1 : index
                    %98 = arith.muli %5, %c-1 : index
                    %99 = arith.addi %98, %arg13 : index
                    %100 = arith.addi %99, %c-1 : index
                    %101 = memref.load %arg4[%97, %100] : memref<?x30xf64>
                    %102 = arith.subf %94, %101 : f64
                    %103 = arith.mulf %102, %cst : f64
                    %104 = arith.subf %73, %103 : f64
                    %105 = arith.muli %7, %c-1 : index
                    %106 = arith.addi %105, %5 : index
                    %107 = arith.addi %106, %c-1 : index
                    %108 = arith.muli %5, %c-1 : index
                    %109 = arith.addi %108, %arg13 : index
                    %110 = arith.addi %109, %c-1 : index
                    memref.store %104, %arg5[%107, %110] : memref<?x30xf64>
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

