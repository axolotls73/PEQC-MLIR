module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c61 = arith.constant 61 : index
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
        %2 = arith.addi %1, %c59 : index
        %3 = arith.cmpi sge, %2, %c0 : index
        scf.if %3 {
          %13 = arith.muli %arg3, %c-1 : index
          %14 = arith.addi %13, %c59 : index
          %15 = arith.muli %arg3, %c-1 : index
          %16 = arith.addi %15, %arg4 : index
          %17 = arith.addi %16, %c60 : index
          %18 = memref.load %arg2[%14, %17] : memref<?x60xi32>
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c59 : index
          %21 = arith.muli %arg3, %c-1 : index
          %22 = arith.addi %21, %arg4 : index
          %23 = arith.addi %22, %c59 : index
          %24 = memref.load %arg2[%20, %23] : memref<?x60xi32>
          %25 = arith.cmpi sge, %18, %24 : i32
          %26 = arith.select %25, %18, %24 : i32
          %27 = arith.muli %arg3, %c-1 : index
          %28 = arith.addi %27, %c59 : index
          %29 = arith.muli %arg3, %c-1 : index
          %30 = arith.addi %29, %arg4 : index
          %31 = arith.addi %30, %c60 : index
          memref.store %26, %arg2[%28, %31] : memref<?x60xi32>
        }
        %4 = arith.addi %arg3, %c-1 : index
        %5 = arith.cmpi sge, %4, %c0 : index
        scf.if %5 {
          %13 = arith.muli %arg3, %c-1 : index
          %14 = arith.addi %13, %c59 : index
          %15 = arith.muli %arg3, %c-1 : index
          %16 = arith.addi %15, %arg4 : index
          %17 = arith.addi %16, %c60 : index
          %18 = memref.load %arg2[%14, %17] : memref<?x60xi32>
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c60 : index
          %21 = arith.muli %arg3, %c-1 : index
          %22 = arith.addi %21, %arg4 : index
          %23 = arith.addi %22, %c60 : index
          %24 = memref.load %arg2[%20, %23] : memref<?x60xi32>
          %25 = arith.cmpi sge, %18, %24 : i32
          %26 = arith.select %25, %18, %24 : i32
          %27 = arith.muli %arg3, %c-1 : index
          %28 = arith.addi %27, %c59 : index
          %29 = arith.muli %arg3, %c-1 : index
          %30 = arith.addi %29, %arg4 : index
          %31 = arith.addi %30, %c60 : index
          memref.store %26, %arg2[%28, %31] : memref<?x60xi32>
        }
        %6 = arith.muli %arg3, %c-1 : index
        %7 = arith.addi %6, %arg4 : index
        %8 = arith.addi %7, %c59 : index
        %9 = arith.cmpi sge, %8, %c0 : index
        %10 = arith.addi %arg3, %c-1 : index
        %11 = arith.cmpi sge, %10, %c0 : index
        %12 = arith.andi %9, %11 : i1
        scf.if %12 {
          %13 = arith.addi %arg4, %c-1 : index
          %14 = arith.cmpi sge, %13, %c0 : index
          scf.if %14 {
            %15 = arith.muli %arg3, %c-1 : index
            %16 = arith.addi %15, %c59 : index
            %17 = arith.muli %arg3, %c-1 : index
            %18 = arith.addi %17, %arg4 : index
            %19 = arith.addi %18, %c60 : index
            %20 = memref.load %arg2[%16, %19] : memref<?x60xi32>
            %21 = arith.muli %arg3, %c-1 : index
            %22 = arith.addi %21, %c60 : index
            %23 = arith.muli %arg3, %c-1 : index
            %24 = arith.addi %23, %arg4 : index
            %25 = arith.addi %24, %c59 : index
            %26 = memref.load %arg2[%22, %25] : memref<?x60xi32>
            %27 = arith.muli %arg3, %c-1 : index
            %28 = arith.addi %27, %c59 : index
            %29 = memref.load %arg1[%28] : memref<?xi32>
            %30 = arith.muli %arg3, %c-1 : index
            %31 = arith.addi %30, %arg4 : index
            %32 = arith.addi %31, %c60 : index
            %33 = memref.load %arg1[%32] : memref<?xi32>
            %34 = arith.addi %29, %33 : i32
            %35 = arith.cmpi eq, %34, %c3_i32 : i32
            %36 = arith.extui %35 : i1 to i32
            %37 = arith.addi %26, %36 : i32
            %38 = arith.cmpi sge, %20, %37 : i32
            %39 = arith.select %38, %20, %37 : i32
            %40 = arith.muli %arg3, %c-1 : index
            %41 = arith.addi %40, %c59 : index
            %42 = arith.muli %arg3, %c-1 : index
            %43 = arith.addi %42, %arg4 : index
            %44 = arith.addi %43, %c60 : index
            memref.store %39, %arg2[%41, %44] : memref<?x60xi32>
          } else {
            %15 = arith.muli %arg3, %c-1 : index
            %16 = arith.addi %15, %c59 : index
            %17 = arith.muli %arg3, %c-1 : index
            %18 = arith.addi %17, %arg4 : index
            %19 = arith.addi %18, %c60 : index
            %20 = memref.load %arg2[%16, %19] : memref<?x60xi32>
            %21 = arith.muli %arg3, %c-1 : index
            %22 = arith.addi %21, %c60 : index
            %23 = arith.muli %arg3, %c-1 : index
            %24 = arith.addi %23, %arg4 : index
            %25 = arith.addi %24, %c59 : index
            %26 = memref.load %arg2[%22, %25] : memref<?x60xi32>
            %27 = arith.cmpi sge, %20, %26 : i32
            %28 = arith.select %27, %20, %26 : i32
            %29 = arith.muli %arg3, %c-1 : index
            %30 = arith.addi %29, %c59 : index
            %31 = arith.muli %arg3, %c-1 : index
            %32 = arith.addi %31, %arg4 : index
            %33 = arith.addi %32, %c60 : index
            memref.store %28, %arg2[%30, %33] : memref<?x60xi32>
          }
        }
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %13 = arith.muli %arg3, %c-1 : index
          %14 = arith.addi %13, %c59 : index
          %15 = arith.muli %arg3, %c-1 : index
          %16 = arith.addi %15, %arg4 : index
          %17 = arith.addi %16, %c60 : index
          %18 = memref.load %arg2[%14, %17] : memref<?x60xi32>
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c59 : index
          %21 = arith.muli %arg3, %c-1 : index
          %22 = arith.addi %21, %arg5 : index
          %23 = arith.addi %22, %c60 : index
          %24 = memref.load %arg2[%20, %23] : memref<?x60xi32>
          %25 = arith.muli %arg3, %c-1 : index
          %26 = arith.addi %25, %arg5 : index
          %27 = arith.addi %26, %c61 : index
          %28 = arith.muli %arg3, %c-1 : index
          %29 = arith.addi %28, %arg4 : index
          %30 = arith.addi %29, %c60 : index
          %31 = memref.load %arg2[%27, %30] : memref<?x60xi32>
          %32 = arith.addi %24, %31 : i32
          %33 = arith.cmpi sge, %18, %32 : i32
          %34 = arith.select %33, %18, %32 : i32
          %35 = arith.muli %arg3, %c-1 : index
          %36 = arith.addi %35, %c59 : index
          %37 = arith.muli %arg3, %c-1 : index
          %38 = arith.addi %37, %arg4 : index
          %39 = arith.addi %38, %c60 : index
          memref.store %34, %arg2[%36, %39] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

