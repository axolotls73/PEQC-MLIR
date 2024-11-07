module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c27 = arith.constant 27 : index
    %c-2 = arith.constant -2 : index
    %c29 = arith.constant 29 : index
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c15 = arith.constant 15 : index
    %c20 = arith.constant 20 : index
    %c-14 = arith.constant -14 : index
    %c16 = arith.constant 16 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          %4 = arith.muli %arg4, %c16 : index
          %5 = arith.muli %arg5, %c16 : index
          %6 = arith.addi %4, %5 : index
          %7 = arith.addi %6, %c-14 : index
          %8 = arith.maxsi %7, %c0 : index
          %9 = arith.muli %arg4, %c16 : index
          %10 = arith.muli %arg5, %c16 : index
          %11 = arith.addi %9, %10 : index
          %12 = arith.addi %11, %c15 : index
          %13 = arith.minsi %12, %c20 : index
          scf.for %arg7 = %8 to %13 step %c1 {
            %16 = arith.muli %arg4, %c-1 : index
            %17 = arith.muli %arg5, %c-1 : index
            %18 = arith.addi %16, %17 : index
            %19 = arith.cmpi slt, %arg7, %c0 : index
            %20 = arith.subi %c-1, %arg7 : index
            %21 = arith.select %19, %20, %arg7 : index
            %22 = arith.divsi %21, %c16 : index
            %23 = arith.subi %c-1, %22 : index
            %24 = arith.select %19, %23, %22 : index
            %25 = arith.addi %18, %24 : index
            %26 = arith.cmpi sge, %25, %c0 : index
            scf.if %26 {
              %53 = memref.load %arg2[%c0] : memref<?xf64>
              %54 = memref.load %arg2[%c1] : memref<?xf64>
              %55 = arith.addf %53, %54 : f64
              %56 = memref.load %arg2[%c2] : memref<?xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = arith.mulf %57, %cst : f64
              memref.store %58, %arg3[%c1] : memref<?xf64>
            }
            %27 = arith.muli %arg4, %c32 : index
            %28 = arith.muli %arg5, %c32 : index
            %29 = arith.addi %27, %28 : index
            %30 = arith.muli %arg7, %c2 : index
            %31 = arith.addi %30, %c2 : index
            %32 = arith.maxsi %29, %31 : index
            %33 = arith.muli %arg4, %c32 : index
            %34 = arith.muli %arg5, %c32 : index
            %35 = arith.addi %33, %34 : index
            %36 = arith.addi %35, %c32 : index
            %37 = arith.muli %arg7, %c2 : index
            %38 = arith.addi %37, %c29 : index
            %39 = arith.minsi %36, %38 : index
            scf.for %arg8 = %32 to %39 step %c1 {
              %53 = arith.muli %arg7, %c-2 : index
              %54 = arith.addi %53, %arg8 : index
              %55 = arith.addi %54, %c-1 : index
              %56 = memref.load %arg2[%55] : memref<?xf64>
              %57 = arith.muli %arg7, %c-2 : index
              %58 = arith.addi %57, %arg8 : index
              %59 = memref.load %arg2[%58] : memref<?xf64>
              %60 = arith.addf %56, %59 : f64
              %61 = arith.muli %arg7, %c-2 : index
              %62 = arith.addi %61, %arg8 : index
              %63 = arith.addi %62, %c1 : index
              %64 = memref.load %arg2[%63] : memref<?xf64>
              %65 = arith.addf %60, %64 : f64
              %66 = arith.mulf %65, %cst : f64
              %67 = arith.muli %arg7, %c-2 : index
              %68 = arith.addi %67, %arg8 : index
              memref.store %66, %arg3[%68] : memref<?xf64>
              %69 = arith.muli %arg7, %c-2 : index
              %70 = arith.addi %69, %arg8 : index
              %71 = arith.addi %70, %c-2 : index
              %72 = memref.load %arg3[%71] : memref<?xf64>
              %73 = arith.muli %arg7, %c-2 : index
              %74 = arith.addi %73, %arg8 : index
              %75 = arith.addi %74, %c-1 : index
              %76 = memref.load %arg3[%75] : memref<?xf64>
              %77 = arith.addf %72, %76 : f64
              %78 = arith.muli %arg7, %c-2 : index
              %79 = arith.addi %78, %arg8 : index
              %80 = memref.load %arg3[%79] : memref<?xf64>
              %81 = arith.addf %77, %80 : f64
              %82 = arith.mulf %81, %cst : f64
              %83 = arith.muli %arg7, %c-2 : index
              %84 = arith.addi %83, %arg8 : index
              %85 = arith.addi %84, %c-1 : index
              memref.store %82, %arg2[%85] : memref<?xf64>
            }
            %40 = arith.addi %arg4, %arg5 : index
            %41 = arith.addi %arg7, %c-1 : index
            %42 = arith.cmpi sle, %41, %c0 : index
            %43 = arith.subi %c0, %41 : index
            %44 = arith.subi %41, %c1 : index
            %45 = arith.select %42, %43, %44 : index
            %46 = arith.divsi %45, %c16 : index
            %47 = arith.subi %c0, %46 : index
            %48 = arith.addi %46, %c1 : index
            %49 = arith.select %42, %47, %48 : index
            %50 = arith.muli %49, %c-1 : index
            %51 = arith.addi %40, %50 : index
            %52 = arith.cmpi sge, %51, %c0 : index
            scf.if %52 {
              %53 = memref.load %arg3[%c27] : memref<?xf64>
              %54 = memref.load %arg3[%c28] : memref<?xf64>
              %55 = arith.addf %53, %54 : f64
              %56 = memref.load %arg3[%c29] : memref<?xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = arith.mulf %57, %cst : f64
              memref.store %58, %arg2[%c28] : memref<?xf64>
            }
          }
          %14 = arith.addi %arg4, %arg5 : index
          %15 = arith.cmpi eq, %14, %c0 : index
          scf.if %15 {
            %16 = memref.load %arg2[%c0] : memref<?xf64>
            %17 = memref.load %arg2[%c1] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            %19 = memref.load %arg2[%c2] : memref<?xf64>
            %20 = arith.addf %18, %19 : f64
            %21 = arith.mulf %20, %cst : f64
            memref.store %21, %arg3[%c1] : memref<?xf64>
          }
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg6, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

