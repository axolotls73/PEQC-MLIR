module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c13 = arith.constant 13 : index
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
        %0 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %arg7 to %0 step %c1 {
          %1 = arith.addi %arg8, %c1 : index
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
                %16 = arith.addi %arg11, %c1 : index
                %17 = arith.addi %arg11, %c20 : index
                %18 = arith.minsi %17, %c32 : index
                scf.for %arg12 = %16 to %18 step %c1 {
                  %19 = arith.cmpi eq, %arg9, %c0 : index
                  scf.if %19 {
                    %27 = arith.muli %arg12, %c-1 : index
                    %28 = arith.addi %27, %arg11 : index
                    %29 = memref.load %arg4[%28, %c0] : memref<?x30xf64>
                    %30 = arith.muli %arg12, %c-1 : index
                    %31 = arith.addi %30, %arg11 : index
                    %32 = memref.load %arg5[%31, %c0] : memref<?x30xf64>
                    %33 = arith.muli %arg12, %c-1 : index
                    %34 = arith.addi %33, %arg11 : index
                    %35 = arith.addi %34, %c-1 : index
                    %36 = memref.load %arg5[%35, %c0] : memref<?x30xf64>
                    %37 = arith.subf %32, %36 : f64
                    %38 = arith.mulf %37, %cst_0 : f64
                    %39 = arith.subf %29, %38 : f64
                    %40 = arith.muli %arg12, %c-1 : index
                    %41 = arith.addi %40, %arg11 : index
                    memref.store %39, %arg4[%41, %c0] : memref<?x30xf64>
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
                    %28 = arith.addi %27, %arg11 : index
                    %29 = arith.muli %arg11, %c-1 : index
                    %30 = arith.addi %29, %arg13 : index
                    %31 = memref.load %arg4[%28, %30] : memref<?x30xf64>
                    %32 = arith.muli %arg12, %c-1 : index
                    %33 = arith.addi %32, %arg11 : index
                    %34 = arith.muli %arg11, %c-1 : index
                    %35 = arith.addi %34, %arg13 : index
                    %36 = memref.load %arg5[%33, %35] : memref<?x30xf64>
                    %37 = arith.muli %arg12, %c-1 : index
                    %38 = arith.addi %37, %arg11 : index
                    %39 = arith.addi %38, %c-1 : index
                    %40 = arith.muli %arg11, %c-1 : index
                    %41 = arith.addi %40, %arg13 : index
                    %42 = memref.load %arg5[%39, %41] : memref<?x30xf64>
                    %43 = arith.subf %36, %42 : f64
                    %44 = arith.mulf %43, %cst_0 : f64
                    %45 = arith.subf %31, %44 : f64
                    %46 = arith.muli %arg12, %c-1 : index
                    %47 = arith.addi %46, %arg11 : index
                    %48 = arith.muli %arg11, %c-1 : index
                    %49 = arith.addi %48, %arg13 : index
                    memref.store %45, %arg4[%47, %49] : memref<?x30xf64>
                    %50 = arith.muli %arg12, %c-1 : index
                    %51 = arith.addi %50, %arg11 : index
                    %52 = arith.muli %arg11, %c-1 : index
                    %53 = arith.addi %52, %arg13 : index
                    %54 = memref.load %arg3[%51, %53] : memref<?x30xf64>
                    %55 = arith.muli %arg12, %c-1 : index
                    %56 = arith.addi %55, %arg11 : index
                    %57 = arith.muli %arg11, %c-1 : index
                    %58 = arith.addi %57, %arg13 : index
                    %59 = memref.load %arg5[%56, %58] : memref<?x30xf64>
                    %60 = arith.muli %arg12, %c-1 : index
                    %61 = arith.addi %60, %arg11 : index
                    %62 = arith.muli %arg11, %c-1 : index
                    %63 = arith.addi %62, %arg13 : index
                    %64 = arith.addi %63, %c-1 : index
                    %65 = memref.load %arg5[%61, %64] : memref<?x30xf64>
                    %66 = arith.subf %59, %65 : f64
                    %67 = arith.mulf %66, %cst_0 : f64
                    %68 = arith.subf %54, %67 : f64
                    %69 = arith.muli %arg12, %c-1 : index
                    %70 = arith.addi %69, %arg11 : index
                    %71 = arith.muli %arg11, %c-1 : index
                    %72 = arith.addi %71, %arg13 : index
                    memref.store %68, %arg3[%70, %72] : memref<?x30xf64>
                    %73 = arith.muli %arg12, %c-1 : index
                    %74 = arith.addi %73, %arg11 : index
                    %75 = arith.addi %74, %c-1 : index
                    %76 = arith.muli %arg11, %c-1 : index
                    %77 = arith.addi %76, %arg13 : index
                    %78 = arith.addi %77, %c-1 : index
                    %79 = memref.load %arg5[%75, %78] : memref<?x30xf64>
                    %80 = arith.muli %arg12, %c-1 : index
                    %81 = arith.addi %80, %arg11 : index
                    %82 = arith.addi %81, %c-1 : index
                    %83 = arith.muli %arg11, %c-1 : index
                    %84 = arith.addi %83, %arg13 : index
                    %85 = memref.load %arg3[%82, %84] : memref<?x30xf64>
                    %86 = arith.muli %arg12, %c-1 : index
                    %87 = arith.addi %86, %arg11 : index
                    %88 = arith.addi %87, %c-1 : index
                    %89 = arith.muli %arg11, %c-1 : index
                    %90 = arith.addi %89, %arg13 : index
                    %91 = arith.addi %90, %c-1 : index
                    %92 = memref.load %arg3[%88, %91] : memref<?x30xf64>
                    %93 = arith.subf %85, %92 : f64
                    %94 = arith.muli %arg12, %c-1 : index
                    %95 = arith.addi %94, %arg11 : index
                    %96 = arith.muli %arg11, %c-1 : index
                    %97 = arith.addi %96, %arg13 : index
                    %98 = arith.addi %97, %c-1 : index
                    %99 = memref.load %arg4[%95, %98] : memref<?x30xf64>
                    %100 = arith.addf %93, %99 : f64
                    %101 = arith.muli %arg12, %c-1 : index
                    %102 = arith.addi %101, %arg11 : index
                    %103 = arith.addi %102, %c-1 : index
                    %104 = arith.muli %arg11, %c-1 : index
                    %105 = arith.addi %104, %arg13 : index
                    %106 = arith.addi %105, %c-1 : index
                    %107 = memref.load %arg4[%103, %106] : memref<?x30xf64>
                    %108 = arith.subf %100, %107 : f64
                    %109 = arith.mulf %108, %cst : f64
                    %110 = arith.subf %79, %109 : f64
                    %111 = arith.muli %arg12, %c-1 : index
                    %112 = arith.addi %111, %arg11 : index
                    %113 = arith.addi %112, %c-1 : index
                    %114 = arith.muli %arg11, %c-1 : index
                    %115 = arith.addi %114, %arg13 : index
                    %116 = arith.addi %115, %c-1 : index
                    memref.store %110, %arg5[%113, %116] : memref<?x30xf64>
                  }
                }
              }
            }
            %3 = arith.addi %arg10, %c-1 : index
            %4 = arith.cmpi eq, %3, %c0 : index
            scf.if %4 {
              scf.for %arg11 = %c13 to %c20 step %c1 {
                %5 = arith.addi %arg11, %c20 : index
                scf.for %arg12 = %c32 to %5 step %c1 {
                  %6 = arith.cmpi eq, %arg9, %c0 : index
                  scf.if %6 {
                    %14 = arith.muli %arg12, %c-1 : index
                    %15 = arith.addi %14, %arg11 : index
                    %16 = memref.load %arg4[%15, %c0] : memref<?x30xf64>
                    %17 = arith.muli %arg12, %c-1 : index
                    %18 = arith.addi %17, %arg11 : index
                    %19 = memref.load %arg5[%18, %c0] : memref<?x30xf64>
                    %20 = arith.muli %arg12, %c-1 : index
                    %21 = arith.addi %20, %arg11 : index
                    %22 = arith.addi %21, %c-1 : index
                    %23 = memref.load %arg5[%22, %c0] : memref<?x30xf64>
                    %24 = arith.subf %19, %23 : f64
                    %25 = arith.mulf %24, %cst_0 : f64
                    %26 = arith.subf %16, %25 : f64
                    %27 = arith.muli %arg12, %c-1 : index
                    %28 = arith.addi %27, %arg11 : index
                    memref.store %26, %arg4[%28, %c0] : memref<?x30xf64>
                  }
                  %7 = arith.muli %arg9, %c32 : index
                  %8 = arith.addi %arg11, %c1 : index
                  %9 = arith.maxsi %7, %8 : index
                  %10 = arith.muli %arg9, %c32 : index
                  %11 = arith.addi %10, %c32 : index
                  %12 = arith.addi %arg11, %c30 : index
                  %13 = arith.minsi %11, %12 : index
                  scf.for %arg13 = %9 to %13 step %c1 {
                    %14 = arith.muli %arg12, %c-1 : index
                    %15 = arith.addi %14, %arg11 : index
                    %16 = arith.muli %arg11, %c-1 : index
                    %17 = arith.addi %16, %arg13 : index
                    %18 = memref.load %arg4[%15, %17] : memref<?x30xf64>
                    %19 = arith.muli %arg12, %c-1 : index
                    %20 = arith.addi %19, %arg11 : index
                    %21 = arith.muli %arg11, %c-1 : index
                    %22 = arith.addi %21, %arg13 : index
                    %23 = memref.load %arg5[%20, %22] : memref<?x30xf64>
                    %24 = arith.muli %arg12, %c-1 : index
                    %25 = arith.addi %24, %arg11 : index
                    %26 = arith.addi %25, %c-1 : index
                    %27 = arith.muli %arg11, %c-1 : index
                    %28 = arith.addi %27, %arg13 : index
                    %29 = memref.load %arg5[%26, %28] : memref<?x30xf64>
                    %30 = arith.subf %23, %29 : f64
                    %31 = arith.mulf %30, %cst_0 : f64
                    %32 = arith.subf %18, %31 : f64
                    %33 = arith.muli %arg12, %c-1 : index
                    %34 = arith.addi %33, %arg11 : index
                    %35 = arith.muli %arg11, %c-1 : index
                    %36 = arith.addi %35, %arg13 : index
                    memref.store %32, %arg4[%34, %36] : memref<?x30xf64>
                    %37 = arith.muli %arg12, %c-1 : index
                    %38 = arith.addi %37, %arg11 : index
                    %39 = arith.muli %arg11, %c-1 : index
                    %40 = arith.addi %39, %arg13 : index
                    %41 = memref.load %arg3[%38, %40] : memref<?x30xf64>
                    %42 = arith.muli %arg12, %c-1 : index
                    %43 = arith.addi %42, %arg11 : index
                    %44 = arith.muli %arg11, %c-1 : index
                    %45 = arith.addi %44, %arg13 : index
                    %46 = memref.load %arg5[%43, %45] : memref<?x30xf64>
                    %47 = arith.muli %arg12, %c-1 : index
                    %48 = arith.addi %47, %arg11 : index
                    %49 = arith.muli %arg11, %c-1 : index
                    %50 = arith.addi %49, %arg13 : index
                    %51 = arith.addi %50, %c-1 : index
                    %52 = memref.load %arg5[%48, %51] : memref<?x30xf64>
                    %53 = arith.subf %46, %52 : f64
                    %54 = arith.mulf %53, %cst_0 : f64
                    %55 = arith.subf %41, %54 : f64
                    %56 = arith.muli %arg12, %c-1 : index
                    %57 = arith.addi %56, %arg11 : index
                    %58 = arith.muli %arg11, %c-1 : index
                    %59 = arith.addi %58, %arg13 : index
                    memref.store %55, %arg3[%57, %59] : memref<?x30xf64>
                    %60 = arith.muli %arg12, %c-1 : index
                    %61 = arith.addi %60, %arg11 : index
                    %62 = arith.addi %61, %c-1 : index
                    %63 = arith.muli %arg11, %c-1 : index
                    %64 = arith.addi %63, %arg13 : index
                    %65 = arith.addi %64, %c-1 : index
                    %66 = memref.load %arg5[%62, %65] : memref<?x30xf64>
                    %67 = arith.muli %arg12, %c-1 : index
                    %68 = arith.addi %67, %arg11 : index
                    %69 = arith.addi %68, %c-1 : index
                    %70 = arith.muli %arg11, %c-1 : index
                    %71 = arith.addi %70, %arg13 : index
                    %72 = memref.load %arg3[%69, %71] : memref<?x30xf64>
                    %73 = arith.muli %arg12, %c-1 : index
                    %74 = arith.addi %73, %arg11 : index
                    %75 = arith.addi %74, %c-1 : index
                    %76 = arith.muli %arg11, %c-1 : index
                    %77 = arith.addi %76, %arg13 : index
                    %78 = arith.addi %77, %c-1 : index
                    %79 = memref.load %arg3[%75, %78] : memref<?x30xf64>
                    %80 = arith.subf %72, %79 : f64
                    %81 = arith.muli %arg12, %c-1 : index
                    %82 = arith.addi %81, %arg11 : index
                    %83 = arith.muli %arg11, %c-1 : index
                    %84 = arith.addi %83, %arg13 : index
                    %85 = arith.addi %84, %c-1 : index
                    %86 = memref.load %arg4[%82, %85] : memref<?x30xf64>
                    %87 = arith.addf %80, %86 : f64
                    %88 = arith.muli %arg12, %c-1 : index
                    %89 = arith.addi %88, %arg11 : index
                    %90 = arith.addi %89, %c-1 : index
                    %91 = arith.muli %arg11, %c-1 : index
                    %92 = arith.addi %91, %arg13 : index
                    %93 = arith.addi %92, %c-1 : index
                    %94 = memref.load %arg4[%90, %93] : memref<?x30xf64>
                    %95 = arith.subf %87, %94 : f64
                    %96 = arith.mulf %95, %cst : f64
                    %97 = arith.subf %66, %96 : f64
                    %98 = arith.muli %arg12, %c-1 : index
                    %99 = arith.addi %98, %arg11 : index
                    %100 = arith.addi %99, %c-1 : index
                    %101 = arith.muli %arg11, %c-1 : index
                    %102 = arith.addi %101, %arg13 : index
                    %103 = arith.addi %102, %c-1 : index
                    memref.store %97, %arg5[%100, %103] : memref<?x30xf64>
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

