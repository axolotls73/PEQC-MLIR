// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c memref_load_12,memref_load_14 \
// RUN: | grep YES

//--- input.mlir

module {
  %a = memref.alloc() : memref<2x2xmemref<12xf32>>

  %0 = arith.constant 0 : index
  %f5 = arith.constant 5.0 : f32
  %b = memref.alloc() : memref<12xf32>
  memref.store %f5, %b[%0] : memref<12xf32>
  memref.store %b, %a[%0, %0] : memref<2x2xmemref<12xf32>>

  %1 = arith.constant 1 : index
  %f4 = arith.constant 4.0 : f32
  %c = memref.load %a[%1, %0] : memref<2x2xmemref<12xf32>>
  memref.store %f4, %c[%0] : memref<12xf32>

  %b2 = memref.load %a[%0, %0] : memref<2x2xmemref<12xf32>>
  %cst_5 = memref.load %b2[%0] : memref<12xf32>

  %c2 = memref.load %a[%1, %0] : memref<2x2xmemref<12xf32>>
  %cst_4 = memref.load %c2[%0] : memref<12xf32>
}

//--- compare.c

#pragma pocc-region-start
{
  // %cst_5
  memref_load_14 = 5.0;
  // %cst_4
  memref_load_14 = 4.0;
}
#pragma pocc-region-end
