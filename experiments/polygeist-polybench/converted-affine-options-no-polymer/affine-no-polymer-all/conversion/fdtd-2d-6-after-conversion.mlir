module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %4 = arith.addi %arg7, %arg8 : index
          %5 = memref.load %arg6[%4] : memref<?xf64>
          %6 = memref.load %arg6[%4] : memref<?xf64>
          %7 = memref.load %arg6[%4] : memref<?xf64>
          %8 = memref.load %arg6[%4] : memref<?xf64>
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %10 = arith.muli %arg10, %c4 : index
            memref.store %5, %arg4[%c0, %10] : memref<?x30xf64>
            %11 = arith.addi %10, %c1 : index
            memref.store %6, %arg4[%c0, %11] : memref<?x30xf64>
            %12 = arith.addi %10, %c2 : index
            memref.store %7, %arg4[%c0, %12] : memref<?x30xf64>
            %13 = arith.addi %10, %c3 : index
            memref.store %8, %arg4[%c0, %13] : memref<?x30xf64>
          }
          %9 = memref.load %arg6[%4] : memref<?xf64>
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %10 = arith.addi %arg10, %c28 : index
            memref.store %9, %arg4[%c0, %10] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c19 step %c1 {
            %10 = arith.addi %arg10, %c1 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %11 = arith.muli %arg11, %c4 : index
              %12 = memref.load %arg4[%10, %11] : memref<?x30xf64>
              %13 = memref.load %arg5[%10, %11] : memref<?x30xf64>
              %14 = arith.addi %10, %c-1 : index
              %15 = memref.load %arg5[%14, %11] : memref<?x30xf64>
              %16 = arith.subf %13, %15 : f64
              %17 = arith.mulf %16, %cst_0 : f64
              %18 = arith.subf %12, %17 : f64
              memref.store %18, %arg4[%10, %11] : memref<?x30xf64>
              %19 = arith.addi %11, %c1 : index
              %20 = memref.load %arg4[%10, %19] : memref<?x30xf64>
              %21 = memref.load %arg5[%10, %19] : memref<?x30xf64>
              %22 = arith.addi %10, %c-1 : index
              %23 = memref.load %arg5[%22, %19] : memref<?x30xf64>
              %24 = arith.subf %21, %23 : f64
              %25 = arith.mulf %24, %cst_0 : f64
              %26 = arith.subf %20, %25 : f64
              memref.store %26, %arg4[%10, %19] : memref<?x30xf64>
              %27 = arith.addi %11, %c2 : index
              %28 = memref.load %arg4[%10, %27] : memref<?x30xf64>
              %29 = memref.load %arg5[%10, %27] : memref<?x30xf64>
              %30 = arith.addi %10, %c-1 : index
              %31 = memref.load %arg5[%30, %27] : memref<?x30xf64>
              %32 = arith.subf %29, %31 : f64
              %33 = arith.mulf %32, %cst_0 : f64
              %34 = arith.subf %28, %33 : f64
              memref.store %34, %arg4[%10, %27] : memref<?x30xf64>
              %35 = arith.addi %11, %c3 : index
              %36 = memref.load %arg4[%10, %35] : memref<?x30xf64>
              %37 = memref.load %arg5[%10, %35] : memref<?x30xf64>
              %38 = arith.addi %10, %c-1 : index
              %39 = memref.load %arg5[%38, %35] : memref<?x30xf64>
              %40 = arith.subf %37, %39 : f64
              %41 = arith.mulf %40, %cst_0 : f64
              %42 = arith.subf %36, %41 : f64
              memref.store %42, %arg4[%10, %35] : memref<?x30xf64>
            }
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %11 = arith.addi %arg11, %c28 : index
              %12 = memref.load %arg4[%10, %11] : memref<?x30xf64>
              %13 = memref.load %arg5[%10, %11] : memref<?x30xf64>
              %14 = arith.addi %10, %c-1 : index
              %15 = memref.load %arg5[%14, %11] : memref<?x30xf64>
              %16 = arith.subf %13, %15 : f64
              %17 = arith.mulf %16, %cst_0 : f64
              %18 = arith.subf %12, %17 : f64
              memref.store %18, %arg4[%10, %11] : memref<?x30xf64>
            }
          }
          scf.for %arg10 = %c0 to %c20 step %c1 {
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %16 = arith.muli %arg11, %c4 : index
              %17 = arith.addi %16, %c1 : index
              %18 = memref.load %arg3[%arg10, %17] : memref<?x30xf64>
              %19 = memref.load %arg5[%arg10, %17] : memref<?x30xf64>
              %20 = arith.addi %17, %c-1 : index
              %21 = memref.load %arg5[%arg10, %20] : memref<?x30xf64>
              %22 = arith.subf %19, %21 : f64
              %23 = arith.mulf %22, %cst_0 : f64
              %24 = arith.subf %18, %23 : f64
              memref.store %24, %arg3[%arg10, %17] : memref<?x30xf64>
              %25 = arith.addi %17, %c1 : index
              %26 = memref.load %arg3[%arg10, %25] : memref<?x30xf64>
              %27 = memref.load %arg5[%arg10, %25] : memref<?x30xf64>
              %28 = arith.addi %25, %c-1 : index
              %29 = memref.load %arg5[%arg10, %28] : memref<?x30xf64>
              %30 = arith.subf %27, %29 : f64
              %31 = arith.mulf %30, %cst_0 : f64
              %32 = arith.subf %26, %31 : f64
              memref.store %32, %arg3[%arg10, %25] : memref<?x30xf64>
              %33 = arith.addi %17, %c2 : index
              %34 = memref.load %arg3[%arg10, %33] : memref<?x30xf64>
              %35 = memref.load %arg5[%arg10, %33] : memref<?x30xf64>
              %36 = arith.addi %33, %c-1 : index
              %37 = memref.load %arg5[%arg10, %36] : memref<?x30xf64>
              %38 = arith.subf %35, %37 : f64
              %39 = arith.mulf %38, %cst_0 : f64
              %40 = arith.subf %34, %39 : f64
              memref.store %40, %arg3[%arg10, %33] : memref<?x30xf64>
              %41 = arith.addi %17, %c3 : index
              %42 = memref.load %arg3[%arg10, %41] : memref<?x30xf64>
              %43 = memref.load %arg5[%arg10, %41] : memref<?x30xf64>
              %44 = arith.addi %41, %c-1 : index
              %45 = memref.load %arg5[%arg10, %44] : memref<?x30xf64>
              %46 = arith.subf %43, %45 : f64
              %47 = arith.mulf %46, %cst_0 : f64
              %48 = arith.subf %42, %47 : f64
              memref.store %48, %arg3[%arg10, %41] : memref<?x30xf64>
            }
            %10 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
            %11 = memref.load %arg5[%arg10, %c29] : memref<?x30xf64>
            %12 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
            %13 = arith.subf %11, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %10, %14 : f64
            memref.store %15, %arg3[%arg10, %c29] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c19 step %c1 {
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %21 = arith.muli %arg11, %c4 : index
              %22 = memref.load %arg5[%arg10, %21] : memref<?x30xf64>
              %23 = arith.addi %21, %c1 : index
              %24 = memref.load %arg3[%arg10, %23] : memref<?x30xf64>
              %25 = memref.load %arg3[%arg10, %21] : memref<?x30xf64>
              %26 = arith.subf %24, %25 : f64
              %27 = arith.addi %arg10, %c1 : index
              %28 = memref.load %arg4[%27, %21] : memref<?x30xf64>
              %29 = arith.addf %26, %28 : f64
              %30 = memref.load %arg4[%arg10, %21] : memref<?x30xf64>
              %31 = arith.subf %29, %30 : f64
              %32 = arith.mulf %31, %cst : f64
              %33 = arith.subf %22, %32 : f64
              memref.store %33, %arg5[%arg10, %21] : memref<?x30xf64>
              %34 = arith.addi %21, %c1 : index
              %35 = memref.load %arg5[%arg10, %34] : memref<?x30xf64>
              %36 = arith.addi %34, %c1 : index
              %37 = memref.load %arg3[%arg10, %36] : memref<?x30xf64>
              %38 = memref.load %arg3[%arg10, %34] : memref<?x30xf64>
              %39 = arith.subf %37, %38 : f64
              %40 = arith.addi %arg10, %c1 : index
              %41 = memref.load %arg4[%40, %34] : memref<?x30xf64>
              %42 = arith.addf %39, %41 : f64
              %43 = memref.load %arg4[%arg10, %34] : memref<?x30xf64>
              %44 = arith.subf %42, %43 : f64
              %45 = arith.mulf %44, %cst : f64
              %46 = arith.subf %35, %45 : f64
              memref.store %46, %arg5[%arg10, %34] : memref<?x30xf64>
              %47 = arith.addi %21, %c2 : index
              %48 = memref.load %arg5[%arg10, %47] : memref<?x30xf64>
              %49 = arith.addi %47, %c1 : index
              %50 = memref.load %arg3[%arg10, %49] : memref<?x30xf64>
              %51 = memref.load %arg3[%arg10, %47] : memref<?x30xf64>
              %52 = arith.subf %50, %51 : f64
              %53 = arith.addi %arg10, %c1 : index
              %54 = memref.load %arg4[%53, %47] : memref<?x30xf64>
              %55 = arith.addf %52, %54 : f64
              %56 = memref.load %arg4[%arg10, %47] : memref<?x30xf64>
              %57 = arith.subf %55, %56 : f64
              %58 = arith.mulf %57, %cst : f64
              %59 = arith.subf %48, %58 : f64
              memref.store %59, %arg5[%arg10, %47] : memref<?x30xf64>
              %60 = arith.addi %21, %c3 : index
              %61 = memref.load %arg5[%arg10, %60] : memref<?x30xf64>
              %62 = arith.addi %60, %c1 : index
              %63 = memref.load %arg3[%arg10, %62] : memref<?x30xf64>
              %64 = memref.load %arg3[%arg10, %60] : memref<?x30xf64>
              %65 = arith.subf %63, %64 : f64
              %66 = arith.addi %arg10, %c1 : index
              %67 = memref.load %arg4[%66, %60] : memref<?x30xf64>
              %68 = arith.addf %65, %67 : f64
              %69 = memref.load %arg4[%arg10, %60] : memref<?x30xf64>
              %70 = arith.subf %68, %69 : f64
              %71 = arith.mulf %70, %cst : f64
              %72 = arith.subf %61, %71 : f64
              memref.store %72, %arg5[%arg10, %60] : memref<?x30xf64>
            }
            %10 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
            %11 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
            %12 = memref.load %arg3[%arg10, %c28] : memref<?x30xf64>
            %13 = arith.subf %11, %12 : f64
            %14 = arith.addi %arg10, %c1 : index
            %15 = memref.load %arg4[%14, %c28] : memref<?x30xf64>
            %16 = arith.addf %13, %15 : f64
            %17 = memref.load %arg4[%arg10, %c28] : memref<?x30xf64>
            %18 = arith.subf %16, %17 : f64
            %19 = arith.mulf %18, %cst : f64
            %20 = arith.subf %10, %19 : f64
            memref.store %20, %arg5[%arg10, %c28] : memref<?x30xf64>
          }
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg9, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

