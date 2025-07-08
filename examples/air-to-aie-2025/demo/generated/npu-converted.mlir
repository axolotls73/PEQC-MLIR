module {
  memref.global "private" @aie_global_semaphore_array : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_0ch0_to_1_1ch0 : memref<1xi32>
  %0 = verif.semaphore(0 : index)
  %1 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c0 = arith.constant 0 : index
  memref.store %0, %1[%c0] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_2_0ch0_to_2_1ch0 : memref<1xi32>
  %2 = verif.semaphore(0 : index)
  %3 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c1 = arith.constant 1 : index
  memref.store %2, %3[%c1] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_0_1ch0_to_0_0ch0 : memref<1xi32>
  %4 = verif.semaphore(0 : index)
  %5 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c2 = arith.constant 2 : index
  memref.store %4, %5[%c2] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_1ch0_to_1_2ch0 : memref<1xi32>
  %6 = verif.semaphore(0 : index)
  %7 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c3 = arith.constant 3 : index
  memref.store %6, %7[%c3] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_1ch0_to_1_3ch0 : memref<1xi32>
  %8 = verif.semaphore(0 : index)
  %9 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c4 = arith.constant 4 : index
  memref.store %8, %9[%c4] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_1ch1_to_1_4ch0 : memref<1xi32>
  %10 = verif.semaphore(0 : index)
  %11 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c5 = arith.constant 5 : index
  memref.store %10, %11[%c5] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_1ch1_to_1_5ch0 : memref<1xi32>
  %12 = verif.semaphore(0 : index)
  %13 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c6 = arith.constant 6 : index
  memref.store %12, %13[%c6] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_2_1ch0_to_1_2ch1 : memref<1xi32>
  %14 = verif.semaphore(0 : index)
  %15 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c7 = arith.constant 7 : index
  memref.store %14, %15[%c7] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_2_1ch0_to_1_4ch1 : memref<1xi32>
  %16 = verif.semaphore(0 : index)
  %17 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c8 = arith.constant 8 : index
  memref.store %16, %17[%c8] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_2_1ch1_to_1_3ch1 : memref<1xi32>
  %18 = verif.semaphore(0 : index)
  %19 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c9 = arith.constant 9 : index
  memref.store %18, %19[%c9] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_2_1ch1_to_1_5ch1 : memref<1xi32>
  %20 = verif.semaphore(0 : index)
  %21 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c10 = arith.constant 10 : index
  memref.store %20, %21[%c10] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_2ch0_to_0_1ch0 : memref<1xi32>
  %22 = verif.semaphore(0 : index)
  %23 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c11 = arith.constant 11 : index
  memref.store %22, %23[%c11] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_4ch0_to_0_1ch1 : memref<1xi32>
  %24 = verif.semaphore(0 : index)
  %25 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c12 = arith.constant 12 : index
  memref.store %24, %25[%c12] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_3ch0_to_0_1ch2 : memref<1xi32>
  %26 = verif.semaphore(0 : index)
  %27 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c13 = arith.constant 13 : index
  memref.store %26, %27[%c13] : memref<128x!verif.semaphore>
  memref.global "private" @aie_flow_1_5ch0_to_0_1ch3 : memref<1xi32>
  %28 = verif.semaphore(0 : index)
  %29 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
  %c14 = arith.constant 14 : index
  memref.store %28, %29[%c14] : memref<128x!verif.semaphore>
  %30 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_0 : memref<1x!verif.counting_semaphore>
  %31 = memref.get_global @aie_lock_semaphore_arr_0 : memref<1x!verif.counting_semaphore>
  %c0_0 = arith.constant 0 : index
  memref.store %30, %31[%c0_0] : memref<1x!verif.counting_semaphore>
  %32 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_1 : memref<1x!verif.counting_semaphore>
  %33 = memref.get_global @aie_lock_semaphore_arr_1 : memref<1x!verif.counting_semaphore>
  %c0_1 = arith.constant 0 : index
  memref.store %32, %33[%c0_1] : memref<1x!verif.counting_semaphore>
  %34 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_2 : memref<1x!verif.counting_semaphore>
  %35 = memref.get_global @aie_lock_semaphore_arr_2 : memref<1x!verif.counting_semaphore>
  %c0_2 = arith.constant 0 : index
  memref.store %34, %35[%c0_2] : memref<1x!verif.counting_semaphore>
  %36 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_3 : memref<1x!verif.counting_semaphore>
  %37 = memref.get_global @aie_lock_semaphore_arr_3 : memref<1x!verif.counting_semaphore>
  %c0_3 = arith.constant 0 : index
  memref.store %36, %37[%c0_3] : memref<1x!verif.counting_semaphore>
  %38 = verif.counting_semaphore(4 : index)
  memref.global "private" @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
  %39 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
  %c0_4 = arith.constant 0 : index
  memref.store %38, %39[%c0_4] : memref<1x!verif.counting_semaphore>
  %40 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
  %41 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
  %c0_5 = arith.constant 0 : index
  memref.store %40, %41[%c0_5] : memref<1x!verif.counting_semaphore>
  %42 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
  %43 = memref.get_global @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
  %c0_6 = arith.constant 0 : index
  memref.store %42, %43[%c0_6] : memref<1x!verif.counting_semaphore>
  %44 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
  %45 = memref.get_global @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
  %c0_7 = arith.constant 0 : index
  memref.store %44, %45[%c0_7] : memref<1x!verif.counting_semaphore>
  %46 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
  %47 = memref.get_global @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
  %c0_8 = arith.constant 0 : index
  memref.store %46, %47[%c0_8] : memref<1x!verif.counting_semaphore>
  %48 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
  %49 = memref.get_global @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
  %c0_9 = arith.constant 0 : index
  memref.store %48, %49[%c0_9] : memref<1x!verif.counting_semaphore>
  %50 = verif.counting_semaphore(1 : index)
  memref.global "private" @aie_lock_semaphore_arr_10 : memref<1x!verif.counting_semaphore>
  %51 = memref.get_global @aie_lock_semaphore_arr_10 : memref<1x!verif.counting_semaphore>
  %c0_10 = arith.constant 0 : index
  memref.store %50, %51[%c0_10] : memref<1x!verif.counting_semaphore>
  %52 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_11 : memref<1x!verif.counting_semaphore>
  %53 = memref.get_global @aie_lock_semaphore_arr_11 : memref<1x!verif.counting_semaphore>
  %c0_11 = arith.constant 0 : index
  memref.store %52, %53[%c0_11] : memref<1x!verif.counting_semaphore>
  %54 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
  %55 = memref.get_global @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
  %c0_12 = arith.constant 0 : index
  memref.store %54, %55[%c0_12] : memref<1x!verif.counting_semaphore>
  %56 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
  %57 = memref.get_global @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
  %c0_13 = arith.constant 0 : index
  memref.store %56, %57[%c0_13] : memref<1x!verif.counting_semaphore>
  %58 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
  %59 = memref.get_global @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
  %c0_14 = arith.constant 0 : index
  memref.store %58, %59[%c0_14] : memref<1x!verif.counting_semaphore>
  %60 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
  %61 = memref.get_global @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
  %c0_15 = arith.constant 0 : index
  memref.store %60, %61[%c0_15] : memref<1x!verif.counting_semaphore>
  %62 = verif.counting_semaphore(1 : index)
  memref.global "private" @aie_lock_semaphore_arr_16 : memref<1x!verif.counting_semaphore>
  %63 = memref.get_global @aie_lock_semaphore_arr_16 : memref<1x!verif.counting_semaphore>
  %c0_16 = arith.constant 0 : index
  memref.store %62, %63[%c0_16] : memref<1x!verif.counting_semaphore>
  %64 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_17 : memref<1x!verif.counting_semaphore>
  %65 = memref.get_global @aie_lock_semaphore_arr_17 : memref<1x!verif.counting_semaphore>
  %c0_17 = arith.constant 0 : index
  memref.store %64, %65[%c0_17] : memref<1x!verif.counting_semaphore>
  %66 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
  %67 = memref.get_global @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
  %c0_18 = arith.constant 0 : index
  memref.store %66, %67[%c0_18] : memref<1x!verif.counting_semaphore>
  %68 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
  %69 = memref.get_global @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
  %c0_19 = arith.constant 0 : index
  memref.store %68, %69[%c0_19] : memref<1x!verif.counting_semaphore>
  %70 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
  %71 = memref.get_global @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
  %c0_20 = arith.constant 0 : index
  memref.store %70, %71[%c0_20] : memref<1x!verif.counting_semaphore>
  %72 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
  %73 = memref.get_global @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
  %c0_21 = arith.constant 0 : index
  memref.store %72, %73[%c0_21] : memref<1x!verif.counting_semaphore>
  %74 = verif.counting_semaphore(1 : index)
  memref.global "private" @aie_lock_semaphore_arr_22 : memref<1x!verif.counting_semaphore>
  %75 = memref.get_global @aie_lock_semaphore_arr_22 : memref<1x!verif.counting_semaphore>
  %c0_22 = arith.constant 0 : index
  memref.store %74, %75[%c0_22] : memref<1x!verif.counting_semaphore>
  %76 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_23 : memref<1x!verif.counting_semaphore>
  %77 = memref.get_global @aie_lock_semaphore_arr_23 : memref<1x!verif.counting_semaphore>
  %c0_23 = arith.constant 0 : index
  memref.store %76, %77[%c0_23] : memref<1x!verif.counting_semaphore>
  %78 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
  %79 = memref.get_global @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
  %c0_24 = arith.constant 0 : index
  memref.store %78, %79[%c0_24] : memref<1x!verif.counting_semaphore>
  %80 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
  %81 = memref.get_global @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
  %c0_25 = arith.constant 0 : index
  memref.store %80, %81[%c0_25] : memref<1x!verif.counting_semaphore>
  %82 = verif.counting_semaphore(2 : index)
  memref.global "private" @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
  %83 = memref.get_global @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
  %c0_26 = arith.constant 0 : index
  memref.store %82, %83[%c0_26] : memref<1x!verif.counting_semaphore>
  %84 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
  %85 = memref.get_global @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
  %c0_27 = arith.constant 0 : index
  memref.store %84, %85[%c0_27] : memref<1x!verif.counting_semaphore>
  %86 = verif.counting_semaphore(1 : index)
  memref.global "private" @aie_lock_semaphore_arr_28 : memref<1x!verif.counting_semaphore>
  %87 = memref.get_global @aie_lock_semaphore_arr_28 : memref<1x!verif.counting_semaphore>
  %c0_28 = arith.constant 0 : index
  memref.store %86, %87[%c0_28] : memref<1x!verif.counting_semaphore>
  %88 = verif.counting_semaphore(0 : index)
  memref.global "private" @aie_lock_semaphore_arr_29 : memref<1x!verif.counting_semaphore>
  %89 = memref.get_global @aie_lock_semaphore_arr_29 : memref<1x!verif.counting_semaphore>
  %c0_29 = arith.constant 0 : index
  memref.store %88, %89[%c0_29] : memref<1x!verif.counting_semaphore>
  memref.global "private" @aie_buffer_buf22 : memref<8x8xi32, 1>
  memref.global "private" @aie_buffer_buf21 : memref<8x16xi32, 1>
  memref.global "private" @aie_buffer_buf20 : memref<16x8xi32, 1>
  memref.global "private" @aie_buffer_buf19 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf18 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf17 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf16 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf15 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf14 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf13 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf12 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf11 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf10 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf9 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf8 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf7 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf6 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf5 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf4 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf3 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf2 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf1 : memref<4x4xi32, 2>
  memref.global "private" @aie_buffer_buf0 : memref<4x4xi32, 2>
  func.func @tile_mem_1_5_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch1_to_1_5ch0 : memref<1xi32>
    %c6_61 = arith.constant 6 : index
    %97 = memref.load %95[%c6_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf16 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_1_1ch1_to_1_5ch0 : memref<1xi32>
    %c6_70 = arith.constant 6 : index
    %104 = memref.load %102[%c6_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf17 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token = async.execute {
    func.call @tile_mem_1_5_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_5_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch1_to_1_5ch1 : memref<1xi32>
    %c10_61 = arith.constant 10 : index
    %97 = memref.load %95[%c10_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf15 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_2_1ch1_to_1_5ch1 : memref<1xi32>
    %c10_70 = arith.constant 10 : index
    %104 = memref.load %102[%c10_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf18 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_30 = async.execute {
    func.call @tile_mem_1_5_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_5_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_29 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_5ch0_to_0_1ch3 : memref<1xi32>
    %c14_61 = arith.constant 14 : index
    %97 = memref.load %95[%c14_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_68 = arith.constant 4 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c4_68 : index
      %101 = arith.remsi %arg0, %c4_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c4_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c0_64
      %105 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
      %106 = memref.load %105[%100, %104] : memref<4x4xi32, 2>
      memref.store %106, %96[%c0_62] : memref<1xi32>
      verif.semaphore.set %97, %c1_65
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_28 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_31 = async.execute {
    func.call @tile_mem_1_5_block_2() : () -> ()
    async.yield
  }
  func.func @tile_core_1_5() {
    %c8_59 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %c16 = arith.constant 16 : index
    %c4_60 = arith.constant 4 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_28 : memref<1x!verif.counting_semaphore>
    %c0_63 = arith.constant 0 : index
    %94 = memref.load %93[%c0_63] : memref<1x!verif.counting_semaphore>
    %c1_64 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_64
    scf.for %arg0 = %c0_62 to %c4_60 step %c1_61 {
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        %97 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
        memref.store %c0_i32, %97[%arg0, %arg1] : memref<4x4xi32, 2>
      }
    }
    scf.for %arg0 = %c0_62 to %c16 step %c8_59 {
      %97 = memref.get_global @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
      %c0_67 = arith.constant 0 : index
      %98 = memref.load %97[%c0_67] : memref<1x!verif.counting_semaphore>
      %c1_68 = arith.constant 1 : index
      verif.semaphore.acquire %98, %c1_68
      %99 = memref.get_global @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
      %c0_69 = arith.constant 0 : index
      %100 = memref.load %99[%c0_69] : memref<1x!verif.counting_semaphore>
      %c1_70 = arith.constant 1 : index
      verif.semaphore.acquire %100, %c1_70
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf16 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf15 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %101 = memref.get_global @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
      %c0_71 = arith.constant 0 : index
      %102 = memref.load %101[%c0_71] : memref<1x!verif.counting_semaphore>
      %c1_72 = arith.constant 1 : index
      verif.semaphore.release %102, %c1_72
      %103 = memref.get_global @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
      %c0_73 = arith.constant 0 : index
      %104 = memref.load %103[%c0_73] : memref<1x!verif.counting_semaphore>
      %c1_74 = arith.constant 1 : index
      verif.semaphore.release %104, %c1_74
      %105 = memref.get_global @aie_lock_semaphore_arr_27 : memref<1x!verif.counting_semaphore>
      %c0_75 = arith.constant 0 : index
      %106 = memref.load %105[%c0_75] : memref<1x!verif.counting_semaphore>
      %c1_76 = arith.constant 1 : index
      verif.semaphore.acquire %106, %c1_76
      %107 = memref.get_global @aie_lock_semaphore_arr_25 : memref<1x!verif.counting_semaphore>
      %c0_77 = arith.constant 0 : index
      %108 = memref.load %107[%c0_77] : memref<1x!verif.counting_semaphore>
      %c1_78 = arith.constant 1 : index
      verif.semaphore.acquire %108, %c1_78
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf17 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf18 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf19 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %109 = memref.get_global @aie_lock_semaphore_arr_24 : memref<1x!verif.counting_semaphore>
      %c0_79 = arith.constant 0 : index
      %110 = memref.load %109[%c0_79] : memref<1x!verif.counting_semaphore>
      %c1_80 = arith.constant 1 : index
      verif.semaphore.release %110, %c1_80
      %111 = memref.get_global @aie_lock_semaphore_arr_26 : memref<1x!verif.counting_semaphore>
      %c0_81 = arith.constant 0 : index
      %112 = memref.load %111[%c0_81] : memref<1x!verif.counting_semaphore>
      %c1_82 = arith.constant 1 : index
      verif.semaphore.release %112, %c1_82
    }
    %95 = memref.get_global @aie_lock_semaphore_arr_29 : memref<1x!verif.counting_semaphore>
    %c0_65 = arith.constant 0 : index
    %96 = memref.load %95[%c0_65] : memref<1x!verif.counting_semaphore>
    %c1_66 = arith.constant 1 : index
    verif.semaphore.release %96, %c1_66
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_32 = async.execute {
    func.call @tile_core_1_5() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_4_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch1_to_1_4ch0 : memref<1xi32>
    %c5_61 = arith.constant 5 : index
    %97 = memref.load %95[%c5_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf11 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_1_1ch1_to_1_4ch0 : memref<1xi32>
    %c5_70 = arith.constant 5 : index
    %104 = memref.load %102[%c5_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf12 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_33 = async.execute {
    func.call @tile_mem_1_4_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_4_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch0_to_1_4ch1 : memref<1xi32>
    %c8_61 = arith.constant 8 : index
    %97 = memref.load %95[%c8_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf10 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_2_1ch0_to_1_4ch1 : memref<1xi32>
    %c8_70 = arith.constant 8 : index
    %104 = memref.load %102[%c8_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf13 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_34 = async.execute {
    func.call @tile_mem_1_4_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_4_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_23 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_4ch0_to_0_1ch1 : memref<1xi32>
    %c12_61 = arith.constant 12 : index
    %97 = memref.load %95[%c12_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_68 = arith.constant 4 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c4_68 : index
      %101 = arith.remsi %arg0, %c4_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c4_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c0_64
      %105 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
      %106 = memref.load %105[%100, %104] : memref<4x4xi32, 2>
      memref.store %106, %96[%c0_62] : memref<1xi32>
      verif.semaphore.set %97, %c1_65
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_22 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_35 = async.execute {
    func.call @tile_mem_1_4_block_2() : () -> ()
    async.yield
  }
  func.func @tile_core_1_4() {
    %c8_59 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %c16 = arith.constant 16 : index
    %c4_60 = arith.constant 4 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_22 : memref<1x!verif.counting_semaphore>
    %c0_63 = arith.constant 0 : index
    %94 = memref.load %93[%c0_63] : memref<1x!verif.counting_semaphore>
    %c1_64 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_64
    scf.for %arg0 = %c0_62 to %c4_60 step %c1_61 {
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        %97 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
        memref.store %c0_i32, %97[%arg0, %arg1] : memref<4x4xi32, 2>
      }
    }
    scf.for %arg0 = %c0_62 to %c16 step %c8_59 {
      %97 = memref.get_global @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
      %c0_67 = arith.constant 0 : index
      %98 = memref.load %97[%c0_67] : memref<1x!verif.counting_semaphore>
      %c1_68 = arith.constant 1 : index
      verif.semaphore.acquire %98, %c1_68
      %99 = memref.get_global @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
      %c0_69 = arith.constant 0 : index
      %100 = memref.load %99[%c0_69] : memref<1x!verif.counting_semaphore>
      %c1_70 = arith.constant 1 : index
      verif.semaphore.acquire %100, %c1_70
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf11 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf10 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %101 = memref.get_global @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
      %c0_71 = arith.constant 0 : index
      %102 = memref.load %101[%c0_71] : memref<1x!verif.counting_semaphore>
      %c1_72 = arith.constant 1 : index
      verif.semaphore.release %102, %c1_72
      %103 = memref.get_global @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
      %c0_73 = arith.constant 0 : index
      %104 = memref.load %103[%c0_73] : memref<1x!verif.counting_semaphore>
      %c1_74 = arith.constant 1 : index
      verif.semaphore.release %104, %c1_74
      %105 = memref.get_global @aie_lock_semaphore_arr_21 : memref<1x!verif.counting_semaphore>
      %c0_75 = arith.constant 0 : index
      %106 = memref.load %105[%c0_75] : memref<1x!verif.counting_semaphore>
      %c1_76 = arith.constant 1 : index
      verif.semaphore.acquire %106, %c1_76
      %107 = memref.get_global @aie_lock_semaphore_arr_19 : memref<1x!verif.counting_semaphore>
      %c0_77 = arith.constant 0 : index
      %108 = memref.load %107[%c0_77] : memref<1x!verif.counting_semaphore>
      %c1_78 = arith.constant 1 : index
      verif.semaphore.acquire %108, %c1_78
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf12 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf13 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf14 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %109 = memref.get_global @aie_lock_semaphore_arr_18 : memref<1x!verif.counting_semaphore>
      %c0_79 = arith.constant 0 : index
      %110 = memref.load %109[%c0_79] : memref<1x!verif.counting_semaphore>
      %c1_80 = arith.constant 1 : index
      verif.semaphore.release %110, %c1_80
      %111 = memref.get_global @aie_lock_semaphore_arr_20 : memref<1x!verif.counting_semaphore>
      %c0_81 = arith.constant 0 : index
      %112 = memref.load %111[%c0_81] : memref<1x!verif.counting_semaphore>
      %c1_82 = arith.constant 1 : index
      verif.semaphore.release %112, %c1_82
    }
    %95 = memref.get_global @aie_lock_semaphore_arr_23 : memref<1x!verif.counting_semaphore>
    %c0_65 = arith.constant 0 : index
    %96 = memref.load %95[%c0_65] : memref<1x!verif.counting_semaphore>
    %c1_66 = arith.constant 1 : index
    verif.semaphore.release %96, %c1_66
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_36 = async.execute {
    func.call @tile_core_1_4() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_3_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch0_to_1_3ch0 : memref<1xi32>
    %c4_61 = arith.constant 4 : index
    %97 = memref.load %95[%c4_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf6 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_1_1ch0_to_1_3ch0 : memref<1xi32>
    %c4_70 = arith.constant 4 : index
    %104 = memref.load %102[%c4_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf7 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_37 = async.execute {
    func.call @tile_mem_1_3_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_3_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch1_to_1_3ch1 : memref<1xi32>
    %c9_61 = arith.constant 9 : index
    %97 = memref.load %95[%c9_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf5 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_2_1ch1_to_1_3ch1 : memref<1xi32>
    %c9_70 = arith.constant 9 : index
    %104 = memref.load %102[%c9_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf8 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_38 = async.execute {
    func.call @tile_mem_1_3_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_3_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_17 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_3ch0_to_0_1ch2 : memref<1xi32>
    %c13_61 = arith.constant 13 : index
    %97 = memref.load %95[%c13_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_68 = arith.constant 4 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c4_68 : index
      %101 = arith.remsi %arg0, %c4_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c4_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c0_64
      %105 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
      %106 = memref.load %105[%100, %104] : memref<4x4xi32, 2>
      memref.store %106, %96[%c0_62] : memref<1xi32>
      verif.semaphore.set %97, %c1_65
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_16 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_39 = async.execute {
    func.call @tile_mem_1_3_block_2() : () -> ()
    async.yield
  }
  func.func @tile_core_1_3() {
    %c8_59 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %c16 = arith.constant 16 : index
    %c4_60 = arith.constant 4 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_16 : memref<1x!verif.counting_semaphore>
    %c0_63 = arith.constant 0 : index
    %94 = memref.load %93[%c0_63] : memref<1x!verif.counting_semaphore>
    %c1_64 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_64
    scf.for %arg0 = %c0_62 to %c4_60 step %c1_61 {
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        %97 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
        memref.store %c0_i32, %97[%arg0, %arg1] : memref<4x4xi32, 2>
      }
    }
    scf.for %arg0 = %c0_62 to %c16 step %c8_59 {
      %97 = memref.get_global @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
      %c0_67 = arith.constant 0 : index
      %98 = memref.load %97[%c0_67] : memref<1x!verif.counting_semaphore>
      %c1_68 = arith.constant 1 : index
      verif.semaphore.acquire %98, %c1_68
      %99 = memref.get_global @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
      %c0_69 = arith.constant 0 : index
      %100 = memref.load %99[%c0_69] : memref<1x!verif.counting_semaphore>
      %c1_70 = arith.constant 1 : index
      verif.semaphore.acquire %100, %c1_70
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf6 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf5 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %101 = memref.get_global @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
      %c0_71 = arith.constant 0 : index
      %102 = memref.load %101[%c0_71] : memref<1x!verif.counting_semaphore>
      %c1_72 = arith.constant 1 : index
      verif.semaphore.release %102, %c1_72
      %103 = memref.get_global @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
      %c0_73 = arith.constant 0 : index
      %104 = memref.load %103[%c0_73] : memref<1x!verif.counting_semaphore>
      %c1_74 = arith.constant 1 : index
      verif.semaphore.release %104, %c1_74
      %105 = memref.get_global @aie_lock_semaphore_arr_15 : memref<1x!verif.counting_semaphore>
      %c0_75 = arith.constant 0 : index
      %106 = memref.load %105[%c0_75] : memref<1x!verif.counting_semaphore>
      %c1_76 = arith.constant 1 : index
      verif.semaphore.acquire %106, %c1_76
      %107 = memref.get_global @aie_lock_semaphore_arr_13 : memref<1x!verif.counting_semaphore>
      %c0_77 = arith.constant 0 : index
      %108 = memref.load %107[%c0_77] : memref<1x!verif.counting_semaphore>
      %c1_78 = arith.constant 1 : index
      verif.semaphore.acquire %108, %c1_78
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf7 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf8 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf9 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %109 = memref.get_global @aie_lock_semaphore_arr_12 : memref<1x!verif.counting_semaphore>
      %c0_79 = arith.constant 0 : index
      %110 = memref.load %109[%c0_79] : memref<1x!verif.counting_semaphore>
      %c1_80 = arith.constant 1 : index
      verif.semaphore.release %110, %c1_80
      %111 = memref.get_global @aie_lock_semaphore_arr_14 : memref<1x!verif.counting_semaphore>
      %c0_81 = arith.constant 0 : index
      %112 = memref.load %111[%c0_81] : memref<1x!verif.counting_semaphore>
      %c1_82 = arith.constant 1 : index
      verif.semaphore.release %112, %c1_82
    }
    %95 = memref.get_global @aie_lock_semaphore_arr_17 : memref<1x!verif.counting_semaphore>
    %c0_65 = arith.constant 0 : index
    %96 = memref.load %95[%c0_65] : memref<1x!verif.counting_semaphore>
    %c1_66 = arith.constant 1 : index
    verif.semaphore.release %96, %c1_66
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_40 = async.execute {
    func.call @tile_core_1_3() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_2_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch0_to_1_2ch0 : memref<1xi32>
    %c3_61 = arith.constant 3 : index
    %97 = memref.load %95[%c3_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf1 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_1_1ch0_to_1_2ch0 : memref<1xi32>
    %c3_70 = arith.constant 3 : index
    %104 = memref.load %102[%c3_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf2 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_41 = async.execute {
    func.call @tile_mem_1_2_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_2_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb2
    %93 = memref.get_global @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch0_to_1_2ch1 : memref<1xi32>
    %c7_61 = arith.constant 7 : index
    %97 = memref.load %95[%c7_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %97, %c1_65
      %112 = memref.load %96[%c0_62] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf0 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb2
  ^bb2:  // pred: ^bb1
    %100 = memref.get_global @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
    %c0_68 = arith.constant 0 : index
    %101 = memref.load %100[%c0_68] : memref<1x!verif.counting_semaphore>
    %c1_69 = arith.constant 1 : index
    verif.semaphore.acquire %101, %c1_69
    %102 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %103 = memref.get_global @aie_flow_2_1ch0_to_1_2ch1 : memref<1xi32>
    %c7_70 = arith.constant 7 : index
    %104 = memref.load %102[%c7_70] : memref<128x!verif.semaphore>
    %c0_71 = arith.constant 0 : index
    %c1_72 = arith.constant 1 : index
    %c0_73 = arith.constant 0 : index
    %c1_74 = arith.constant 1 : index
    %c16_75 = arith.constant 16 : index
    scf.for %arg0 = %c0_71 to %c16_75 step %c1_72 {
      %c4_78 = arith.constant 4 : index
      %c0_79 = arith.constant 0 : index
      %107 = arith.floordivsi %arg0, %c4_78 : index
      %108 = arith.remsi %arg0, %c4_78 : index
      %109 = arith.cmpi slt, %108, %c0_79 : index
      %110 = arith.addi %108, %c4_78 : index
      %111 = arith.select %109, %110, %108 : index
      verif.semaphore.wait %104, %c1_74
      %112 = memref.load %103[%c0_71] : memref<1xi32>
      %113 = memref.get_global @aie_buffer_buf3 : memref<4x4xi32, 2>
      memref.store %112, %113[%107, %111] : memref<4x4xi32, 2>
      verif.semaphore.set %104, %c0_73
    }
    %105 = memref.get_global @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
    %c0_76 = arith.constant 0 : index
    %106 = memref.load %105[%c0_76] : memref<1x!verif.counting_semaphore>
    %c1_77 = arith.constant 1 : index
    verif.semaphore.release %106, %c1_77
    cf.br ^bb1
  ^bb3:  // no predecessors
    return
  }
  %token_42 = async.execute {
    func.call @tile_mem_1_2_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_2_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_11 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_2ch0_to_0_1ch0 : memref<1xi32>
    %c11_61 = arith.constant 11 : index
    %97 = memref.load %95[%c11_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_62 to %c16 step %c1_63 {
      %c4_68 = arith.constant 4 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c4_68 : index
      %101 = arith.remsi %arg0, %c4_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c4_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c0_64
      %105 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
      %106 = memref.load %105[%100, %104] : memref<4x4xi32, 2>
      memref.store %106, %96[%c0_62] : memref<1xi32>
      verif.semaphore.set %97, %c1_65
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_10 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c1_67 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_43 = async.execute {
    func.call @tile_mem_1_2_block_2() : () -> ()
    async.yield
  }
  func.func @tile_core_1_2() {
    %c8_59 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %c16 = arith.constant 16 : index
    %c4_60 = arith.constant 4 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_10 : memref<1x!verif.counting_semaphore>
    %c0_63 = arith.constant 0 : index
    %94 = memref.load %93[%c0_63] : memref<1x!verif.counting_semaphore>
    %c1_64 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_64
    scf.for %arg0 = %c0_62 to %c4_60 step %c1_61 {
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        %97 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
        memref.store %c0_i32, %97[%arg0, %arg1] : memref<4x4xi32, 2>
      }
    }
    scf.for %arg0 = %c0_62 to %c16 step %c8_59 {
      %97 = memref.get_global @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
      %c0_67 = arith.constant 0 : index
      %98 = memref.load %97[%c0_67] : memref<1x!verif.counting_semaphore>
      %c1_68 = arith.constant 1 : index
      verif.semaphore.acquire %98, %c1_68
      %99 = memref.get_global @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
      %c0_69 = arith.constant 0 : index
      %100 = memref.load %99[%c0_69] : memref<1x!verif.counting_semaphore>
      %c1_70 = arith.constant 1 : index
      verif.semaphore.acquire %100, %c1_70
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf1 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf0 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %101 = memref.get_global @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
      %c0_71 = arith.constant 0 : index
      %102 = memref.load %101[%c0_71] : memref<1x!verif.counting_semaphore>
      %c1_72 = arith.constant 1 : index
      verif.semaphore.release %102, %c1_72
      %103 = memref.get_global @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
      %c0_73 = arith.constant 0 : index
      %104 = memref.load %103[%c0_73] : memref<1x!verif.counting_semaphore>
      %c1_74 = arith.constant 1 : index
      verif.semaphore.release %104, %c1_74
      %105 = memref.get_global @aie_lock_semaphore_arr_9 : memref<1x!verif.counting_semaphore>
      %c0_75 = arith.constant 0 : index
      %106 = memref.load %105[%c0_75] : memref<1x!verif.counting_semaphore>
      %c1_76 = arith.constant 1 : index
      verif.semaphore.acquire %106, %c1_76
      %107 = memref.get_global @aie_lock_semaphore_arr_7 : memref<1x!verif.counting_semaphore>
      %c0_77 = arith.constant 0 : index
      %108 = memref.load %107[%c0_77] : memref<1x!verif.counting_semaphore>
      %c1_78 = arith.constant 1 : index
      verif.semaphore.acquire %108, %c1_78
      scf.for %arg1 = %c0_62 to %c4_60 step %c1_61 {
        scf.for %arg2 = %c0_62 to %c4_60 step %c1_61 {
          scf.for %arg3 = %c0_62 to %c4_60 step %c1_61 {
            %113 = memref.get_global @aie_buffer_buf2 : memref<4x4xi32, 2>
            %114 = memref.load %113[%arg1, %arg3] : memref<4x4xi32, 2>
            %115 = memref.get_global @aie_buffer_buf3 : memref<4x4xi32, 2>
            %116 = memref.load %115[%arg3, %arg2] : memref<4x4xi32, 2>
            %117 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
            %118 = memref.load %117[%arg1, %arg2] : memref<4x4xi32, 2>
            %119 = arith.muli %114, %116 : i32
            %120 = arith.addi %118, %119 : i32
            %121 = memref.get_global @aie_buffer_buf4 : memref<4x4xi32, 2>
            memref.store %120, %121[%arg1, %arg2] : memref<4x4xi32, 2>
          }
        }
      }
      %109 = memref.get_global @aie_lock_semaphore_arr_6 : memref<1x!verif.counting_semaphore>
      %c0_79 = arith.constant 0 : index
      %110 = memref.load %109[%c0_79] : memref<1x!verif.counting_semaphore>
      %c1_80 = arith.constant 1 : index
      verif.semaphore.release %110, %c1_80
      %111 = memref.get_global @aie_lock_semaphore_arr_8 : memref<1x!verif.counting_semaphore>
      %c0_81 = arith.constant 0 : index
      %112 = memref.load %111[%c0_81] : memref<1x!verif.counting_semaphore>
      %c1_82 = arith.constant 1 : index
      verif.semaphore.release %112, %c1_82
    }
    %95 = memref.get_global @aie_lock_semaphore_arr_11 : memref<1x!verif.counting_semaphore>
    %c0_65 = arith.constant 0 : index
    %96 = memref.load %95[%c0_65] : memref<1x!verif.counting_semaphore>
    %c1_66 = arith.constant 1 : index
    verif.semaphore.release %96, %c1_66
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_44 = async.execute {
    func.call @tile_core_1_2() : () -> ()
    async.yield
  }
  func.func @tile_mem_0_1_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_2ch0_to_0_1ch0 : memref<1xi32>
    %c11_61 = arith.constant 11 : index
    %97 = memref.load %95[%c11_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c4_66 = arith.constant 4 : index
    scf.for %arg0 = %c0_62 to %c4_66 step %c1_63 {
      %c4_69 = arith.constant 4 : index
      scf.for %arg1 = %c0_62 to %c4_69 step %c1_63 {
        %c8_70 = arith.constant 8 : index
        %100 = arith.muli %arg0, %c8_70 overflow<nsw> : index
        %101 = arith.addi %100, %arg1 : index
        %c8_71 = arith.constant 8 : index
        %c0_72 = arith.constant 0 : index
        %102 = arith.floordivsi %101, %c8_71 : index
        %103 = arith.remsi %101, %c8_71 : index
        %104 = arith.cmpi slt, %103, %c0_72 : index
        %105 = arith.addi %103, %c8_71 : index
        %106 = arith.select %104, %105, %103 : index
        verif.semaphore.wait %97, %c1_65
        %107 = memref.load %96[%c0_62] : memref<1xi32>
        %108 = memref.get_global @aie_buffer_buf22 : memref<8x8xi32, 1>
        memref.store %107, %108[%102, %106] : memref<8x8xi32, 1>
        verif.semaphore.set %97, %c0_64
      }
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
    %c0_67 = arith.constant 0 : index
    %99 = memref.load %98[%c0_67] : memref<1x!verif.counting_semaphore>
    %c1_68 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_68
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_45 = async.execute {
    func.call @tile_mem_0_1_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_0_1_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_4ch0_to_0_1ch1 : memref<1xi32>
    %c12_61 = arith.constant 12 : index
    %97 = memref.load %95[%c12_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c4_66 = arith.constant 4 : index
    scf.for %arg0 = %c0_62 to %c4_66 step %c1_63 {
      %c4_69 = arith.constant 4 : index
      scf.for %arg1 = %c0_62 to %c4_69 step %c1_63 {
        %c8_70 = arith.constant 8 : index
        %100 = arith.muli %arg0, %c8_70 overflow<nsw> : index
        %101 = arith.addi %100, %arg1 : index
        %c32 = arith.constant 32 : index
        %102 = arith.addi %101, %c32 : index
        %c8_71 = arith.constant 8 : index
        %c0_72 = arith.constant 0 : index
        %103 = arith.floordivsi %102, %c8_71 : index
        %104 = arith.remsi %102, %c8_71 : index
        %105 = arith.cmpi slt, %104, %c0_72 : index
        %106 = arith.addi %104, %c8_71 : index
        %107 = arith.select %105, %106, %104 : index
        verif.semaphore.wait %97, %c1_65
        %108 = memref.load %96[%c0_62] : memref<1xi32>
        %109 = memref.get_global @aie_buffer_buf22 : memref<8x8xi32, 1>
        memref.store %108, %109[%103, %107] : memref<8x8xi32, 1>
        verif.semaphore.set %97, %c0_64
      }
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
    %c0_67 = arith.constant 0 : index
    %99 = memref.load %98[%c0_67] : memref<1x!verif.counting_semaphore>
    %c1_68 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_68
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_46 = async.execute {
    func.call @tile_mem_0_1_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_0_1_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_3ch0_to_0_1ch2 : memref<1xi32>
    %c13_61 = arith.constant 13 : index
    %97 = memref.load %95[%c13_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c4_66 = arith.constant 4 : index
    scf.for %arg0 = %c0_62 to %c4_66 step %c1_63 {
      %c4_69 = arith.constant 4 : index
      scf.for %arg1 = %c0_62 to %c4_69 step %c1_63 {
        %c8_70 = arith.constant 8 : index
        %100 = arith.muli %arg0, %c8_70 overflow<nsw> : index
        %101 = arith.addi %100, %arg1 : index
        %c4_71 = arith.constant 4 : index
        %102 = arith.addi %101, %c4_71 : index
        %c8_72 = arith.constant 8 : index
        %c0_73 = arith.constant 0 : index
        %103 = arith.floordivsi %102, %c8_72 : index
        %104 = arith.remsi %102, %c8_72 : index
        %105 = arith.cmpi slt, %104, %c0_73 : index
        %106 = arith.addi %104, %c8_72 : index
        %107 = arith.select %105, %106, %104 : index
        verif.semaphore.wait %97, %c1_65
        %108 = memref.load %96[%c0_62] : memref<1xi32>
        %109 = memref.get_global @aie_buffer_buf22 : memref<8x8xi32, 1>
        memref.store %108, %109[%103, %107] : memref<8x8xi32, 1>
        verif.semaphore.set %97, %c0_64
      }
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
    %c0_67 = arith.constant 0 : index
    %99 = memref.load %98[%c0_67] : memref<1x!verif.counting_semaphore>
    %c1_68 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_68
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_47 = async.execute {
    func.call @tile_mem_0_1_block_2() : () -> ()
    async.yield
  }
  func.func @tile_mem_0_1_block_3() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_5ch0_to_0_1ch3 : memref<1xi32>
    %c14_61 = arith.constant 14 : index
    %97 = memref.load %95[%c14_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c4_66 = arith.constant 4 : index
    scf.for %arg0 = %c0_62 to %c4_66 step %c1_63 {
      %c4_69 = arith.constant 4 : index
      scf.for %arg1 = %c0_62 to %c4_69 step %c1_63 {
        %c8_70 = arith.constant 8 : index
        %100 = arith.muli %arg0, %c8_70 overflow<nsw> : index
        %101 = arith.addi %100, %arg1 : index
        %c36 = arith.constant 36 : index
        %102 = arith.addi %101, %c36 : index
        %c8_71 = arith.constant 8 : index
        %c0_72 = arith.constant 0 : index
        %103 = arith.floordivsi %102, %c8_71 : index
        %104 = arith.remsi %102, %c8_71 : index
        %105 = arith.cmpi slt, %104, %c0_72 : index
        %106 = arith.addi %104, %c8_71 : index
        %107 = arith.select %105, %106, %104 : index
        verif.semaphore.wait %97, %c1_65
        %108 = memref.load %96[%c0_62] : memref<1xi32>
        %109 = memref.get_global @aie_buffer_buf22 : memref<8x8xi32, 1>
        memref.store %108, %109[%103, %107] : memref<8x8xi32, 1>
        verif.semaphore.set %97, %c0_64
      }
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
    %c0_67 = arith.constant 0 : index
    %99 = memref.load %98[%c0_67] : memref<1x!verif.counting_semaphore>
    %c1_68 = arith.constant 1 : index
    verif.semaphore.release %99, %c1_68
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_48 = async.execute {
    func.call @tile_mem_0_1_block_3() : () -> ()
    async.yield
  }
  func.func @tile_mem_0_1_block_4() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_5 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c4_60 = arith.constant 4 : index
    verif.semaphore.acquire %94, %c4_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_0_1ch0_to_0_0ch0 : memref<1xi32>
    %c2_61 = arith.constant 2 : index
    %97 = memref.load %95[%c2_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    scf.for %arg0 = %c0_62 to %c64 step %c1_63 {
      %c8_68 = arith.constant 8 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c8_68 : index
      %101 = arith.remsi %arg0, %c8_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c8_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c0_64
      %105 = memref.get_global @aie_buffer_buf22 : memref<8x8xi32, 1>
      %106 = memref.load %105[%100, %104] : memref<8x8xi32, 1>
      memref.store %106, %96[%c0_62] : memref<1xi32>
      verif.semaphore.set %97, %c1_65
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_4 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c4_67 = arith.constant 4 : index
    verif.semaphore.release %99, %c4_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_49 = async.execute {
    func.call @tile_mem_0_1_block_4() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_1_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_2 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c2_60 = arith.constant 2 : index
    verif.semaphore.acquire %94, %c2_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_0ch0_to_1_1ch0 : memref<1xi32>
    %c0_61 = arith.constant 0 : index
    %97 = memref.load %95[%c0_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    scf.for %arg0 = %c0_62 to %c128 step %c1_63 {
      %c16 = arith.constant 16 : index
      %c0_68 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c16 : index
      %101 = arith.remsi %arg0, %c16 : index
      %102 = arith.cmpi slt, %101, %c0_68 : index
      %103 = arith.addi %101, %c16 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c1_65
      %105 = memref.load %96[%c0_62] : memref<1xi32>
      %106 = memref.get_global @aie_buffer_buf21 : memref<8x16xi32, 1>
      memref.store %105, %106[%100, %104] : memref<8x16xi32, 1>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_3 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c2_67 = arith.constant 2 : index
    verif.semaphore.release %99, %c2_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_50 = async.execute {
    func.call @tile_mem_1_1_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_1_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_3 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch0_to_1_3ch0 : memref<1xi32>
    %97 = memref.get_global @aie_flow_1_1ch0_to_1_2ch0 : memref<1xi32>
    %c4_61 = arith.constant 4 : index
    %98 = memref.load %95[%c4_61] : memref<128x!verif.semaphore>
    %c3_62 = arith.constant 3 : index
    %99 = memref.load %95[%c3_62] : memref<128x!verif.semaphore>
    %c0_63 = arith.constant 0 : index
    %c1_64 = arith.constant 1 : index
    %c0_65 = arith.constant 0 : index
    %c1_66 = arith.constant 1 : index
    %token_67 = async.execute {
      %c4_71 = arith.constant 4 : index
      scf.for %arg0 = %c0_63 to %c4_71 step %c1_64 {
        %c4_72 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_72 step %c1_64 {
          %c4_73 = arith.constant 4 : index
          scf.for %arg2 = %c0_63 to %c4_73 step %c1_64 {
            %c4_74 = arith.constant 4 : index
            %102 = arith.muli %arg0, %c4_74 overflow<nsw> : index
            %c16 = arith.constant 16 : index
            %103 = arith.muli %arg1, %c16 overflow<nsw> : index
            %104 = arith.addi %102, %103 : index
            %105 = arith.addi %104, %arg2 : index
            %c16_75 = arith.constant 16 : index
            %c0_76 = arith.constant 0 : index
            %106 = arith.floordivsi %105, %c16_75 : index
            %107 = arith.remsi %105, %c16_75 : index
            %108 = arith.cmpi slt, %107, %c0_76 : index
            %109 = arith.addi %107, %c16_75 : index
            %110 = arith.select %108, %109, %107 : index
            verif.semaphore.wait %98, %c0_65
            %111 = memref.get_global @aie_buffer_buf21 : memref<8x16xi32, 1>
            %112 = memref.load %111[%106, %110] : memref<8x16xi32, 1>
            memref.store %112, %96[%c0_63] : memref<1xi32>
            verif.semaphore.set %98, %c1_66
          }
        }
      }
      async.yield
    }
    %token_68 = async.execute {
      %c4_71 = arith.constant 4 : index
      scf.for %arg0 = %c0_63 to %c4_71 step %c1_64 {
        %c4_72 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_72 step %c1_64 {
          %c4_73 = arith.constant 4 : index
          scf.for %arg2 = %c0_63 to %c4_73 step %c1_64 {
            %c4_74 = arith.constant 4 : index
            %102 = arith.muli %arg0, %c4_74 overflow<nsw> : index
            %c16 = arith.constant 16 : index
            %103 = arith.muli %arg1, %c16 overflow<nsw> : index
            %104 = arith.addi %102, %103 : index
            %105 = arith.addi %104, %arg2 : index
            %c16_75 = arith.constant 16 : index
            %c0_76 = arith.constant 0 : index
            %106 = arith.floordivsi %105, %c16_75 : index
            %107 = arith.remsi %105, %c16_75 : index
            %108 = arith.cmpi slt, %107, %c0_76 : index
            %109 = arith.addi %107, %c16_75 : index
            %110 = arith.select %108, %109, %107 : index
            verif.semaphore.wait %99, %c0_65
            %111 = memref.get_global @aie_buffer_buf21 : memref<8x16xi32, 1>
            %112 = memref.load %111[%106, %110] : memref<8x16xi32, 1>
            memref.store %112, %97[%c0_63] : memref<1xi32>
            verif.semaphore.set %99, %c1_66
          }
        }
      }
      async.yield
    }
    %100 = memref.get_global @aie_lock_semaphore_arr_2 : memref<1x!verif.counting_semaphore>
    %c0_69 = arith.constant 0 : index
    %101 = memref.load %100[%c0_69] : memref<1x!verif.counting_semaphore>
    %c1_70 = arith.constant 1 : index
    verif.semaphore.release %101, %c1_70
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_51 = async.execute {
    func.call @tile_mem_1_1_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_1_1_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_3 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_1_1ch1_to_1_5ch0 : memref<1xi32>
    %97 = memref.get_global @aie_flow_1_1ch1_to_1_4ch0 : memref<1xi32>
    %c6_61 = arith.constant 6 : index
    %98 = memref.load %95[%c6_61] : memref<128x!verif.semaphore>
    %c5_62 = arith.constant 5 : index
    %99 = memref.load %95[%c5_62] : memref<128x!verif.semaphore>
    %c0_63 = arith.constant 0 : index
    %c1_64 = arith.constant 1 : index
    %c0_65 = arith.constant 0 : index
    %c1_66 = arith.constant 1 : index
    %token_67 = async.execute {
      %c4_71 = arith.constant 4 : index
      scf.for %arg0 = %c0_63 to %c4_71 step %c1_64 {
        %c4_72 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_72 step %c1_64 {
          %c4_73 = arith.constant 4 : index
          scf.for %arg2 = %c0_63 to %c4_73 step %c1_64 {
            %c4_74 = arith.constant 4 : index
            %102 = arith.muli %arg0, %c4_74 overflow<nsw> : index
            %c16 = arith.constant 16 : index
            %103 = arith.muli %arg1, %c16 overflow<nsw> : index
            %104 = arith.addi %102, %103 : index
            %105 = arith.addi %104, %arg2 : index
            %c64 = arith.constant 64 : index
            %106 = arith.addi %105, %c64 : index
            %c16_75 = arith.constant 16 : index
            %c0_76 = arith.constant 0 : index
            %107 = arith.floordivsi %106, %c16_75 : index
            %108 = arith.remsi %106, %c16_75 : index
            %109 = arith.cmpi slt, %108, %c0_76 : index
            %110 = arith.addi %108, %c16_75 : index
            %111 = arith.select %109, %110, %108 : index
            verif.semaphore.wait %98, %c0_65
            %112 = memref.get_global @aie_buffer_buf21 : memref<8x16xi32, 1>
            %113 = memref.load %112[%107, %111] : memref<8x16xi32, 1>
            memref.store %113, %96[%c0_63] : memref<1xi32>
            verif.semaphore.set %98, %c1_66
          }
        }
      }
      async.yield
    }
    %token_68 = async.execute {
      %c4_71 = arith.constant 4 : index
      scf.for %arg0 = %c0_63 to %c4_71 step %c1_64 {
        %c4_72 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_72 step %c1_64 {
          %c4_73 = arith.constant 4 : index
          scf.for %arg2 = %c0_63 to %c4_73 step %c1_64 {
            %c4_74 = arith.constant 4 : index
            %102 = arith.muli %arg0, %c4_74 overflow<nsw> : index
            %c16 = arith.constant 16 : index
            %103 = arith.muli %arg1, %c16 overflow<nsw> : index
            %104 = arith.addi %102, %103 : index
            %105 = arith.addi %104, %arg2 : index
            %c64 = arith.constant 64 : index
            %106 = arith.addi %105, %c64 : index
            %c16_75 = arith.constant 16 : index
            %c0_76 = arith.constant 0 : index
            %107 = arith.floordivsi %106, %c16_75 : index
            %108 = arith.remsi %106, %c16_75 : index
            %109 = arith.cmpi slt, %108, %c0_76 : index
            %110 = arith.addi %108, %c16_75 : index
            %111 = arith.select %109, %110, %108 : index
            verif.semaphore.wait %99, %c0_65
            %112 = memref.get_global @aie_buffer_buf21 : memref<8x16xi32, 1>
            %113 = memref.load %112[%107, %111] : memref<8x16xi32, 1>
            memref.store %113, %97[%c0_63] : memref<1xi32>
            verif.semaphore.set %99, %c1_66
          }
        }
      }
      async.yield
    }
    %100 = memref.get_global @aie_lock_semaphore_arr_2 : memref<1x!verif.counting_semaphore>
    %c0_69 = arith.constant 0 : index
    %101 = memref.load %100[%c0_69] : memref<1x!verif.counting_semaphore>
    %c1_70 = arith.constant 1 : index
    verif.semaphore.release %101, %c1_70
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_52 = async.execute {
    func.call @tile_mem_1_1_block_2() : () -> ()
    async.yield
  }
  func.func @tile_mem_2_1_block_0() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_0 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c2_60 = arith.constant 2 : index
    verif.semaphore.acquire %94, %c2_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_0ch0_to_2_1ch0 : memref<1xi32>
    %c1_61 = arith.constant 1 : index
    %97 = memref.load %95[%c1_61] : memref<128x!verif.semaphore>
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c0_64 = arith.constant 0 : index
    %c1_65 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    scf.for %arg0 = %c0_62 to %c128 step %c1_63 {
      %c8_68 = arith.constant 8 : index
      %c0_69 = arith.constant 0 : index
      %100 = arith.floordivsi %arg0, %c8_68 : index
      %101 = arith.remsi %arg0, %c8_68 : index
      %102 = arith.cmpi slt, %101, %c0_69 : index
      %103 = arith.addi %101, %c8_68 : index
      %104 = arith.select %102, %103, %101 : index
      verif.semaphore.wait %97, %c1_65
      %105 = memref.load %96[%c0_62] : memref<1xi32>
      %106 = memref.get_global @aie_buffer_buf20 : memref<16x8xi32, 1>
      memref.store %105, %106[%100, %104] : memref<16x8xi32, 1>
      verif.semaphore.set %97, %c0_64
    }
    %98 = memref.get_global @aie_lock_semaphore_arr_1 : memref<1x!verif.counting_semaphore>
    %c0_66 = arith.constant 0 : index
    %99 = memref.load %98[%c0_66] : memref<1x!verif.counting_semaphore>
    %c2_67 = arith.constant 2 : index
    verif.semaphore.release %99, %c2_67
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_53 = async.execute {
    func.call @tile_mem_2_1_block_0() : () -> ()
    async.yield
  }
  func.func @tile_mem_2_1_block_1() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_1 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch0_to_1_4ch1 : memref<1xi32>
    %97 = memref.get_global @aie_flow_2_1ch0_to_1_2ch1 : memref<1xi32>
    %c8_61 = arith.constant 8 : index
    %98 = memref.load %95[%c8_61] : memref<128x!verif.semaphore>
    %c7_62 = arith.constant 7 : index
    %99 = memref.load %95[%c7_62] : memref<128x!verif.semaphore>
    %c0_63 = arith.constant 0 : index
    %c1_64 = arith.constant 1 : index
    %c0_65 = arith.constant 0 : index
    %c1_66 = arith.constant 1 : index
    %token_67 = async.execute {
      %c16 = arith.constant 16 : index
      scf.for %arg0 = %c0_63 to %c16 step %c1_64 {
        %c4_71 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_71 step %c1_64 {
          %c8_72 = arith.constant 8 : index
          %102 = arith.muli %arg0, %c8_72 overflow<nsw> : index
          %103 = arith.addi %102, %arg1 : index
          %c8_73 = arith.constant 8 : index
          %c0_74 = arith.constant 0 : index
          %104 = arith.floordivsi %103, %c8_73 : index
          %105 = arith.remsi %103, %c8_73 : index
          %106 = arith.cmpi slt, %105, %c0_74 : index
          %107 = arith.addi %105, %c8_73 : index
          %108 = arith.select %106, %107, %105 : index
          verif.semaphore.wait %98, %c0_65
          %109 = memref.get_global @aie_buffer_buf20 : memref<16x8xi32, 1>
          %110 = memref.load %109[%104, %108] : memref<16x8xi32, 1>
          memref.store %110, %96[%c0_63] : memref<1xi32>
          verif.semaphore.set %98, %c1_66
        }
      }
      async.yield
    }
    %token_68 = async.execute {
      %c16 = arith.constant 16 : index
      scf.for %arg0 = %c0_63 to %c16 step %c1_64 {
        %c4_71 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_71 step %c1_64 {
          %c8_72 = arith.constant 8 : index
          %102 = arith.muli %arg0, %c8_72 overflow<nsw> : index
          %103 = arith.addi %102, %arg1 : index
          %c8_73 = arith.constant 8 : index
          %c0_74 = arith.constant 0 : index
          %104 = arith.floordivsi %103, %c8_73 : index
          %105 = arith.remsi %103, %c8_73 : index
          %106 = arith.cmpi slt, %105, %c0_74 : index
          %107 = arith.addi %105, %c8_73 : index
          %108 = arith.select %106, %107, %105 : index
          verif.semaphore.wait %99, %c0_65
          %109 = memref.get_global @aie_buffer_buf20 : memref<16x8xi32, 1>
          %110 = memref.load %109[%104, %108] : memref<16x8xi32, 1>
          memref.store %110, %97[%c0_63] : memref<1xi32>
          verif.semaphore.set %99, %c1_66
        }
      }
      async.yield
    }
    %100 = memref.get_global @aie_lock_semaphore_arr_0 : memref<1x!verif.counting_semaphore>
    %c0_69 = arith.constant 0 : index
    %101 = memref.load %100[%c0_69] : memref<1x!verif.counting_semaphore>
    %c1_70 = arith.constant 1 : index
    verif.semaphore.release %101, %c1_70
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_54 = async.execute {
    func.call @tile_mem_2_1_block_1() : () -> ()
    async.yield
  }
  func.func @tile_mem_2_1_block_2() {
    cf.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb1
    %93 = memref.get_global @aie_lock_semaphore_arr_1 : memref<1x!verif.counting_semaphore>
    %c0_59 = arith.constant 0 : index
    %94 = memref.load %93[%c0_59] : memref<1x!verif.counting_semaphore>
    %c1_60 = arith.constant 1 : index
    verif.semaphore.acquire %94, %c1_60
    %95 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %96 = memref.get_global @aie_flow_2_1ch1_to_1_5ch1 : memref<1xi32>
    %97 = memref.get_global @aie_flow_2_1ch1_to_1_3ch1 : memref<1xi32>
    %c10_61 = arith.constant 10 : index
    %98 = memref.load %95[%c10_61] : memref<128x!verif.semaphore>
    %c9_62 = arith.constant 9 : index
    %99 = memref.load %95[%c9_62] : memref<128x!verif.semaphore>
    %c0_63 = arith.constant 0 : index
    %c1_64 = arith.constant 1 : index
    %c0_65 = arith.constant 0 : index
    %c1_66 = arith.constant 1 : index
    %token_67 = async.execute {
      %c16 = arith.constant 16 : index
      scf.for %arg0 = %c0_63 to %c16 step %c1_64 {
        %c4_71 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_71 step %c1_64 {
          %c8_72 = arith.constant 8 : index
          %102 = arith.muli %arg0, %c8_72 overflow<nsw> : index
          %103 = arith.addi %102, %arg1 : index
          %c4_73 = arith.constant 4 : index
          %104 = arith.addi %103, %c4_73 : index
          %c8_74 = arith.constant 8 : index
          %c0_75 = arith.constant 0 : index
          %105 = arith.floordivsi %104, %c8_74 : index
          %106 = arith.remsi %104, %c8_74 : index
          %107 = arith.cmpi slt, %106, %c0_75 : index
          %108 = arith.addi %106, %c8_74 : index
          %109 = arith.select %107, %108, %106 : index
          verif.semaphore.wait %98, %c0_65
          %110 = memref.get_global @aie_buffer_buf20 : memref<16x8xi32, 1>
          %111 = memref.load %110[%105, %109] : memref<16x8xi32, 1>
          memref.store %111, %96[%c0_63] : memref<1xi32>
          verif.semaphore.set %98, %c1_66
        }
      }
      async.yield
    }
    %token_68 = async.execute {
      %c16 = arith.constant 16 : index
      scf.for %arg0 = %c0_63 to %c16 step %c1_64 {
        %c4_71 = arith.constant 4 : index
        scf.for %arg1 = %c0_63 to %c4_71 step %c1_64 {
          %c8_72 = arith.constant 8 : index
          %102 = arith.muli %arg0, %c8_72 overflow<nsw> : index
          %103 = arith.addi %102, %arg1 : index
          %c4_73 = arith.constant 4 : index
          %104 = arith.addi %103, %c4_73 : index
          %c8_74 = arith.constant 8 : index
          %c0_75 = arith.constant 0 : index
          %105 = arith.floordivsi %104, %c8_74 : index
          %106 = arith.remsi %104, %c8_74 : index
          %107 = arith.cmpi slt, %106, %c0_75 : index
          %108 = arith.addi %106, %c8_74 : index
          %109 = arith.select %107, %108, %106 : index
          verif.semaphore.wait %99, %c0_65
          %110 = memref.get_global @aie_buffer_buf20 : memref<16x8xi32, 1>
          %111 = memref.load %110[%105, %109] : memref<16x8xi32, 1>
          memref.store %111, %97[%c0_63] : memref<1xi32>
          verif.semaphore.set %99, %c1_66
        }
      }
      async.yield
    }
    %100 = memref.get_global @aie_lock_semaphore_arr_0 : memref<1x!verif.counting_semaphore>
    %c0_69 = arith.constant 0 : index
    %101 = memref.load %100[%c0_69] : memref<1x!verif.counting_semaphore>
    %c1_70 = arith.constant 1 : index
    verif.semaphore.release %101, %c1_70
    cf.br ^bb1
  ^bb2:  // no predecessors
    return
  }
  %token_55 = async.execute {
    func.call @tile_mem_2_1_block_2() : () -> ()
    async.yield
  }
  %token_56 = async.execute {
    %93 = memref.get_global @C : memref<16x16xi32>
    %94 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %95 = memref.get_global @aie_flow_0_1ch0_to_0_0ch0 : memref<1xi32>
    %c2_59 = arith.constant 2 : index
    %96 = memref.load %94[%c2_59] : memref<128x!verif.semaphore>
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c2_64 = arith.constant 2 : index
    scf.for %arg0 = %c0_60 to %c2_64 step %c1_61 {
      %c2_65 = arith.constant 2 : index
      scf.for %arg1 = %c0_60 to %c2_65 step %c1_61 {
        %c8_66 = arith.constant 8 : index
        scf.for %arg2 = %c0_60 to %c8_66 step %c1_61 {
          %c8_67 = arith.constant 8 : index
          scf.for %arg3 = %c0_60 to %c8_67 step %c1_61 {
            %c128 = arith.constant 128 : index
            %97 = arith.muli %arg0, %c128 overflow<nsw> : index
            %c8_68 = arith.constant 8 : index
            %98 = arith.muli %arg1, %c8_68 overflow<nsw> : index
            %99 = arith.addi %97, %98 : index
            %c16 = arith.constant 16 : index
            %100 = arith.muli %arg2, %c16 overflow<nsw> : index
            %101 = arith.addi %99, %100 : index
            %102 = arith.addi %101, %arg3 : index
            %c16_69 = arith.constant 16 : index
            %c0_70 = arith.constant 0 : index
            %103 = arith.floordivsi %102, %c16_69 : index
            %104 = arith.remsi %102, %c16_69 : index
            %105 = arith.cmpi slt, %104, %c0_70 : index
            %106 = arith.addi %104, %c16_69 : index
            %107 = arith.select %105, %106, %104 : index
            verif.semaphore.wait %96, %c1_63
            %108 = memref.load %95[%c0_60] : memref<1xi32>
            memref.store %108, %93[%103, %107] : memref<16x16xi32>
            verif.semaphore.set %96, %c0_62
          }
        }
      }
    }
    async.yield
  }
  memref.global "public" @airMemcpyId23 : memref<8x8xi32, 1>
  %token_57 = async.execute {
    %93 = memref.get_global @A : memref<16x16xi32>
    %94 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %95 = memref.get_global @aie_flow_1_0ch0_to_1_1ch0 : memref<1xi32>
    %c0_59 = arith.constant 0 : index
    %96 = memref.load %94[%c0_59] : memref<128x!verif.semaphore>
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c2_64 = arith.constant 2 : index
    scf.for %arg0 = %c0_60 to %c2_64 step %c1_61 {
      %c1_71 = arith.constant 1 : index
      scf.for %arg1 = %c0_60 to %c1_71 step %c1_61 {
        %c1_72 = arith.constant 1 : index
        scf.for %arg2 = %c0_60 to %c1_72 step %c1_61 {
          %c128 = arith.constant 128 : index
          scf.for %arg3 = %c0_60 to %c128 step %c1_61 {
            %c16 = arith.constant 16 : index
            %c0_73 = arith.constant 0 : index
            %101 = arith.floordivsi %arg3, %c16 : index
            %102 = arith.remsi %arg3, %c16 : index
            %103 = arith.cmpi slt, %102, %c0_73 : index
            %104 = arith.addi %102, %c16 : index
            %105 = arith.select %103, %104, %102 : index
            verif.semaphore.wait %96, %c0_62
            %106 = memref.load %93[%101, %105] : memref<16x16xi32>
            memref.store %106, %95[%c0_60] : memref<1xi32>
            verif.semaphore.set %96, %c1_63
          }
        }
      }
    }
    %97 = memref.get_global @A : memref<16x16xi32>
    %98 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %99 = memref.get_global @aie_flow_1_0ch0_to_1_1ch0 : memref<1xi32>
    %c0_65 = arith.constant 0 : index
    %100 = memref.load %98[%c0_65] : memref<128x!verif.semaphore>
    %c0_66 = arith.constant 0 : index
    %c1_67 = arith.constant 1 : index
    %c0_68 = arith.constant 0 : index
    %c1_69 = arith.constant 1 : index
    %c2_70 = arith.constant 2 : index
    scf.for %arg0 = %c0_66 to %c2_70 step %c1_67 {
      %c1_71 = arith.constant 1 : index
      scf.for %arg1 = %c0_66 to %c1_71 step %c1_67 {
        %c1_72 = arith.constant 1 : index
        scf.for %arg2 = %c0_66 to %c1_72 step %c1_67 {
          %c128 = arith.constant 128 : index
          scf.for %arg3 = %c0_66 to %c128 step %c1_67 {
            %c128_73 = arith.constant 128 : index
            %101 = arith.addi %arg3, %c128_73 : index
            %c16 = arith.constant 16 : index
            %c0_74 = arith.constant 0 : index
            %102 = arith.floordivsi %101, %c16 : index
            %103 = arith.remsi %101, %c16 : index
            %104 = arith.cmpi slt, %103, %c0_74 : index
            %105 = arith.addi %103, %c16 : index
            %106 = arith.select %104, %105, %103 : index
            verif.semaphore.wait %100, %c0_68
            %107 = memref.load %97[%102, %106] : memref<16x16xi32>
            memref.store %107, %99[%c0_66] : memref<1xi32>
            verif.semaphore.set %100, %c1_69
          }
        }
      }
    }
    async.yield
  }
  memref.global "public" @airMemcpyId4 : memref<8x16xi32, 1>
  %token_58 = async.execute {
    %93 = memref.get_global @B : memref<16x16xi32>
    %94 = memref.get_global @aie_global_semaphore_array : memref<128x!verif.semaphore>
    %95 = memref.get_global @aie_flow_2_0ch0_to_2_1ch0 : memref<1xi32>
    %c1_59 = arith.constant 1 : index
    %96 = memref.load %94[%c1_59] : memref<128x!verif.semaphore>
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %c0_62 = arith.constant 0 : index
    %c1_63 = arith.constant 1 : index
    %c2_64 = arith.constant 2 : index
    scf.for %arg0 = %c0_60 to %c2_64 step %c1_61 {
      %c2_65 = arith.constant 2 : index
      scf.for %arg1 = %c0_60 to %c2_65 step %c1_61 {
        %c16 = arith.constant 16 : index
        scf.for %arg2 = %c0_60 to %c16 step %c1_61 {
          %c8_66 = arith.constant 8 : index
          scf.for %arg3 = %c0_60 to %c8_66 step %c1_61 {
            %c8_67 = arith.constant 8 : index
            %97 = arith.muli %arg1, %c8_67 overflow<nsw> : index
            %c16_68 = arith.constant 16 : index
            %98 = arith.muli %arg2, %c16_68 overflow<nsw> : index
            %99 = arith.addi %97, %98 : index
            %100 = arith.addi %99, %arg3 : index
            %c16_69 = arith.constant 16 : index
            %c0_70 = arith.constant 0 : index
            %101 = arith.floordivsi %100, %c16_69 : index
            %102 = arith.remsi %100, %c16_69 : index
            %103 = arith.cmpi slt, %102, %c0_70 : index
            %104 = arith.addi %102, %c16_69 : index
            %105 = arith.select %103, %104, %102 : index
            verif.semaphore.wait %96, %c0_62
            %106 = memref.load %93[%101, %105] : memref<16x16xi32>
            memref.store %106, %95[%c0_60] : memref<1xi32>
            verif.semaphore.set %96, %c1_63
          }
        }
      }
    }
    async.yield
  }
  memref.global "public" @airMemcpyId5 : memref<16x8xi32, 1>
  memref.global "private" @A : memref<16x16xi32>
  memref.global "private" @B : memref<16x16xi32>
  memref.global "private" @C : memref<16x16xi32>
  %90 = memref.get_global @A : memref<16x16xi32>
  %91 = memref.get_global @B : memref<16x16xi32>
  %92 = memref.get_global @C : memref<16x16xi32>
}

