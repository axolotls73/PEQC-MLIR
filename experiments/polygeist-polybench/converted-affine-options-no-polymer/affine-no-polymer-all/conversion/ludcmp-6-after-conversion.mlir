module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c8 = arith.constant 8 : index
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c2 step %c1 {
      %1 = arith.muli %arg5, %c32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %3, %c32 : index
      scf.for %arg6 = %c0 to %4 step %c1 {
        %5 = arith.addi %1, %arg6 : index
        %6 = arith.muli %arg5, %c32 : index
        %7 = arith.addi %arg6, %6 : index
        scf.for %arg7 = %c0 to %7 step %c1 {
          %12 = memref.load %arg1[%5, %arg7] : memref<?x40xf64>
          memref.store %12, %alloca[] : memref<f64>
          %13 = arith.cmpi slt, %arg7, %c0 : index
          %14 = arith.subi %c-1, %arg7 : index
          %15 = arith.select %13, %14, %arg7 : index
          %16 = arith.divsi %15, %c4 : index
          %17 = arith.subi %c-1, %16 : index
          %18 = arith.select %13, %17, %16 : index
          scf.for %arg8 = %c0 to %18 step %c1 {
            %26 = arith.muli %arg8, %c4 : index
            %27 = memref.load %arg1[%5, %26] : memref<?x40xf64>
            %28 = memref.load %arg1[%26, %arg7] : memref<?x40xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %alloca[] : memref<f64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %alloca[] : memref<f64>
            %32 = arith.addi %26, %c1 : index
            %33 = memref.load %arg1[%5, %32] : memref<?x40xf64>
            %34 = memref.load %arg1[%32, %arg7] : memref<?x40xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %alloca[] : memref<f64>
            %37 = arith.subf %36, %35 : f64
            memref.store %37, %alloca[] : memref<f64>
            %38 = arith.addi %26, %c2 : index
            %39 = memref.load %arg1[%5, %38] : memref<?x40xf64>
            %40 = memref.load %arg1[%38, %arg7] : memref<?x40xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %alloca[] : memref<f64>
            %43 = arith.subf %42, %41 : f64
            memref.store %43, %alloca[] : memref<f64>
            %44 = arith.addi %26, %c3 : index
            %45 = memref.load %arg1[%5, %44] : memref<?x40xf64>
            %46 = memref.load %arg1[%44, %arg7] : memref<?x40xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = memref.load %alloca[] : memref<f64>
            %49 = arith.subf %48, %47 : f64
            memref.store %49, %alloca[] : memref<f64>
          }
          %19 = arith.remsi %arg7, %c4 : index
          %20 = arith.cmpi slt, %19, %c0 : index
          %21 = arith.addi %19, %c4 : index
          %22 = arith.select %20, %21, %19 : index
          scf.for %arg8 = %c0 to %22 step %c1 {
            %26 = arith.cmpi slt, %arg7, %c0 : index
            %27 = arith.subi %c-1, %arg7 : index
            %28 = arith.select %26, %27, %arg7 : index
            %29 = arith.divsi %28, %c4 : index
            %30 = arith.subi %c-1, %29 : index
            %31 = arith.select %26, %30, %29 : index
            %32 = arith.muli %31, %c4 : index
            %33 = arith.addi %arg8, %32 : index
            %34 = memref.load %arg1[%5, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %arg7] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %alloca[] : memref<f64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %alloca[] : memref<f64>
          }
          %23 = memref.load %alloca[] : memref<f64>
          %24 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %25 = arith.divf %23, %24 : f64
          memref.store %25, %arg1[%5, %arg7] : memref<?x40xf64>
        }
        %8 = arith.muli %arg6, %c-1 : index
        %9 = arith.muli %arg5, %c-32 : index
        %10 = arith.addi %8, %9 : index
        %11 = arith.addi %10, %c40 : index
        scf.for %arg7 = %c0 to %11 step %c1 {
          %12 = arith.addi %5, %arg7 : index
          %13 = memref.load %arg1[%5, %12] : memref<?x40xf64>
          memref.store %13, %alloca[] : memref<f64>
          %14 = arith.muli %arg5, %c8 : index
          %15 = arith.cmpi slt, %arg6, %c0 : index
          %16 = arith.subi %c-1, %arg6 : index
          %17 = arith.select %15, %16, %arg6 : index
          %18 = arith.divsi %17, %c4 : index
          %19 = arith.subi %c-1, %18 : index
          %20 = arith.select %15, %19, %18 : index
          %21 = arith.addi %14, %20 : index
          scf.for %arg8 = %c0 to %21 step %c1 {
            %27 = arith.muli %arg8, %c4 : index
            %28 = memref.load %arg1[%5, %27] : memref<?x40xf64>
            %29 = memref.load %arg1[%27, %12] : memref<?x40xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %alloca[] : memref<f64>
            %32 = arith.subf %31, %30 : f64
            memref.store %32, %alloca[] : memref<f64>
            %33 = arith.addi %27, %c1 : index
            %34 = memref.load %arg1[%5, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %12] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %alloca[] : memref<f64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %alloca[] : memref<f64>
            %39 = arith.addi %27, %c2 : index
            %40 = memref.load %arg1[%5, %39] : memref<?x40xf64>
            %41 = memref.load %arg1[%39, %12] : memref<?x40xf64>
            %42 = arith.mulf %40, %41 : f64
            %43 = memref.load %alloca[] : memref<f64>
            %44 = arith.subf %43, %42 : f64
            memref.store %44, %alloca[] : memref<f64>
            %45 = arith.addi %27, %c3 : index
            %46 = memref.load %arg1[%5, %45] : memref<?x40xf64>
            %47 = memref.load %arg1[%45, %12] : memref<?x40xf64>
            %48 = arith.mulf %46, %47 : f64
            %49 = memref.load %alloca[] : memref<f64>
            %50 = arith.subf %49, %48 : f64
            memref.store %50, %alloca[] : memref<f64>
          }
          %22 = arith.remsi %5, %c4 : index
          %23 = arith.cmpi slt, %22, %c0 : index
          %24 = arith.addi %22, %c4 : index
          %25 = arith.select %23, %24, %22 : index
          scf.for %arg8 = %c0 to %25 step %c1 {
            %27 = arith.cmpi slt, %5, %c0 : index
            %28 = arith.subi %c-1, %5 : index
            %29 = arith.select %27, %28, %5 : index
            %30 = arith.divsi %29, %c4 : index
            %31 = arith.subi %c-1, %30 : index
            %32 = arith.select %27, %31, %30 : index
            %33 = arith.muli %32, %c4 : index
            %34 = arith.addi %arg8, %33 : index
            %35 = memref.load %arg1[%5, %34] : memref<?x40xf64>
            %36 = memref.load %arg1[%34, %12] : memref<?x40xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = memref.load %alloca[] : memref<f64>
            %39 = arith.subf %38, %37 : f64
            memref.store %39, %alloca[] : memref<f64>
          }
          %26 = memref.load %alloca[] : memref<f64>
          memref.store %26, %arg1[%5, %12] : memref<?x40xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %c2 step %c1 {
      %1 = arith.muli %arg5, %c32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %3, %c32 : index
      scf.for %arg6 = %c0 to %4 step %c1 {
        %5 = arith.addi %1, %arg6 : index
        %6 = memref.load %arg2[%5] : memref<?xf64>
        memref.store %6, %alloca[] : memref<f64>
        %7 = arith.muli %arg5, %c8 : index
        %8 = arith.cmpi slt, %arg6, %c0 : index
        %9 = arith.subi %c-1, %arg6 : index
        %10 = arith.select %8, %9, %arg6 : index
        %11 = arith.divsi %10, %c4 : index
        %12 = arith.subi %c-1, %11 : index
        %13 = arith.select %8, %12, %11 : index
        %14 = arith.addi %7, %13 : index
        scf.for %arg7 = %c0 to %14 step %c1 {
          %20 = arith.muli %arg7, %c4 : index
          %21 = memref.load %arg1[%5, %20] : memref<?x40xf64>
          %22 = memref.load %arg4[%20] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloca[] : memref<f64>
          %25 = arith.subf %24, %23 : f64
          memref.store %25, %alloca[] : memref<f64>
          %26 = arith.addi %20, %c1 : index
          %27 = memref.load %arg1[%5, %26] : memref<?x40xf64>
          %28 = memref.load %arg4[%26] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = memref.load %alloca[] : memref<f64>
          %31 = arith.subf %30, %29 : f64
          memref.store %31, %alloca[] : memref<f64>
          %32 = arith.addi %20, %c2 : index
          %33 = memref.load %arg1[%5, %32] : memref<?x40xf64>
          %34 = memref.load %arg4[%32] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = memref.load %alloca[] : memref<f64>
          %37 = arith.subf %36, %35 : f64
          memref.store %37, %alloca[] : memref<f64>
          %38 = arith.addi %20, %c3 : index
          %39 = memref.load %arg1[%5, %38] : memref<?x40xf64>
          %40 = memref.load %arg4[%38] : memref<?xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = memref.load %alloca[] : memref<f64>
          %43 = arith.subf %42, %41 : f64
          memref.store %43, %alloca[] : memref<f64>
        }
        %15 = arith.remsi %5, %c4 : index
        %16 = arith.cmpi slt, %15, %c0 : index
        %17 = arith.addi %15, %c4 : index
        %18 = arith.select %16, %17, %15 : index
        scf.for %arg7 = %c0 to %18 step %c1 {
          %20 = arith.cmpi slt, %5, %c0 : index
          %21 = arith.subi %c-1, %5 : index
          %22 = arith.select %20, %21, %5 : index
          %23 = arith.divsi %22, %c4 : index
          %24 = arith.subi %c-1, %23 : index
          %25 = arith.select %20, %24, %23 : index
          %26 = arith.muli %25, %c4 : index
          %27 = arith.addi %arg7, %26 : index
          %28 = memref.load %arg1[%5, %27] : memref<?x40xf64>
          %29 = memref.load %arg4[%27] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = memref.load %alloca[] : memref<f64>
          %32 = arith.subf %31, %30 : f64
          memref.store %32, %alloca[] : memref<f64>
        }
        %19 = memref.load %alloca[] : memref<f64>
        memref.store %19, %arg4[%5] : memref<?xf64>
      }
    }
    scf.for %arg5 = %c0 to %c2 step %c1 {
      %1 = arith.muli %arg5, %c32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %3, %c32 : index
      scf.for %arg6 = %c0 to %4 step %c1 {
        %5 = arith.addi %1, %arg6 : index
        %6 = arith.muli %5, %c-1 : index
        %7 = arith.addi %6, %c39 : index
        %8 = memref.load %arg4[%7] : memref<?xf64>
        memref.store %8, %alloca[] : memref<f64>
        %9 = arith.muli %arg5, %c8 : index
        %10 = arith.cmpi slt, %arg6, %c0 : index
        %11 = arith.subi %c-1, %arg6 : index
        %12 = arith.select %10, %11, %arg6 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1, %13 : index
        %15 = arith.select %10, %14, %13 : index
        %16 = arith.addi %9, %15 : index
        scf.for %arg7 = %c0 to %16 step %c1 {
          %30 = arith.muli %5, %c-1 : index
          %31 = arith.muli %arg7, %c4 : index
          %32 = arith.addi %30, %31 : index
          %33 = arith.addi %32, %c40 : index
          %34 = arith.muli %5, %c-1 : index
          %35 = arith.addi %34, %c39 : index
          %36 = memref.load %arg1[%35, %33] : memref<?x40xf64>
          %37 = memref.load %arg3[%33] : memref<?xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = memref.load %alloca[] : memref<f64>
          %40 = arith.subf %39, %38 : f64
          memref.store %40, %alloca[] : memref<f64>
          %41 = arith.addi %33, %c1 : index
          %42 = arith.muli %5, %c-1 : index
          %43 = arith.addi %42, %c39 : index
          %44 = memref.load %arg1[%43, %41] : memref<?x40xf64>
          %45 = memref.load %arg3[%41] : memref<?xf64>
          %46 = arith.mulf %44, %45 : f64
          %47 = memref.load %alloca[] : memref<f64>
          %48 = arith.subf %47, %46 : f64
          memref.store %48, %alloca[] : memref<f64>
          %49 = arith.addi %33, %c2 : index
          %50 = arith.muli %5, %c-1 : index
          %51 = arith.addi %50, %c39 : index
          %52 = memref.load %arg1[%51, %49] : memref<?x40xf64>
          %53 = memref.load %arg3[%49] : memref<?xf64>
          %54 = arith.mulf %52, %53 : f64
          %55 = memref.load %alloca[] : memref<f64>
          %56 = arith.subf %55, %54 : f64
          memref.store %56, %alloca[] : memref<f64>
          %57 = arith.addi %33, %c3 : index
          %58 = arith.muli %5, %c-1 : index
          %59 = arith.addi %58, %c39 : index
          %60 = memref.load %arg1[%59, %57] : memref<?x40xf64>
          %61 = memref.load %arg3[%57] : memref<?xf64>
          %62 = arith.mulf %60, %61 : f64
          %63 = memref.load %alloca[] : memref<f64>
          %64 = arith.subf %63, %62 : f64
          memref.store %64, %alloca[] : memref<f64>
        }
        %17 = arith.remsi %5, %c4 : index
        %18 = arith.cmpi slt, %17, %c0 : index
        %19 = arith.addi %17, %c4 : index
        %20 = arith.select %18, %19, %17 : index
        scf.for %arg7 = %c0 to %20 step %c1 {
          %30 = arith.muli %5, %c-1 : index
          %31 = arith.addi %30, %arg7 : index
          %32 = arith.cmpi slt, %5, %c0 : index
          %33 = arith.subi %c-1, %5 : index
          %34 = arith.select %32, %33, %5 : index
          %35 = arith.divsi %34, %c4 : index
          %36 = arith.subi %c-1, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %38 = arith.muli %37, %c4 : index
          %39 = arith.addi %31, %38 : index
          %40 = arith.addi %39, %c40 : index
          %41 = arith.muli %5, %c-1 : index
          %42 = arith.addi %41, %c39 : index
          %43 = memref.load %arg1[%42, %40] : memref<?x40xf64>
          %44 = memref.load %arg3[%40] : memref<?xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = memref.load %alloca[] : memref<f64>
          %47 = arith.subf %46, %45 : f64
          memref.store %47, %alloca[] : memref<f64>
        }
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.muli %5, %c-1 : index
        %23 = arith.addi %22, %c39 : index
        %24 = arith.muli %5, %c-1 : index
        %25 = arith.addi %24, %c39 : index
        %26 = memref.load %arg1[%23, %25] : memref<?x40xf64>
        %27 = arith.divf %21, %26 : f64
        %28 = arith.muli %5, %c-1 : index
        %29 = arith.addi %28, %c39 : index
        memref.store %27, %arg3[%29] : memref<?xf64>
      }
    }
    return
  }
}

