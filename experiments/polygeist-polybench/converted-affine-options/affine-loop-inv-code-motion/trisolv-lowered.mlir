module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg4, %c32 : index
      %c40 = arith.constant 40 : index
      %c32_3 = arith.constant 32 : index
      %1 = arith.muli %arg4, %c32_3 : index
      %c32_4 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_4 : index
      %3 = arith.minsi %c40, %2 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg5 = %0 to %3 step %c1_5 {
        %4 = memref.load %arg3[%arg5] : memref<?xf64>
        memref.store %4, %arg2[%arg5] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg4 = %c0_0 to %c2_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg4, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg5 = %c0_3 to %0 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %1 = arith.addi %arg4, %c-1 : index
        %2 = arith.cmpi eq, %1, %c0_6 : index
        %c-1_7 = arith.constant -1 : index
        %3 = arith.addi %arg5, %c-1_7 : index
        %4 = arith.cmpi eq, %3, %c0_6 : index
        %5 = arith.andi %2, %4 : i1
        scf.if %5 {
          %c32_19 = arith.constant 32 : index
          %25 = memref.load %arg2[%c32_19] : memref<?xf64>
          %c32_20 = arith.constant 32 : index
          %c31 = arith.constant 31 : index
          %26 = memref.load %arg1[%c32_20, %c31] : memref<?x40xf64>
          %c31_21 = arith.constant 31 : index
          %27 = memref.load %arg2[%c31_21] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.subf %25, %28 : f64
          %c32_22 = arith.constant 32 : index
          memref.store %29, %arg2[%c32_22] : memref<?xf64>
        }
        %c32 = arith.constant 32 : index
        %6 = arith.muli %arg4, %c32 : index
        %c32_8 = arith.constant 32 : index
        %7 = arith.muli %arg5, %c32_8 : index
        %c1_9 = arith.constant 1 : index
        %8 = arith.addi %7, %c1_9 : index
        %9 = arith.maxsi %6, %8 : index
        %c40 = arith.constant 40 : index
        %c32_10 = arith.constant 32 : index
        %10 = arith.muli %arg4, %c32_10 : index
        %c32_11 = arith.constant 32 : index
        %11 = arith.addi %10, %c32_11 : index
        %c32_12 = arith.constant 32 : index
        %12 = arith.muli %arg5, %c32_12 : index
        %c33 = arith.constant 33 : index
        %13 = arith.addi %12, %c33 : index
        %14 = arith.minsi %c40, %11 : index
        %15 = arith.minsi %14, %13 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg6 = %9 to %15 step %c1_13 {
          %c1_19 = arith.constant 1 : index
          %c32_20 = arith.constant 32 : index
          %25 = arith.muli %arg5, %c32_20 : index
          %26 = arith.maxsi %c1_19, %25 : index
          %c-1_21 = arith.constant -1 : index
          %27 = arith.addi %arg6, %c-1_21 : index
          %c1_22 = arith.constant 1 : index
          scf.for %arg7 = %26 to %27 step %c1_22 {
            %39 = memref.load %arg2[%arg6] : memref<?xf64>
            %c-1_28 = arith.constant -1 : index
            %40 = arith.addi %arg7, %c-1_28 : index
            %41 = memref.load %arg1[%arg6, %40] : memref<?x40xf64>
            %c-1_29 = arith.constant -1 : index
            %42 = arith.addi %arg7, %c-1_29 : index
            %43 = memref.load %arg2[%42] : memref<?xf64>
            %44 = arith.mulf %41, %43 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg2[%arg6] : memref<?xf64>
          }
          %c0_23 = arith.constant 0 : index
          %28 = arith.cmpi eq, %arg4, %c0_23 : index
          %29 = arith.cmpi eq, %arg5, %c0_23 : index
          %30 = arith.andi %28, %29 : i1
          %c-1_24 = arith.constant -1 : index
          %31 = arith.addi %arg6, %c-1_24 : index
          %32 = arith.cmpi eq, %31, %c0_23 : index
          %33 = arith.andi %30, %32 : i1
          scf.if %33 {
            %c0_28 = arith.constant 0 : index
            %39 = memref.load %arg2[%c0_28] : memref<?xf64>
            %c0_29 = arith.constant 0 : index
            %c0_30 = arith.constant 0 : index
            %40 = memref.load %arg1[%c0_29, %c0_30] : memref<?x40xf64>
            %41 = arith.divf %39, %40 : f64
            %c0_31 = arith.constant 0 : index
            memref.store %41, %arg2[%c0_31] : memref<?xf64>
          }
          %c0_25 = arith.constant 0 : index
          %c-2 = arith.constant -2 : index
          %34 = arith.addi %arg6, %c-2 : index
          %35 = arith.cmpi sge, %34, %c0_25 : index
          scf.if %35 {
            %c-1_28 = arith.constant -1 : index
            %39 = arith.addi %arg6, %c-1_28 : index
            %40 = memref.load %arg2[%39] : memref<?xf64>
            %c-1_29 = arith.constant -1 : index
            %41 = arith.addi %arg6, %c-1_29 : index
            %c-1_30 = arith.constant -1 : index
            %42 = arith.addi %arg6, %c-1_30 : index
            %43 = memref.load %arg1[%41, %42] : memref<?x40xf64>
            %44 = arith.divf %40, %43 : f64
            %c-1_31 = arith.constant -1 : index
            %45 = arith.addi %arg6, %c-1_31 : index
            memref.store %44, %arg2[%45] : memref<?xf64>
            %46 = memref.load %arg2[%arg6] : memref<?xf64>
            %c-2_32 = arith.constant -2 : index
            %47 = arith.addi %arg6, %c-2_32 : index
            %48 = memref.load %arg1[%arg6, %47] : memref<?x40xf64>
            %c-2_33 = arith.constant -2 : index
            %49 = arith.addi %arg6, %c-2_33 : index
            %50 = memref.load %arg2[%49] : memref<?xf64>
            %51 = arith.mulf %48, %50 : f64
            %52 = arith.subf %46, %51 : f64
            memref.store %52, %arg2[%arg6] : memref<?xf64>
          }
          %c0_26 = arith.constant 0 : index
          %c-1_27 = arith.constant -1 : index
          %36 = arith.muli %arg5, %c-1_27 : index
          %37 = arith.addi %arg4, %36 : index
          %38 = arith.cmpi eq, %37, %c0_26 : index
          scf.if %38 {
            %39 = memref.load %arg2[%arg6] : memref<?xf64>
            %c-1_28 = arith.constant -1 : index
            %40 = arith.addi %arg6, %c-1_28 : index
            %41 = memref.load %arg1[%arg6, %40] : memref<?x40xf64>
            %c-1_29 = arith.constant -1 : index
            %42 = arith.addi %arg6, %c-1_29 : index
            %43 = memref.load %arg2[%42] : memref<?xf64>
            %44 = arith.mulf %41, %43 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg2[%arg6] : memref<?xf64>
          }
        }
        %c0_14 = arith.constant 0 : index
        %c-1_15 = arith.constant -1 : index
        %16 = arith.addi %arg4, %c-1_15 : index
        %17 = arith.cmpi eq, %16, %c0_14 : index
        %18 = arith.cmpi eq, %arg5, %c0_14 : index
        %19 = arith.andi %17, %18 : i1
        scf.if %19 {
          %c33_19 = arith.constant 33 : index
          %c40_20 = arith.constant 40 : index
          %c1_21 = arith.constant 1 : index
          scf.for %arg6 = %c33_19 to %c40_20 step %c1_21 {
            %c1_22 = arith.constant 1 : index
            %c32_23 = arith.constant 32 : index
            %c1_24 = arith.constant 1 : index
            scf.for %arg7 = %c1_22 to %c32_23 step %c1_24 {
              %25 = memref.load %arg2[%arg6] : memref<?xf64>
              %c-1_25 = arith.constant -1 : index
              %26 = arith.addi %arg7, %c-1_25 : index
              %27 = memref.load %arg1[%arg6, %26] : memref<?x40xf64>
              %c-1_26 = arith.constant -1 : index
              %28 = arith.addi %arg7, %c-1_26 : index
              %29 = memref.load %arg2[%28] : memref<?xf64>
              %30 = arith.mulf %27, %29 : f64
              %31 = arith.subf %25, %30 : f64
              memref.store %31, %arg2[%arg6] : memref<?xf64>
            }
          }
        }
        %c0_16 = arith.constant 0 : index
        %c-1_17 = arith.constant -1 : index
        %20 = arith.addi %arg4, %c-1_17 : index
        %21 = arith.cmpi eq, %20, %c0_16 : index
        %c-1_18 = arith.constant -1 : index
        %22 = arith.addi %arg5, %c-1_18 : index
        %23 = arith.cmpi eq, %22, %c0_16 : index
        %24 = arith.andi %21, %23 : i1
        scf.if %24 {
          %c39 = arith.constant 39 : index
          %25 = memref.load %arg2[%c39] : memref<?xf64>
          %c39_19 = arith.constant 39 : index
          %c39_20 = arith.constant 39 : index
          %26 = memref.load %arg1[%c39_19, %c39_20] : memref<?x40xf64>
          %27 = arith.divf %25, %26 : f64
          %c39_21 = arith.constant 39 : index
          memref.store %27, %arg2[%c39_21] : memref<?xf64>
        }
      }
    }
    return
  }
}

