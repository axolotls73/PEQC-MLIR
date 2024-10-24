// RUN: verif-opt --verif-air-to-scf-par %s | FileCheck %s

module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>, %arg2: memref<2048x2048xi32>) {
    %c32 = arith.constant 32 : index
    %alloc = memref.alloc() : memref<2048x2048xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%arg7=%alloc, %arg8=%arg0, %arg9=%arg1) : memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
      air.segment @segment_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
        %c4096 = arith.constant 4096 : index
        %c2048 = arith.constant 2048 : index
        %c1 = arith.constant 1 : index
        %c64 = arith.constant 64 : index
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c64_0 = arith.constant 64 : index
        %0 = arith.muli %arg10, %c64_0 : index
        %c64_1 = arith.constant 64 : index
        %1 = arith.muli %arg11, %c64_1 : index
        %alloc_2 = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK: scf.parallel
        air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2, %arg18=%c2) args(%arg19=%alloc_2, %arg20=%arg13, %arg21=%0, %arg22=%arg14, %arg23=%1) : memref<1x1x64x64xi32, 1>, memref<2048x2048xi32>, index, memref<2048x2048xi32>, index {
          %c4096_3 = arith.constant 4096 : index
          %c512 = arith.constant 512 : i32
          %c01 = arith.constant 0 : index
          memref.store %c512, %arg19[%arg15, %arg16, %arg17, %arg18] : memref<1x1x64x64xi32, 1>
        }
        memref.dealloc %alloc_2 : memref<1x1x64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    return
  }
}

