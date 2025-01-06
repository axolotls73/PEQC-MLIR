module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c40 = arith.constant 40 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c40 step %c1 {
      scf.for %arg6 = %c0 to %arg5 step %c1 {
        %1 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %1, %alloca[] : memref<f64>
        %2 = arith.cmpi slt, %arg6, %c0 : index
        %3 = arith.subi %c-1, %arg6 : index
        %4 = arith.select %2, %3, %arg6 : index
        %5 = arith.divsi %4, %c4 : index
        %6 = arith.subi %c-1, %5 : index
        %7 = arith.select %2, %6, %5 : index
        %8 = arith.muli %7, %c4 : index
        scf.for %arg7 = %c0 to %8 step %c4 {
          %19 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %20 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloca[] : memref<f64>
          %23 = arith.subf %22, %21 : f64
          memref.store %23, %alloca[] : memref<f64>
          %24 = arith.addi %arg7, %c1 : index
          %25 = memref.load %arg1[%arg5, %24] : memref<?x40xf64>
          %26 = memref.load %arg1[%24, %arg6] : memref<?x40xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %alloca[] : memref<f64>
          %29 = arith.subf %28, %27 : f64
          memref.store %29, %alloca[] : memref<f64>
          %30 = arith.addi %arg7, %c2 : index
          %31 = memref.load %arg1[%arg5, %30] : memref<?x40xf64>
          %32 = memref.load %arg1[%30, %arg6] : memref<?x40xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = memref.load %alloca[] : memref<f64>
          %35 = arith.subf %34, %33 : f64
          memref.store %35, %alloca[] : memref<f64>
          %36 = arith.addi %arg7, %c3 : index
          %37 = memref.load %arg1[%arg5, %36] : memref<?x40xf64>
          %38 = memref.load %arg1[%36, %arg6] : memref<?x40xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = memref.load %alloca[] : memref<f64>
          %41 = arith.subf %40, %39 : f64
          memref.store %41, %alloca[] : memref<f64>
        }
        %9 = arith.cmpi slt, %arg6, %c0 : index
        %10 = arith.subi %c-1, %arg6 : index
        %11 = arith.select %9, %10, %arg6 : index
        %12 = arith.divsi %11, %c4 : index
        %13 = arith.subi %c-1, %12 : index
        %14 = arith.select %9, %13, %12 : index
        %15 = arith.muli %14, %c4 : index
        scf.for %arg7 = %15 to %arg6 step %c1 {
          %19 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %20 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %alloca[] : memref<f64>
          %23 = arith.subf %22, %21 : f64
          memref.store %23, %alloca[] : memref<f64>
        }
        %16 = memref.load %alloca[] : memref<f64>
        %17 = memref.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %18 = arith.divf %16, %17 : f64
        memref.store %18, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      scf.for %arg6 = %arg5 to %c40 step %c1 {
        %1 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        memref.store %1, %alloca[] : memref<f64>
        %2 = arith.cmpi slt, %arg5, %c0 : index
        %3 = arith.subi %c-1, %arg5 : index
        %4 = arith.select %2, %3, %arg5 : index
        %5 = arith.divsi %4, %c4 : index
        %6 = arith.subi %c-1, %5 : index
        %7 = arith.select %2, %6, %5 : index
        %8 = arith.muli %7, %c4 : index
        scf.for %arg7 = %c0 to %8 step %c4 {
          %17 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %18 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloca[] : memref<f64>
          %21 = arith.subf %20, %19 : f64
          memref.store %21, %alloca[] : memref<f64>
          %22 = arith.addi %arg7, %c1 : index
          %23 = memref.load %arg1[%arg5, %22] : memref<?x40xf64>
          %24 = memref.load %arg1[%22, %arg6] : memref<?x40xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %alloca[] : memref<f64>
          %27 = arith.subf %26, %25 : f64
          memref.store %27, %alloca[] : memref<f64>
          %28 = arith.addi %arg7, %c2 : index
          %29 = memref.load %arg1[%arg5, %28] : memref<?x40xf64>
          %30 = memref.load %arg1[%28, %arg6] : memref<?x40xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = memref.load %alloca[] : memref<f64>
          %33 = arith.subf %32, %31 : f64
          memref.store %33, %alloca[] : memref<f64>
          %34 = arith.addi %arg7, %c3 : index
          %35 = memref.load %arg1[%arg5, %34] : memref<?x40xf64>
          %36 = memref.load %arg1[%34, %arg6] : memref<?x40xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %alloca[] : memref<f64>
          %39 = arith.subf %38, %37 : f64
          memref.store %39, %alloca[] : memref<f64>
        }
        %9 = arith.cmpi slt, %arg5, %c0 : index
        %10 = arith.subi %c-1, %arg5 : index
        %11 = arith.select %9, %10, %arg5 : index
        %12 = arith.divsi %11, %c4 : index
        %13 = arith.subi %c-1, %12 : index
        %14 = arith.select %9, %13, %12 : index
        %15 = arith.muli %14, %c4 : index
        scf.for %arg7 = %15 to %arg5 step %c1 {
          %17 = memref.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %18 = memref.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloca[] : memref<f64>
          %21 = arith.subf %20, %19 : f64
          memref.store %21, %alloca[] : memref<f64>
        }
        %16 = memref.load %alloca[] : memref<f64>
        memref.store %16, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = memref.load %arg2[%arg5] : memref<?xf64>
      memref.store %1, %alloca[] : memref<f64>
      %2 = arith.cmpi slt, %arg5, %c0 : index
      %3 = arith.subi %c-1, %arg5 : index
      %4 = arith.select %2, %3, %arg5 : index
      %5 = arith.divsi %4, %c4 : index
      %6 = arith.subi %c-1, %5 : index
      %7 = arith.select %2, %6, %5 : index
      %8 = arith.muli %7, %c4 : index
      scf.for %arg6 = %c0 to %8 step %c4 {
        %17 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %18 = memref.load %arg4[%arg6] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = memref.load %alloca[] : memref<f64>
        %21 = arith.subf %20, %19 : f64
        memref.store %21, %alloca[] : memref<f64>
        %22 = arith.addi %arg6, %c1 : index
        %23 = memref.load %arg1[%arg5, %22] : memref<?x40xf64>
        %24 = memref.load %arg4[%22] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = memref.load %alloca[] : memref<f64>
        %27 = arith.subf %26, %25 : f64
        memref.store %27, %alloca[] : memref<f64>
        %28 = arith.addi %arg6, %c2 : index
        %29 = memref.load %arg1[%arg5, %28] : memref<?x40xf64>
        %30 = memref.load %arg4[%28] : memref<?xf64>
        %31 = arith.mulf %29, %30 : f64
        %32 = memref.load %alloca[] : memref<f64>
        %33 = arith.subf %32, %31 : f64
        memref.store %33, %alloca[] : memref<f64>
        %34 = arith.addi %arg6, %c3 : index
        %35 = memref.load %arg1[%arg5, %34] : memref<?x40xf64>
        %36 = memref.load %arg4[%34] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = memref.load %alloca[] : memref<f64>
        %39 = arith.subf %38, %37 : f64
        memref.store %39, %alloca[] : memref<f64>
      }
      %9 = arith.cmpi slt, %arg5, %c0 : index
      %10 = arith.subi %c-1, %arg5 : index
      %11 = arith.select %9, %10, %arg5 : index
      %12 = arith.divsi %11, %c4 : index
      %13 = arith.subi %c-1, %12 : index
      %14 = arith.select %9, %13, %12 : index
      %15 = arith.muli %14, %c4 : index
      scf.for %arg6 = %15 to %arg5 step %c1 {
        %17 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %18 = memref.load %arg4[%arg6] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = memref.load %alloca[] : memref<f64>
        %21 = arith.subf %20, %19 : f64
        memref.store %21, %alloca[] : memref<f64>
      }
      %16 = memref.load %alloca[] : memref<f64>
      memref.store %16, %arg4[%arg5] : memref<?xf64>
    }
    scf.for %arg5 = %c0 to %c40 step %c1 {
      %1 = arith.muli %arg5, %c-1 : index
      %2 = arith.addi %1, %c39 : index
      %3 = memref.load %arg4[%2] : memref<?xf64>
      memref.store %3, %alloca[] : memref<f64>
      %4 = arith.muli %arg5, %c-1 : index
      %5 = arith.addi %4, %c40 : index
      %6 = arith.muli %arg5, %c-1 : index
      %7 = arith.cmpi slt, %arg5, %c0 : index
      %8 = arith.subi %c-1, %arg5 : index
      %9 = arith.select %7, %8, %arg5 : index
      %10 = arith.divsi %9, %c4 : index
      %11 = arith.subi %c-1, %10 : index
      %12 = arith.select %7, %11, %10 : index
      %13 = arith.muli %12, %c4 : index
      %14 = arith.addi %6, %13 : index
      %15 = arith.addi %14, %c40 : index
      scf.for %arg6 = %5 to %15 step %c4 {
        %35 = arith.muli %arg5, %c-1 : index
        %36 = arith.addi %35, %c39 : index
        %37 = memref.load %arg1[%36, %arg6] : memref<?x40xf64>
        %38 = memref.load %arg3[%arg6] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = memref.load %alloca[] : memref<f64>
        %41 = arith.subf %40, %39 : f64
        memref.store %41, %alloca[] : memref<f64>
        %42 = arith.addi %arg6, %c1 : index
        %43 = arith.muli %arg5, %c-1 : index
        %44 = arith.addi %43, %c39 : index
        %45 = memref.load %arg1[%44, %42] : memref<?x40xf64>
        %46 = memref.load %arg3[%42] : memref<?xf64>
        %47 = arith.mulf %45, %46 : f64
        %48 = memref.load %alloca[] : memref<f64>
        %49 = arith.subf %48, %47 : f64
        memref.store %49, %alloca[] : memref<f64>
        %50 = arith.addi %arg6, %c2 : index
        %51 = arith.muli %arg5, %c-1 : index
        %52 = arith.addi %51, %c39 : index
        %53 = memref.load %arg1[%52, %50] : memref<?x40xf64>
        %54 = memref.load %arg3[%50] : memref<?xf64>
        %55 = arith.mulf %53, %54 : f64
        %56 = memref.load %alloca[] : memref<f64>
        %57 = arith.subf %56, %55 : f64
        memref.store %57, %alloca[] : memref<f64>
        %58 = arith.addi %arg6, %c3 : index
        %59 = arith.muli %arg5, %c-1 : index
        %60 = arith.addi %59, %c39 : index
        %61 = memref.load %arg1[%60, %58] : memref<?x40xf64>
        %62 = memref.load %arg3[%58] : memref<?xf64>
        %63 = arith.mulf %61, %62 : f64
        %64 = memref.load %alloca[] : memref<f64>
        %65 = arith.subf %64, %63 : f64
        memref.store %65, %alloca[] : memref<f64>
      }
      %16 = arith.muli %arg5, %c-1 : index
      %17 = arith.cmpi slt, %arg5, %c0 : index
      %18 = arith.subi %c-1, %arg5 : index
      %19 = arith.select %17, %18, %arg5 : index
      %20 = arith.divsi %19, %c4 : index
      %21 = arith.subi %c-1, %20 : index
      %22 = arith.select %17, %21, %20 : index
      %23 = arith.muli %22, %c4 : index
      %24 = arith.addi %16, %23 : index
      %25 = arith.addi %24, %c40 : index
      scf.for %arg6 = %25 to %c40 step %c1 {
        %35 = arith.muli %arg5, %c-1 : index
        %36 = arith.addi %35, %c39 : index
        %37 = memref.load %arg1[%36, %arg6] : memref<?x40xf64>
        %38 = memref.load %arg3[%arg6] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = memref.load %alloca[] : memref<f64>
        %41 = arith.subf %40, %39 : f64
        memref.store %41, %alloca[] : memref<f64>
      }
      %26 = memref.load %alloca[] : memref<f64>
      %27 = arith.muli %arg5, %c-1 : index
      %28 = arith.addi %27, %c39 : index
      %29 = arith.muli %arg5, %c-1 : index
      %30 = arith.addi %29, %c39 : index
      %31 = memref.load %arg1[%28, %30] : memref<?x40xf64>
      %32 = arith.divf %26, %31 : f64
      %33 = arith.muli %arg5, %c-1 : index
      %34 = arith.addi %33, %c39 : index
      memref.store %32, %arg3[%34] : memref<?xf64>
    }
    return
  }
}

