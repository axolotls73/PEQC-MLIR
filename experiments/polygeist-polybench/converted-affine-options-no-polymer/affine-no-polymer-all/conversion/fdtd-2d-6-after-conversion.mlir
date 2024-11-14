module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c20 step %c1 {
          %5 = arith.addi %4, %arg9 : index
          %6 = memref.load %arg6[%5] : memref<?xf64>
          %7 = memref.load %arg6[%5] : memref<?xf64>
          %8 = memref.load %arg6[%5] : memref<?xf64>
          %9 = memref.load %arg6[%5] : memref<?xf64>
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %11 = arith.muli %arg10, %c4 : index
            memref.store %6, %arg4[%c0, %11] : memref<?x30xf64>
            %12 = arith.addi %11, %c1 : index
            memref.store %7, %arg4[%c0, %12] : memref<?x30xf64>
            %13 = arith.addi %11, %c2 : index
            memref.store %8, %arg4[%c0, %13] : memref<?x30xf64>
            %14 = arith.addi %11, %c3 : index
            memref.store %9, %arg4[%c0, %14] : memref<?x30xf64>
          }
          %10 = memref.load %arg6[%5] : memref<?xf64>
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %11 = arith.addi %arg10, %c28 : index
            memref.store %10, %arg4[%c0, %11] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c19 step %c1 {
            %11 = arith.addi %arg10, %c1 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %12 = arith.muli %arg11, %c4 : index
              %13 = memref.load %arg4[%11, %12] : memref<?x30xf64>
              %14 = memref.load %arg5[%11, %12] : memref<?x30xf64>
              %15 = arith.addi %11, %c-1 : index
              %16 = memref.load %arg5[%15, %12] : memref<?x30xf64>
              %17 = arith.subf %14, %16 : f64
              %18 = arith.mulf %17, %cst_0 : f64
              %19 = arith.subf %13, %18 : f64
              memref.store %19, %arg4[%11, %12] : memref<?x30xf64>
              %20 = arith.addi %12, %c1 : index
              %21 = memref.load %arg4[%11, %20] : memref<?x30xf64>
              %22 = memref.load %arg5[%11, %20] : memref<?x30xf64>
              %23 = arith.addi %11, %c-1 : index
              %24 = memref.load %arg5[%23, %20] : memref<?x30xf64>
              %25 = arith.subf %22, %24 : f64
              %26 = arith.mulf %25, %cst_0 : f64
              %27 = arith.subf %21, %26 : f64
              memref.store %27, %arg4[%11, %20] : memref<?x30xf64>
              %28 = arith.addi %12, %c2 : index
              %29 = memref.load %arg4[%11, %28] : memref<?x30xf64>
              %30 = memref.load %arg5[%11, %28] : memref<?x30xf64>
              %31 = arith.addi %11, %c-1 : index
              %32 = memref.load %arg5[%31, %28] : memref<?x30xf64>
              %33 = arith.subf %30, %32 : f64
              %34 = arith.mulf %33, %cst_0 : f64
              %35 = arith.subf %29, %34 : f64
              memref.store %35, %arg4[%11, %28] : memref<?x30xf64>
              %36 = arith.addi %12, %c3 : index
              %37 = memref.load %arg4[%11, %36] : memref<?x30xf64>
              %38 = memref.load %arg5[%11, %36] : memref<?x30xf64>
              %39 = arith.addi %11, %c-1 : index
              %40 = memref.load %arg5[%39, %36] : memref<?x30xf64>
              %41 = arith.subf %38, %40 : f64
              %42 = arith.mulf %41, %cst_0 : f64
              %43 = arith.subf %37, %42 : f64
              memref.store %43, %arg4[%11, %36] : memref<?x30xf64>
            }
            scf.for %arg11 = %c0 to %c2 step %c1 {
              %12 = arith.addi %arg11, %c28 : index
              %13 = memref.load %arg4[%11, %12] : memref<?x30xf64>
              %14 = memref.load %arg5[%11, %12] : memref<?x30xf64>
              %15 = arith.addi %11, %c-1 : index
              %16 = memref.load %arg5[%15, %12] : memref<?x30xf64>
              %17 = arith.subf %14, %16 : f64
              %18 = arith.mulf %17, %cst_0 : f64
              %19 = arith.subf %13, %18 : f64
              memref.store %19, %arg4[%11, %12] : memref<?x30xf64>
            }
          }
          scf.for %arg10 = %c0 to %c20 step %c1 {
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %17 = arith.muli %arg11, %c4 : index
              %18 = arith.addi %17, %c1 : index
              %19 = memref.load %arg3[%arg10, %18] : memref<?x30xf64>
              %20 = memref.load %arg5[%arg10, %18] : memref<?x30xf64>
              %21 = arith.addi %18, %c-1 : index
              %22 = memref.load %arg5[%arg10, %21] : memref<?x30xf64>
              %23 = arith.subf %20, %22 : f64
              %24 = arith.mulf %23, %cst_0 : f64
              %25 = arith.subf %19, %24 : f64
              memref.store %25, %arg3[%arg10, %18] : memref<?x30xf64>
              %26 = arith.addi %18, %c1 : index
              %27 = memref.load %arg3[%arg10, %26] : memref<?x30xf64>
              %28 = memref.load %arg5[%arg10, %26] : memref<?x30xf64>
              %29 = arith.addi %26, %c-1 : index
              %30 = memref.load %arg5[%arg10, %29] : memref<?x30xf64>
              %31 = arith.subf %28, %30 : f64
              %32 = arith.mulf %31, %cst_0 : f64
              %33 = arith.subf %27, %32 : f64
              memref.store %33, %arg3[%arg10, %26] : memref<?x30xf64>
              %34 = arith.addi %18, %c2 : index
              %35 = memref.load %arg3[%arg10, %34] : memref<?x30xf64>
              %36 = memref.load %arg5[%arg10, %34] : memref<?x30xf64>
              %37 = arith.addi %34, %c-1 : index
              %38 = memref.load %arg5[%arg10, %37] : memref<?x30xf64>
              %39 = arith.subf %36, %38 : f64
              %40 = arith.mulf %39, %cst_0 : f64
              %41 = arith.subf %35, %40 : f64
              memref.store %41, %arg3[%arg10, %34] : memref<?x30xf64>
              %42 = arith.addi %18, %c3 : index
              %43 = memref.load %arg3[%arg10, %42] : memref<?x30xf64>
              %44 = memref.load %arg5[%arg10, %42] : memref<?x30xf64>
              %45 = arith.addi %42, %c-1 : index
              %46 = memref.load %arg5[%arg10, %45] : memref<?x30xf64>
              %47 = arith.subf %44, %46 : f64
              %48 = arith.mulf %47, %cst_0 : f64
              %49 = arith.subf %43, %48 : f64
              memref.store %49, %arg3[%arg10, %42] : memref<?x30xf64>
            }
            %11 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
            %12 = memref.load %arg5[%arg10, %c29] : memref<?x30xf64>
            %13 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
            %14 = arith.subf %12, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.subf %11, %15 : f64
            memref.store %16, %arg3[%arg10, %c29] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c19 step %c1 {
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %22 = arith.muli %arg11, %c4 : index
              %23 = memref.load %arg5[%arg10, %22] : memref<?x30xf64>
              %24 = arith.addi %22, %c1 : index
              %25 = memref.load %arg3[%arg10, %24] : memref<?x30xf64>
              %26 = memref.load %arg3[%arg10, %22] : memref<?x30xf64>
              %27 = arith.subf %25, %26 : f64
              %28 = arith.addi %arg10, %c1 : index
              %29 = memref.load %arg4[%28, %22] : memref<?x30xf64>
              %30 = arith.addf %27, %29 : f64
              %31 = memref.load %arg4[%arg10, %22] : memref<?x30xf64>
              %32 = arith.subf %30, %31 : f64
              %33 = arith.mulf %32, %cst : f64
              %34 = arith.subf %23, %33 : f64
              memref.store %34, %arg5[%arg10, %22] : memref<?x30xf64>
              %35 = arith.addi %22, %c1 : index
              %36 = memref.load %arg5[%arg10, %35] : memref<?x30xf64>
              %37 = arith.addi %35, %c1 : index
              %38 = memref.load %arg3[%arg10, %37] : memref<?x30xf64>
              %39 = memref.load %arg3[%arg10, %35] : memref<?x30xf64>
              %40 = arith.subf %38, %39 : f64
              %41 = arith.addi %arg10, %c1 : index
              %42 = memref.load %arg4[%41, %35] : memref<?x30xf64>
              %43 = arith.addf %40, %42 : f64
              %44 = memref.load %arg4[%arg10, %35] : memref<?x30xf64>
              %45 = arith.subf %43, %44 : f64
              %46 = arith.mulf %45, %cst : f64
              %47 = arith.subf %36, %46 : f64
              memref.store %47, %arg5[%arg10, %35] : memref<?x30xf64>
              %48 = arith.addi %22, %c2 : index
              %49 = memref.load %arg5[%arg10, %48] : memref<?x30xf64>
              %50 = arith.addi %48, %c1 : index
              %51 = memref.load %arg3[%arg10, %50] : memref<?x30xf64>
              %52 = memref.load %arg3[%arg10, %48] : memref<?x30xf64>
              %53 = arith.subf %51, %52 : f64
              %54 = arith.addi %arg10, %c1 : index
              %55 = memref.load %arg4[%54, %48] : memref<?x30xf64>
              %56 = arith.addf %53, %55 : f64
              %57 = memref.load %arg4[%arg10, %48] : memref<?x30xf64>
              %58 = arith.subf %56, %57 : f64
              %59 = arith.mulf %58, %cst : f64
              %60 = arith.subf %49, %59 : f64
              memref.store %60, %arg5[%arg10, %48] : memref<?x30xf64>
              %61 = arith.addi %22, %c3 : index
              %62 = memref.load %arg5[%arg10, %61] : memref<?x30xf64>
              %63 = arith.addi %61, %c1 : index
              %64 = memref.load %arg3[%arg10, %63] : memref<?x30xf64>
              %65 = memref.load %arg3[%arg10, %61] : memref<?x30xf64>
              %66 = arith.subf %64, %65 : f64
              %67 = arith.addi %arg10, %c1 : index
              %68 = memref.load %arg4[%67, %61] : memref<?x30xf64>
              %69 = arith.addf %66, %68 : f64
              %70 = memref.load %arg4[%arg10, %61] : memref<?x30xf64>
              %71 = arith.subf %69, %70 : f64
              %72 = arith.mulf %71, %cst : f64
              %73 = arith.subf %62, %72 : f64
              memref.store %73, %arg5[%arg10, %61] : memref<?x30xf64>
            }
            %11 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
            %12 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
            %13 = memref.load %arg3[%arg10, %c28] : memref<?x30xf64>
            %14 = arith.subf %12, %13 : f64
            %15 = arith.addi %arg10, %c1 : index
            %16 = memref.load %arg4[%15, %c28] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = memref.load %arg4[%arg10, %c28] : memref<?x30xf64>
            %19 = arith.subf %17, %18 : f64
            %20 = arith.mulf %19, %cst : f64
            %21 = arith.subf %11, %20 : f64
            memref.store %21, %arg5[%arg10, %c28] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg8, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

