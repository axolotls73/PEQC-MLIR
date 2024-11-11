module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c38 = arith.constant 38 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c0_0 to %c38 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %0 = arith.addi %arg4, %c1_2 : index
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        %c1_5 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_3) to (%c1_4) step (%c1_5) {
          %1 = arith.addi %arg3, %arg5 : index
          %c0_6 = arith.constant 0 : index
          %c1_7 = arith.constant 1 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg6 = %c0_6 to %c1_7 step %c1_8 {
            %2 = arith.addi %0, %arg6 : index
            %c0_9 = arith.constant 0 : index
            %c9 = arith.constant 9 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg7 = %c0_9 to %c9 step %c1_10 {
              %c4 = arith.constant 4 : index
              %3 = arith.muli %arg7, %c4 : index
              %c1_13 = arith.constant 1 : index
              %4 = arith.addi %3, %c1_13 : index
              %c-1 = arith.constant -1 : index
              %5 = arith.addi %2, %c-1 : index
              %c-1_14 = arith.constant -1 : index
              %6 = arith.addi %4, %c-1_14 : index
              %7 = memref.load %arg2[%5, %6] : memref<?x40xf64>
              %c-1_15 = arith.constant -1 : index
              %8 = arith.addi %2, %c-1_15 : index
              %9 = memref.load %arg2[%8, %4] : memref<?x40xf64>
              %10 = arith.addf %7, %9 : f64
              %c-1_16 = arith.constant -1 : index
              %11 = arith.addi %2, %c-1_16 : index
              %c1_17 = arith.constant 1 : index
              %12 = arith.addi %4, %c1_17 : index
              %13 = memref.load %arg2[%11, %12] : memref<?x40xf64>
              %14 = arith.addf %10, %13 : f64
              %c-1_18 = arith.constant -1 : index
              %15 = arith.addi %4, %c-1_18 : index
              %16 = memref.load %arg2[%2, %15] : memref<?x40xf64>
              %17 = arith.addf %14, %16 : f64
              %18 = memref.load %arg2[%2, %4] : memref<?x40xf64>
              %19 = arith.addf %17, %18 : f64
              %c1_19 = arith.constant 1 : index
              %20 = arith.addi %4, %c1_19 : index
              %21 = memref.load %arg2[%2, %20] : memref<?x40xf64>
              %22 = arith.addf %19, %21 : f64
              %c1_20 = arith.constant 1 : index
              %23 = arith.addi %2, %c1_20 : index
              %c-1_21 = arith.constant -1 : index
              %24 = arith.addi %4, %c-1_21 : index
              %25 = memref.load %arg2[%23, %24] : memref<?x40xf64>
              %26 = arith.addf %22, %25 : f64
              %c1_22 = arith.constant 1 : index
              %27 = arith.addi %2, %c1_22 : index
              %28 = memref.load %arg2[%27, %4] : memref<?x40xf64>
              %29 = arith.addf %26, %28 : f64
              %c1_23 = arith.constant 1 : index
              %30 = arith.addi %2, %c1_23 : index
              %c1_24 = arith.constant 1 : index
              %31 = arith.addi %4, %c1_24 : index
              %32 = memref.load %arg2[%30, %31] : memref<?x40xf64>
              %33 = arith.addf %29, %32 : f64
              %34 = arith.divf %33, %cst : f64
              memref.store %34, %arg2[%2, %4] : memref<?x40xf64>
              %c1_25 = arith.constant 1 : index
              %35 = arith.addi %4, %c1_25 : index
              %c-1_26 = arith.constant -1 : index
              %36 = arith.addi %2, %c-1_26 : index
              %c-1_27 = arith.constant -1 : index
              %37 = arith.addi %35, %c-1_27 : index
              %38 = memref.load %arg2[%36, %37] : memref<?x40xf64>
              %c-1_28 = arith.constant -1 : index
              %39 = arith.addi %2, %c-1_28 : index
              %40 = memref.load %arg2[%39, %35] : memref<?x40xf64>
              %41 = arith.addf %38, %40 : f64
              %c-1_29 = arith.constant -1 : index
              %42 = arith.addi %2, %c-1_29 : index
              %c1_30 = arith.constant 1 : index
              %43 = arith.addi %35, %c1_30 : index
              %44 = memref.load %arg2[%42, %43] : memref<?x40xf64>
              %45 = arith.addf %41, %44 : f64
              %c-1_31 = arith.constant -1 : index
              %46 = arith.addi %35, %c-1_31 : index
              %47 = memref.load %arg2[%2, %46] : memref<?x40xf64>
              %48 = arith.addf %45, %47 : f64
              %49 = memref.load %arg2[%2, %35] : memref<?x40xf64>
              %50 = arith.addf %48, %49 : f64
              %c1_32 = arith.constant 1 : index
              %51 = arith.addi %35, %c1_32 : index
              %52 = memref.load %arg2[%2, %51] : memref<?x40xf64>
              %53 = arith.addf %50, %52 : f64
              %c1_33 = arith.constant 1 : index
              %54 = arith.addi %2, %c1_33 : index
              %c-1_34 = arith.constant -1 : index
              %55 = arith.addi %35, %c-1_34 : index
              %56 = memref.load %arg2[%54, %55] : memref<?x40xf64>
              %57 = arith.addf %53, %56 : f64
              %c1_35 = arith.constant 1 : index
              %58 = arith.addi %2, %c1_35 : index
              %59 = memref.load %arg2[%58, %35] : memref<?x40xf64>
              %60 = arith.addf %57, %59 : f64
              %c1_36 = arith.constant 1 : index
              %61 = arith.addi %2, %c1_36 : index
              %c1_37 = arith.constant 1 : index
              %62 = arith.addi %35, %c1_37 : index
              %63 = memref.load %arg2[%61, %62] : memref<?x40xf64>
              %64 = arith.addf %60, %63 : f64
              %65 = arith.divf %64, %cst : f64
              memref.store %65, %arg2[%2, %35] : memref<?x40xf64>
              %c2_38 = arith.constant 2 : index
              %66 = arith.addi %4, %c2_38 : index
              %c-1_39 = arith.constant -1 : index
              %67 = arith.addi %2, %c-1_39 : index
              %c-1_40 = arith.constant -1 : index
              %68 = arith.addi %66, %c-1_40 : index
              %69 = memref.load %arg2[%67, %68] : memref<?x40xf64>
              %c-1_41 = arith.constant -1 : index
              %70 = arith.addi %2, %c-1_41 : index
              %71 = memref.load %arg2[%70, %66] : memref<?x40xf64>
              %72 = arith.addf %69, %71 : f64
              %c-1_42 = arith.constant -1 : index
              %73 = arith.addi %2, %c-1_42 : index
              %c1_43 = arith.constant 1 : index
              %74 = arith.addi %66, %c1_43 : index
              %75 = memref.load %arg2[%73, %74] : memref<?x40xf64>
              %76 = arith.addf %72, %75 : f64
              %c-1_44 = arith.constant -1 : index
              %77 = arith.addi %66, %c-1_44 : index
              %78 = memref.load %arg2[%2, %77] : memref<?x40xf64>
              %79 = arith.addf %76, %78 : f64
              %80 = memref.load %arg2[%2, %66] : memref<?x40xf64>
              %81 = arith.addf %79, %80 : f64
              %c1_45 = arith.constant 1 : index
              %82 = arith.addi %66, %c1_45 : index
              %83 = memref.load %arg2[%2, %82] : memref<?x40xf64>
              %84 = arith.addf %81, %83 : f64
              %c1_46 = arith.constant 1 : index
              %85 = arith.addi %2, %c1_46 : index
              %c-1_47 = arith.constant -1 : index
              %86 = arith.addi %66, %c-1_47 : index
              %87 = memref.load %arg2[%85, %86] : memref<?x40xf64>
              %88 = arith.addf %84, %87 : f64
              %c1_48 = arith.constant 1 : index
              %89 = arith.addi %2, %c1_48 : index
              %90 = memref.load %arg2[%89, %66] : memref<?x40xf64>
              %91 = arith.addf %88, %90 : f64
              %c1_49 = arith.constant 1 : index
              %92 = arith.addi %2, %c1_49 : index
              %c1_50 = arith.constant 1 : index
              %93 = arith.addi %66, %c1_50 : index
              %94 = memref.load %arg2[%92, %93] : memref<?x40xf64>
              %95 = arith.addf %91, %94 : f64
              %96 = arith.divf %95, %cst : f64
              memref.store %96, %arg2[%2, %66] : memref<?x40xf64>
              %c3 = arith.constant 3 : index
              %97 = arith.addi %4, %c3 : index
              %c-1_51 = arith.constant -1 : index
              %98 = arith.addi %2, %c-1_51 : index
              %c-1_52 = arith.constant -1 : index
              %99 = arith.addi %97, %c-1_52 : index
              %100 = memref.load %arg2[%98, %99] : memref<?x40xf64>
              %c-1_53 = arith.constant -1 : index
              %101 = arith.addi %2, %c-1_53 : index
              %102 = memref.load %arg2[%101, %97] : memref<?x40xf64>
              %103 = arith.addf %100, %102 : f64
              %c-1_54 = arith.constant -1 : index
              %104 = arith.addi %2, %c-1_54 : index
              %c1_55 = arith.constant 1 : index
              %105 = arith.addi %97, %c1_55 : index
              %106 = memref.load %arg2[%104, %105] : memref<?x40xf64>
              %107 = arith.addf %103, %106 : f64
              %c-1_56 = arith.constant -1 : index
              %108 = arith.addi %97, %c-1_56 : index
              %109 = memref.load %arg2[%2, %108] : memref<?x40xf64>
              %110 = arith.addf %107, %109 : f64
              %111 = memref.load %arg2[%2, %97] : memref<?x40xf64>
              %112 = arith.addf %110, %111 : f64
              %c1_57 = arith.constant 1 : index
              %113 = arith.addi %97, %c1_57 : index
              %114 = memref.load %arg2[%2, %113] : memref<?x40xf64>
              %115 = arith.addf %112, %114 : f64
              %c1_58 = arith.constant 1 : index
              %116 = arith.addi %2, %c1_58 : index
              %c-1_59 = arith.constant -1 : index
              %117 = arith.addi %97, %c-1_59 : index
              %118 = memref.load %arg2[%116, %117] : memref<?x40xf64>
              %119 = arith.addf %115, %118 : f64
              %c1_60 = arith.constant 1 : index
              %120 = arith.addi %2, %c1_60 : index
              %121 = memref.load %arg2[%120, %97] : memref<?x40xf64>
              %122 = arith.addf %119, %121 : f64
              %c1_61 = arith.constant 1 : index
              %123 = arith.addi %2, %c1_61 : index
              %c1_62 = arith.constant 1 : index
              %124 = arith.addi %97, %c1_62 : index
              %125 = memref.load %arg2[%123, %124] : memref<?x40xf64>
              %126 = arith.addf %122, %125 : f64
              %127 = arith.divf %126, %cst : f64
              memref.store %127, %arg2[%2, %97] : memref<?x40xf64>
            }
            %c0_11 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg7 = %c0_11 to %c2 step %c1_12 {
              %c37 = arith.constant 37 : index
              %3 = arith.addi %arg7, %c37 : index
              %c-1 = arith.constant -1 : index
              %4 = arith.addi %2, %c-1 : index
              %c-1_13 = arith.constant -1 : index
              %5 = arith.addi %3, %c-1_13 : index
              %6 = memref.load %arg2[%4, %5] : memref<?x40xf64>
              %c-1_14 = arith.constant -1 : index
              %7 = arith.addi %2, %c-1_14 : index
              %8 = memref.load %arg2[%7, %3] : memref<?x40xf64>
              %9 = arith.addf %6, %8 : f64
              %c-1_15 = arith.constant -1 : index
              %10 = arith.addi %2, %c-1_15 : index
              %c1_16 = arith.constant 1 : index
              %11 = arith.addi %3, %c1_16 : index
              %12 = memref.load %arg2[%10, %11] : memref<?x40xf64>
              %13 = arith.addf %9, %12 : f64
              %c-1_17 = arith.constant -1 : index
              %14 = arith.addi %3, %c-1_17 : index
              %15 = memref.load %arg2[%2, %14] : memref<?x40xf64>
              %16 = arith.addf %13, %15 : f64
              %17 = memref.load %arg2[%2, %3] : memref<?x40xf64>
              %18 = arith.addf %16, %17 : f64
              %c1_18 = arith.constant 1 : index
              %19 = arith.addi %3, %c1_18 : index
              %20 = memref.load %arg2[%2, %19] : memref<?x40xf64>
              %21 = arith.addf %18, %20 : f64
              %c1_19 = arith.constant 1 : index
              %22 = arith.addi %2, %c1_19 : index
              %c-1_20 = arith.constant -1 : index
              %23 = arith.addi %3, %c-1_20 : index
              %24 = memref.load %arg2[%22, %23] : memref<?x40xf64>
              %25 = arith.addf %21, %24 : f64
              %c1_21 = arith.constant 1 : index
              %26 = arith.addi %2, %c1_21 : index
              %27 = memref.load %arg2[%26, %3] : memref<?x40xf64>
              %28 = arith.addf %25, %27 : f64
              %c1_22 = arith.constant 1 : index
              %29 = arith.addi %2, %c1_22 : index
              %c1_23 = arith.constant 1 : index
              %30 = arith.addi %3, %c1_23 : index
              %31 = memref.load %arg2[%29, %30] : memref<?x40xf64>
              %32 = arith.addf %28, %31 : f64
              %33 = arith.divf %32, %cst : f64
              memref.store %33, %arg2[%2, %3] : memref<?x40xf64>
            }
          }
          scf.reduce 
        }
      }
    }
    return
  }
}

