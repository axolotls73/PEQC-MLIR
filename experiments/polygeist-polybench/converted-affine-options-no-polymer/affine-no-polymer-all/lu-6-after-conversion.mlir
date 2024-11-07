module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c40 = arith.constant 40 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c10 step %c1 {
      %0 = arith.muli %arg2, %c4 : index
      scf.for %arg3 = %c0 to %c4 step %c1 {
        %1 = arith.addi %0, %arg3 : index
        %2 = arith.muli %arg2, %c4 : index
        %3 = arith.addi %arg3, %2 : index
        scf.for %arg4 = %c0 to %3 step %c1 {
          %10 = arith.cmpi slt, %arg4, %c0 : index
          %11 = arith.subi %c-1, %arg4 : index
          %12 = arith.select %10, %11, %arg4 : index
          %13 = arith.divsi %12, %c4 : index
          %14 = arith.subi %c-1, %13 : index
          %15 = arith.select %10, %14, %13 : index
          scf.for %arg5 = %c0 to %15 step %c1 {
            %23 = arith.muli %arg5, %c4 : index
            %24 = memref.load %arg1[%1, %23] : memref<?x40xf64>
            %25 = memref.load %arg1[%23, %arg4] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %arg1[%1, %arg4] : memref<?x40xf64>
            %29 = arith.addi %23, %c1 : index
            %30 = memref.load %arg1[%1, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%29, %arg4] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %arg1[%1, %arg4] : memref<?x40xf64>
            %35 = arith.addi %23, %c2 : index
            %36 = memref.load %arg1[%1, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%35, %arg4] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %arg1[%1, %arg4] : memref<?x40xf64>
            %41 = arith.addi %23, %c3 : index
            %42 = memref.load %arg1[%1, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%41, %arg4] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %16 = arith.remsi %arg4, %c4 : index
          %17 = arith.cmpi slt, %16, %c0 : index
          %18 = arith.addi %16, %c4 : index
          %19 = arith.select %17, %18, %16 : index
          scf.for %arg5 = %c0 to %19 step %c1 {
            %23 = arith.cmpi slt, %arg4, %c0 : index
            %24 = arith.subi %c-1, %arg4 : index
            %25 = arith.select %23, %24, %arg4 : index
            %26 = arith.divsi %25, %c4 : index
            %27 = arith.subi %c-1, %26 : index
            %28 = arith.select %23, %27, %26 : index
            %29 = arith.muli %28, %c4 : index
            %30 = arith.addi %arg5, %29 : index
            %31 = memref.load %arg1[%1, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %arg4] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %20 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %21 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
          %22 = arith.divf %21, %20 : f64
          memref.store %22, %arg1[%1, %arg4] : memref<?x40xf64>
        }
        %4 = arith.muli %arg3, %c-1 : index
        %5 = arith.muli %arg2, %c-4 : index
        %6 = arith.addi %4, %5 : index
        %7 = arith.addi %6, %c40 : index
        %8 = async.create_group %c42 : !async.group
        %9 = scf.for %arg4 = %c0 to %7 step %c1 iter_args(%arg5 = %c0) -> (index) {
          %token = async.execute {
            %12 = arith.addi %1, %arg4 : index
            %13 = arith.cmpi slt, %arg3, %c0 : index
            %14 = arith.subi %c-1, %arg3 : index
            %15 = arith.select %13, %14, %arg3 : index
            %16 = arith.divsi %15, %c4 : index
            %17 = arith.subi %c-1, %16 : index
            %18 = arith.select %13, %17, %16 : index
            %19 = arith.addi %arg2, %18 : index
            scf.for %arg6 = %c0 to %19 step %c1 {
              %24 = arith.muli %arg6, %c4 : index
              %25 = memref.load %arg1[%1, %24] : memref<?x40xf64>
              %26 = memref.load %arg1[%24, %12] : memref<?x40xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = memref.load %arg1[%1, %12] : memref<?x40xf64>
              %29 = arith.subf %28, %27 : f64
              memref.store %29, %arg1[%1, %12] : memref<?x40xf64>
              %30 = arith.addi %24, %c1 : index
              %31 = memref.load %arg1[%1, %30] : memref<?x40xf64>
              %32 = memref.load %arg1[%30, %12] : memref<?x40xf64>
              %33 = arith.mulf %31, %32 : f64
              %34 = memref.load %arg1[%1, %12] : memref<?x40xf64>
              %35 = arith.subf %34, %33 : f64
              memref.store %35, %arg1[%1, %12] : memref<?x40xf64>
              %36 = arith.addi %24, %c2 : index
              %37 = memref.load %arg1[%1, %36] : memref<?x40xf64>
              %38 = memref.load %arg1[%36, %12] : memref<?x40xf64>
              %39 = arith.mulf %37, %38 : f64
              %40 = memref.load %arg1[%1, %12] : memref<?x40xf64>
              %41 = arith.subf %40, %39 : f64
              memref.store %41, %arg1[%1, %12] : memref<?x40xf64>
              %42 = arith.addi %24, %c3 : index
              %43 = memref.load %arg1[%1, %42] : memref<?x40xf64>
              %44 = memref.load %arg1[%42, %12] : memref<?x40xf64>
              %45 = arith.mulf %43, %44 : f64
              %46 = memref.load %arg1[%1, %12] : memref<?x40xf64>
              %47 = arith.subf %46, %45 : f64
              memref.store %47, %arg1[%1, %12] : memref<?x40xf64>
            }
            %20 = arith.remsi %1, %c4 : index
            %21 = arith.cmpi slt, %20, %c0 : index
            %22 = arith.addi %20, %c4 : index
            %23 = arith.select %21, %22, %20 : index
            scf.for %arg6 = %c0 to %23 step %c1 {
              %24 = arith.cmpi slt, %1, %c0 : index
              %25 = arith.subi %c-1, %1 : index
              %26 = arith.select %24, %25, %1 : index
              %27 = arith.divsi %26, %c4 : index
              %28 = arith.subi %c-1, %27 : index
              %29 = arith.select %24, %28, %27 : index
              %30 = arith.muli %29, %c4 : index
              %31 = arith.addi %arg6, %30 : index
              %32 = memref.load %arg1[%1, %31] : memref<?x40xf64>
              %33 = memref.load %arg1[%31, %12] : memref<?x40xf64>
              %34 = arith.mulf %32, %33 : f64
              %35 = memref.load %arg1[%1, %12] : memref<?x40xf64>
              %36 = arith.subf %35, %34 : f64
              memref.store %36, %arg1[%1, %12] : memref<?x40xf64>
            }
            async.yield
          }
          %10 = async.add_to_group %token, %8 : !async.token
          %11 = arith.addi %arg5, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
      }
    }
    return
  }
}

