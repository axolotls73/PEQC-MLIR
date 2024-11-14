module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg3) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg3, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg4 = %c0_1 to %c2 step %c1_2 {
        %c32_3 = arith.constant 32 : index
        %1 = arith.muli %arg4, %c32_3 : index
        %c1_4 = arith.constant 1 : index
        %2 = arith.addi %1, %c1_4 : index
        %c0_5 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg5 = %c0_5 to %c20 step %c1_6 {
          %3 = arith.addi %0, %arg5 : index
          %c0_7 = arith.constant 0 : index
          %c32_8 = arith.constant 32 : index
          %c-32 = arith.constant -32 : index
          %4 = arith.muli %arg4, %c-32 : index
          %c38 = arith.constant 38 : index
          %5 = arith.addi %4, %c38 : index
          %6 = arith.minsi %c32_8, %5 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg6 = %c0_7 to %6 step %c1_9 {
            %7 = arith.addi %2, %arg6 : index
            %c0_10 = arith.constant 0 : index
            %c9 = arith.constant 9 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg7 = %c0_10 to %c9 step %c1_11 {
              %c4 = arith.constant 4 : index
              %8 = arith.muli %arg7, %c4 : index
              %c1_15 = arith.constant 1 : index
              %9 = arith.addi %8, %c1_15 : index
              %c-1 = arith.constant -1 : index
              %10 = arith.addi %7, %c-1 : index
              %c-1_16 = arith.constant -1 : index
              %11 = arith.addi %9, %c-1_16 : index
              %12 = memref.load %arg2[%10, %11] : memref<?x40xf64>
              %c-1_17 = arith.constant -1 : index
              %13 = arith.addi %7, %c-1_17 : index
              %14 = memref.load %arg2[%13, %9] : memref<?x40xf64>
              %15 = arith.addf %12, %14 : f64
              %c-1_18 = arith.constant -1 : index
              %16 = arith.addi %7, %c-1_18 : index
              %c1_19 = arith.constant 1 : index
              %17 = arith.addi %9, %c1_19 : index
              %18 = memref.load %arg2[%16, %17] : memref<?x40xf64>
              %19 = arith.addf %15, %18 : f64
              %c-1_20 = arith.constant -1 : index
              %20 = arith.addi %9, %c-1_20 : index
              %21 = memref.load %arg2[%7, %20] : memref<?x40xf64>
              %22 = arith.addf %19, %21 : f64
              %23 = memref.load %arg2[%7, %9] : memref<?x40xf64>
              %24 = arith.addf %22, %23 : f64
              %c1_21 = arith.constant 1 : index
              %25 = arith.addi %9, %c1_21 : index
              %26 = memref.load %arg2[%7, %25] : memref<?x40xf64>
              %27 = arith.addf %24, %26 : f64
              %c1_22 = arith.constant 1 : index
              %28 = arith.addi %7, %c1_22 : index
              %c-1_23 = arith.constant -1 : index
              %29 = arith.addi %9, %c-1_23 : index
              %30 = memref.load %arg2[%28, %29] : memref<?x40xf64>
              %31 = arith.addf %27, %30 : f64
              %c1_24 = arith.constant 1 : index
              %32 = arith.addi %7, %c1_24 : index
              %33 = memref.load %arg2[%32, %9] : memref<?x40xf64>
              %34 = arith.addf %31, %33 : f64
              %c1_25 = arith.constant 1 : index
              %35 = arith.addi %7, %c1_25 : index
              %c1_26 = arith.constant 1 : index
              %36 = arith.addi %9, %c1_26 : index
              %37 = memref.load %arg2[%35, %36] : memref<?x40xf64>
              %38 = arith.addf %34, %37 : f64
              %39 = arith.divf %38, %cst : f64
              memref.store %39, %arg2[%7, %9] : memref<?x40xf64>
              %c1_27 = arith.constant 1 : index
              %40 = arith.addi %9, %c1_27 : index
              %c-1_28 = arith.constant -1 : index
              %41 = arith.addi %7, %c-1_28 : index
              %c-1_29 = arith.constant -1 : index
              %42 = arith.addi %40, %c-1_29 : index
              %43 = memref.load %arg2[%41, %42] : memref<?x40xf64>
              %c-1_30 = arith.constant -1 : index
              %44 = arith.addi %7, %c-1_30 : index
              %45 = memref.load %arg2[%44, %40] : memref<?x40xf64>
              %46 = arith.addf %43, %45 : f64
              %c-1_31 = arith.constant -1 : index
              %47 = arith.addi %7, %c-1_31 : index
              %c1_32 = arith.constant 1 : index
              %48 = arith.addi %40, %c1_32 : index
              %49 = memref.load %arg2[%47, %48] : memref<?x40xf64>
              %50 = arith.addf %46, %49 : f64
              %c-1_33 = arith.constant -1 : index
              %51 = arith.addi %40, %c-1_33 : index
              %52 = memref.load %arg2[%7, %51] : memref<?x40xf64>
              %53 = arith.addf %50, %52 : f64
              %54 = memref.load %arg2[%7, %40] : memref<?x40xf64>
              %55 = arith.addf %53, %54 : f64
              %c1_34 = arith.constant 1 : index
              %56 = arith.addi %40, %c1_34 : index
              %57 = memref.load %arg2[%7, %56] : memref<?x40xf64>
              %58 = arith.addf %55, %57 : f64
              %c1_35 = arith.constant 1 : index
              %59 = arith.addi %7, %c1_35 : index
              %c-1_36 = arith.constant -1 : index
              %60 = arith.addi %40, %c-1_36 : index
              %61 = memref.load %arg2[%59, %60] : memref<?x40xf64>
              %62 = arith.addf %58, %61 : f64
              %c1_37 = arith.constant 1 : index
              %63 = arith.addi %7, %c1_37 : index
              %64 = memref.load %arg2[%63, %40] : memref<?x40xf64>
              %65 = arith.addf %62, %64 : f64
              %c1_38 = arith.constant 1 : index
              %66 = arith.addi %7, %c1_38 : index
              %c1_39 = arith.constant 1 : index
              %67 = arith.addi %40, %c1_39 : index
              %68 = memref.load %arg2[%66, %67] : memref<?x40xf64>
              %69 = arith.addf %65, %68 : f64
              %70 = arith.divf %69, %cst : f64
              memref.store %70, %arg2[%7, %40] : memref<?x40xf64>
              %c2_40 = arith.constant 2 : index
              %71 = arith.addi %9, %c2_40 : index
              %c-1_41 = arith.constant -1 : index
              %72 = arith.addi %7, %c-1_41 : index
              %c-1_42 = arith.constant -1 : index
              %73 = arith.addi %71, %c-1_42 : index
              %74 = memref.load %arg2[%72, %73] : memref<?x40xf64>
              %c-1_43 = arith.constant -1 : index
              %75 = arith.addi %7, %c-1_43 : index
              %76 = memref.load %arg2[%75, %71] : memref<?x40xf64>
              %77 = arith.addf %74, %76 : f64
              %c-1_44 = arith.constant -1 : index
              %78 = arith.addi %7, %c-1_44 : index
              %c1_45 = arith.constant 1 : index
              %79 = arith.addi %71, %c1_45 : index
              %80 = memref.load %arg2[%78, %79] : memref<?x40xf64>
              %81 = arith.addf %77, %80 : f64
              %c-1_46 = arith.constant -1 : index
              %82 = arith.addi %71, %c-1_46 : index
              %83 = memref.load %arg2[%7, %82] : memref<?x40xf64>
              %84 = arith.addf %81, %83 : f64
              %85 = memref.load %arg2[%7, %71] : memref<?x40xf64>
              %86 = arith.addf %84, %85 : f64
              %c1_47 = arith.constant 1 : index
              %87 = arith.addi %71, %c1_47 : index
              %88 = memref.load %arg2[%7, %87] : memref<?x40xf64>
              %89 = arith.addf %86, %88 : f64
              %c1_48 = arith.constant 1 : index
              %90 = arith.addi %7, %c1_48 : index
              %c-1_49 = arith.constant -1 : index
              %91 = arith.addi %71, %c-1_49 : index
              %92 = memref.load %arg2[%90, %91] : memref<?x40xf64>
              %93 = arith.addf %89, %92 : f64
              %c1_50 = arith.constant 1 : index
              %94 = arith.addi %7, %c1_50 : index
              %95 = memref.load %arg2[%94, %71] : memref<?x40xf64>
              %96 = arith.addf %93, %95 : f64
              %c1_51 = arith.constant 1 : index
              %97 = arith.addi %7, %c1_51 : index
              %c1_52 = arith.constant 1 : index
              %98 = arith.addi %71, %c1_52 : index
              %99 = memref.load %arg2[%97, %98] : memref<?x40xf64>
              %100 = arith.addf %96, %99 : f64
              %101 = arith.divf %100, %cst : f64
              memref.store %101, %arg2[%7, %71] : memref<?x40xf64>
              %c3 = arith.constant 3 : index
              %102 = arith.addi %9, %c3 : index
              %c-1_53 = arith.constant -1 : index
              %103 = arith.addi %7, %c-1_53 : index
              %c-1_54 = arith.constant -1 : index
              %104 = arith.addi %102, %c-1_54 : index
              %105 = memref.load %arg2[%103, %104] : memref<?x40xf64>
              %c-1_55 = arith.constant -1 : index
              %106 = arith.addi %7, %c-1_55 : index
              %107 = memref.load %arg2[%106, %102] : memref<?x40xf64>
              %108 = arith.addf %105, %107 : f64
              %c-1_56 = arith.constant -1 : index
              %109 = arith.addi %7, %c-1_56 : index
              %c1_57 = arith.constant 1 : index
              %110 = arith.addi %102, %c1_57 : index
              %111 = memref.load %arg2[%109, %110] : memref<?x40xf64>
              %112 = arith.addf %108, %111 : f64
              %c-1_58 = arith.constant -1 : index
              %113 = arith.addi %102, %c-1_58 : index
              %114 = memref.load %arg2[%7, %113] : memref<?x40xf64>
              %115 = arith.addf %112, %114 : f64
              %116 = memref.load %arg2[%7, %102] : memref<?x40xf64>
              %117 = arith.addf %115, %116 : f64
              %c1_59 = arith.constant 1 : index
              %118 = arith.addi %102, %c1_59 : index
              %119 = memref.load %arg2[%7, %118] : memref<?x40xf64>
              %120 = arith.addf %117, %119 : f64
              %c1_60 = arith.constant 1 : index
              %121 = arith.addi %7, %c1_60 : index
              %c-1_61 = arith.constant -1 : index
              %122 = arith.addi %102, %c-1_61 : index
              %123 = memref.load %arg2[%121, %122] : memref<?x40xf64>
              %124 = arith.addf %120, %123 : f64
              %c1_62 = arith.constant 1 : index
              %125 = arith.addi %7, %c1_62 : index
              %126 = memref.load %arg2[%125, %102] : memref<?x40xf64>
              %127 = arith.addf %124, %126 : f64
              %c1_63 = arith.constant 1 : index
              %128 = arith.addi %7, %c1_63 : index
              %c1_64 = arith.constant 1 : index
              %129 = arith.addi %102, %c1_64 : index
              %130 = memref.load %arg2[%128, %129] : memref<?x40xf64>
              %131 = arith.addf %127, %130 : f64
              %132 = arith.divf %131, %cst : f64
              memref.store %132, %arg2[%7, %102] : memref<?x40xf64>
            }
            %c0_12 = arith.constant 0 : index
            %c2_13 = arith.constant 2 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg7 = %c0_12 to %c2_13 step %c1_14 {
              %c37 = arith.constant 37 : index
              %8 = arith.addi %arg7, %c37 : index
              %c-1 = arith.constant -1 : index
              %9 = arith.addi %7, %c-1 : index
              %c-1_15 = arith.constant -1 : index
              %10 = arith.addi %8, %c-1_15 : index
              %11 = memref.load %arg2[%9, %10] : memref<?x40xf64>
              %c-1_16 = arith.constant -1 : index
              %12 = arith.addi %7, %c-1_16 : index
              %13 = memref.load %arg2[%12, %8] : memref<?x40xf64>
              %14 = arith.addf %11, %13 : f64
              %c-1_17 = arith.constant -1 : index
              %15 = arith.addi %7, %c-1_17 : index
              %c1_18 = arith.constant 1 : index
              %16 = arith.addi %8, %c1_18 : index
              %17 = memref.load %arg2[%15, %16] : memref<?x40xf64>
              %18 = arith.addf %14, %17 : f64
              %c-1_19 = arith.constant -1 : index
              %19 = arith.addi %8, %c-1_19 : index
              %20 = memref.load %arg2[%7, %19] : memref<?x40xf64>
              %21 = arith.addf %18, %20 : f64
              %22 = memref.load %arg2[%7, %8] : memref<?x40xf64>
              %23 = arith.addf %21, %22 : f64
              %c1_20 = arith.constant 1 : index
              %24 = arith.addi %8, %c1_20 : index
              %25 = memref.load %arg2[%7, %24] : memref<?x40xf64>
              %26 = arith.addf %23, %25 : f64
              %c1_21 = arith.constant 1 : index
              %27 = arith.addi %7, %c1_21 : index
              %c-1_22 = arith.constant -1 : index
              %28 = arith.addi %8, %c-1_22 : index
              %29 = memref.load %arg2[%27, %28] : memref<?x40xf64>
              %30 = arith.addf %26, %29 : f64
              %c1_23 = arith.constant 1 : index
              %31 = arith.addi %7, %c1_23 : index
              %32 = memref.load %arg2[%31, %8] : memref<?x40xf64>
              %33 = arith.addf %30, %32 : f64
              %c1_24 = arith.constant 1 : index
              %34 = arith.addi %7, %c1_24 : index
              %c1_25 = arith.constant 1 : index
              %35 = arith.addi %8, %c1_25 : index
              %36 = memref.load %arg2[%34, %35] : memref<?x40xf64>
              %37 = arith.addf %33, %36 : f64
              %38 = arith.divf %37, %cst : f64
              memref.store %38, %arg2[%7, %8] : memref<?x40xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

