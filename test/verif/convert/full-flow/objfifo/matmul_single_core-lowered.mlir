module {
  aie.device(npu1_1col) {
    memref.global "public" @outC_cons : memref<8x4xi32>
    memref.global "public" @outC : memref<8x4xi32>
    memref.global "public" @memC_cons : memref<8x4xi32>
    memref.global "public" @memC : memref<8x4xi32>
    memref.global "public" @memB_cons : memref<8x4xi16>
    memref.global "public" @memB : memref<8x4xi16>
    memref.global "public" @inB_cons : memref<8x4xi16>
    memref.global "public" @inB : memref<8x4xi16>
    memref.global "public" @memA_cons : memref<8x8xi16>
    memref.global "public" @memA : memref<8x8xi16>
    memref.global "public" @inA_cons : memref<8x8xi16>
    memref.global "public" @inA : memref<8x8xi16>
    func.func private @zero_i32(memref<8x4xi32>)
    func.func private @matmul_i16_i32(memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %outC_cons_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 4) {init = 1 : i32, sym_name = "outC_cons_prod_lock_0"}
    %outC_cons_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 5) {init = 0 : i32, sym_name = "outC_cons_cons_lock_0"}
    %memC_cons_buff_0 = aie.buffer(%mem_tile_0_1) {sym_name = "memC_cons_buff_0"} : memref<8x4xi32> 
    %memC_cons_buff_1 = aie.buffer(%mem_tile_0_1) {sym_name = "memC_cons_buff_1"} : memref<8x4xi32> 
    %memC_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "memC_cons_prod_lock_0"}
    %memC_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "memC_cons_cons_lock_0"}
    %memC_buff_0 = aie.buffer(%tile_0_2) {sym_name = "memC_buff_0"} : memref<8x4xi32> 
    %memC_buff_1 = aie.buffer(%tile_0_2) {sym_name = "memC_buff_1"} : memref<8x4xi32> 
    %memC_prod_lock_0 = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "memC_prod_lock_0"}
    %memC_cons_lock_0 = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "memC_cons_lock_0"}
    %memB_cons_buff_0 = aie.buffer(%tile_0_2) {sym_name = "memB_cons_buff_0"} : memref<8x4xi16> 
    %memB_cons_buff_1 = aie.buffer(%tile_0_2) {sym_name = "memB_cons_buff_1"} : memref<8x4xi16> 
    %memB_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "memB_cons_prod_lock_0"}
    %memB_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "memB_cons_cons_lock_0"}
    %inB_cons_buff_0 = aie.buffer(%mem_tile_0_1) {sym_name = "inB_cons_buff_0"} : memref<8x4xi16> 
    %inB_cons_buff_1 = aie.buffer(%mem_tile_0_1) {sym_name = "inB_cons_buff_1"} : memref<8x4xi16> 
    %inB_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "inB_cons_prod_lock_0"}
    %inB_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "inB_cons_cons_lock_0"}
    %inB_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 2) {init = 1 : i32, sym_name = "inB_prod_lock_0"}
    %inB_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 3) {init = 0 : i32, sym_name = "inB_cons_lock_0"}
    %memA_cons_buff_0 = aie.buffer(%tile_0_2) {sym_name = "memA_cons_buff_0"} : memref<8x8xi16> 
    %memA_cons_buff_1 = aie.buffer(%tile_0_2) {sym_name = "memA_cons_buff_1"} : memref<8x8xi16> 
    %memA_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "memA_cons_prod_lock_0"}
    %memA_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "memA_cons_cons_lock_0"}
    %inA_cons_buff_0 = aie.buffer(%mem_tile_0_1) {sym_name = "inA_cons_buff_0"} : memref<8x8xi16> 
    %inA_cons_buff_1 = aie.buffer(%mem_tile_0_1) {sym_name = "inA_cons_buff_1"} : memref<8x8xi16> 
    %inA_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "inA_cons_prod_lock_0"}
    %inA_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "inA_cons_cons_lock_0"}
    %inA_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "inA_prod_lock_0"}
    %inA_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "inA_cons_lock_0"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 1, %mem_tile_0_1, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 1)
    aie.flow(%tile_0_2, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%mem_tile_0_1, DMA : 2, %shim_noc_tile_0_0, DMA : 0)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c4294967295 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_1 = arith.constant 1 : index
        %c2 = arith.constant 2 : index
        scf.for %arg1 = %c0_0 to %c8 step %c2 {
          aie.use_lock(%memC_prod_lock_0, AcquireGreaterEqual, 1)
          func.call @zero_i32(%memC_buff_0) : (memref<8x4xi32>) -> ()
          %c0_2 = arith.constant 0 : index
          %c2_3 = arith.constant 2 : index
          %c1_4 = arith.constant 1 : index
          %c2_5 = arith.constant 2 : index
          aie.use_lock(%memA_cons_cons_lock_0, AcquireGreaterEqual, 1)
          aie.use_lock(%memB_cons_cons_lock_0, AcquireGreaterEqual, 1)
          func.call @matmul_i16_i32(%memA_cons_buff_0, %memB_cons_buff_0, %memC_buff_0) : (memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>) -> ()
          aie.use_lock(%memA_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memB_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memA_cons_cons_lock_0, AcquireGreaterEqual, 1)
          aie.use_lock(%memB_cons_cons_lock_0, AcquireGreaterEqual, 1)
          func.call @matmul_i16_i32(%memA_cons_buff_1, %memB_cons_buff_1, %memC_buff_0) : (memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>) -> ()
          aie.use_lock(%memA_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memB_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memC_cons_lock_0, Release, 1)
          aie.use_lock(%memC_prod_lock_0, AcquireGreaterEqual, 1)
          func.call @zero_i32(%memC_buff_1) : (memref<8x4xi32>) -> ()
          %c0_6 = arith.constant 0 : index
          %c2_7 = arith.constant 2 : index
          %c1_8 = arith.constant 1 : index
          %c2_9 = arith.constant 2 : index
          aie.use_lock(%memA_cons_cons_lock_0, AcquireGreaterEqual, 1)
          aie.use_lock(%memB_cons_cons_lock_0, AcquireGreaterEqual, 1)
          func.call @matmul_i16_i32(%memA_cons_buff_0, %memB_cons_buff_0, %memC_buff_1) : (memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>) -> ()
          aie.use_lock(%memA_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memB_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memA_cons_cons_lock_0, AcquireGreaterEqual, 1)
          aie.use_lock(%memB_cons_cons_lock_0, AcquireGreaterEqual, 1)
          func.call @matmul_i16_i32(%memA_cons_buff_1, %memB_cons_buff_1, %memC_buff_1) : (memref<8x8xi16>, memref<8x4xi16>, memref<8x4xi32>) -> ()
          aie.use_lock(%memA_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memB_cons_prod_lock_0, Release, 1)
          aie.use_lock(%memC_cons_lock_0, Release, 1)
        }
      }
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
    aie.shim_dma_allocation @inA(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<8x8xi16>, 0, 64)
      aie.use_lock(%inA_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<8x8xi16>, 0, 64)
      aie.use_lock(%inA_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%inA_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<8x8xi16>, 0, 64, [<size = 2, stride = 32>, <size = 2, stride = 4>, <size = 4, stride = 8>, <size = 4, stride = 1>])
      aie.use_lock(%inA_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inA_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<8x8xi16>, 0, 64, [<size = 2, stride = 32>, <size = 2, stride = 4>, <size = 4, stride = 8>, <size = 4, stride = 1>])
      aie.use_lock(%inA_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inB_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_cons_buff_0 : memref<8x4xi16>, 0, 32)
      aie.use_lock(%inB_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inB_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_cons_buff_1 : memref<8x4xi16>, 0, 32)
      aie.use_lock(%inB_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 1, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%inB_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_cons_buff_0 : memref<8x4xi16>, 0, 32, [<size = 2, stride = 16>, <size = 1, stride = 4>, <size = 4, stride = 4>, <size = 4, stride = 1>])
      aie.use_lock(%inB_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inB_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%inB_cons_buff_1 : memref<8x4xi16>, 0, 32, [<size = 2, stride = 16>, <size = 1, stride = 4>, <size = 4, stride = 4>, <size = 4, stride = 1>])
      aie.use_lock(%inB_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 2, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%memC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_cons_buff_0 : memref<8x4xi32>, 0, 32)
      aie.use_lock(%memC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%memC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_cons_buff_1 : memref<8x4xi32>, 0, 32)
      aie.use_lock(%memC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 2, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%memC_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_cons_buff_0 : memref<8x4xi32>, 0, 32, [<size = 2, stride = 16>, <size = 4, stride = 4>, <size = 1, stride = 16>, <size = 4, stride = 1>])
      aie.use_lock(%memC_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%memC_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_cons_buff_1 : memref<8x4xi32>, 0, 32, [<size = 2, stride = 16>, <size = 4, stride = 4>, <size = 1, stride = 16>, <size = 4, stride = 1>])
      aie.use_lock(%memC_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA_cons_buff_0 : memref<8x8xi16>, 0, 64)
      aie.use_lock(%memA_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA_cons_buff_1 : memref<8x8xi16>, 0, 64)
      aie.use_lock(%memA_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memB_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB_cons_buff_0 : memref<8x4xi16>, 0, 32)
      aie.use_lock(%memB_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memB_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memB_cons_buff_1 : memref<8x4xi16>, 0, 32)
      aie.use_lock(%memB_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%memC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_buff_0 : memref<8x4xi32>, 0, 32)
      aie.use_lock(%memC_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%memC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC_buff_1 : memref<8x4xi32>, 0, 32)
      aie.use_lock(%memC_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @inB(MM2S, 1, 0)
    aie.shim_dma_allocation @outC(S2MM, 0, 0)
  }
}

