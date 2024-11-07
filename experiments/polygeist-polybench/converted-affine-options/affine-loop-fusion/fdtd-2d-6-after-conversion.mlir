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
            %14 = arith.addi %arg9, %c1 : index
            %15 = arith.addi %arg9, %c20 : index
            %16 = arith.minsi %15, %c32 : index
            scf.for %arg10 = %14 to %16 step %c1 {
              %17 = arith.cmpi eq, %arg7, %c0 : index
              scf.if %17 {
                %25 = arith.muli %arg10, %c-1 : index
                %26 = arith.addi %25, %arg9 : index
                %27 = memref.load %arg4[%26, %c0] : memref<?x30xf64>
                %28 = arith.muli %arg10, %c-1 : index
                %29 = arith.addi %28, %arg9 : index
                %30 = memref.load %arg5[%29, %c0] : memref<?x30xf64>
                %31 = arith.muli %arg10, %c-1 : index
                %32 = arith.addi %31, %arg9 : index
                %33 = arith.addi %32, %c-1 : index
                %34 = memref.load %arg5[%33, %c0] : memref<?x30xf64>
                %35 = arith.subf %30, %34 : f64
                %36 = arith.mulf %35, %cst_0 : f64
                %37 = arith.subf %27, %36 : f64
                %38 = arith.muli %arg10, %c-1 : index
                %39 = arith.addi %38, %arg9 : index
                memref.store %37, %arg4[%39, %c0] : memref<?x30xf64>
              }
              %18 = arith.muli %arg7, %c32 : index
              %19 = arith.addi %arg9, %c1 : index
              %20 = arith.maxsi %18, %19 : index
              %21 = arith.muli %arg7, %c32 : index
              %22 = arith.addi %21, %c32 : index
              %23 = arith.addi %arg9, %c30 : index
              %24 = arith.minsi %22, %23 : index
              scf.for %arg11 = %20 to %24 step %c1 {
                %25 = arith.muli %arg10, %c-1 : index
                %26 = arith.addi %25, %arg9 : index
                %27 = arith.muli %arg9, %c-1 : index
                %28 = arith.addi %27, %arg11 : index
                %29 = memref.load %arg4[%26, %28] : memref<?x30xf64>
                %30 = arith.muli %arg10, %c-1 : index
                %31 = arith.addi %30, %arg9 : index
                %32 = arith.muli %arg9, %c-1 : index
                %33 = arith.addi %32, %arg11 : index
                %34 = memref.load %arg5[%31, %33] : memref<?x30xf64>
                %35 = arith.muli %arg10, %c-1 : index
                %36 = arith.addi %35, %arg9 : index
                %37 = arith.addi %36, %c-1 : index
                %38 = arith.muli %arg9, %c-1 : index
                %39 = arith.addi %38, %arg11 : index
                %40 = memref.load %arg5[%37, %39] : memref<?x30xf64>
                %41 = arith.subf %34, %40 : f64
                %42 = arith.mulf %41, %cst_0 : f64
                %43 = arith.subf %29, %42 : f64
                %44 = arith.muli %arg10, %c-1 : index
                %45 = arith.addi %44, %arg9 : index
                %46 = arith.muli %arg9, %c-1 : index
                %47 = arith.addi %46, %arg11 : index
                memref.store %43, %arg4[%45, %47] : memref<?x30xf64>
                %48 = arith.muli %arg10, %c-1 : index
                %49 = arith.addi %48, %arg9 : index
                %50 = arith.muli %arg9, %c-1 : index
                %51 = arith.addi %50, %arg11 : index
                %52 = memref.load %arg3[%49, %51] : memref<?x30xf64>
                %53 = arith.muli %arg10, %c-1 : index
                %54 = arith.addi %53, %arg9 : index
                %55 = arith.muli %arg9, %c-1 : index
                %56 = arith.addi %55, %arg11 : index
                %57 = memref.load %arg5[%54, %56] : memref<?x30xf64>
                %58 = arith.muli %arg10, %c-1 : index
                %59 = arith.addi %58, %arg9 : index
                %60 = arith.muli %arg9, %c-1 : index
                %61 = arith.addi %60, %arg11 : index
                %62 = arith.addi %61, %c-1 : index
                %63 = memref.load %arg5[%59, %62] : memref<?x30xf64>
                %64 = arith.subf %57, %63 : f64
                %65 = arith.mulf %64, %cst_0 : f64
                %66 = arith.subf %52, %65 : f64
                %67 = arith.muli %arg10, %c-1 : index
                %68 = arith.addi %67, %arg9 : index
                %69 = arith.muli %arg9, %c-1 : index
                %70 = arith.addi %69, %arg11 : index
                memref.store %66, %arg3[%68, %70] : memref<?x30xf64>
                %71 = arith.muli %arg10, %c-1 : index
                %72 = arith.addi %71, %arg9 : index
                %73 = arith.addi %72, %c-1 : index
                %74 = arith.muli %arg9, %c-1 : index
                %75 = arith.addi %74, %arg11 : index
                %76 = arith.addi %75, %c-1 : index
                %77 = memref.load %arg5[%73, %76] : memref<?x30xf64>
                %78 = arith.muli %arg10, %c-1 : index
                %79 = arith.addi %78, %arg9 : index
                %80 = arith.addi %79, %c-1 : index
                %81 = arith.muli %arg9, %c-1 : index
                %82 = arith.addi %81, %arg11 : index
                %83 = memref.load %arg3[%80, %82] : memref<?x30xf64>
                %84 = arith.muli %arg10, %c-1 : index
                %85 = arith.addi %84, %arg9 : index
                %86 = arith.addi %85, %c-1 : index
                %87 = arith.muli %arg9, %c-1 : index
                %88 = arith.addi %87, %arg11 : index
                %89 = arith.addi %88, %c-1 : index
                %90 = memref.load %arg3[%86, %89] : memref<?x30xf64>
                %91 = arith.subf %83, %90 : f64
                %92 = arith.muli %arg10, %c-1 : index
                %93 = arith.addi %92, %arg9 : index
                %94 = arith.muli %arg9, %c-1 : index
                %95 = arith.addi %94, %arg11 : index
                %96 = arith.addi %95, %c-1 : index
                %97 = memref.load %arg4[%93, %96] : memref<?x30xf64>
                %98 = arith.addf %91, %97 : f64
                %99 = arith.muli %arg10, %c-1 : index
                %100 = arith.addi %99, %arg9 : index
                %101 = arith.addi %100, %c-1 : index
                %102 = arith.muli %arg9, %c-1 : index
                %103 = arith.addi %102, %arg11 : index
                %104 = arith.addi %103, %c-1 : index
                %105 = memref.load %arg4[%101, %104] : memref<?x30xf64>
                %106 = arith.subf %98, %105 : f64
                %107 = arith.mulf %106, %cst : f64
                %108 = arith.subf %77, %107 : f64
                %109 = arith.muli %arg10, %c-1 : index
                %110 = arith.addi %109, %arg9 : index
                %111 = arith.addi %110, %c-1 : index
                %112 = arith.muli %arg9, %c-1 : index
                %113 = arith.addi %112, %arg11 : index
                %114 = arith.addi %113, %c-1 : index
                memref.store %108, %arg5[%111, %114] : memref<?x30xf64>
              }
            }
          }
        }
        %1 = arith.addi %arg8, %c-1 : index
        %2 = arith.cmpi eq, %1, %c0 : index
        scf.if %2 {
          scf.for %arg9 = %c13 to %c20 step %c1 {
            %3 = arith.addi %arg9, %c20 : index
            scf.for %arg10 = %c32 to %3 step %c1 {
              %4 = arith.cmpi eq, %arg7, %c0 : index
              scf.if %4 {
                %12 = arith.muli %arg10, %c-1 : index
                %13 = arith.addi %12, %arg9 : index
                %14 = memref.load %arg4[%13, %c0] : memref<?x30xf64>
                %15 = arith.muli %arg10, %c-1 : index
                %16 = arith.addi %15, %arg9 : index
                %17 = memref.load %arg5[%16, %c0] : memref<?x30xf64>
                %18 = arith.muli %arg10, %c-1 : index
                %19 = arith.addi %18, %arg9 : index
                %20 = arith.addi %19, %c-1 : index
                %21 = memref.load %arg5[%20, %c0] : memref<?x30xf64>
                %22 = arith.subf %17, %21 : f64
                %23 = arith.mulf %22, %cst_0 : f64
                %24 = arith.subf %14, %23 : f64
                %25 = arith.muli %arg10, %c-1 : index
                %26 = arith.addi %25, %arg9 : index
                memref.store %24, %arg4[%26, %c0] : memref<?x30xf64>
              }
              %5 = arith.muli %arg7, %c32 : index
              %6 = arith.addi %arg9, %c1 : index
              %7 = arith.maxsi %5, %6 : index
              %8 = arith.muli %arg7, %c32 : index
              %9 = arith.addi %8, %c32 : index
              %10 = arith.addi %arg9, %c30 : index
              %11 = arith.minsi %9, %10 : index
              scf.for %arg11 = %7 to %11 step %c1 {
                %12 = arith.muli %arg10, %c-1 : index
                %13 = arith.addi %12, %arg9 : index
                %14 = arith.muli %arg9, %c-1 : index
                %15 = arith.addi %14, %arg11 : index
                %16 = memref.load %arg4[%13, %15] : memref<?x30xf64>
                %17 = arith.muli %arg10, %c-1 : index
                %18 = arith.addi %17, %arg9 : index
                %19 = arith.muli %arg9, %c-1 : index
                %20 = arith.addi %19, %arg11 : index
                %21 = memref.load %arg5[%18, %20] : memref<?x30xf64>
                %22 = arith.muli %arg10, %c-1 : index
                %23 = arith.addi %22, %arg9 : index
                %24 = arith.addi %23, %c-1 : index
                %25 = arith.muli %arg9, %c-1 : index
                %26 = arith.addi %25, %arg11 : index
                %27 = memref.load %arg5[%24, %26] : memref<?x30xf64>
                %28 = arith.subf %21, %27 : f64
                %29 = arith.mulf %28, %cst_0 : f64
                %30 = arith.subf %16, %29 : f64
                %31 = arith.muli %arg10, %c-1 : index
                %32 = arith.addi %31, %arg9 : index
                %33 = arith.muli %arg9, %c-1 : index
                %34 = arith.addi %33, %arg11 : index
                memref.store %30, %arg4[%32, %34] : memref<?x30xf64>
                %35 = arith.muli %arg10, %c-1 : index
                %36 = arith.addi %35, %arg9 : index
                %37 = arith.muli %arg9, %c-1 : index
                %38 = arith.addi %37, %arg11 : index
                %39 = memref.load %arg3[%36, %38] : memref<?x30xf64>
                %40 = arith.muli %arg10, %c-1 : index
                %41 = arith.addi %40, %arg9 : index
                %42 = arith.muli %arg9, %c-1 : index
                %43 = arith.addi %42, %arg11 : index
                %44 = memref.load %arg5[%41, %43] : memref<?x30xf64>
                %45 = arith.muli %arg10, %c-1 : index
                %46 = arith.addi %45, %arg9 : index
                %47 = arith.muli %arg9, %c-1 : index
                %48 = arith.addi %47, %arg11 : index
                %49 = arith.addi %48, %c-1 : index
                %50 = memref.load %arg5[%46, %49] : memref<?x30xf64>
                %51 = arith.subf %44, %50 : f64
                %52 = arith.mulf %51, %cst_0 : f64
                %53 = arith.subf %39, %52 : f64
                %54 = arith.muli %arg10, %c-1 : index
                %55 = arith.addi %54, %arg9 : index
                %56 = arith.muli %arg9, %c-1 : index
                %57 = arith.addi %56, %arg11 : index
                memref.store %53, %arg3[%55, %57] : memref<?x30xf64>
                %58 = arith.muli %arg10, %c-1 : index
                %59 = arith.addi %58, %arg9 : index
                %60 = arith.addi %59, %c-1 : index
                %61 = arith.muli %arg9, %c-1 : index
                %62 = arith.addi %61, %arg11 : index
                %63 = arith.addi %62, %c-1 : index
                %64 = memref.load %arg5[%60, %63] : memref<?x30xf64>
                %65 = arith.muli %arg10, %c-1 : index
                %66 = arith.addi %65, %arg9 : index
                %67 = arith.addi %66, %c-1 : index
                %68 = arith.muli %arg9, %c-1 : index
                %69 = arith.addi %68, %arg11 : index
                %70 = memref.load %arg3[%67, %69] : memref<?x30xf64>
                %71 = arith.muli %arg10, %c-1 : index
                %72 = arith.addi %71, %arg9 : index
                %73 = arith.addi %72, %c-1 : index
                %74 = arith.muli %arg9, %c-1 : index
                %75 = arith.addi %74, %arg11 : index
                %76 = arith.addi %75, %c-1 : index
                %77 = memref.load %arg3[%73, %76] : memref<?x30xf64>
                %78 = arith.subf %70, %77 : f64
                %79 = arith.muli %arg10, %c-1 : index
                %80 = arith.addi %79, %arg9 : index
                %81 = arith.muli %arg9, %c-1 : index
                %82 = arith.addi %81, %arg11 : index
                %83 = arith.addi %82, %c-1 : index
                %84 = memref.load %arg4[%80, %83] : memref<?x30xf64>
                %85 = arith.addf %78, %84 : f64
                %86 = arith.muli %arg10, %c-1 : index
                %87 = arith.addi %86, %arg9 : index
                %88 = arith.addi %87, %c-1 : index
                %89 = arith.muli %arg9, %c-1 : index
                %90 = arith.addi %89, %arg11 : index
                %91 = arith.addi %90, %c-1 : index
                %92 = memref.load %arg4[%88, %91] : memref<?x30xf64>
                %93 = arith.subf %85, %92 : f64
                %94 = arith.mulf %93, %cst : f64
                %95 = arith.subf %64, %94 : f64
                %96 = arith.muli %arg10, %c-1 : index
                %97 = arith.addi %96, %arg9 : index
                %98 = arith.addi %97, %c-1 : index
                %99 = arith.muli %arg9, %c-1 : index
                %100 = arith.addi %99, %arg11 : index
                %101 = arith.addi %100, %c-1 : index
                memref.store %95, %arg5[%98, %101] : memref<?x30xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

