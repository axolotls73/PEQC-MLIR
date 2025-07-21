module {
  aie.device(npu1_1col) {

    // added body to this external function
    // func.func private @zero_i32(%m: memref<8x4xi32>) {
    //   %c0_i32 = arith.constant 0 : i32
    //   linalg.fill ins(%c0_i32 : i32) outs(%m : memref<8x4xi32>)
    //   return
    // }
    func.func private @zero_i32(memref<8x4xi32>)

    // added body to this external function
    // func.func private @matmul_i16_i32(%a: memref<8x8xi16>, %b: memref<8x4xi16>, %c: memref<8x4xi32>) {
    //   linalg.matmul ins(%a, %b: memref<8x8xi16>, memref<8x4xi16>) outs(%c: memref<8x4xi32>)
    //   return
    // }
    func.func private @matmul_i16_i32(memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>)

    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    aie.objectfifo @inA(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<8x8xi16>>
    aie.objectfifo @memA(%mem_tile_0_1 dimensionsToStream [<size = 2, stride = 32>, <size = 2, stride = 4>, <size = 4, stride = 8>, <size = 4, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<8x8xi16>>
    aie.objectfifo.link [@inA] -> [@memA]([] [])
    aie.objectfifo @inB(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<8x4xi16>>
    aie.objectfifo @memB(%mem_tile_0_1 dimensionsToStream [<size = 2, stride = 16>, <size = 1, stride = 4>, <size = 4, stride = 4>, <size = 4, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<8x4xi16>>
    aie.objectfifo.link [@inB] -> [@memB]([] [])
    aie.objectfifo @memC(%tile_0_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<8x4xi32>>
    aie.objectfifo @outC(%mem_tile_0_1 dimensionsToStream [<size = 2, stride = 16>, <size = 4, stride = 4>, <size = 1, stride = 16>, <size = 4, stride = 1>], {%shim_noc_tile_0_0}, 2 : i32) : !aie.objectfifo<memref<8x4xi32>>
    aie.objectfifo.link [@memC] -> [@outC]([] [])
    %core_0_2 = aie.core(%tile_0_2) {
      // %c0 = arith.constant 0 : index
      // %c4294967295 = arith.constant 4294967295 : index
      // %c1 = arith.constant 1 : index
      // scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC(Produce, 1) : !aie.objectfifosubview<memref<8x4xi32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<8x4xi32>> -> memref<8x4xi32>
          func.call @zero_i32(%1) : (memref<8x4xi32>) -> ()
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @memA(Consume, 1) : !aie.objectfifosubview<memref<8x8xi16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<8x8xi16>> -> memref<8x8xi16>
            %4 = aie.objectfifo.acquire @memB(Consume, 1) : !aie.objectfifosubview<memref<8x4xi16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<8x4xi16>> -> memref<8x4xi16>
            func.call @matmul_i16_i32(%3, %5, %1) : (memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>) -> ()
            aie.objectfifo.release @memA(Consume, 1)
            aie.objectfifo.release @memB(Consume, 1)
          }
          aie.objectfifo.release @memC(Produce, 1)
        }
      // }
      aie.end
    } {link_with = "mm_8x8x4.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<256xi16>, %arg1: memref<256xi16>, %arg2: memref<256xi32>) {
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][2, 4, 8, 4][128, 4, 16, 1]) {id = 0 : i64, metadata = @outC} : memref<256xi32>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][4, 2, 8, 8][0, 8, 16, 1]) {id = 1 : i64, metadata = @inA} : memref<256xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][4, 2, 8, 4][4, 128, 16, 1]) {id = 2 : i64, metadata = @inB} : memref<256xi16>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 128][4, 2, 8, 8][0, 8, 16, 1]) {id = 3 : i64, metadata = @inA} : memref<256xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][4, 2, 8, 4][4, 128, 16, 1]) {id = 4 : i64, metadata = @inB} : memref<256xi16>
      aiex.npu.dma_wait {symbol = @outC}
    }
  }
}

