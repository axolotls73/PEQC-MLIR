module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c-1 = arith.constant -1 : index
    %c31 = arith.constant 31 : index
    %c10 = arith.constant 10 : index
    %c7 = arith.constant 7 : index
    %c-7 = arith.constant -7 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c3 step %c1 {
      %0 = arith.muli %arg6, %c32 : index
      %1 = arith.addi %0, %c-7 : index
      %2 = arith.cmpi sle, %1, %c0 : index
      %3 = arith.subi %c0, %1 : index
      %4 = arith.subi %1, %c1 : index
      %5 = arith.select %2, %3, %4 : index
      %6 = arith.divsi %5, %c7 : index
      %7 = arith.subi %c0, %6 : index
      %8 = arith.addi %6, %c1 : index
      %9 = arith.select %2, %7, %8 : index
      %10 = arith.maxsi %9, %c0 : index
      %11 = arith.muli %arg6, %c32 : index
      %12 = arith.addi %11, %c31 : index
      %13 = arith.cmpi slt, %12, %c0 : index
      %14 = arith.subi %c-1, %12 : index
      %15 = arith.select %13, %14, %12 : index
      %16 = arith.divsi %15, %c7 : index
      %17 = arith.subi %c-1, %16 : index
      %18 = arith.select %13, %17, %16 : index
      %19 = arith.addi %18, %c1 : index
      %20 = arith.minsi %19, %c10 : index
      scf.for %arg7 = %10 to %20 step %c1 {
        %21 = arith.muli %arg6, %c32 : index
        %22 = arith.muli %arg7, %c7 : index
        %23 = arith.maxsi %21, %22 : index
        %24 = arith.muli %arg6, %c32 : index
        %25 = arith.addi %24, %c32 : index
        %26 = arith.muli %arg7, %c7 : index
        %27 = arith.addi %26, %c8 : index
        %28 = arith.minsi %25, %27 : index
        scf.for %arg8 = %23 to %28 step %c1 {
          scf.for %arg9 = %c0 to %c12 step %c1 {
            memref.store %cst, %arg5[%arg9] : memref<?xf64>
          }
          scf.for %arg9 = %c0 to %c12 step %c1 {
            %29 = arith.muli %arg7, %c-7 : index
            %30 = arith.addi %29, %arg8 : index
            %31 = memref.load %arg3[%arg7, %30, %arg9] : memref<?x8x12xf64>
            scf.for %arg10 = %c0 to %c12 step %c1 {
              %32 = memref.load %arg5[%arg10] : memref<?xf64>
              %33 = memref.load %arg4[%arg9, %arg10] : memref<?x12xf64>
              %34 = arith.mulf %31, %33 : f64
              %35 = arith.addf %32, %34 : f64
              memref.store %35, %arg5[%arg10] : memref<?xf64>
            }
          }
          scf.for %arg9 = %c0 to %c12 step %c1 {
            %29 = memref.load %arg5[%arg9] : memref<?xf64>
            %30 = arith.muli %arg7, %c-7 : index
            %31 = arith.addi %30, %arg8 : index
            memref.store %29, %arg3[%arg7, %31, %arg9] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

