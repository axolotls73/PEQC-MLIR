module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg3 = %c0 to %c1 step %c1 iter_args(%arg4 = %c0) -> (index) {
        %token = async.execute {
          %4 = arith.addi %arg2, %arg3 : index
          %5 = arith.addi %arg2, %arg3 : index
          scf.for %arg5 = %c0 to %5 step %c1 {
            %20 = arith.cmpi slt, %arg5, %c0 : index
            %21 = arith.subi %c-1, %arg5 : index
            %22 = arith.select %20, %21, %arg5 : index
            %23 = arith.divsi %22, %c4 : index
            %24 = arith.subi %c-1, %23 : index
            %25 = arith.select %20, %24, %23 : index
            scf.for %arg6 = %c0 to %25 step %c1 {
              %33 = arith.muli %arg6, %c4 : index
              %34 = memref.load %arg1[%4, %33] : memref<?x40xf64>
              %35 = memref.load %arg1[%arg5, %33] : memref<?x40xf64>
              %36 = arith.mulf %34, %35 : f64
              %37 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
              %38 = arith.subf %37, %36 : f64
              memref.store %38, %arg1[%4, %arg5] : memref<?x40xf64>
              %39 = arith.addi %33, %c1 : index
              %40 = memref.load %arg1[%4, %39] : memref<?x40xf64>
              %41 = memref.load %arg1[%arg5, %39] : memref<?x40xf64>
              %42 = arith.mulf %40, %41 : f64
              %43 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
              %44 = arith.subf %43, %42 : f64
              memref.store %44, %arg1[%4, %arg5] : memref<?x40xf64>
              %45 = arith.addi %33, %c2 : index
              %46 = memref.load %arg1[%4, %45] : memref<?x40xf64>
              %47 = memref.load %arg1[%arg5, %45] : memref<?x40xf64>
              %48 = arith.mulf %46, %47 : f64
              %49 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
              %50 = arith.subf %49, %48 : f64
              memref.store %50, %arg1[%4, %arg5] : memref<?x40xf64>
              %51 = arith.addi %33, %c3 : index
              %52 = memref.load %arg1[%4, %51] : memref<?x40xf64>
              %53 = memref.load %arg1[%arg5, %51] : memref<?x40xf64>
              %54 = arith.mulf %52, %53 : f64
              %55 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
              %56 = arith.subf %55, %54 : f64
              memref.store %56, %arg1[%4, %arg5] : memref<?x40xf64>
            }
            %26 = arith.remsi %arg5, %c4 : index
            %27 = arith.cmpi slt, %26, %c0 : index
            %28 = arith.addi %26, %c4 : index
            %29 = arith.select %27, %28, %26 : index
            scf.for %arg6 = %c0 to %29 step %c1 {
              %33 = arith.cmpi slt, %arg5, %c0 : index
              %34 = arith.subi %c-1, %arg5 : index
              %35 = arith.select %33, %34, %arg5 : index
              %36 = arith.divsi %35, %c4 : index
              %37 = arith.subi %c-1, %36 : index
              %38 = arith.select %33, %37, %36 : index
              %39 = arith.muli %38, %c4 : index
              %40 = arith.addi %arg6, %39 : index
              %41 = memref.load %arg1[%4, %40] : memref<?x40xf64>
              %42 = memref.load %arg1[%arg5, %40] : memref<?x40xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
              %45 = arith.subf %44, %43 : f64
              memref.store %45, %arg1[%4, %arg5] : memref<?x40xf64>
            }
            %30 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
            %31 = memref.load %arg1[%4, %arg5] : memref<?x40xf64>
            %32 = arith.divf %31, %30 : f64
            memref.store %32, %arg1[%4, %arg5] : memref<?x40xf64>
          }
          %6 = arith.addi %arg2, %arg3 : index
          %7 = arith.cmpi slt, %6, %c0 : index
          %8 = arith.subi %c-1, %6 : index
          %9 = arith.select %7, %8, %6 : index
          %10 = arith.divsi %9, %c4 : index
          %11 = arith.subi %c-1, %10 : index
          %12 = arith.select %7, %11, %10 : index
          scf.for %arg5 = %c0 to %12 step %c1 {
            %20 = arith.muli %arg5, %c4 : index
            %21 = memref.load %arg1[%4, %20] : memref<?x40xf64>
            %22 = arith.mulf %21, %21 : f64
            %23 = memref.load %arg1[%4, %4] : memref<?x40xf64>
            %24 = arith.subf %23, %22 : f64
            memref.store %24, %arg1[%4, %4] : memref<?x40xf64>
            %25 = arith.addi %20, %c1 : index
            %26 = memref.load %arg1[%4, %25] : memref<?x40xf64>
            %27 = arith.mulf %26, %26 : f64
            %28 = memref.load %arg1[%4, %4] : memref<?x40xf64>
            %29 = arith.subf %28, %27 : f64
            memref.store %29, %arg1[%4, %4] : memref<?x40xf64>
            %30 = arith.addi %20, %c2 : index
            %31 = memref.load %arg1[%4, %30] : memref<?x40xf64>
            %32 = arith.mulf %31, %31 : f64
            %33 = memref.load %arg1[%4, %4] : memref<?x40xf64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %arg1[%4, %4] : memref<?x40xf64>
            %35 = arith.addi %20, %c3 : index
            %36 = memref.load %arg1[%4, %35] : memref<?x40xf64>
            %37 = arith.mulf %36, %36 : f64
            %38 = memref.load %arg1[%4, %4] : memref<?x40xf64>
            %39 = arith.subf %38, %37 : f64
            memref.store %39, %arg1[%4, %4] : memref<?x40xf64>
          }
          %13 = arith.addi %arg2, %arg3 : index
          %14 = arith.remsi %13, %c4 : index
          %15 = arith.cmpi slt, %14, %c0 : index
          %16 = arith.addi %14, %c4 : index
          %17 = arith.select %15, %16, %14 : index
          scf.for %arg5 = %c0 to %17 step %c1 {
            %20 = arith.cmpi slt, %4, %c0 : index
            %21 = arith.subi %c-1, %4 : index
            %22 = arith.select %20, %21, %4 : index
            %23 = arith.divsi %22, %c4 : index
            %24 = arith.subi %c-1, %23 : index
            %25 = arith.select %20, %24, %23 : index
            %26 = arith.muli %25, %c4 : index
            %27 = arith.addi %arg5, %26 : index
            %28 = memref.load %arg1[%4, %27] : memref<?x40xf64>
            %29 = arith.mulf %28, %28 : f64
            %30 = memref.load %arg1[%4, %4] : memref<?x40xf64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %arg1[%4, %4] : memref<?x40xf64>
          }
          %18 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %19 = math.sqrt %18 : f64
          memref.store %19, %arg1[%4, %4] : memref<?x40xf64>
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg4, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

