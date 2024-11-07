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
        %0 = arith.cmpi eq, %arg8, %c0 : index
        scf.if %0 {
          %3 = arith.muli %arg7, %c32 : index
          %4 = arith.addi %3, %c-29 : index
          %5 = arith.maxsi %4, %c0 : index
          scf.for %arg9 = %5 to %c20 step %c1 {
            %6 = arith.cmpi eq, %arg7, %c0 : index
            scf.if %6 {
              %17 = memref.load %arg6[%arg9] : memref<?xf64>
              memref.store %17, %arg4[%c0, %c0] : memref<?x30xf64>
            }
            %7 = arith.muli %arg7, %c32 : index
            %8 = arith.addi %arg9, %c1 : index
            %9 = arith.maxsi %7, %8 : index
            %10 = arith.muli %arg7, %c32 : index
            %11 = arith.addi %10, %c32 : index
            %12 = arith.addi %arg9, %c30 : index
            %13 = arith.minsi %11, %12 : index
            scf.for %arg10 = %9 to %13 step %c1 {
              %17 = memref.load %arg6[%arg9] : memref<?xf64>
              %18 = arith.muli %arg9, %c-1 : index
              %19 = arith.addi %18, %arg10 : index
              memref.store %17, %arg4[%c0, %19] : memref<?x30xf64>
              %20 = arith.muli %arg9, %c-1 : index
              %21 = arith.addi %20, %arg10 : index
              %22 = memref.load %arg3[%c0, %21] : memref<?x30xf64>
              %23 = arith.muli %arg9, %c-1 : index
              %24 = arith.addi %23, %arg10 : index
              %25 = memref.load %arg5[%c0, %24] : memref<?x30xf64>
              %26 = arith.muli %arg9, %c-1 : index
              %27 = arith.addi %26, %arg10 : index
              %28 = arith.addi %27, %c-1 : index
              %29 = memref.load %arg5[%c0, %28] : memref<?x30xf64>
              %30 = arith.subf %25, %29 : f64
              %31 = arith.mulf %30, %cst_0 : f64
              %32 = arith.subf %22, %31 : f64
              %33 = arith.muli %arg9, %c-1 : index
              %34 = arith.addi %33, %arg10 : index
              memref.store %32, %arg3[%c0, %34] : memref<?x30xf64>
            }
            %14 = arith.muli %arg9, %c-1 : index
            %15 = arith.addi %14, %c31 : index
            %16 = arith.minsi %15, %c19 : index
            scf.for %arg10 = %c0 to %16 step %c1 {
              %17 = arith.addi %arg9, %arg10 : index
              %18 = arith.addi %17, %c1 : index
              %19 = arith.cmpi eq, %arg7, %c0 : index
              scf.if %19 {
                %27 = arith.muli %18, %c-1 : index
                %28 = arith.addi %27, %arg9 : index
                %29 = memref.load %arg4[%28, %c0] : memref<?x30xf64>
                %30 = arith.muli %18, %c-1 : index
                %31 = arith.addi %30, %arg9 : index
                %32 = memref.load %arg5[%31, %c0] : memref<?x30xf64>
                %33 = arith.muli %18, %c-1 : index
                %34 = arith.addi %33, %arg9 : index
                %35 = arith.addi %34, %c-1 : index
                %36 = memref.load %arg5[%35, %c0] : memref<?x30xf64>
                %37 = arith.subf %32, %36 : f64
                %38 = arith.mulf %37, %cst_0 : f64
                %39 = arith.subf %29, %38 : f64
                %40 = arith.muli %18, %c-1 : index
                %41 = arith.addi %40, %arg9 : index
                memref.store %39, %arg4[%41, %c0] : memref<?x30xf64>
              }
              %20 = arith.muli %arg7, %c32 : index
              %21 = arith.addi %arg9, %c1 : index
              %22 = arith.maxsi %20, %21 : index
              %23 = arith.muli %arg7, %c32 : index
              %24 = arith.addi %23, %c32 : index
              %25 = arith.addi %arg9, %c30 : index
              %26 = arith.minsi %24, %25 : index
              scf.for %arg11 = %22 to %26 step %c1 {
                %27 = arith.muli %18, %c-1 : index
                %28 = arith.addi %27, %arg9 : index
                %29 = arith.muli %arg9, %c-1 : index
                %30 = arith.addi %29, %arg11 : index
                %31 = memref.load %arg4[%28, %30] : memref<?x30xf64>
                %32 = arith.muli %18, %c-1 : index
                %33 = arith.addi %32, %arg9 : index
                %34 = arith.muli %arg9, %c-1 : index
                %35 = arith.addi %34, %arg11 : index
                %36 = memref.load %arg5[%33, %35] : memref<?x30xf64>
                %37 = arith.muli %18, %c-1 : index
                %38 = arith.addi %37, %arg9 : index
                %39 = arith.addi %38, %c-1 : index
                %40 = arith.muli %arg9, %c-1 : index
                %41 = arith.addi %40, %arg11 : index
                %42 = memref.load %arg5[%39, %41] : memref<?x30xf64>
                %43 = arith.subf %36, %42 : f64
                %44 = arith.mulf %43, %cst_0 : f64
                %45 = arith.subf %31, %44 : f64
                %46 = arith.muli %18, %c-1 : index
                %47 = arith.addi %46, %arg9 : index
                %48 = arith.muli %arg9, %c-1 : index
                %49 = arith.addi %48, %arg11 : index
                memref.store %45, %arg4[%47, %49] : memref<?x30xf64>
                %50 = arith.muli %18, %c-1 : index
                %51 = arith.addi %50, %arg9 : index
                %52 = arith.muli %arg9, %c-1 : index
                %53 = arith.addi %52, %arg11 : index
                %54 = memref.load %arg3[%51, %53] : memref<?x30xf64>
                %55 = arith.muli %18, %c-1 : index
                %56 = arith.addi %55, %arg9 : index
                %57 = arith.muli %arg9, %c-1 : index
                %58 = arith.addi %57, %arg11 : index
                %59 = memref.load %arg5[%56, %58] : memref<?x30xf64>
                %60 = arith.muli %18, %c-1 : index
                %61 = arith.addi %60, %arg9 : index
                %62 = arith.muli %arg9, %c-1 : index
                %63 = arith.addi %62, %arg11 : index
                %64 = arith.addi %63, %c-1 : index
                %65 = memref.load %arg5[%61, %64] : memref<?x30xf64>
                %66 = arith.subf %59, %65 : f64
                %67 = arith.mulf %66, %cst_0 : f64
                %68 = arith.subf %54, %67 : f64
                %69 = arith.muli %18, %c-1 : index
                %70 = arith.addi %69, %arg9 : index
                %71 = arith.muli %arg9, %c-1 : index
                %72 = arith.addi %71, %arg11 : index
                memref.store %68, %arg3[%70, %72] : memref<?x30xf64>
                %73 = arith.muli %18, %c-1 : index
                %74 = arith.addi %73, %arg9 : index
                %75 = arith.addi %74, %c-1 : index
                %76 = arith.muli %arg9, %c-1 : index
                %77 = arith.addi %76, %arg11 : index
                %78 = arith.addi %77, %c-1 : index
                %79 = memref.load %arg5[%75, %78] : memref<?x30xf64>
                %80 = arith.muli %18, %c-1 : index
                %81 = arith.addi %80, %arg9 : index
                %82 = arith.addi %81, %c-1 : index
                %83 = arith.muli %arg9, %c-1 : index
                %84 = arith.addi %83, %arg11 : index
                %85 = memref.load %arg3[%82, %84] : memref<?x30xf64>
                %86 = arith.muli %18, %c-1 : index
                %87 = arith.addi %86, %arg9 : index
                %88 = arith.addi %87, %c-1 : index
                %89 = arith.muli %arg9, %c-1 : index
                %90 = arith.addi %89, %arg11 : index
                %91 = arith.addi %90, %c-1 : index
                %92 = memref.load %arg3[%88, %91] : memref<?x30xf64>
                %93 = arith.subf %85, %92 : f64
                %94 = arith.muli %18, %c-1 : index
                %95 = arith.addi %94, %arg9 : index
                %96 = arith.muli %arg9, %c-1 : index
                %97 = arith.addi %96, %arg11 : index
                %98 = arith.addi %97, %c-1 : index
                %99 = memref.load %arg4[%95, %98] : memref<?x30xf64>
                %100 = arith.addf %93, %99 : f64
                %101 = arith.muli %18, %c-1 : index
                %102 = arith.addi %101, %arg9 : index
                %103 = arith.addi %102, %c-1 : index
                %104 = arith.muli %arg9, %c-1 : index
                %105 = arith.addi %104, %arg11 : index
                %106 = arith.addi %105, %c-1 : index
                %107 = memref.load %arg4[%103, %106] : memref<?x30xf64>
                %108 = arith.subf %100, %107 : f64
                %109 = arith.mulf %108, %cst : f64
                %110 = arith.subf %79, %109 : f64
                %111 = arith.muli %18, %c-1 : index
                %112 = arith.addi %111, %arg9 : index
                %113 = arith.addi %112, %c-1 : index
                %114 = arith.muli %arg9, %c-1 : index
                %115 = arith.addi %114, %arg11 : index
                %116 = arith.addi %115, %c-1 : index
                memref.store %110, %arg5[%113, %116] : memref<?x30xf64>
              }
            }
          }
        }
        %1 = arith.addi %arg8, %c-1 : index
        %2 = arith.cmpi eq, %1, %c0 : index
        scf.if %2 {
          scf.for %arg9 = %c0 to %c7 step %c1 {
            %3 = arith.addi %arg9, %c13 : index
            %4 = arith.addi %arg9, %c1 : index
            scf.for %arg10 = %c0 to %4 step %c1 {
              %5 = arith.addi %arg10, %c32 : index
              %6 = arith.cmpi eq, %arg7, %c0 : index
              scf.if %6 {
                %14 = arith.muli %5, %c-1 : index
                %15 = arith.addi %14, %3 : index
                %16 = memref.load %arg4[%15, %c0] : memref<?x30xf64>
                %17 = arith.muli %5, %c-1 : index
                %18 = arith.addi %17, %3 : index
                %19 = memref.load %arg5[%18, %c0] : memref<?x30xf64>
                %20 = arith.muli %5, %c-1 : index
                %21 = arith.addi %20, %3 : index
                %22 = arith.addi %21, %c-1 : index
                %23 = memref.load %arg5[%22, %c0] : memref<?x30xf64>
                %24 = arith.subf %19, %23 : f64
                %25 = arith.mulf %24, %cst_0 : f64
                %26 = arith.subf %16, %25 : f64
                %27 = arith.muli %5, %c-1 : index
                %28 = arith.addi %27, %3 : index
                memref.store %26, %arg4[%28, %c0] : memref<?x30xf64>
              }
              %7 = arith.muli %arg7, %c32 : index
              %8 = arith.addi %arg9, %c14 : index
              %9 = arith.maxsi %7, %8 : index
              %10 = arith.muli %arg7, %c32 : index
              %11 = arith.addi %10, %c32 : index
              %12 = arith.addi %arg9, %c43 : index
              %13 = arith.minsi %11, %12 : index
              scf.for %arg11 = %9 to %13 step %c1 {
                %14 = arith.muli %5, %c-1 : index
                %15 = arith.addi %14, %3 : index
                %16 = arith.muli %3, %c-1 : index
                %17 = arith.addi %16, %arg11 : index
                %18 = memref.load %arg4[%15, %17] : memref<?x30xf64>
                %19 = arith.muli %5, %c-1 : index
                %20 = arith.addi %19, %3 : index
                %21 = arith.muli %3, %c-1 : index
                %22 = arith.addi %21, %arg11 : index
                %23 = memref.load %arg5[%20, %22] : memref<?x30xf64>
                %24 = arith.muli %5, %c-1 : index
                %25 = arith.addi %24, %3 : index
                %26 = arith.addi %25, %c-1 : index
                %27 = arith.muli %3, %c-1 : index
                %28 = arith.addi %27, %arg11 : index
                %29 = memref.load %arg5[%26, %28] : memref<?x30xf64>
                %30 = arith.subf %23, %29 : f64
                %31 = arith.mulf %30, %cst_0 : f64
                %32 = arith.subf %18, %31 : f64
                %33 = arith.muli %5, %c-1 : index
                %34 = arith.addi %33, %3 : index
                %35 = arith.muli %3, %c-1 : index
                %36 = arith.addi %35, %arg11 : index
                memref.store %32, %arg4[%34, %36] : memref<?x30xf64>
                %37 = arith.muli %5, %c-1 : index
                %38 = arith.addi %37, %3 : index
                %39 = arith.muli %3, %c-1 : index
                %40 = arith.addi %39, %arg11 : index
                %41 = memref.load %arg3[%38, %40] : memref<?x30xf64>
                %42 = arith.muli %5, %c-1 : index
                %43 = arith.addi %42, %3 : index
                %44 = arith.muli %3, %c-1 : index
                %45 = arith.addi %44, %arg11 : index
                %46 = memref.load %arg5[%43, %45] : memref<?x30xf64>
                %47 = arith.muli %5, %c-1 : index
                %48 = arith.addi %47, %3 : index
                %49 = arith.muli %3, %c-1 : index
                %50 = arith.addi %49, %arg11 : index
                %51 = arith.addi %50, %c-1 : index
                %52 = memref.load %arg5[%48, %51] : memref<?x30xf64>
                %53 = arith.subf %46, %52 : f64
                %54 = arith.mulf %53, %cst_0 : f64
                %55 = arith.subf %41, %54 : f64
                %56 = arith.muli %5, %c-1 : index
                %57 = arith.addi %56, %3 : index
                %58 = arith.muli %3, %c-1 : index
                %59 = arith.addi %58, %arg11 : index
                memref.store %55, %arg3[%57, %59] : memref<?x30xf64>
                %60 = arith.muli %5, %c-1 : index
                %61 = arith.addi %60, %3 : index
                %62 = arith.addi %61, %c-1 : index
                %63 = arith.muli %3, %c-1 : index
                %64 = arith.addi %63, %arg11 : index
                %65 = arith.addi %64, %c-1 : index
                %66 = memref.load %arg5[%62, %65] : memref<?x30xf64>
                %67 = arith.muli %5, %c-1 : index
                %68 = arith.addi %67, %3 : index
                %69 = arith.addi %68, %c-1 : index
                %70 = arith.muli %3, %c-1 : index
                %71 = arith.addi %70, %arg11 : index
                %72 = memref.load %arg3[%69, %71] : memref<?x30xf64>
                %73 = arith.muli %5, %c-1 : index
                %74 = arith.addi %73, %3 : index
                %75 = arith.addi %74, %c-1 : index
                %76 = arith.muli %3, %c-1 : index
                %77 = arith.addi %76, %arg11 : index
                %78 = arith.addi %77, %c-1 : index
                %79 = memref.load %arg3[%75, %78] : memref<?x30xf64>
                %80 = arith.subf %72, %79 : f64
                %81 = arith.muli %5, %c-1 : index
                %82 = arith.addi %81, %3 : index
                %83 = arith.muli %3, %c-1 : index
                %84 = arith.addi %83, %arg11 : index
                %85 = arith.addi %84, %c-1 : index
                %86 = memref.load %arg4[%82, %85] : memref<?x30xf64>
                %87 = arith.addf %80, %86 : f64
                %88 = arith.muli %5, %c-1 : index
                %89 = arith.addi %88, %3 : index
                %90 = arith.addi %89, %c-1 : index
                %91 = arith.muli %3, %c-1 : index
                %92 = arith.addi %91, %arg11 : index
                %93 = arith.addi %92, %c-1 : index
                %94 = memref.load %arg4[%90, %93] : memref<?x30xf64>
                %95 = arith.subf %87, %94 : f64
                %96 = arith.mulf %95, %cst : f64
                %97 = arith.subf %66, %96 : f64
                %98 = arith.muli %5, %c-1 : index
                %99 = arith.addi %98, %3 : index
                %100 = arith.addi %99, %c-1 : index
                %101 = arith.muli %3, %c-1 : index
                %102 = arith.addi %101, %arg11 : index
                %103 = arith.addi %102, %c-1 : index
                memref.store %97, %arg5[%100, %103] : memref<?x30xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

