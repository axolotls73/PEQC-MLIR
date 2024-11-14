module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c1 step %c1_0 {
      %c128 = arith.constant 128 : index
      %0 = arith.muli %arg2, %c128 : index
      %c0_1 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_1 to %c2 step %c1_2 {
        %c32 = arith.constant 32 : index
        %1 = arith.muli %arg3, %c32 : index
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %c1_4 step %c1_5 {
          %c128_6 = arith.constant 128 : index
          %2 = arith.muli %arg4, %c128_6 : index
          %c0_7 = arith.constant 0 : index
          %c15 = arith.constant 15 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg5 = %c0_7 to %c15 step %c1_8 {
            %c4 = arith.constant 4 : index
            %3 = arith.muli %arg5, %c4 : index
            %4 = arith.addi %0, %3 : index
            %c1_9 = arith.constant 1 : index
            %5 = arith.addi %4, %c1_9 : index
            %c2_10 = arith.constant 2 : index
            %6 = arith.addi %4, %c2_10 : index
            %c3 = arith.constant 3 : index
            %7 = arith.addi %4, %c3 : index
            %c0_11 = arith.constant 0 : index
            %c32_12 = arith.constant 32 : index
            %c-32 = arith.constant -32 : index
            %8 = arith.muli %arg3, %c-32 : index
            %c60 = arith.constant 60 : index
            %9 = arith.addi %8, %c60 : index
            %10 = arith.minsi %c32_12, %9 : index
            %c1_13 = arith.constant 1 : index
            scf.for %arg6 = %c0_11 to %10 step %c1_13 {
              %11 = arith.addi %1, %arg6 : index
              %c0_14 = arith.constant 0 : index
              %c15_15 = arith.constant 15 : index
              %c1_16 = arith.constant 1 : index
              scf.for %arg7 = %c0_14 to %c15_15 step %c1_16 {
                %c4_17 = arith.constant 4 : index
                %12 = arith.muli %arg7, %c4_17 : index
                %13 = arith.addi %2, %12 : index
                %14 = memref.load %arg1[%11, %13] : memref<?x60xi32>
                %15 = memref.load %arg1[%11, %4] : memref<?x60xi32>
                %16 = memref.load %arg1[%4, %13] : memref<?x60xi32>
                %17 = arith.addi %15, %16 : i32
                %18 = arith.cmpi slt, %14, %17 : i32
                %19 = arith.select %18, %14, %17 : i32
                memref.store %19, %arg1[%11, %13] : memref<?x60xi32>
                %c1_18 = arith.constant 1 : index
                %20 = arith.addi %13, %c1_18 : index
                %21 = memref.load %arg1[%11, %20] : memref<?x60xi32>
                %22 = memref.load %arg1[%11, %4] : memref<?x60xi32>
                %23 = memref.load %arg1[%4, %20] : memref<?x60xi32>
                %24 = arith.addi %22, %23 : i32
                %25 = arith.cmpi slt, %21, %24 : i32
                %26 = arith.select %25, %21, %24 : i32
                memref.store %26, %arg1[%11, %20] : memref<?x60xi32>
                %c2_19 = arith.constant 2 : index
                %27 = arith.addi %13, %c2_19 : index
                %28 = memref.load %arg1[%11, %27] : memref<?x60xi32>
                %29 = memref.load %arg1[%11, %4] : memref<?x60xi32>
                %30 = memref.load %arg1[%4, %27] : memref<?x60xi32>
                %31 = arith.addi %29, %30 : i32
                %32 = arith.cmpi slt, %28, %31 : i32
                %33 = arith.select %32, %28, %31 : i32
                memref.store %33, %arg1[%11, %27] : memref<?x60xi32>
                %c3_20 = arith.constant 3 : index
                %34 = arith.addi %13, %c3_20 : index
                %35 = memref.load %arg1[%11, %34] : memref<?x60xi32>
                %36 = memref.load %arg1[%11, %4] : memref<?x60xi32>
                %37 = memref.load %arg1[%4, %34] : memref<?x60xi32>
                %38 = arith.addi %36, %37 : i32
                %39 = arith.cmpi slt, %35, %38 : i32
                %40 = arith.select %39, %35, %38 : i32
                memref.store %40, %arg1[%11, %34] : memref<?x60xi32>
                %41 = memref.load %arg1[%11, %13] : memref<?x60xi32>
                %42 = memref.load %arg1[%11, %5] : memref<?x60xi32>
                %43 = memref.load %arg1[%5, %13] : memref<?x60xi32>
                %44 = arith.addi %42, %43 : i32
                %45 = arith.cmpi slt, %41, %44 : i32
                %46 = arith.select %45, %41, %44 : i32
                memref.store %46, %arg1[%11, %13] : memref<?x60xi32>
                %c1_21 = arith.constant 1 : index
                %47 = arith.addi %13, %c1_21 : index
                %48 = memref.load %arg1[%11, %47] : memref<?x60xi32>
                %49 = memref.load %arg1[%11, %5] : memref<?x60xi32>
                %50 = memref.load %arg1[%5, %47] : memref<?x60xi32>
                %51 = arith.addi %49, %50 : i32
                %52 = arith.cmpi slt, %48, %51 : i32
                %53 = arith.select %52, %48, %51 : i32
                memref.store %53, %arg1[%11, %47] : memref<?x60xi32>
                %c2_22 = arith.constant 2 : index
                %54 = arith.addi %13, %c2_22 : index
                %55 = memref.load %arg1[%11, %54] : memref<?x60xi32>
                %56 = memref.load %arg1[%11, %5] : memref<?x60xi32>
                %57 = memref.load %arg1[%5, %54] : memref<?x60xi32>
                %58 = arith.addi %56, %57 : i32
                %59 = arith.cmpi slt, %55, %58 : i32
                %60 = arith.select %59, %55, %58 : i32
                memref.store %60, %arg1[%11, %54] : memref<?x60xi32>
                %c3_23 = arith.constant 3 : index
                %61 = arith.addi %13, %c3_23 : index
                %62 = memref.load %arg1[%11, %61] : memref<?x60xi32>
                %63 = memref.load %arg1[%11, %5] : memref<?x60xi32>
                %64 = memref.load %arg1[%5, %61] : memref<?x60xi32>
                %65 = arith.addi %63, %64 : i32
                %66 = arith.cmpi slt, %62, %65 : i32
                %67 = arith.select %66, %62, %65 : i32
                memref.store %67, %arg1[%11, %61] : memref<?x60xi32>
                %68 = memref.load %arg1[%11, %13] : memref<?x60xi32>
                %69 = memref.load %arg1[%11, %6] : memref<?x60xi32>
                %70 = memref.load %arg1[%6, %13] : memref<?x60xi32>
                %71 = arith.addi %69, %70 : i32
                %72 = arith.cmpi slt, %68, %71 : i32
                %73 = arith.select %72, %68, %71 : i32
                memref.store %73, %arg1[%11, %13] : memref<?x60xi32>
                %c1_24 = arith.constant 1 : index
                %74 = arith.addi %13, %c1_24 : index
                %75 = memref.load %arg1[%11, %74] : memref<?x60xi32>
                %76 = memref.load %arg1[%11, %6] : memref<?x60xi32>
                %77 = memref.load %arg1[%6, %74] : memref<?x60xi32>
                %78 = arith.addi %76, %77 : i32
                %79 = arith.cmpi slt, %75, %78 : i32
                %80 = arith.select %79, %75, %78 : i32
                memref.store %80, %arg1[%11, %74] : memref<?x60xi32>
                %c2_25 = arith.constant 2 : index
                %81 = arith.addi %13, %c2_25 : index
                %82 = memref.load %arg1[%11, %81] : memref<?x60xi32>
                %83 = memref.load %arg1[%11, %6] : memref<?x60xi32>
                %84 = memref.load %arg1[%6, %81] : memref<?x60xi32>
                %85 = arith.addi %83, %84 : i32
                %86 = arith.cmpi slt, %82, %85 : i32
                %87 = arith.select %86, %82, %85 : i32
                memref.store %87, %arg1[%11, %81] : memref<?x60xi32>
                %c3_26 = arith.constant 3 : index
                %88 = arith.addi %13, %c3_26 : index
                %89 = memref.load %arg1[%11, %88] : memref<?x60xi32>
                %90 = memref.load %arg1[%11, %6] : memref<?x60xi32>
                %91 = memref.load %arg1[%6, %88] : memref<?x60xi32>
                %92 = arith.addi %90, %91 : i32
                %93 = arith.cmpi slt, %89, %92 : i32
                %94 = arith.select %93, %89, %92 : i32
                memref.store %94, %arg1[%11, %88] : memref<?x60xi32>
                %95 = memref.load %arg1[%11, %13] : memref<?x60xi32>
                %96 = memref.load %arg1[%11, %7] : memref<?x60xi32>
                %97 = memref.load %arg1[%7, %13] : memref<?x60xi32>
                %98 = arith.addi %96, %97 : i32
                %99 = arith.cmpi slt, %95, %98 : i32
                %100 = arith.select %99, %95, %98 : i32
                memref.store %100, %arg1[%11, %13] : memref<?x60xi32>
                %c1_27 = arith.constant 1 : index
                %101 = arith.addi %13, %c1_27 : index
                %102 = memref.load %arg1[%11, %101] : memref<?x60xi32>
                %103 = memref.load %arg1[%11, %7] : memref<?x60xi32>
                %104 = memref.load %arg1[%7, %101] : memref<?x60xi32>
                %105 = arith.addi %103, %104 : i32
                %106 = arith.cmpi slt, %102, %105 : i32
                %107 = arith.select %106, %102, %105 : i32
                memref.store %107, %arg1[%11, %101] : memref<?x60xi32>
                %c2_28 = arith.constant 2 : index
                %108 = arith.addi %13, %c2_28 : index
                %109 = memref.load %arg1[%11, %108] : memref<?x60xi32>
                %110 = memref.load %arg1[%11, %7] : memref<?x60xi32>
                %111 = memref.load %arg1[%7, %108] : memref<?x60xi32>
                %112 = arith.addi %110, %111 : i32
                %113 = arith.cmpi slt, %109, %112 : i32
                %114 = arith.select %113, %109, %112 : i32
                memref.store %114, %arg1[%11, %108] : memref<?x60xi32>
                %c3_29 = arith.constant 3 : index
                %115 = arith.addi %13, %c3_29 : index
                %116 = memref.load %arg1[%11, %115] : memref<?x60xi32>
                %117 = memref.load %arg1[%11, %7] : memref<?x60xi32>
                %118 = memref.load %arg1[%7, %115] : memref<?x60xi32>
                %119 = arith.addi %117, %118 : i32
                %120 = arith.cmpi slt, %116, %119 : i32
                %121 = arith.select %120, %116, %119 : i32
                memref.store %121, %arg1[%11, %115] : memref<?x60xi32>
              }
            }
          }
        }
      }
    }
    return
  }
}

