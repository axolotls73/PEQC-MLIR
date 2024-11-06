module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %0 = arith.addi %arg2, %c1_1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %0 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        %1 = arith.addi %arg3, %c1_4 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %1 step %c1_5 {
          %c0_6 = arith.constant 0 : index
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %arg2, %c-1 : index
          %3 = arith.cmpi eq, %2, %c0_6 : index
          %c-1_7 = arith.constant -1 : index
          %4 = arith.addi %arg3, %c-1_7 : index
          %5 = arith.cmpi eq, %4, %c0_6 : index
          %6 = arith.andi %3, %5 : i1
          %7 = arith.cmpi eq, %arg4, %c0_6 : index
          %8 = arith.andi %6, %7 : i1
          scf.if %8 {
            %c33 = arith.constant 33 : index
            %c40 = arith.constant 40 : index
            %c1_21 = arith.constant 1 : index
            scf.parallel (%arg5) = (%c33) to (%c40) step (%c1_21) {
              %c32 = arith.constant 32 : index
              %c1_22 = arith.constant 1 : index
              scf.parallel (%arg6) = (%c32) to (%arg5) step (%c1_22) {
                %c1_23 = arith.constant 1 : index
                %c32_24 = arith.constant 32 : index
                %c1_25 = arith.constant 1 : index
                scf.for %arg7 = %c1_23 to %c32_24 step %c1_25 {
                  %39 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %c-1_26 = arith.constant -1 : index
                  %40 = arith.addi %arg7, %c-1_26 : index
                  %41 = memref.load %arg1[%arg5, %40] : memref<?x40xf64>
                  %c-1_27 = arith.constant -1 : index
                  %42 = arith.addi %arg7, %c-1_27 : index
                  %43 = memref.load %arg1[%arg6, %42] : memref<?x40xf64>
                  %44 = arith.mulf %41, %43 : f64
                  %45 = arith.subf %39, %44 : f64
                  memref.store %45, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                scf.reduce 
              }
              scf.reduce 
            }
          }
          %c0_8 = arith.constant 0 : index
          %9 = arith.cmpi eq, %arg2, %c0_8 : index
          %10 = arith.cmpi eq, %arg3, %c0_8 : index
          %11 = arith.andi %9, %10 : i1
          %12 = arith.cmpi eq, %arg4, %c0_8 : index
          %13 = arith.andi %11, %12 : i1
          scf.if %13 {
            %c0_21 = arith.constant 0 : index
            %c0_22 = arith.constant 0 : index
            %39 = memref.load %arg1[%c0_21, %c0_22] : memref<?x40xf64>
            %40 = math.sqrt %39 : f64
            %c0_23 = arith.constant 0 : index
            %c0_24 = arith.constant 0 : index
            memref.store %40, %arg1[%c0_23, %c0_24] : memref<?x40xf64>
            %c1_25 = arith.constant 1 : index
            %c0_26 = arith.constant 0 : index
            %41 = memref.load %arg1[%c1_25, %c0_26] : memref<?x40xf64>
            %c0_27 = arith.constant 0 : index
            %c0_28 = arith.constant 0 : index
            %42 = memref.load %arg1[%c0_27, %c0_28] : memref<?x40xf64>
            %43 = arith.divf %41, %42 : f64
            %c1_29 = arith.constant 1 : index
            %c0_30 = arith.constant 0 : index
            memref.store %43, %arg1[%c1_29, %c0_30] : memref<?x40xf64>
            %c1_31 = arith.constant 1 : index
            %c1_32 = arith.constant 1 : index
            %44 = memref.load %arg1[%c1_31, %c1_32] : memref<?x40xf64>
            %c1_33 = arith.constant 1 : index
            %c0_34 = arith.constant 0 : index
            %45 = memref.load %arg1[%c1_33, %c0_34] : memref<?x40xf64>
            %46 = arith.mulf %45, %45 : f64
            %47 = arith.subf %44, %46 : f64
            %c1_35 = arith.constant 1 : index
            %c1_36 = arith.constant 1 : index
            memref.store %47, %arg1[%c1_35, %c1_36] : memref<?x40xf64>
          }
          %c0_9 = arith.constant 0 : index
          %c-1_10 = arith.constant -1 : index
          %14 = arith.addi %arg2, %c-1_10 : index
          %15 = arith.cmpi eq, %14, %c0_9 : index
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %arg3, %c-1_11 : index
          %17 = arith.cmpi eq, %16, %c0_9 : index
          %18 = arith.andi %15, %17 : i1
          %c-1_12 = arith.constant -1 : index
          %19 = arith.addi %arg4, %c-1_12 : index
          %20 = arith.cmpi eq, %19, %c0_9 : index
          %21 = arith.andi %18, %20 : i1
          scf.if %21 {
            %c32 = arith.constant 32 : index
            %c32_21 = arith.constant 32 : index
            %39 = memref.load %arg1[%c32, %c32_21] : memref<?x40xf64>
            %c32_22 = arith.constant 32 : index
            %c31 = arith.constant 31 : index
            %40 = memref.load %arg1[%c32_22, %c31] : memref<?x40xf64>
            %41 = arith.mulf %40, %40 : f64
            %42 = arith.subf %39, %41 : f64
            %c32_23 = arith.constant 32 : index
            %c32_24 = arith.constant 32 : index
            memref.store %42, %arg1[%c32_23, %c32_24] : memref<?x40xf64>
          }
          %c0_13 = arith.constant 0 : index
          %c-1_14 = arith.constant -1 : index
          %22 = arith.muli %arg4, %c-1_14 : index
          %23 = arith.addi %arg3, %22 : index
          %24 = arith.cmpi eq, %23, %c0_13 : index
          scf.if %24 {
            %c2_21 = arith.constant 2 : index
            %c32 = arith.constant 32 : index
            %39 = arith.muli %arg2, %c32 : index
            %c32_22 = arith.constant 32 : index
            %40 = arith.muli %arg3, %c32_22 : index
            %c1_23 = arith.constant 1 : index
            %41 = arith.addi %40, %c1_23 : index
            %42 = arith.maxsi %c2_21, %39 : index
            %43 = arith.maxsi %42, %41 : index
            %c40 = arith.constant 40 : index
            %c32_24 = arith.constant 32 : index
            %44 = arith.muli %arg2, %c32_24 : index
            %c32_25 = arith.constant 32 : index
            %45 = arith.addi %44, %c32_25 : index
            %c32_26 = arith.constant 32 : index
            %46 = arith.muli %arg3, %c32_26 : index
            %c33 = arith.constant 33 : index
            %47 = arith.addi %46, %c33 : index
            %48 = arith.minsi %c40, %45 : index
            %49 = arith.minsi %48, %47 : index
            %c1_27 = arith.constant 1 : index
            scf.for %arg5 = %43 to %49 step %c1_27 {
              %c0_28 = arith.constant 0 : index
              %50 = arith.cmpi eq, %arg3, %c0_28 : index
              scf.if %50 {
                %c0_52 = arith.constant 0 : index
                %88 = memref.load %arg1[%arg5, %c0_52] : memref<?x40xf64>
                %c0_53 = arith.constant 0 : index
                %c0_54 = arith.constant 0 : index
                %89 = memref.load %arg1[%c0_53, %c0_54] : memref<?x40xf64>
                %90 = arith.divf %88, %89 : f64
                %c0_55 = arith.constant 0 : index
                memref.store %90, %arg1[%arg5, %c0_55] : memref<?x40xf64>
              }
              %c1_29 = arith.constant 1 : index
              %c32_30 = arith.constant 32 : index
              %51 = arith.muli %arg3, %c32_30 : index
              %52 = arith.maxsi %c1_29, %51 : index
              %c-1_31 = arith.constant -1 : index
              %53 = arith.addi %arg5, %c-1_31 : index
              %c1_32 = arith.constant 1 : index
              scf.for %arg6 = %52 to %53 step %c1_32 {
                %c1_52 = arith.constant 1 : index
                %c32_53 = arith.constant 32 : index
                %88 = arith.muli %arg3, %c32_53 : index
                %89 = arith.maxsi %c1_52, %88 : index
                %c1_54 = arith.constant 1 : index
                scf.for %arg7 = %89 to %arg6 step %c1_54 {
                  %105 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %c-1_58 = arith.constant -1 : index
                  %106 = arith.addi %arg7, %c-1_58 : index
                  %107 = memref.load %arg1[%arg5, %106] : memref<?x40xf64>
                  %c-1_59 = arith.constant -1 : index
                  %108 = arith.addi %arg7, %c-1_59 : index
                  %109 = memref.load %arg1[%arg6, %108] : memref<?x40xf64>
                  %110 = arith.mulf %107, %109 : f64
                  %111 = arith.subf %105, %110 : f64
                  memref.store %111, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %90 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %c-1_55 = arith.constant -1 : index
                %91 = arith.addi %arg6, %c-1_55 : index
                %92 = memref.load %arg1[%arg5, %91] : memref<?x40xf64>
                %93 = arith.mulf %92, %92 : f64
                %94 = arith.subf %90, %93 : f64
                memref.store %94, %arg1[%arg5, %arg5] : memref<?x40xf64>
                %95 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %c-1_56 = arith.constant -1 : index
                %96 = arith.addi %arg6, %c-1_56 : index
                %97 = memref.load %arg1[%arg5, %96] : memref<?x40xf64>
                %c-1_57 = arith.constant -1 : index
                %98 = arith.addi %arg6, %c-1_57 : index
                %99 = memref.load %arg1[%arg6, %98] : memref<?x40xf64>
                %100 = arith.mulf %97, %99 : f64
                %101 = arith.subf %95, %100 : f64
                memref.store %101, %arg1[%arg5, %arg6] : memref<?x40xf64>
                %102 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %103 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %104 = arith.divf %102, %103 : f64
                memref.store %104, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %c1_33 = arith.constant 1 : index
              %c32_34 = arith.constant 32 : index
              %54 = arith.muli %arg3, %c32_34 : index
              %55 = arith.maxsi %c1_33, %54 : index
              %c-1_35 = arith.constant -1 : index
              %56 = arith.addi %arg5, %c-1_35 : index
              %c1_36 = arith.constant 1 : index
              scf.for %arg6 = %55 to %56 step %c1_36 {
                %c-1_52 = arith.constant -1 : index
                %88 = arith.addi %arg5, %c-1_52 : index
                %89 = memref.load %arg1[%arg5, %88] : memref<?x40xf64>
                %c-1_53 = arith.constant -1 : index
                %90 = arith.addi %arg6, %c-1_53 : index
                %91 = memref.load %arg1[%arg5, %90] : memref<?x40xf64>
                %c-1_54 = arith.constant -1 : index
                %92 = arith.addi %arg5, %c-1_54 : index
                %c-1_55 = arith.constant -1 : index
                %93 = arith.addi %arg6, %c-1_55 : index
                %94 = memref.load %arg1[%92, %93] : memref<?x40xf64>
                %95 = arith.mulf %91, %94 : f64
                %96 = arith.subf %89, %95 : f64
                %c-1_56 = arith.constant -1 : index
                %97 = arith.addi %arg5, %c-1_56 : index
                memref.store %96, %arg1[%arg5, %97] : memref<?x40xf64>
              }
              %c-1_37 = arith.constant -1 : index
              %57 = arith.addi %arg5, %c-1_37 : index
              %c-1_38 = arith.constant -1 : index
              %58 = arith.addi %arg5, %c-1_38 : index
              %59 = memref.load %arg1[%57, %58] : memref<?x40xf64>
              %60 = math.sqrt %59 : f64
              %c-1_39 = arith.constant -1 : index
              %61 = arith.addi %arg5, %c-1_39 : index
              %c-1_40 = arith.constant -1 : index
              %62 = arith.addi %arg5, %c-1_40 : index
              memref.store %60, %arg1[%61, %62] : memref<?x40xf64>
              %63 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
              %c-2 = arith.constant -2 : index
              %64 = arith.addi %arg5, %c-2 : index
              %65 = memref.load %arg1[%arg5, %64] : memref<?x40xf64>
              %66 = arith.mulf %65, %65 : f64
              %67 = arith.subf %63, %66 : f64
              memref.store %67, %arg1[%arg5, %arg5] : memref<?x40xf64>
              %c-1_41 = arith.constant -1 : index
              %68 = arith.addi %arg5, %c-1_41 : index
              %69 = memref.load %arg1[%arg5, %68] : memref<?x40xf64>
              %c-2_42 = arith.constant -2 : index
              %70 = arith.addi %arg5, %c-2_42 : index
              %71 = memref.load %arg1[%arg5, %70] : memref<?x40xf64>
              %c-1_43 = arith.constant -1 : index
              %72 = arith.addi %arg5, %c-1_43 : index
              %c-2_44 = arith.constant -2 : index
              %73 = arith.addi %arg5, %c-2_44 : index
              %74 = memref.load %arg1[%72, %73] : memref<?x40xf64>
              %75 = arith.mulf %71, %74 : f64
              %76 = arith.subf %69, %75 : f64
              %c-1_45 = arith.constant -1 : index
              %77 = arith.addi %arg5, %c-1_45 : index
              memref.store %76, %arg1[%arg5, %77] : memref<?x40xf64>
              %c-1_46 = arith.constant -1 : index
              %78 = arith.addi %arg5, %c-1_46 : index
              %79 = memref.load %arg1[%arg5, %78] : memref<?x40xf64>
              %c-1_47 = arith.constant -1 : index
              %80 = arith.addi %arg5, %c-1_47 : index
              %c-1_48 = arith.constant -1 : index
              %81 = arith.addi %arg5, %c-1_48 : index
              %82 = memref.load %arg1[%80, %81] : memref<?x40xf64>
              %83 = arith.divf %79, %82 : f64
              %c-1_49 = arith.constant -1 : index
              %84 = arith.addi %arg5, %c-1_49 : index
              memref.store %83, %arg1[%arg5, %84] : memref<?x40xf64>
              %c0_50 = arith.constant 0 : index
              %c-1_51 = arith.constant -1 : index
              %85 = arith.muli %arg3, %c-1_51 : index
              %86 = arith.addi %arg2, %85 : index
              %87 = arith.cmpi eq, %86, %c0_50 : index
              scf.if %87 {
                %88 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %c-1_52 = arith.constant -1 : index
                %89 = arith.addi %arg5, %c-1_52 : index
                %90 = memref.load %arg1[%arg5, %89] : memref<?x40xf64>
                %91 = arith.mulf %90, %90 : f64
                %92 = arith.subf %88, %91 : f64
                memref.store %92, %arg1[%arg5, %arg5] : memref<?x40xf64>
              }
            }
          }
          %c0_15 = arith.constant 0 : index
          %c-1_16 = arith.constant -1 : index
          %25 = arith.addi %arg2, %c-1_16 : index
          %26 = arith.cmpi eq, %25, %c0_15 : index
          %27 = arith.cmpi eq, %arg3, %c0_15 : index
          %28 = arith.andi %26, %27 : i1
          %29 = arith.cmpi eq, %arg4, %c0_15 : index
          %30 = arith.andi %28, %29 : i1
          scf.if %30 {
            %c33 = arith.constant 33 : index
            %c40 = arith.constant 40 : index
            %c1_21 = arith.constant 1 : index
            scf.parallel (%arg5) = (%c33) to (%c40) step (%c1_21) {
              %c0_22 = arith.constant 0 : index
              %39 = memref.load %arg1[%arg5, %c0_22] : memref<?x40xf64>
              %c0_23 = arith.constant 0 : index
              %c0_24 = arith.constant 0 : index
              %40 = memref.load %arg1[%c0_23, %c0_24] : memref<?x40xf64>
              %41 = arith.divf %39, %40 : f64
              %c0_25 = arith.constant 0 : index
              memref.store %41, %arg1[%arg5, %c0_25] : memref<?x40xf64>
              %c1_26 = arith.constant 1 : index
              %c32 = arith.constant 32 : index
              %c1_27 = arith.constant 1 : index
              scf.for %arg6 = %c1_26 to %c32 step %c1_27 {
                %c1_28 = arith.constant 1 : index
                %c1_29 = arith.constant 1 : index
                scf.for %arg7 = %c1_28 to %arg6 step %c1_29 {
                  %57 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %c-1_33 = arith.constant -1 : index
                  %58 = arith.addi %arg7, %c-1_33 : index
                  %59 = memref.load %arg1[%arg5, %58] : memref<?x40xf64>
                  %c-1_34 = arith.constant -1 : index
                  %60 = arith.addi %arg7, %c-1_34 : index
                  %61 = memref.load %arg1[%arg6, %60] : memref<?x40xf64>
                  %62 = arith.mulf %59, %61 : f64
                  %63 = arith.subf %57, %62 : f64
                  memref.store %63, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %42 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %c-1_30 = arith.constant -1 : index
                %43 = arith.addi %arg6, %c-1_30 : index
                %44 = memref.load %arg1[%arg5, %43] : memref<?x40xf64>
                %45 = arith.mulf %44, %44 : f64
                %46 = arith.subf %42, %45 : f64
                memref.store %46, %arg1[%arg5, %arg5] : memref<?x40xf64>
                %47 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %c-1_31 = arith.constant -1 : index
                %48 = arith.addi %arg6, %c-1_31 : index
                %49 = memref.load %arg1[%arg5, %48] : memref<?x40xf64>
                %c-1_32 = arith.constant -1 : index
                %50 = arith.addi %arg6, %c-1_32 : index
                %51 = memref.load %arg1[%arg6, %50] : memref<?x40xf64>
                %52 = arith.mulf %49, %51 : f64
                %53 = arith.subf %47, %52 : f64
                memref.store %53, %arg1[%arg5, %arg6] : memref<?x40xf64>
                %54 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %55 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %56 = arith.divf %54, %55 : f64
                memref.store %56, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              scf.reduce 
            }
          }
          %c0_17 = arith.constant 0 : index
          %c-1_18 = arith.constant -1 : index
          %31 = arith.addi %arg2, %c-1_18 : index
          %32 = arith.cmpi eq, %31, %c0_17 : index
          %c-1_19 = arith.constant -1 : index
          %33 = arith.addi %arg3, %c-1_19 : index
          %34 = arith.cmpi eq, %33, %c0_17 : index
          %35 = arith.andi %32, %34 : i1
          %c-1_20 = arith.constant -1 : index
          %36 = arith.addi %arg4, %c-1_20 : index
          %37 = arith.cmpi eq, %36, %c0_17 : index
          %38 = arith.andi %35, %37 : i1
          scf.if %38 {
            %c39 = arith.constant 39 : index
            %c39_21 = arith.constant 39 : index
            %39 = memref.load %arg1[%c39, %c39_21] : memref<?x40xf64>
            %40 = math.sqrt %39 : f64
            %c39_22 = arith.constant 39 : index
            %c39_23 = arith.constant 39 : index
            memref.store %40, %arg1[%c39_22, %c39_23] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

