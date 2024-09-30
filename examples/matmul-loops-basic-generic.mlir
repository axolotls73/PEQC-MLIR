// air-opt matmul-linalg-memref.mlir --convert-linalg-to-affine-loops --lower-affine --mlir-print-op-generic

"builtin.module"() ({
  "func.func"() <{function_type = (memref<128x128xi32>, memref<128x128xi32>) -> memref<128x128xi32>, sym_name = "matmul_on_memref"}> ({
  ^bb0(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<128x128xi32>
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 128 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%2, %3, %4) ({
    ^bb0(%arg2: index):
      %8 = "arith.constant"() <{value = 0 : index}> : () -> index
      %9 = "arith.constant"() <{value = 128 : index}> : () -> index
      %10 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%8, %9, %10) ({
      ^bb0(%arg3: index):
        "memref.store"(%0, %1, %arg2, %arg3) : (i32, memref<128x128xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "arith.constant"() <{value = 128 : index}> : () -> index
    %7 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%5, %6, %7) ({
    ^bb0(%arg2: index):
      %8 = "arith.constant"() <{value = 0 : index}> : () -> index
      %9 = "arith.constant"() <{value = 128 : index}> : () -> index
      %10 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%8, %9, %10) ({
      ^bb0(%arg3: index):
        %11 = "arith.constant"() <{value = 0 : index}> : () -> index
        %12 = "arith.constant"() <{value = 128 : index}> : () -> index
        %13 = "arith.constant"() <{value = 1 : index}> : () -> index
        "scf.for"(%11, %12, %13) ({
        ^bb0(%arg4: index):
          %14 = "memref.load"(%arg0, %arg2, %arg4) : (memref<128x128xi32>, index, index) -> i32
          %15 = "memref.load"(%arg1, %arg4, %arg3) : (memref<128x128xi32>, index, index) -> i32
          %16 = "memref.load"(%1, %arg2, %arg3) : (memref<128x128xi32>, index, index) -> i32
          %17 = "arith.muli"(%14, %15) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
          %18 = "arith.addi"(%16, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
          "memref.store"(%18, %1, %arg2, %arg3) : (i32, memref<128x128xi32>, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%1) : (memref<128x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()

