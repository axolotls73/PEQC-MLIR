module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c-8 = arith.constant -8 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %2 = arith.muli %arg13, %c-32 : index
        %3 = arith.addi %2, %c40 : index
        %4 = arith.minsi %3, %c32 : index
        scf.for %arg14 = %c0 to %4 step %c1 {
          %5 = arith.muli %arg13, %c32 : index
          %6 = arith.addi %5, %arg14 : index
          %7 = memref.load %arg4[%6] : memref<?xf64>
          %8 = memref.load %arg6[%6] : memref<?xf64>
          %9 = memref.load %arg10[%6] : memref<?xf64>
          %10 = memref.load %arg4[%6] : memref<?xf64>
          %11 = memref.load %arg6[%6] : memref<?xf64>
          %12 = memref.load %arg10[%6] : memref<?xf64>
          %13 = memref.load %arg4[%6] : memref<?xf64>
          %14 = memref.load %arg6[%6] : memref<?xf64>
          %15 = memref.load %arg10[%6] : memref<?xf64>
          %16 = memref.load %arg4[%6] : memref<?xf64>
          %17 = memref.load %arg6[%6] : memref<?xf64>
          %18 = memref.load %arg10[%6] : memref<?xf64>
          %19 = arith.muli %arg12, %c-8 : index
          %20 = arith.addi %19, %c10 : index
          %21 = arith.minsi %20, %c8 : index
          scf.for %arg15 = %c0 to %21 step %c1 {
            %22 = arith.muli %arg12, %c32 : index
            %23 = arith.muli %arg15, %c4 : index
            %24 = arith.addi %22, %23 : index
            %25 = memref.load %arg3[%6, %24] : memref<?x40xf64>
            %26 = memref.load %arg5[%24] : memref<?xf64>
            %27 = arith.mulf %7, %26 : f64
            %28 = arith.addf %25, %27 : f64
            %29 = memref.load %arg7[%24] : memref<?xf64>
            %30 = arith.mulf %8, %29 : f64
            %31 = arith.addf %28, %30 : f64
            memref.store %31, %arg3[%6, %24] : memref<?x40xf64>
            %32 = memref.load %arg9[%24] : memref<?xf64>
            %33 = memref.load %arg3[%6, %24] : memref<?x40xf64>
            %34 = arith.mulf %arg2, %33 : f64
            %35 = arith.mulf %34, %9 : f64
            %36 = arith.addf %32, %35 : f64
            memref.store %36, %arg9[%24] : memref<?xf64>
            %37 = arith.addi %24, %c1 : index
            %38 = memref.load %arg3[%6, %37] : memref<?x40xf64>
            %39 = memref.load %arg5[%37] : memref<?xf64>
            %40 = arith.mulf %10, %39 : f64
            %41 = arith.addf %38, %40 : f64
            %42 = memref.load %arg7[%37] : memref<?xf64>
            %43 = arith.mulf %11, %42 : f64
            %44 = arith.addf %41, %43 : f64
            memref.store %44, %arg3[%6, %37] : memref<?x40xf64>
            %45 = memref.load %arg9[%37] : memref<?xf64>
            %46 = memref.load %arg3[%6, %37] : memref<?x40xf64>
            %47 = arith.mulf %arg2, %46 : f64
            %48 = arith.mulf %47, %12 : f64
            %49 = arith.addf %45, %48 : f64
            memref.store %49, %arg9[%37] : memref<?xf64>
            %50 = arith.addi %24, %c2 : index
            %51 = memref.load %arg3[%6, %50] : memref<?x40xf64>
            %52 = memref.load %arg5[%50] : memref<?xf64>
            %53 = arith.mulf %13, %52 : f64
            %54 = arith.addf %51, %53 : f64
            %55 = memref.load %arg7[%50] : memref<?xf64>
            %56 = arith.mulf %14, %55 : f64
            %57 = arith.addf %54, %56 : f64
            memref.store %57, %arg3[%6, %50] : memref<?x40xf64>
            %58 = memref.load %arg9[%50] : memref<?xf64>
            %59 = memref.load %arg3[%6, %50] : memref<?x40xf64>
            %60 = arith.mulf %arg2, %59 : f64
            %61 = arith.mulf %60, %15 : f64
            %62 = arith.addf %58, %61 : f64
            memref.store %62, %arg9[%50] : memref<?xf64>
            %63 = arith.addi %24, %c3 : index
            %64 = memref.load %arg3[%6, %63] : memref<?x40xf64>
            %65 = memref.load %arg5[%63] : memref<?xf64>
            %66 = arith.mulf %16, %65 : f64
            %67 = arith.addf %64, %66 : f64
            %68 = memref.load %arg7[%63] : memref<?xf64>
            %69 = arith.mulf %17, %68 : f64
            %70 = arith.addf %67, %69 : f64
            memref.store %70, %arg3[%6, %63] : memref<?x40xf64>
            %71 = memref.load %arg9[%63] : memref<?xf64>
            %72 = memref.load %arg3[%6, %63] : memref<?x40xf64>
            %73 = arith.mulf %arg2, %72 : f64
            %74 = arith.mulf %73, %18 : f64
            %75 = arith.addf %71, %74 : f64
            memref.store %75, %arg9[%63] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %2 = arith.muli %arg12, %c-8 : index
      %3 = arith.addi %2, %c10 : index
      %4 = arith.minsi %3, %c8 : index
      scf.for %arg13 = %c0 to %4 step %c1 {
        %5 = arith.muli %arg12, %c32 : index
        %6 = arith.muli %arg13, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg9[%7] : memref<?xf64>
        %9 = memref.load %arg11[%7] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg9[%7] : memref<?xf64>
        %11 = arith.addi %7, %c1 : index
        %12 = memref.load %arg9[%11] : memref<?xf64>
        %13 = memref.load %arg11[%11] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        memref.store %14, %arg9[%11] : memref<?xf64>
        %15 = arith.addi %7, %c2 : index
        %16 = memref.load %arg9[%15] : memref<?xf64>
        %17 = memref.load %arg11[%15] : memref<?xf64>
        %18 = arith.addf %16, %17 : f64
        memref.store %18, %arg9[%15] : memref<?xf64>
        %19 = arith.addi %7, %c3 : index
        %20 = memref.load %arg9[%19] : memref<?xf64>
        %21 = memref.load %arg11[%19] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        memref.store %22, %arg9[%19] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %4 = arith.muli %arg12, %c32 : index
          %5 = arith.muli %arg12, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          %8 = async.create_group %c42 : !async.group
          %9 = scf.for %arg15 = %4 to %7 step %c1 iter_args(%arg16 = %c0) -> (index) {
            %token_0 = async.execute {
              %12 = arith.muli %arg14, %c-8 : index
              %13 = arith.addi %12, %c10 : index
              %14 = arith.minsi %13, %c8 : index
              scf.for %arg17 = %c0 to %14 step %c1 {
                %15 = arith.muli %arg14, %c32 : index
                %16 = arith.muli %arg17, %c4 : index
                %17 = arith.addi %15, %16 : index
                %18 = memref.load %arg8[%arg15] : memref<?xf64>
                %19 = memref.load %arg3[%arg15, %17] : memref<?x40xf64>
                %20 = arith.mulf %arg1, %19 : f64
                %21 = memref.load %arg9[%17] : memref<?xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %18, %22 : f64
                memref.store %23, %arg8[%arg15] : memref<?xf64>
                %24 = arith.addi %17, %c1 : index
                %25 = memref.load %arg8[%arg15] : memref<?xf64>
                %26 = memref.load %arg3[%arg15, %24] : memref<?x40xf64>
                %27 = arith.mulf %arg1, %26 : f64
                %28 = memref.load %arg9[%24] : memref<?xf64>
                %29 = arith.mulf %27, %28 : f64
                %30 = arith.addf %25, %29 : f64
                memref.store %30, %arg8[%arg15] : memref<?xf64>
                %31 = arith.addi %17, %c2 : index
                %32 = memref.load %arg8[%arg15] : memref<?xf64>
                %33 = memref.load %arg3[%arg15, %31] : memref<?x40xf64>
                %34 = arith.mulf %arg1, %33 : f64
                %35 = memref.load %arg9[%31] : memref<?xf64>
                %36 = arith.mulf %34, %35 : f64
                %37 = arith.addf %32, %36 : f64
                memref.store %37, %arg8[%arg15] : memref<?xf64>
                %38 = arith.addi %17, %c3 : index
                %39 = memref.load %arg8[%arg15] : memref<?xf64>
                %40 = memref.load %arg3[%arg15, %38] : memref<?x40xf64>
                %41 = arith.mulf %arg1, %40 : f64
                %42 = memref.load %arg9[%38] : memref<?xf64>
                %43 = arith.mulf %41, %42 : f64
                %44 = arith.addf %39, %43 : f64
                memref.store %44, %arg8[%arg15] : memref<?xf64>
              }
              async.yield
            }
            %10 = async.add_to_group %token_0, %8 : !async.token
            %11 = arith.addi %arg16, %c1 : index
            scf.yield %11 : index
          }
          async.await_all %8
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg13, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

