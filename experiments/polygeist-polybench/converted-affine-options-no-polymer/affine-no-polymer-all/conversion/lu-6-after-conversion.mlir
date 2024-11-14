module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c8 = arith.constant 8 : index
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg2, %c32 : index
      %1 = arith.muli %arg2, %c-32 : index
      %2 = arith.addi %1, %c40 : index
      %3 = arith.minsi %2, %c32 : index
      scf.for %arg3 = %c0 to %3 step %c1 {
        %4 = arith.addi %0, %arg3 : index
        %5 = arith.muli %arg2, %c32 : index
        %6 = arith.addi %arg3, %5 : index
        scf.for %arg4 = %c0 to %6 step %c1 {
          %13 = arith.cmpi slt, %arg4, %c0 : index
          %14 = arith.subi %c-1, %arg4 : index
          %15 = arith.select %13, %14, %arg4 : index
          %16 = arith.divsi %15, %c4 : index
          %17 = arith.subi %c-1, %16 : index
          %18 = arith.select %13, %17, %16 : index
          scf.for %arg5 = %c0 to %18 step %c1 {
            %26 = arith.muli %arg5, %c4 : index
            %27 = memref.load %arg1[%4, %26] : memref<?x40xf64>
            %28 = memref.load %arg1[%26, %arg4] : memref<?x40xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %arg1[%4, %arg4] : memref<?x40xf64>
            %32 = arith.addi %26, %c1 : index
            %33 = memref.load %arg1[%4, %32] : memref<?x40xf64>
            %34 = memref.load %arg1[%32, %arg4] : memref<?x40xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %37 = arith.subf %36, %35 : f64
            memref.store %37, %arg1[%4, %arg4] : memref<?x40xf64>
            %38 = arith.addi %26, %c2 : index
            %39 = memref.load %arg1[%4, %38] : memref<?x40xf64>
            %40 = memref.load %arg1[%38, %arg4] : memref<?x40xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %43 = arith.subf %42, %41 : f64
            memref.store %43, %arg1[%4, %arg4] : memref<?x40xf64>
            %44 = arith.addi %26, %c3 : index
            %45 = memref.load %arg1[%4, %44] : memref<?x40xf64>
            %46 = memref.load %arg1[%44, %arg4] : memref<?x40xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %49 = arith.subf %48, %47 : f64
            memref.store %49, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %19 = arith.remsi %arg4, %c4 : index
          %20 = arith.cmpi slt, %19, %c0 : index
          %21 = arith.addi %19, %c4 : index
          %22 = arith.select %20, %21, %19 : index
          scf.for %arg5 = %c0 to %22 step %c1 {
            %26 = arith.cmpi slt, %arg4, %c0 : index
            %27 = arith.subi %c-1, %arg4 : index
            %28 = arith.select %26, %27, %arg4 : index
            %29 = arith.divsi %28, %c4 : index
            %30 = arith.subi %c-1, %29 : index
            %31 = arith.select %26, %30, %29 : index
            %32 = arith.muli %31, %c4 : index
            %33 = arith.addi %arg5, %32 : index
            %34 = memref.load %arg1[%4, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %arg4] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %23 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %24 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
          %25 = arith.divf %24, %23 : f64
          memref.store %25, %arg1[%4, %arg4] : memref<?x40xf64>
        }
        %7 = arith.muli %arg3, %c-1 : index
        %8 = arith.muli %arg2, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %10 = arith.addi %9, %c40 : index
        %11 = async.create_group %c42 : !async.group
        %12 = scf.for %arg4 = %c0 to %10 step %c1 iter_args(%arg5 = %c0) -> (index) {
          %token = async.execute {
            %15 = arith.addi %4, %arg4 : index
            %16 = arith.muli %arg2, %c8 : index
            %17 = arith.cmpi slt, %arg3, %c0 : index
            %18 = arith.subi %c-1, %arg3 : index
            %19 = arith.select %17, %18, %arg3 : index
            %20 = arith.divsi %19, %c4 : index
            %21 = arith.subi %c-1, %20 : index
            %22 = arith.select %17, %21, %20 : index
            %23 = arith.addi %16, %22 : index
            scf.for %arg6 = %c0 to %23 step %c1 {
              %28 = arith.muli %arg6, %c4 : index
              %29 = memref.load %arg1[%4, %28] : memref<?x40xf64>
              %30 = memref.load %arg1[%28, %15] : memref<?x40xf64>
              %31 = arith.mulf %29, %30 : f64
              %32 = memref.load %arg1[%4, %15] : memref<?x40xf64>
              %33 = arith.subf %32, %31 : f64
              memref.store %33, %arg1[%4, %15] : memref<?x40xf64>
              %34 = arith.addi %28, %c1 : index
              %35 = memref.load %arg1[%4, %34] : memref<?x40xf64>
              %36 = memref.load %arg1[%34, %15] : memref<?x40xf64>
              %37 = arith.mulf %35, %36 : f64
              %38 = memref.load %arg1[%4, %15] : memref<?x40xf64>
              %39 = arith.subf %38, %37 : f64
              memref.store %39, %arg1[%4, %15] : memref<?x40xf64>
              %40 = arith.addi %28, %c2 : index
              %41 = memref.load %arg1[%4, %40] : memref<?x40xf64>
              %42 = memref.load %arg1[%40, %15] : memref<?x40xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %arg1[%4, %15] : memref<?x40xf64>
              %45 = arith.subf %44, %43 : f64
              memref.store %45, %arg1[%4, %15] : memref<?x40xf64>
              %46 = arith.addi %28, %c3 : index
              %47 = memref.load %arg1[%4, %46] : memref<?x40xf64>
              %48 = memref.load %arg1[%46, %15] : memref<?x40xf64>
              %49 = arith.mulf %47, %48 : f64
              %50 = memref.load %arg1[%4, %15] : memref<?x40xf64>
              %51 = arith.subf %50, %49 : f64
              memref.store %51, %arg1[%4, %15] : memref<?x40xf64>
            }
            %24 = arith.remsi %4, %c4 : index
            %25 = arith.cmpi slt, %24, %c0 : index
            %26 = arith.addi %24, %c4 : index
            %27 = arith.select %25, %26, %24 : index
            scf.for %arg6 = %c0 to %27 step %c1 {
              %28 = arith.cmpi slt, %4, %c0 : index
              %29 = arith.subi %c-1, %4 : index
              %30 = arith.select %28, %29, %4 : index
              %31 = arith.divsi %30, %c4 : index
              %32 = arith.subi %c-1, %31 : index
              %33 = arith.select %28, %32, %31 : index
              %34 = arith.muli %33, %c4 : index
              %35 = arith.addi %arg6, %34 : index
              %36 = memref.load %arg1[%4, %35] : memref<?x40xf64>
              %37 = memref.load %arg1[%35, %15] : memref<?x40xf64>
              %38 = arith.mulf %36, %37 : f64
              %39 = memref.load %arg1[%4, %15] : memref<?x40xf64>
              %40 = arith.subf %39, %38 : f64
              memref.store %40, %arg1[%4, %15] : memref<?x40xf64>
            }
            async.yield
          }
          %13 = async.add_to_group %token, %11 : !async.token
          %14 = arith.addi %arg5, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
      }
    }
    return
  }
}

