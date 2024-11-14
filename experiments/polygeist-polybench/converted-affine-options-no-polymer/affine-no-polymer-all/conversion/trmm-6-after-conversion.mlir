module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c19 = arith.constant 19 : index
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg5, %c32 : index
        scf.for %arg7 = %c0 to %c1 step %c1 {
          %5 = arith.muli %arg7, %c32 : index
          scf.for %arg8 = %c0 to %c20 step %c1 {
            %6 = arith.addi %4, %arg8 : index
            scf.for %arg9 = %c0 to %c30 step %c1 {
              %7 = arith.addi %5, %arg9 : index
              %8 = arith.muli %arg8, %c-1 : index
              %9 = arith.muli %arg5, %c-32 : index
              %10 = arith.addi %8, %9 : index
              %11 = arith.addi %10, %c19 : index
              %12 = arith.cmpi slt, %11, %c0 : index
              %13 = arith.subi %c-1, %11 : index
              %14 = arith.select %12, %13, %11 : index
              %15 = arith.divsi %14, %c4 : index
              %16 = arith.subi %c-1, %15 : index
              %17 = arith.select %12, %16, %15 : index
              scf.for %arg10 = %c0 to %17 step %c1 {
                %36 = arith.muli %arg10, %c4 : index
                %37 = arith.addi %6, %36 : index
                %38 = arith.addi %37, %c1 : index
                %39 = memref.load %arg3[%38, %6] : memref<?x20xf64>
                %40 = memref.load %arg4[%38, %7] : memref<?x30xf64>
                %41 = arith.mulf %39, %40 : f64
                %42 = memref.load %arg4[%6, %7] : memref<?x30xf64>
                %43 = arith.addf %42, %41 : f64
                memref.store %43, %arg4[%6, %7] : memref<?x30xf64>
                %44 = arith.addi %38, %c1 : index
                %45 = memref.load %arg3[%44, %6] : memref<?x20xf64>
                %46 = memref.load %arg4[%44, %7] : memref<?x30xf64>
                %47 = arith.mulf %45, %46 : f64
                %48 = memref.load %arg4[%6, %7] : memref<?x30xf64>
                %49 = arith.addf %48, %47 : f64
                memref.store %49, %arg4[%6, %7] : memref<?x30xf64>
                %50 = arith.addi %38, %c2 : index
                %51 = memref.load %arg3[%50, %6] : memref<?x20xf64>
                %52 = memref.load %arg4[%50, %7] : memref<?x30xf64>
                %53 = arith.mulf %51, %52 : f64
                %54 = memref.load %arg4[%6, %7] : memref<?x30xf64>
                %55 = arith.addf %54, %53 : f64
                memref.store %55, %arg4[%6, %7] : memref<?x30xf64>
                %56 = arith.addi %38, %c3 : index
                %57 = memref.load %arg3[%56, %6] : memref<?x20xf64>
                %58 = memref.load %arg4[%56, %7] : memref<?x30xf64>
                %59 = arith.mulf %57, %58 : f64
                %60 = memref.load %arg4[%6, %7] : memref<?x30xf64>
                %61 = arith.addf %60, %59 : f64
                memref.store %61, %arg4[%6, %7] : memref<?x30xf64>
              }
              %18 = arith.muli %arg8, %c-1 : index
              %19 = arith.muli %arg5, %c-32 : index
              %20 = arith.addi %18, %19 : index
              %21 = arith.muli %arg8, %c-1 : index
              %22 = arith.muli %arg5, %c-32 : index
              %23 = arith.addi %21, %22 : index
              %24 = arith.addi %23, %c19 : index
              %25 = arith.cmpi slt, %24, %c0 : index
              %26 = arith.subi %c-1, %24 : index
              %27 = arith.select %25, %26, %24 : index
              %28 = arith.divsi %27, %c4 : index
              %29 = arith.subi %c-1, %28 : index
              %30 = arith.select %25, %29, %28 : index
              %31 = arith.muli %30, %c-4 : index
              %32 = arith.addi %20, %31 : index
              %33 = arith.addi %32, %c19 : index
              scf.for %arg10 = %c0 to %33 step %c1 {
                %36 = arith.addi %6, %arg10 : index
                %37 = arith.muli %6, %c-1 : index
                %38 = arith.addi %37, %c19 : index
                %39 = arith.cmpi slt, %38, %c0 : index
                %40 = arith.subi %c-1, %38 : index
                %41 = arith.select %39, %40, %38 : index
                %42 = arith.divsi %41, %c4 : index
                %43 = arith.subi %c-1, %42 : index
                %44 = arith.select %39, %43, %42 : index
                %45 = arith.muli %44, %c4 : index
                %46 = arith.addi %36, %45 : index
                %47 = arith.addi %46, %c1 : index
                %48 = memref.load %arg3[%47, %6] : memref<?x20xf64>
                %49 = memref.load %arg4[%47, %7] : memref<?x30xf64>
                %50 = arith.mulf %48, %49 : f64
                %51 = memref.load %arg4[%6, %7] : memref<?x30xf64>
                %52 = arith.addf %51, %50 : f64
                memref.store %52, %arg4[%6, %7] : memref<?x30xf64>
              }
              %34 = memref.load %arg4[%6, %7] : memref<?x30xf64>
              %35 = arith.mulf %arg2, %34 : f64
              memref.store %35, %arg4[%6, %7] : memref<?x30xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg6, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

