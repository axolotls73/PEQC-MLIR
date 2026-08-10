module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c60 step %c1 {
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg3, %c-1 : index
      %c60_0 = arith.constant 60 : index
      %1 = arith.addi %0, %c60_0 : index
      %c60_1 = arith.constant 60 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg4 = %1 to %c60_1 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c-1_4 = arith.constant -1 : index
        %2 = arith.addi %arg4, %c-1_4 : index
        %3 = arith.cmpi sge, %2, %c0_3 : index
        scf.if %3 {
          %c-1_23 = arith.constant -1 : index
          %33 = arith.muli %arg3, %c-1_23 : index
          %c59 = arith.constant 59 : index
          %34 = arith.addi %33, %c59 : index
          %35 = memref.load %arg2[%34, %arg4] : memref<?x60xi32>
          %c-1_24 = arith.constant -1 : index
          %36 = arith.muli %arg3, %c-1_24 : index
          %c59_25 = arith.constant 59 : index
          %37 = arith.addi %36, %c59_25 : index
          %c-1_26 = arith.constant -1 : index
          %38 = arith.addi %arg4, %c-1_26 : index
          %39 = memref.load %arg2[%37, %38] : memref<?x60xi32>
          %40 = arith.cmpi sge, %35, %39 : i32
          %41 = arith.select %40, %35, %39 : i32
          %c-1_27 = arith.constant -1 : index
          %42 = arith.muli %arg3, %c-1_27 : index
          %c59_28 = arith.constant 59 : index
          %43 = arith.addi %42, %c59_28 : index
          memref.store %41, %arg2[%43, %arg4] : memref<?x60xi32>
        }
        %c0_5 = arith.constant 0 : index
        %c-1_6 = arith.constant -1 : index
        %4 = arith.addi %arg3, %c-1_6 : index
        %5 = arith.cmpi sge, %4, %c0_5 : index
        scf.if %5 {
          %c-1_23 = arith.constant -1 : index
          %33 = arith.muli %arg3, %c-1_23 : index
          %c59 = arith.constant 59 : index
          %34 = arith.addi %33, %c59 : index
          %35 = memref.load %arg2[%34, %arg4] : memref<?x60xi32>
          %c-1_24 = arith.constant -1 : index
          %36 = arith.muli %arg3, %c-1_24 : index
          %c60_25 = arith.constant 60 : index
          %37 = arith.addi %36, %c60_25 : index
          %38 = memref.load %arg2[%37, %arg4] : memref<?x60xi32>
          %39 = arith.cmpi sge, %35, %38 : i32
          %40 = arith.select %39, %35, %38 : i32
          %c-1_26 = arith.constant -1 : index
          %41 = arith.muli %arg3, %c-1_26 : index
          %c59_27 = arith.constant 59 : index
          %42 = arith.addi %41, %c59_27 : index
          memref.store %40, %arg2[%42, %arg4] : memref<?x60xi32>
        }
        %c0_7 = arith.constant 0 : index
        %c-1_8 = arith.constant -1 : index
        %6 = arith.addi %arg4, %c-1_8 : index
        %7 = arith.cmpi sge, %6, %c0_7 : index
        %c-1_9 = arith.constant -1 : index
        %8 = arith.addi %arg3, %c-1_9 : index
        %9 = arith.cmpi sge, %8, %c0_7 : index
        %10 = arith.andi %7, %9 : i1
        scf.if %10 {
          %c0_23 = arith.constant 0 : index
          %33 = arith.addi %arg3, %arg4 : index
          %c-61 = arith.constant -61 : index
          %34 = arith.addi %33, %c-61 : index
          %35 = arith.cmpi sge, %34, %c0_23 : index
          scf.if %35 {
            %c-1_24 = arith.constant -1 : index
            %36 = arith.muli %arg3, %c-1_24 : index
            %c59 = arith.constant 59 : index
            %37 = arith.addi %36, %c59 : index
            %38 = memref.load %arg2[%37, %arg4] : memref<?x60xi32>
            %c-1_25 = arith.constant -1 : index
            %39 = arith.muli %arg3, %c-1_25 : index
            %c60_26 = arith.constant 60 : index
            %40 = arith.addi %39, %c60_26 : index
            %c-1_27 = arith.constant -1 : index
            %41 = arith.addi %arg4, %c-1_27 : index
            %42 = memref.load %arg2[%40, %41] : memref<?x60xi32>
            %c-1_28 = arith.constant -1 : index
            %43 = arith.muli %arg3, %c-1_28 : index
            %c59_29 = arith.constant 59 : index
            %44 = arith.addi %43, %c59_29 : index
            %45 = memref.load %arg1[%44] : memref<?xi32>
            %46 = memref.load %arg1[%arg4] : memref<?xi32>
            %47 = arith.addi %45, %46 : i32
            %48 = arith.cmpi eq, %47, %c3_i32 : i32
            %49 = arith.extui %48 : i1 to i32
            %50 = arith.addi %42, %49 : i32
            %51 = arith.cmpi sge, %38, %50 : i32
            %52 = arith.select %51, %38, %50 : i32
            %c-1_30 = arith.constant -1 : index
            %53 = arith.muli %arg3, %c-1_30 : index
            %c59_31 = arith.constant 59 : index
            %54 = arith.addi %53, %c59_31 : index
            memref.store %52, %arg2[%54, %arg4] : memref<?x60xi32>
          } else {
            %c-1_24 = arith.constant -1 : index
            %36 = arith.muli %arg3, %c-1_24 : index
            %c59 = arith.constant 59 : index
            %37 = arith.addi %36, %c59 : index
            %38 = memref.load %arg2[%37, %arg4] : memref<?x60xi32>
            %c-1_25 = arith.constant -1 : index
            %39 = arith.muli %arg3, %c-1_25 : index
            %c60_26 = arith.constant 60 : index
            %40 = arith.addi %39, %c60_26 : index
            %c-1_27 = arith.constant -1 : index
            %41 = arith.addi %arg4, %c-1_27 : index
            %42 = memref.load %arg2[%40, %41] : memref<?x60xi32>
            %43 = arith.cmpi sge, %38, %42 : i32
            %44 = arith.select %43, %38, %42 : i32
            %c-1_28 = arith.constant -1 : index
            %45 = arith.muli %arg3, %c-1_28 : index
            %c59_29 = arith.constant 59 : index
            %46 = arith.addi %45, %c59_29 : index
            memref.store %44, %arg2[%46, %arg4] : memref<?x60xi32>
          }
        }
        %c-1_10 = arith.constant -1 : index
        %11 = arith.muli %arg3, %c-1_10 : index
        %c60_11 = arith.constant 60 : index
        %12 = arith.addi %11, %c60_11 : index
        %c-1_12 = arith.constant -1 : index
        %13 = arith.muli %arg3, %c-1_12 : index
        %14 = arith.addi %arg3, %arg4 : index
        %c4 = arith.constant 4 : index
        %c0_13 = arith.constant 0 : index
        %c-1_14 = arith.constant -1 : index
        %15 = arith.cmpi slt, %14, %c0_13 : index
        %16 = arith.subi %c-1_14, %14 : index
        %17 = arith.select %15, %16, %14 : index
        %18 = arith.divsi %17, %c4 : index
        %19 = arith.subi %c-1_14, %18 : index
        %20 = arith.select %15, %19, %18 : index
        %c4_15 = arith.constant 4 : index
        %21 = arith.muli %20, %c4_15 : index
        %22 = arith.addi %13, %21 : index
        %c4_16 = arith.constant 4 : index
        scf.for %arg5 = %12 to %22 step %c4_16 {
          %c-1_23 = arith.constant -1 : index
          %33 = arith.muli %arg3, %c-1_23 : index
          %c59 = arith.constant 59 : index
          %34 = arith.addi %33, %c59 : index
          %35 = memref.load %arg2[%34, %arg4] : memref<?x60xi32>
          %c-1_24 = arith.constant -1 : index
          %36 = arith.muli %arg3, %c-1_24 : index
          %c59_25 = arith.constant 59 : index
          %37 = arith.addi %36, %c59_25 : index
          %38 = memref.load %arg2[%37, %arg5] : memref<?x60xi32>
          %c1_26 = arith.constant 1 : index
          %39 = arith.addi %arg5, %c1_26 : index
          %40 = memref.load %arg2[%39, %arg4] : memref<?x60xi32>
          %41 = arith.addi %38, %40 : i32
          %42 = arith.cmpi sge, %35, %41 : i32
          %43 = arith.select %42, %35, %41 : i32
          %c-1_27 = arith.constant -1 : index
          %44 = arith.muli %arg3, %c-1_27 : index
          %c59_28 = arith.constant 59 : index
          %45 = arith.addi %44, %c59_28 : index
          memref.store %43, %arg2[%45, %arg4] : memref<?x60xi32>
          %c1_29 = arith.constant 1 : index
          %46 = arith.addi %arg5, %c1_29 : index
          %c-1_30 = arith.constant -1 : index
          %47 = arith.muli %arg3, %c-1_30 : index
          %c59_31 = arith.constant 59 : index
          %48 = arith.addi %47, %c59_31 : index
          %49 = memref.load %arg2[%48, %arg4] : memref<?x60xi32>
          %c-1_32 = arith.constant -1 : index
          %50 = arith.muli %arg3, %c-1_32 : index
          %c59_33 = arith.constant 59 : index
          %51 = arith.addi %50, %c59_33 : index
          %52 = memref.load %arg2[%51, %46] : memref<?x60xi32>
          %c1_34 = arith.constant 1 : index
          %53 = arith.addi %46, %c1_34 : index
          %54 = memref.load %arg2[%53, %arg4] : memref<?x60xi32>
          %55 = arith.addi %52, %54 : i32
          %56 = arith.cmpi sge, %49, %55 : i32
          %57 = arith.select %56, %49, %55 : i32
          %c-1_35 = arith.constant -1 : index
          %58 = arith.muli %arg3, %c-1_35 : index
          %c59_36 = arith.constant 59 : index
          %59 = arith.addi %58, %c59_36 : index
          memref.store %57, %arg2[%59, %arg4] : memref<?x60xi32>
          %c2 = arith.constant 2 : index
          %60 = arith.addi %arg5, %c2 : index
          %c-1_37 = arith.constant -1 : index
          %61 = arith.muli %arg3, %c-1_37 : index
          %c59_38 = arith.constant 59 : index
          %62 = arith.addi %61, %c59_38 : index
          %63 = memref.load %arg2[%62, %arg4] : memref<?x60xi32>
          %c-1_39 = arith.constant -1 : index
          %64 = arith.muli %arg3, %c-1_39 : index
          %c59_40 = arith.constant 59 : index
          %65 = arith.addi %64, %c59_40 : index
          %66 = memref.load %arg2[%65, %60] : memref<?x60xi32>
          %c1_41 = arith.constant 1 : index
          %67 = arith.addi %60, %c1_41 : index
          %68 = memref.load %arg2[%67, %arg4] : memref<?x60xi32>
          %69 = arith.addi %66, %68 : i32
          %70 = arith.cmpi sge, %63, %69 : i32
          %71 = arith.select %70, %63, %69 : i32
          %c-1_42 = arith.constant -1 : index
          %72 = arith.muli %arg3, %c-1_42 : index
          %c59_43 = arith.constant 59 : index
          %73 = arith.addi %72, %c59_43 : index
          memref.store %71, %arg2[%73, %arg4] : memref<?x60xi32>
          %c3 = arith.constant 3 : index
          %74 = arith.addi %arg5, %c3 : index
          %c-1_44 = arith.constant -1 : index
          %75 = arith.muli %arg3, %c-1_44 : index
          %c59_45 = arith.constant 59 : index
          %76 = arith.addi %75, %c59_45 : index
          %77 = memref.load %arg2[%76, %arg4] : memref<?x60xi32>
          %c-1_46 = arith.constant -1 : index
          %78 = arith.muli %arg3, %c-1_46 : index
          %c59_47 = arith.constant 59 : index
          %79 = arith.addi %78, %c59_47 : index
          %80 = memref.load %arg2[%79, %74] : memref<?x60xi32>
          %c1_48 = arith.constant 1 : index
          %81 = arith.addi %74, %c1_48 : index
          %82 = memref.load %arg2[%81, %arg4] : memref<?x60xi32>
          %83 = arith.addi %80, %82 : i32
          %84 = arith.cmpi sge, %77, %83 : i32
          %85 = arith.select %84, %77, %83 : i32
          %c-1_49 = arith.constant -1 : index
          %86 = arith.muli %arg3, %c-1_49 : index
          %c59_50 = arith.constant 59 : index
          %87 = arith.addi %86, %c59_50 : index
          memref.store %85, %arg2[%87, %arg4] : memref<?x60xi32>
        }
        %c-1_17 = arith.constant -1 : index
        %23 = arith.muli %arg3, %c-1_17 : index
        %24 = arith.addi %arg3, %arg4 : index
        %c4_18 = arith.constant 4 : index
        %c0_19 = arith.constant 0 : index
        %c-1_20 = arith.constant -1 : index
        %25 = arith.cmpi slt, %24, %c0_19 : index
        %26 = arith.subi %c-1_20, %24 : index
        %27 = arith.select %25, %26, %24 : index
        %28 = arith.divsi %27, %c4_18 : index
        %29 = arith.subi %c-1_20, %28 : index
        %30 = arith.select %25, %29, %28 : index
        %c4_21 = arith.constant 4 : index
        %31 = arith.muli %30, %c4_21 : index
        %32 = arith.addi %23, %31 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg5 = %32 to %arg4 step %c1_22 {
          %c-1_23 = arith.constant -1 : index
          %33 = arith.muli %arg3, %c-1_23 : index
          %c59 = arith.constant 59 : index
          %34 = arith.addi %33, %c59 : index
          %35 = memref.load %arg2[%34, %arg4] : memref<?x60xi32>
          %c-1_24 = arith.constant -1 : index
          %36 = arith.muli %arg3, %c-1_24 : index
          %c59_25 = arith.constant 59 : index
          %37 = arith.addi %36, %c59_25 : index
          %38 = memref.load %arg2[%37, %arg5] : memref<?x60xi32>
          %c1_26 = arith.constant 1 : index
          %39 = arith.addi %arg5, %c1_26 : index
          %40 = memref.load %arg2[%39, %arg4] : memref<?x60xi32>
          %41 = arith.addi %38, %40 : i32
          %42 = arith.cmpi sge, %35, %41 : i32
          %43 = arith.select %42, %35, %41 : i32
          %c-1_27 = arith.constant -1 : index
          %44 = arith.muli %arg3, %c-1_27 : index
          %c59_28 = arith.constant 59 : index
          %45 = arith.addi %44, %c59_28 : index
          memref.store %43, %arg2[%45, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

