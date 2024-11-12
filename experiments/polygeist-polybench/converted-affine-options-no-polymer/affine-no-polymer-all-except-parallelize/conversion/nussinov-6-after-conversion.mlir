module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c59 = arith.constant 59 : index
    %c-1 = arith.constant -1 : index
    %c3_i32 = arith.constant 3 : i32
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c60 step %c1 {
      scf.for %arg4 = %c0 to %arg3 step %c1 {
        %0 = arith.muli %arg3, %c-1 : index
        %1 = arith.addi %0, %arg4 : index
        %2 = arith.addi %1, %c60 : index
        %3 = arith.muli %arg3, %c-1 : index
        %4 = arith.addi %3, %arg4 : index
        %5 = arith.addi %4, %c59 : index
        %6 = arith.cmpi sge, %5, %c0 : index
        scf.if %6 {
          %26 = arith.muli %arg3, %c-1 : index
          %27 = arith.addi %26, %c59 : index
          %28 = memref.load %arg2[%27, %2] : memref<?x60xi32>
          %29 = arith.muli %arg3, %c-1 : index
          %30 = arith.addi %29, %c59 : index
          %31 = arith.addi %2, %c-1 : index
          %32 = memref.load %arg2[%30, %31] : memref<?x60xi32>
          %33 = arith.cmpi sge, %28, %32 : i32
          %34 = arith.select %33, %28, %32 : i32
          %35 = arith.muli %arg3, %c-1 : index
          %36 = arith.addi %35, %c59 : index
          memref.store %34, %arg2[%36, %2] : memref<?x60xi32>
        }
        %7 = arith.addi %arg3, %c-1 : index
        %8 = arith.cmpi sge, %7, %c0 : index
        scf.if %8 {
          %26 = arith.muli %arg3, %c-1 : index
          %27 = arith.addi %26, %c59 : index
          %28 = memref.load %arg2[%27, %2] : memref<?x60xi32>
          %29 = arith.muli %arg3, %c-1 : index
          %30 = arith.addi %29, %c60 : index
          %31 = memref.load %arg2[%30, %2] : memref<?x60xi32>
          %32 = arith.cmpi sge, %28, %31 : i32
          %33 = arith.select %32, %28, %31 : i32
          %34 = arith.muli %arg3, %c-1 : index
          %35 = arith.addi %34, %c59 : index
          memref.store %33, %arg2[%35, %2] : memref<?x60xi32>
        }
        %9 = arith.muli %arg3, %c-1 : index
        %10 = arith.addi %9, %arg4 : index
        %11 = arith.addi %10, %c59 : index
        %12 = arith.cmpi sge, %11, %c0 : index
        %13 = arith.addi %arg3, %c-1 : index
        %14 = arith.cmpi sge, %13, %c0 : index
        %15 = arith.andi %12, %14 : i1
        scf.if %15 {
          %26 = arith.addi %arg4, %c-1 : index
          %27 = arith.cmpi sge, %26, %c0 : index
          scf.if %27 {
            %28 = arith.muli %arg3, %c-1 : index
            %29 = arith.addi %28, %c59 : index
            %30 = memref.load %arg2[%29, %2] : memref<?x60xi32>
            %31 = arith.muli %arg3, %c-1 : index
            %32 = arith.addi %31, %c60 : index
            %33 = arith.addi %2, %c-1 : index
            %34 = memref.load %arg2[%32, %33] : memref<?x60xi32>
            %35 = arith.muli %arg3, %c-1 : index
            %36 = arith.addi %35, %c59 : index
            %37 = memref.load %arg1[%36] : memref<?xi32>
            %38 = memref.load %arg1[%2] : memref<?xi32>
            %39 = arith.addi %37, %38 : i32
            %40 = arith.cmpi eq, %39, %c3_i32 : i32
            %41 = arith.extui %40 : i1 to i32
            %42 = arith.addi %34, %41 : i32
            %43 = arith.cmpi sge, %30, %42 : i32
            %44 = arith.select %43, %30, %42 : i32
            %45 = arith.muli %arg3, %c-1 : index
            %46 = arith.addi %45, %c59 : index
            memref.store %44, %arg2[%46, %2] : memref<?x60xi32>
          } else {
            %28 = arith.muli %arg3, %c-1 : index
            %29 = arith.addi %28, %c59 : index
            %30 = memref.load %arg2[%29, %2] : memref<?x60xi32>
            %31 = arith.muli %arg3, %c-1 : index
            %32 = arith.addi %31, %c60 : index
            %33 = arith.addi %2, %c-1 : index
            %34 = memref.load %arg2[%32, %33] : memref<?x60xi32>
            %35 = arith.cmpi sge, %30, %34 : i32
            %36 = arith.select %35, %30, %34 : i32
            %37 = arith.muli %arg3, %c-1 : index
            %38 = arith.addi %37, %c59 : index
            memref.store %36, %arg2[%38, %2] : memref<?x60xi32>
          }
        }
        %16 = arith.cmpi slt, %arg4, %c0 : index
        %17 = arith.subi %c-1, %arg4 : index
        %18 = arith.select %16, %17, %arg4 : index
        %19 = arith.divsi %18, %c4 : index
        %20 = arith.subi %c-1, %19 : index
        %21 = arith.select %16, %20, %19 : index
        scf.for %arg5 = %c0 to %21 step %c1 {
          %26 = arith.muli %arg3, %c-1 : index
          %27 = arith.muli %arg5, %c4 : index
          %28 = arith.addi %26, %27 : index
          %29 = arith.addi %28, %c60 : index
          %30 = arith.muli %arg3, %c-1 : index
          %31 = arith.addi %30, %c59 : index
          %32 = memref.load %arg2[%31, %2] : memref<?x60xi32>
          %33 = arith.muli %arg3, %c-1 : index
          %34 = arith.addi %33, %c59 : index
          %35 = memref.load %arg2[%34, %29] : memref<?x60xi32>
          %36 = arith.addi %29, %c1 : index
          %37 = memref.load %arg2[%36, %2] : memref<?x60xi32>
          %38 = arith.addi %35, %37 : i32
          %39 = arith.cmpi sge, %32, %38 : i32
          %40 = arith.select %39, %32, %38 : i32
          %41 = arith.muli %arg3, %c-1 : index
          %42 = arith.addi %41, %c59 : index
          memref.store %40, %arg2[%42, %2] : memref<?x60xi32>
          %43 = arith.addi %29, %c1 : index
          %44 = arith.muli %arg3, %c-1 : index
          %45 = arith.addi %44, %c59 : index
          %46 = memref.load %arg2[%45, %2] : memref<?x60xi32>
          %47 = arith.muli %arg3, %c-1 : index
          %48 = arith.addi %47, %c59 : index
          %49 = memref.load %arg2[%48, %43] : memref<?x60xi32>
          %50 = arith.addi %43, %c1 : index
          %51 = memref.load %arg2[%50, %2] : memref<?x60xi32>
          %52 = arith.addi %49, %51 : i32
          %53 = arith.cmpi sge, %46, %52 : i32
          %54 = arith.select %53, %46, %52 : i32
          %55 = arith.muli %arg3, %c-1 : index
          %56 = arith.addi %55, %c59 : index
          memref.store %54, %arg2[%56, %2] : memref<?x60xi32>
          %57 = arith.addi %29, %c2 : index
          %58 = arith.muli %arg3, %c-1 : index
          %59 = arith.addi %58, %c59 : index
          %60 = memref.load %arg2[%59, %2] : memref<?x60xi32>
          %61 = arith.muli %arg3, %c-1 : index
          %62 = arith.addi %61, %c59 : index
          %63 = memref.load %arg2[%62, %57] : memref<?x60xi32>
          %64 = arith.addi %57, %c1 : index
          %65 = memref.load %arg2[%64, %2] : memref<?x60xi32>
          %66 = arith.addi %63, %65 : i32
          %67 = arith.cmpi sge, %60, %66 : i32
          %68 = arith.select %67, %60, %66 : i32
          %69 = arith.muli %arg3, %c-1 : index
          %70 = arith.addi %69, %c59 : index
          memref.store %68, %arg2[%70, %2] : memref<?x60xi32>
          %71 = arith.addi %29, %c3 : index
          %72 = arith.muli %arg3, %c-1 : index
          %73 = arith.addi %72, %c59 : index
          %74 = memref.load %arg2[%73, %2] : memref<?x60xi32>
          %75 = arith.muli %arg3, %c-1 : index
          %76 = arith.addi %75, %c59 : index
          %77 = memref.load %arg2[%76, %71] : memref<?x60xi32>
          %78 = arith.addi %71, %c1 : index
          %79 = memref.load %arg2[%78, %2] : memref<?x60xi32>
          %80 = arith.addi %77, %79 : i32
          %81 = arith.cmpi sge, %74, %80 : i32
          %82 = arith.select %81, %74, %80 : i32
          %83 = arith.muli %arg3, %c-1 : index
          %84 = arith.addi %83, %c59 : index
          memref.store %82, %arg2[%84, %2] : memref<?x60xi32>
        }
        %22 = arith.remsi %arg4, %c4 : index
        %23 = arith.cmpi slt, %22, %c0 : index
        %24 = arith.addi %22, %c4 : index
        %25 = arith.select %23, %24, %22 : index
        scf.for %arg5 = %c0 to %25 step %c1 {
          %26 = arith.muli %arg3, %c-1 : index
          %27 = arith.addi %26, %arg5 : index
          %28 = arith.addi %arg3, %2 : index
          %29 = arith.cmpi slt, %28, %c0 : index
          %30 = arith.subi %c-1, %28 : index
          %31 = arith.select %29, %30, %28 : index
          %32 = arith.divsi %31, %c4 : index
          %33 = arith.subi %c-1, %32 : index
          %34 = arith.select %29, %33, %32 : index
          %35 = arith.muli %34, %c4 : index
          %36 = arith.addi %27, %35 : index
          %37 = arith.muli %arg3, %c-1 : index
          %38 = arith.addi %37, %c59 : index
          %39 = memref.load %arg2[%38, %2] : memref<?x60xi32>
          %40 = arith.muli %arg3, %c-1 : index
          %41 = arith.addi %40, %c59 : index
          %42 = memref.load %arg2[%41, %36] : memref<?x60xi32>
          %43 = arith.addi %36, %c1 : index
          %44 = memref.load %arg2[%43, %2] : memref<?x60xi32>
          %45 = arith.addi %42, %44 : i32
          %46 = arith.cmpi sge, %39, %45 : i32
          %47 = arith.select %46, %39, %45 : i32
          %48 = arith.muli %arg3, %c-1 : index
          %49 = arith.addi %48, %c59 : index
          memref.store %47, %arg2[%49, %2] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

