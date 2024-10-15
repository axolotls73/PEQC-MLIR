// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int* [[VAR1:.*]];
// CHECK: int* [[VAR2:.*]];
    %a = memref.alloc() : memref<2x4xi32>
    %b = memref.alloc() : memref<2x4xi32>
// CHECK: _past_array_copy_2d([[VAR1]], 0, 0, [[VAR2]], 0, 0, 2, 4)

// COM: old loop-based copy
// COM: CHECK: for ([[VARI1:.*]] =
// COM: CHECK: for ([[VARI2:.*]] =
// COM: CHECK: [[VAR2]][[[VARI1]]][[[VARI2]]] = [[VAR1]][[[VARI1]]][[[VARI2]]]
    memref.copy %a, %b : memref<2x4xi32> to memref<2x4xi32>
}
