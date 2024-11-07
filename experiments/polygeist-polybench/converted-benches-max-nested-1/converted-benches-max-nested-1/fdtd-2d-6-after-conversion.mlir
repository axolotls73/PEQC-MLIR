module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
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
              %19 = memref.load %arg6[%arg9] : memref<?xf64>
              memref.store %19, %arg4[%c0, %c0] : memref<?x30xf64>
            }
            %7 = arith.muli %arg7, %c32 : index
            %8 = arith.addi %arg9, %c1 : index
            %9 = arith.maxsi %7, %8 : index
            %10 = arith.muli %arg7, %c32 : index
            %11 = arith.addi %10, %c32 : index
            %12 = arith.addi %arg9, %c30 : index
            %13 = arith.minsi %11, %12 : index
            %14 = async.create_group %c42 : !async.group
            %15 = scf.for %arg10 = %9 to %13 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token = async.execute {
                %21 = memref.load %arg6[%arg9] : memref<?xf64>
                %22 = arith.muli %arg9, %c-1 : index
                %23 = arith.addi %22, %arg10 : index
                memref.store %21, %arg4[%c0, %23] : memref<?x30xf64>
                %24 = arith.muli %arg9, %c-1 : index
                %25 = arith.addi %24, %arg10 : index
                %26 = memref.load %arg3[%c0, %25] : memref<?x30xf64>
                %27 = arith.muli %arg9, %c-1 : index
                %28 = arith.addi %27, %arg10 : index
                %29 = memref.load %arg5[%c0, %28] : memref<?x30xf64>
                %30 = arith.muli %arg9, %c-1 : index
                %31 = arith.addi %30, %arg10 : index
                %32 = arith.addi %31, %c-1 : index
                %33 = memref.load %arg5[%c0, %32] : memref<?x30xf64>
                %34 = arith.subf %29, %33 : f64
                %35 = arith.mulf %34, %cst_0 : f64
                %36 = arith.subf %26, %35 : f64
                %37 = arith.muli %arg9, %c-1 : index
                %38 = arith.addi %37, %arg10 : index
                memref.store %36, %arg3[%c0, %38] : memref<?x30xf64>
                async.yield
              }
              %19 = async.add_to_group %token, %14 : !async.token
              %20 = arith.addi %arg11, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %14
            %16 = arith.addi %arg9, %c1 : index
            %17 = arith.addi %arg9, %c20 : index
            %18 = arith.minsi %17, %c32 : index
            scf.for %arg10 = %16 to %18 step %c1 {
              %19 = arith.cmpi eq, %arg7, %c0 : index
              scf.if %19 {
                %27 = arith.muli %arg10, %c-1 : index
                %28 = arith.addi %27, %arg9 : index
                %29 = memref.load %arg4[%28, %c0] : memref<?x30xf64>
                %30 = arith.muli %arg10, %c-1 : index
                %31 = arith.addi %30, %arg9 : index
                %32 = memref.load %arg5[%31, %c0] : memref<?x30xf64>
                %33 = arith.muli %arg10, %c-1 : index
                %34 = arith.addi %33, %arg9 : index
                %35 = arith.addi %34, %c-1 : index
                %36 = memref.load %arg5[%35, %c0] : memref<?x30xf64>
                %37 = arith.subf %32, %36 : f64
                %38 = arith.mulf %37, %cst_0 : f64
                %39 = arith.subf %29, %38 : f64
                %40 = arith.muli %arg10, %c-1 : index
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
                %27 = arith.muli %arg10, %c-1 : index
                %28 = arith.addi %27, %arg9 : index
                %29 = arith.muli %arg9, %c-1 : index
                %30 = arith.addi %29, %arg11 : index
                %31 = memref.load %arg4[%28, %30] : memref<?x30xf64>
                %32 = arith.muli %arg10, %c-1 : index
                %33 = arith.addi %32, %arg9 : index
                %34 = arith.muli %arg9, %c-1 : index
                %35 = arith.addi %34, %arg11 : index
                %36 = memref.load %arg5[%33, %35] : memref<?x30xf64>
                %37 = arith.muli %arg10, %c-1 : index
                %38 = arith.addi %37, %arg9 : index
                %39 = arith.addi %38, %c-1 : index
                %40 = arith.muli %arg9, %c-1 : index
                %41 = arith.addi %40, %arg11 : index
                %42 = memref.load %arg5[%39, %41] : memref<?x30xf64>
                %43 = arith.subf %36, %42 : f64
                %44 = arith.mulf %43, %cst_0 : f64
                %45 = arith.subf %31, %44 : f64
                %46 = arith.muli %arg10, %c-1 : index
                %47 = arith.addi %46, %arg9 : index
                %48 = arith.muli %arg9, %c-1 : index
                %49 = arith.addi %48, %arg11 : index
                memref.store %45, %arg4[%47, %49] : memref<?x30xf64>
                %50 = arith.muli %arg10, %c-1 : index
                %51 = arith.addi %50, %arg9 : index
                %52 = arith.muli %arg9, %c-1 : index
                %53 = arith.addi %52, %arg11 : index
                %54 = memref.load %arg3[%51, %53] : memref<?x30xf64>
                %55 = arith.muli %arg10, %c-1 : index
                %56 = arith.addi %55, %arg9 : index
                %57 = arith.muli %arg9, %c-1 : index
                %58 = arith.addi %57, %arg11 : index
                %59 = memref.load %arg5[%56, %58] : memref<?x30xf64>
                %60 = arith.muli %arg10, %c-1 : index
                %61 = arith.addi %60, %arg9 : index
                %62 = arith.muli %arg9, %c-1 : index
                %63 = arith.addi %62, %arg11 : index
                %64 = arith.addi %63, %c-1 : index
                %65 = memref.load %arg5[%61, %64] : memref<?x30xf64>
                %66 = arith.subf %59, %65 : f64
                %67 = arith.mulf %66, %cst_0 : f64
                %68 = arith.subf %54, %67 : f64
                %69 = arith.muli %arg10, %c-1 : index
                %70 = arith.addi %69, %arg9 : index
                %71 = arith.muli %arg9, %c-1 : index
                %72 = arith.addi %71, %arg11 : index
                memref.store %68, %arg3[%70, %72] : memref<?x30xf64>
                %73 = arith.muli %arg10, %c-1 : index
                %74 = arith.addi %73, %arg9 : index
                %75 = arith.addi %74, %c-1 : index
                %76 = arith.muli %arg9, %c-1 : index
                %77 = arith.addi %76, %arg11 : index
                %78 = arith.addi %77, %c-1 : index
                %79 = memref.load %arg5[%75, %78] : memref<?x30xf64>
                %80 = arith.muli %arg10, %c-1 : index
                %81 = arith.addi %80, %arg9 : index
                %82 = arith.addi %81, %c-1 : index
                %83 = arith.muli %arg9, %c-1 : index
                %84 = arith.addi %83, %arg11 : index
                %85 = memref.load %arg3[%82, %84] : memref<?x30xf64>
                %86 = arith.muli %arg10, %c-1 : index
                %87 = arith.addi %86, %arg9 : index
                %88 = arith.addi %87, %c-1 : index
                %89 = arith.muli %arg9, %c-1 : index
                %90 = arith.addi %89, %arg11 : index
                %91 = arith.addi %90, %c-1 : index
                %92 = memref.load %arg3[%88, %91] : memref<?x30xf64>
                %93 = arith.subf %85, %92 : f64
                %94 = arith.muli %arg10, %c-1 : index
                %95 = arith.addi %94, %arg9 : index
                %96 = arith.muli %arg9, %c-1 : index
                %97 = arith.addi %96, %arg11 : index
                %98 = arith.addi %97, %c-1 : index
                %99 = memref.load %arg4[%95, %98] : memref<?x30xf64>
                %100 = arith.addf %93, %99 : f64
                %101 = arith.muli %arg10, %c-1 : index
                %102 = arith.addi %101, %arg9 : index
                %103 = arith.addi %102, %c-1 : index
                %104 = arith.muli %arg9, %c-1 : index
                %105 = arith.addi %104, %arg11 : index
                %106 = arith.addi %105, %c-1 : index
                %107 = memref.load %arg4[%103, %106] : memref<?x30xf64>
                %108 = arith.subf %100, %107 : f64
                %109 = arith.mulf %108, %cst : f64
                %110 = arith.subf %79, %109 : f64
                %111 = arith.muli %arg10, %c-1 : index
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

