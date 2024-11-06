module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c7 = arith.constant 7 : index
    %c42 = arith.constant 42 : index
    %c39 = arith.constant 39 : index
    %c-2 = arith.constant -2 : index
    %c33 = arith.constant 33 : index
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg4 = %c0 to %c2 step %c1 iter_args(%arg5 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg4, %c32 : index
        %5 = arith.muli %arg4, %c32 : index
        %6 = arith.addi %5, %c32 : index
        %7 = arith.minsi %6, %c40 : index
        %8 = async.create_group %c42 : !async.group
        %9 = scf.for %arg6 = %4 to %7 step %c1 iter_args(%arg7 = %c0) -> (index) {
          %token_0 = async.execute {
            %12 = memref.load %arg3[%arg6] : memref<?xf64>
            memref.store %12, %arg2[%arg6] : memref<?xf64>
            async.yield
          }
          %10 = async.add_to_group %token_0, %8 : !async.token
          %11 = arith.addi %arg7, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg5, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %2 = arith.addi %arg4, %c1 : index
      scf.for %arg5 = %c0 to %2 step %c1 {
        %3 = arith.addi %arg4, %c-1 : index
        %4 = arith.cmpi eq, %3, %c0 : index
        %5 = arith.addi %arg5, %c-1 : index
        %6 = arith.cmpi eq, %5, %c0 : index
        %7 = arith.andi %4, %6 : i1
        scf.if %7 {
          %27 = memref.load %arg2[%c32] : memref<?xf64>
          %28 = memref.load %arg1[%c32, %c31] : memref<?x40xf64>
          %29 = memref.load %arg2[%c31] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = arith.subf %27, %30 : f64
          memref.store %31, %arg2[%c32] : memref<?xf64>
        }
        %8 = arith.muli %arg4, %c32 : index
        %9 = arith.muli %arg5, %c32 : index
        %10 = arith.addi %9, %c1 : index
        %11 = arith.maxsi %8, %10 : index
        %12 = arith.muli %arg4, %c32 : index
        %13 = arith.addi %12, %c32 : index
        %14 = arith.muli %arg5, %c32 : index
        %15 = arith.addi %14, %c33 : index
        %16 = arith.minsi %13, %c40 : index
        %17 = arith.minsi %16, %15 : index
        scf.for %arg6 = %11 to %17 step %c1 {
          %27 = arith.muli %arg5, %c32 : index
          %28 = arith.maxsi %27, %c1 : index
          %29 = arith.addi %arg6, %c-1 : index
          scf.for %arg7 = %28 to %29 step %c1 {
            %41 = memref.load %arg2[%arg6] : memref<?xf64>
            %42 = arith.addi %arg7, %c-1 : index
            %43 = memref.load %arg1[%arg6, %42] : memref<?x40xf64>
            %44 = arith.addi %arg7, %c-1 : index
            %45 = memref.load %arg2[%44] : memref<?xf64>
            %46 = arith.mulf %43, %45 : f64
            %47 = arith.subf %41, %46 : f64
            memref.store %47, %arg2[%arg6] : memref<?xf64>
          }
          %30 = arith.cmpi eq, %arg4, %c0 : index
          %31 = arith.cmpi eq, %arg5, %c0 : index
          %32 = arith.andi %30, %31 : i1
          %33 = arith.addi %arg6, %c-1 : index
          %34 = arith.cmpi eq, %33, %c0 : index
          %35 = arith.andi %32, %34 : i1
          scf.if %35 {
            %41 = memref.load %arg2[%c0] : memref<?xf64>
            %42 = memref.load %arg1[%c0, %c0] : memref<?x40xf64>
            %43 = arith.divf %41, %42 : f64
            memref.store %43, %arg2[%c0] : memref<?xf64>
          }
          %36 = arith.addi %arg6, %c-2 : index
          %37 = arith.cmpi sge, %36, %c0 : index
          scf.if %37 {
            %41 = arith.addi %arg6, %c-1 : index
            %42 = memref.load %arg2[%41] : memref<?xf64>
            %43 = arith.addi %arg6, %c-1 : index
            %44 = arith.addi %arg6, %c-1 : index
            %45 = memref.load %arg1[%43, %44] : memref<?x40xf64>
            %46 = arith.divf %42, %45 : f64
            %47 = arith.addi %arg6, %c-1 : index
            memref.store %46, %arg2[%47] : memref<?xf64>
            %48 = memref.load %arg2[%arg6] : memref<?xf64>
            %49 = arith.addi %arg6, %c-2 : index
            %50 = memref.load %arg1[%arg6, %49] : memref<?x40xf64>
            %51 = arith.addi %arg6, %c-2 : index
            %52 = memref.load %arg2[%51] : memref<?xf64>
            %53 = arith.mulf %50, %52 : f64
            %54 = arith.subf %48, %53 : f64
            memref.store %54, %arg2[%arg6] : memref<?xf64>
          }
          %38 = arith.muli %arg5, %c-1 : index
          %39 = arith.addi %arg4, %38 : index
          %40 = arith.cmpi eq, %39, %c0 : index
          scf.if %40 {
            %41 = memref.load %arg2[%arg6] : memref<?xf64>
            %42 = arith.addi %arg6, %c-1 : index
            %43 = memref.load %arg1[%arg6, %42] : memref<?x40xf64>
            %44 = arith.addi %arg6, %c-1 : index
            %45 = memref.load %arg2[%44] : memref<?xf64>
            %46 = arith.mulf %43, %45 : f64
            %47 = arith.subf %41, %46 : f64
            memref.store %47, %arg2[%arg6] : memref<?xf64>
          }
        }
        %18 = arith.addi %arg4, %c-1 : index
        %19 = arith.cmpi eq, %18, %c0 : index
        %20 = arith.cmpi eq, %arg5, %c0 : index
        %21 = arith.andi %19, %20 : i1
        scf.if %21 {
          %27 = async.create_group %c7 : !async.group
          %28 = scf.for %arg6 = %c33 to %c40 step %c1 iter_args(%arg7 = %c0) -> (index) {
            %token = async.execute {
              scf.for %arg8 = %c1 to %c32 step %c1 {
                %31 = memref.load %arg2[%arg6] : memref<?xf64>
                %32 = arith.addi %arg8, %c-1 : index
                %33 = memref.load %arg1[%arg6, %32] : memref<?x40xf64>
                %34 = arith.addi %arg8, %c-1 : index
                %35 = memref.load %arg2[%34] : memref<?xf64>
                %36 = arith.mulf %33, %35 : f64
                %37 = arith.subf %31, %36 : f64
                memref.store %37, %arg2[%arg6] : memref<?xf64>
              }
              async.yield
            }
            %29 = async.add_to_group %token, %27 : !async.token
            %30 = arith.addi %arg7, %c1 : index
            scf.yield %30 : index
          }
          async.await_all %27
        }
        %22 = arith.addi %arg4, %c-1 : index
        %23 = arith.cmpi eq, %22, %c0 : index
        %24 = arith.addi %arg5, %c-1 : index
        %25 = arith.cmpi eq, %24, %c0 : index
        %26 = arith.andi %23, %25 : i1
        scf.if %26 {
          %27 = memref.load %arg2[%c39] : memref<?xf64>
          %28 = memref.load %arg1[%c39, %c39] : memref<?x40xf64>
          %29 = arith.divf %27, %28 : f64
          memref.store %29, %arg2[%c39] : memref<?xf64>
        }
      }
    }
    return
  }
}

