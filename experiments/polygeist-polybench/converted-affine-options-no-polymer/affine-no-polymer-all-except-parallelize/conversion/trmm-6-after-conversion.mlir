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
      scf.for %arg6 = %c0 to %c30 step %c1 {
        scf.for %arg7 = %c0 to %c1 step %c1 {
          %0 = arith.addi %arg5, %arg7 : index
          scf.for %arg8 = %c0 to %c1 step %c1 {
            %1 = arith.addi %arg6, %arg8 : index
            %2 = arith.muli %arg5, %c-1 : index
            %3 = arith.muli %arg7, %c-1 : index
            %4 = arith.addi %2, %3 : index
            %5 = arith.addi %4, %c19 : index
            %6 = arith.cmpi slt, %5, %c0 : index
            %7 = arith.subi %c-1, %5 : index
            %8 = arith.select %6, %7, %5 : index
            %9 = arith.divsi %8, %c4 : index
            %10 = arith.subi %c-1, %9 : index
            %11 = arith.select %6, %10, %9 : index
            scf.for %arg9 = %c0 to %11 step %c1 {
              %30 = arith.muli %arg9, %c4 : index
              %31 = arith.addi %0, %30 : index
              %32 = arith.addi %31, %c1 : index
              %33 = memref.load %arg3[%32, %0] : memref<?x20xf64>
              %34 = memref.load %arg4[%32, %1] : memref<?x30xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %37 = arith.addf %36, %35 : f64
              memref.store %37, %arg4[%0, %1] : memref<?x30xf64>
              %38 = arith.addi %32, %c1 : index
              %39 = memref.load %arg3[%38, %0] : memref<?x20xf64>
              %40 = memref.load %arg4[%38, %1] : memref<?x30xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %43 = arith.addf %42, %41 : f64
              memref.store %43, %arg4[%0, %1] : memref<?x30xf64>
              %44 = arith.addi %32, %c2 : index
              %45 = memref.load %arg3[%44, %0] : memref<?x20xf64>
              %46 = memref.load %arg4[%44, %1] : memref<?x30xf64>
              %47 = arith.mulf %45, %46 : f64
              %48 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %49 = arith.addf %48, %47 : f64
              memref.store %49, %arg4[%0, %1] : memref<?x30xf64>
              %50 = arith.addi %32, %c3 : index
              %51 = memref.load %arg3[%50, %0] : memref<?x20xf64>
              %52 = memref.load %arg4[%50, %1] : memref<?x30xf64>
              %53 = arith.mulf %51, %52 : f64
              %54 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %55 = arith.addf %54, %53 : f64
              memref.store %55, %arg4[%0, %1] : memref<?x30xf64>
            }
            %12 = arith.muli %arg5, %c-1 : index
            %13 = arith.muli %arg7, %c-1 : index
            %14 = arith.addi %12, %13 : index
            %15 = arith.muli %arg5, %c-1 : index
            %16 = arith.muli %arg7, %c-1 : index
            %17 = arith.addi %15, %16 : index
            %18 = arith.addi %17, %c19 : index
            %19 = arith.cmpi slt, %18, %c0 : index
            %20 = arith.subi %c-1, %18 : index
            %21 = arith.select %19, %20, %18 : index
            %22 = arith.divsi %21, %c4 : index
            %23 = arith.subi %c-1, %22 : index
            %24 = arith.select %19, %23, %22 : index
            %25 = arith.muli %24, %c-4 : index
            %26 = arith.addi %14, %25 : index
            %27 = arith.addi %26, %c19 : index
            scf.for %arg9 = %c0 to %27 step %c1 {
              %30 = arith.addi %0, %arg9 : index
              %31 = arith.muli %0, %c-1 : index
              %32 = arith.addi %31, %c19 : index
              %33 = arith.cmpi slt, %32, %c0 : index
              %34 = arith.subi %c-1, %32 : index
              %35 = arith.select %33, %34, %32 : index
              %36 = arith.divsi %35, %c4 : index
              %37 = arith.subi %c-1, %36 : index
              %38 = arith.select %33, %37, %36 : index
              %39 = arith.muli %38, %c4 : index
              %40 = arith.addi %30, %39 : index
              %41 = arith.addi %40, %c1 : index
              %42 = memref.load %arg3[%41, %0] : memref<?x20xf64>
              %43 = memref.load %arg4[%41, %1] : memref<?x30xf64>
              %44 = arith.mulf %42, %43 : f64
              %45 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %46 = arith.addf %45, %44 : f64
              memref.store %46, %arg4[%0, %1] : memref<?x30xf64>
            }
            %28 = memref.load %arg4[%0, %1] : memref<?x30xf64>
            %29 = arith.mulf %arg2, %28 : f64
            memref.store %29, %arg4[%0, %1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

