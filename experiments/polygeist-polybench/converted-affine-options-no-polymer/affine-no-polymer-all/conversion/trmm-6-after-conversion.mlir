module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c30 : !async.group
      %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg8 = %c0 to %c1 step %c1 {
            %4 = arith.addi %arg5, %arg8 : index
            scf.for %arg9 = %c0 to %c1 step %c1 {
              %5 = arith.addi %arg6, %arg9 : index
              %6 = arith.muli %arg5, %c-1 : index
              %7 = arith.muli %arg8, %c-1 : index
              %8 = arith.addi %6, %7 : index
              %9 = arith.addi %8, %c19 : index
              %10 = arith.cmpi slt, %9, %c0 : index
              %11 = arith.subi %c-1, %9 : index
              %12 = arith.select %10, %11, %9 : index
              %13 = arith.divsi %12, %c4 : index
              %14 = arith.subi %c-1, %13 : index
              %15 = arith.select %10, %14, %13 : index
              scf.for %arg10 = %c0 to %15 step %c1 {
                %34 = arith.muli %arg10, %c4 : index
                %35 = arith.addi %4, %34 : index
                %36 = arith.addi %35, %c1 : index
                %37 = memref.load %arg3[%36, %4] : memref<?x20xf64>
                %38 = memref.load %arg4[%36, %5] : memref<?x30xf64>
                %39 = arith.mulf %37, %38 : f64
                %40 = memref.load %arg4[%4, %5] : memref<?x30xf64>
                %41 = arith.addf %40, %39 : f64
                memref.store %41, %arg4[%4, %5] : memref<?x30xf64>
                %42 = arith.addi %36, %c1 : index
                %43 = memref.load %arg3[%42, %4] : memref<?x20xf64>
                %44 = memref.load %arg4[%42, %5] : memref<?x30xf64>
                %45 = arith.mulf %43, %44 : f64
                %46 = memref.load %arg4[%4, %5] : memref<?x30xf64>
                %47 = arith.addf %46, %45 : f64
                memref.store %47, %arg4[%4, %5] : memref<?x30xf64>
                %48 = arith.addi %36, %c2 : index
                %49 = memref.load %arg3[%48, %4] : memref<?x20xf64>
                %50 = memref.load %arg4[%48, %5] : memref<?x30xf64>
                %51 = arith.mulf %49, %50 : f64
                %52 = memref.load %arg4[%4, %5] : memref<?x30xf64>
                %53 = arith.addf %52, %51 : f64
                memref.store %53, %arg4[%4, %5] : memref<?x30xf64>
                %54 = arith.addi %36, %c3 : index
                %55 = memref.load %arg3[%54, %4] : memref<?x20xf64>
                %56 = memref.load %arg4[%54, %5] : memref<?x30xf64>
                %57 = arith.mulf %55, %56 : f64
                %58 = memref.load %arg4[%4, %5] : memref<?x30xf64>
                %59 = arith.addf %58, %57 : f64
                memref.store %59, %arg4[%4, %5] : memref<?x30xf64>
              }
              %16 = arith.muli %arg5, %c-1 : index
              %17 = arith.muli %arg8, %c-1 : index
              %18 = arith.addi %16, %17 : index
              %19 = arith.muli %arg5, %c-1 : index
              %20 = arith.muli %arg8, %c-1 : index
              %21 = arith.addi %19, %20 : index
              %22 = arith.addi %21, %c19 : index
              %23 = arith.cmpi slt, %22, %c0 : index
              %24 = arith.subi %c-1, %22 : index
              %25 = arith.select %23, %24, %22 : index
              %26 = arith.divsi %25, %c4 : index
              %27 = arith.subi %c-1, %26 : index
              %28 = arith.select %23, %27, %26 : index
              %29 = arith.muli %28, %c-4 : index
              %30 = arith.addi %18, %29 : index
              %31 = arith.addi %30, %c19 : index
              scf.for %arg10 = %c0 to %31 step %c1 {
                %34 = arith.addi %4, %arg10 : index
                %35 = arith.muli %4, %c-1 : index
                %36 = arith.addi %35, %c19 : index
                %37 = arith.cmpi slt, %36, %c0 : index
                %38 = arith.subi %c-1, %36 : index
                %39 = arith.select %37, %38, %36 : index
                %40 = arith.divsi %39, %c4 : index
                %41 = arith.subi %c-1, %40 : index
                %42 = arith.select %37, %41, %40 : index
                %43 = arith.muli %42, %c4 : index
                %44 = arith.addi %34, %43 : index
                %45 = arith.addi %44, %c1 : index
                %46 = memref.load %arg3[%45, %4] : memref<?x20xf64>
                %47 = memref.load %arg4[%45, %5] : memref<?x30xf64>
                %48 = arith.mulf %46, %47 : f64
                %49 = memref.load %arg4[%4, %5] : memref<?x30xf64>
                %50 = arith.addf %49, %48 : f64
                memref.store %50, %arg4[%4, %5] : memref<?x30xf64>
              }
              %32 = memref.load %arg4[%4, %5] : memref<?x30xf64>
              %33 = arith.mulf %arg2, %32 : f64
              memref.store %33, %arg4[%4, %5] : memref<?x30xf64>
            }
          }
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg7, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

