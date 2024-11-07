module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c15 step %c1 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg2, %c4 : index
      %c0_0 = arith.constant 0 : index
      %c60 = arith.constant 60 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %c60 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c15_3 = arith.constant 15 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg4 = %c0_2 to %c15_3 step %c1_4 {
          %c4_5 = arith.constant 4 : index
          %1 = arith.muli %arg4, %c4_5 : index
          %c0_6 = arith.constant 0 : index
          %c1_7 = arith.constant 1 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg5 = %c0_6 to %c1_7 step %c1_8 {
            %c4_9 = arith.constant 4 : index
            %2 = arith.muli %arg5, %c4_9 : index
            %3 = arith.addi %0, %2 : index
            %c0_10 = arith.constant 0 : index
            %c1_11 = arith.constant 1 : index
            %c1_12 = arith.constant 1 : index
            scf.parallel (%arg6) = (%c0_10) to (%c1_11) step (%c1_12) {
              %4 = arith.addi %arg3, %arg6 : index
              %c1_13 = arith.constant 1 : index
              %5 = arith.addi %3, %c1_13 : index
              %c2 = arith.constant 2 : index
              %6 = arith.addi %3, %c2 : index
              %c3 = arith.constant 3 : index
              %7 = arith.addi %3, %c3 : index
              %c0_14 = arith.constant 0 : index
              %c1_15 = arith.constant 1 : index
              %c1_16 = arith.constant 1 : index
              scf.for %arg7 = %c0_14 to %c1_15 step %c1_16 {
                %c4_17 = arith.constant 4 : index
                %8 = arith.muli %arg7, %c4_17 : index
                %9 = arith.addi %1, %8 : index
                %10 = memref.load %arg1[%4, %9] : memref<?x60xi32>
                %11 = memref.load %arg1[%4, %3] : memref<?x60xi32>
                %12 = memref.load %arg1[%3, %9] : memref<?x60xi32>
                %13 = arith.addi %11, %12 : i32
                %14 = arith.cmpi slt, %10, %13 : i32
                %15 = arith.select %14, %10, %13 : i32
                memref.store %15, %arg1[%4, %9] : memref<?x60xi32>
                %c1_18 = arith.constant 1 : index
                %16 = arith.addi %9, %c1_18 : index
                %17 = memref.load %arg1[%4, %16] : memref<?x60xi32>
                %18 = memref.load %arg1[%4, %3] : memref<?x60xi32>
                %19 = memref.load %arg1[%3, %16] : memref<?x60xi32>
                %20 = arith.addi %18, %19 : i32
                %21 = arith.cmpi slt, %17, %20 : i32
                %22 = arith.select %21, %17, %20 : i32
                memref.store %22, %arg1[%4, %16] : memref<?x60xi32>
                %c2_19 = arith.constant 2 : index
                %23 = arith.addi %9, %c2_19 : index
                %24 = memref.load %arg1[%4, %23] : memref<?x60xi32>
                %25 = memref.load %arg1[%4, %3] : memref<?x60xi32>
                %26 = memref.load %arg1[%3, %23] : memref<?x60xi32>
                %27 = arith.addi %25, %26 : i32
                %28 = arith.cmpi slt, %24, %27 : i32
                %29 = arith.select %28, %24, %27 : i32
                memref.store %29, %arg1[%4, %23] : memref<?x60xi32>
                %c3_20 = arith.constant 3 : index
                %30 = arith.addi %9, %c3_20 : index
                %31 = memref.load %arg1[%4, %30] : memref<?x60xi32>
                %32 = memref.load %arg1[%4, %3] : memref<?x60xi32>
                %33 = memref.load %arg1[%3, %30] : memref<?x60xi32>
                %34 = arith.addi %32, %33 : i32
                %35 = arith.cmpi slt, %31, %34 : i32
                %36 = arith.select %35, %31, %34 : i32
                memref.store %36, %arg1[%4, %30] : memref<?x60xi32>
                %37 = memref.load %arg1[%4, %9] : memref<?x60xi32>
                %38 = memref.load %arg1[%4, %5] : memref<?x60xi32>
                %39 = memref.load %arg1[%5, %9] : memref<?x60xi32>
                %40 = arith.addi %38, %39 : i32
                %41 = arith.cmpi slt, %37, %40 : i32
                %42 = arith.select %41, %37, %40 : i32
                memref.store %42, %arg1[%4, %9] : memref<?x60xi32>
                %c1_21 = arith.constant 1 : index
                %43 = arith.addi %9, %c1_21 : index
                %44 = memref.load %arg1[%4, %43] : memref<?x60xi32>
                %45 = memref.load %arg1[%4, %5] : memref<?x60xi32>
                %46 = memref.load %arg1[%5, %43] : memref<?x60xi32>
                %47 = arith.addi %45, %46 : i32
                %48 = arith.cmpi slt, %44, %47 : i32
                %49 = arith.select %48, %44, %47 : i32
                memref.store %49, %arg1[%4, %43] : memref<?x60xi32>
                %c2_22 = arith.constant 2 : index
                %50 = arith.addi %9, %c2_22 : index
                %51 = memref.load %arg1[%4, %50] : memref<?x60xi32>
                %52 = memref.load %arg1[%4, %5] : memref<?x60xi32>
                %53 = memref.load %arg1[%5, %50] : memref<?x60xi32>
                %54 = arith.addi %52, %53 : i32
                %55 = arith.cmpi slt, %51, %54 : i32
                %56 = arith.select %55, %51, %54 : i32
                memref.store %56, %arg1[%4, %50] : memref<?x60xi32>
                %c3_23 = arith.constant 3 : index
                %57 = arith.addi %9, %c3_23 : index
                %58 = memref.load %arg1[%4, %57] : memref<?x60xi32>
                %59 = memref.load %arg1[%4, %5] : memref<?x60xi32>
                %60 = memref.load %arg1[%5, %57] : memref<?x60xi32>
                %61 = arith.addi %59, %60 : i32
                %62 = arith.cmpi slt, %58, %61 : i32
                %63 = arith.select %62, %58, %61 : i32
                memref.store %63, %arg1[%4, %57] : memref<?x60xi32>
                %64 = memref.load %arg1[%4, %9] : memref<?x60xi32>
                %65 = memref.load %arg1[%4, %6] : memref<?x60xi32>
                %66 = memref.load %arg1[%6, %9] : memref<?x60xi32>
                %67 = arith.addi %65, %66 : i32
                %68 = arith.cmpi slt, %64, %67 : i32
                %69 = arith.select %68, %64, %67 : i32
                memref.store %69, %arg1[%4, %9] : memref<?x60xi32>
                %c1_24 = arith.constant 1 : index
                %70 = arith.addi %9, %c1_24 : index
                %71 = memref.load %arg1[%4, %70] : memref<?x60xi32>
                %72 = memref.load %arg1[%4, %6] : memref<?x60xi32>
                %73 = memref.load %arg1[%6, %70] : memref<?x60xi32>
                %74 = arith.addi %72, %73 : i32
                %75 = arith.cmpi slt, %71, %74 : i32
                %76 = arith.select %75, %71, %74 : i32
                memref.store %76, %arg1[%4, %70] : memref<?x60xi32>
                %c2_25 = arith.constant 2 : index
                %77 = arith.addi %9, %c2_25 : index
                %78 = memref.load %arg1[%4, %77] : memref<?x60xi32>
                %79 = memref.load %arg1[%4, %6] : memref<?x60xi32>
                %80 = memref.load %arg1[%6, %77] : memref<?x60xi32>
                %81 = arith.addi %79, %80 : i32
                %82 = arith.cmpi slt, %78, %81 : i32
                %83 = arith.select %82, %78, %81 : i32
                memref.store %83, %arg1[%4, %77] : memref<?x60xi32>
                %c3_26 = arith.constant 3 : index
                %84 = arith.addi %9, %c3_26 : index
                %85 = memref.load %arg1[%4, %84] : memref<?x60xi32>
                %86 = memref.load %arg1[%4, %6] : memref<?x60xi32>
                %87 = memref.load %arg1[%6, %84] : memref<?x60xi32>
                %88 = arith.addi %86, %87 : i32
                %89 = arith.cmpi slt, %85, %88 : i32
                %90 = arith.select %89, %85, %88 : i32
                memref.store %90, %arg1[%4, %84] : memref<?x60xi32>
                %91 = memref.load %arg1[%4, %9] : memref<?x60xi32>
                %92 = memref.load %arg1[%4, %7] : memref<?x60xi32>
                %93 = memref.load %arg1[%7, %9] : memref<?x60xi32>
                %94 = arith.addi %92, %93 : i32
                %95 = arith.cmpi slt, %91, %94 : i32
                %96 = arith.select %95, %91, %94 : i32
                memref.store %96, %arg1[%4, %9] : memref<?x60xi32>
                %c1_27 = arith.constant 1 : index
                %97 = arith.addi %9, %c1_27 : index
                %98 = memref.load %arg1[%4, %97] : memref<?x60xi32>
                %99 = memref.load %arg1[%4, %7] : memref<?x60xi32>
                %100 = memref.load %arg1[%7, %97] : memref<?x60xi32>
                %101 = arith.addi %99, %100 : i32
                %102 = arith.cmpi slt, %98, %101 : i32
                %103 = arith.select %102, %98, %101 : i32
                memref.store %103, %arg1[%4, %97] : memref<?x60xi32>
                %c2_28 = arith.constant 2 : index
                %104 = arith.addi %9, %c2_28 : index
                %105 = memref.load %arg1[%4, %104] : memref<?x60xi32>
                %106 = memref.load %arg1[%4, %7] : memref<?x60xi32>
                %107 = memref.load %arg1[%7, %104] : memref<?x60xi32>
                %108 = arith.addi %106, %107 : i32
                %109 = arith.cmpi slt, %105, %108 : i32
                %110 = arith.select %109, %105, %108 : i32
                memref.store %110, %arg1[%4, %104] : memref<?x60xi32>
                %c3_29 = arith.constant 3 : index
                %111 = arith.addi %9, %c3_29 : index
                %112 = memref.load %arg1[%4, %111] : memref<?x60xi32>
                %113 = memref.load %arg1[%4, %7] : memref<?x60xi32>
                %114 = memref.load %arg1[%7, %111] : memref<?x60xi32>
                %115 = arith.addi %113, %114 : i32
                %116 = arith.cmpi slt, %112, %115 : i32
                %117 = arith.select %116, %112, %115 : i32
                memref.store %117, %arg1[%4, %111] : memref<?x60xi32>
              }
              scf.reduce 
            }
          }
        }
      }
    }
    return
  }
}

