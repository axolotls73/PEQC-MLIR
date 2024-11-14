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
    scf.for %arg5 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg5, %c32 : index
      scf.for %arg6 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg6, %c32 : index
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %2 = arith.addi %0, %arg7 : index
          scf.for %arg8 = %c0 to %c30 step %c1 {
            %3 = arith.addi %1, %arg8 : index
            %4 = arith.muli %arg7, %c-1 : index
            %5 = arith.muli %arg5, %c-32 : index
            %6 = arith.addi %4, %5 : index
            %7 = arith.addi %6, %c19 : index
            %8 = arith.cmpi slt, %7, %c0 : index
            %9 = arith.subi %c-1, %7 : index
            %10 = arith.select %8, %9, %7 : index
            %11 = arith.divsi %10, %c4 : index
            %12 = arith.subi %c-1, %11 : index
            %13 = arith.select %8, %12, %11 : index
            scf.for %arg9 = %c0 to %13 step %c1 {
              %32 = arith.muli %arg9, %c4 : index
              %33 = arith.addi %2, %32 : index
              %34 = arith.addi %33, %c1 : index
              %35 = memref.load %arg3[%34, %2] : memref<?x20xf64>
              %36 = memref.load %arg4[%34, %3] : memref<?x30xf64>
              %37 = arith.mulf %35, %36 : f64
              %38 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %39 = arith.addf %38, %37 : f64
              memref.store %39, %arg4[%2, %3] : memref<?x30xf64>
              %40 = arith.addi %34, %c1 : index
              %41 = memref.load %arg3[%40, %2] : memref<?x20xf64>
              %42 = memref.load %arg4[%40, %3] : memref<?x30xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %45 = arith.addf %44, %43 : f64
              memref.store %45, %arg4[%2, %3] : memref<?x30xf64>
              %46 = arith.addi %34, %c2 : index
              %47 = memref.load %arg3[%46, %2] : memref<?x20xf64>
              %48 = memref.load %arg4[%46, %3] : memref<?x30xf64>
              %49 = arith.mulf %47, %48 : f64
              %50 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %51 = arith.addf %50, %49 : f64
              memref.store %51, %arg4[%2, %3] : memref<?x30xf64>
              %52 = arith.addi %34, %c3 : index
              %53 = memref.load %arg3[%52, %2] : memref<?x20xf64>
              %54 = memref.load %arg4[%52, %3] : memref<?x30xf64>
              %55 = arith.mulf %53, %54 : f64
              %56 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %57 = arith.addf %56, %55 : f64
              memref.store %57, %arg4[%2, %3] : memref<?x30xf64>
            }
            %14 = arith.muli %arg7, %c-1 : index
            %15 = arith.muli %arg5, %c-32 : index
            %16 = arith.addi %14, %15 : index
            %17 = arith.muli %arg7, %c-1 : index
            %18 = arith.muli %arg5, %c-32 : index
            %19 = arith.addi %17, %18 : index
            %20 = arith.addi %19, %c19 : index
            %21 = arith.cmpi slt, %20, %c0 : index
            %22 = arith.subi %c-1, %20 : index
            %23 = arith.select %21, %22, %20 : index
            %24 = arith.divsi %23, %c4 : index
            %25 = arith.subi %c-1, %24 : index
            %26 = arith.select %21, %25, %24 : index
            %27 = arith.muli %26, %c-4 : index
            %28 = arith.addi %16, %27 : index
            %29 = arith.addi %28, %c19 : index
            scf.for %arg9 = %c0 to %29 step %c1 {
              %32 = arith.addi %2, %arg9 : index
              %33 = arith.muli %2, %c-1 : index
              %34 = arith.addi %33, %c19 : index
              %35 = arith.cmpi slt, %34, %c0 : index
              %36 = arith.subi %c-1, %34 : index
              %37 = arith.select %35, %36, %34 : index
              %38 = arith.divsi %37, %c4 : index
              %39 = arith.subi %c-1, %38 : index
              %40 = arith.select %35, %39, %38 : index
              %41 = arith.muli %40, %c4 : index
              %42 = arith.addi %32, %41 : index
              %43 = arith.addi %42, %c1 : index
              %44 = memref.load %arg3[%43, %2] : memref<?x20xf64>
              %45 = memref.load %arg4[%43, %3] : memref<?x30xf64>
              %46 = arith.mulf %44, %45 : f64
              %47 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %48 = arith.addf %47, %46 : f64
              memref.store %48, %arg4[%2, %3] : memref<?x30xf64>
            }
            %30 = memref.load %arg4[%2, %3] : memref<?x30xf64>
            %31 = arith.mulf %arg2, %30 : f64
            memref.store %31, %arg4[%2, %3] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

