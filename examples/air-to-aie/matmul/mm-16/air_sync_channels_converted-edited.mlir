module {
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %c0 = arith.constant 0 : index
  memref.global "private" @channel_0_buffer : memref<1x1xmemref<?xi32>>
  memref.global "private" @channel_0_sem : memref<1x1x!verif.semaphore>
  %0 = memref.get_global @channel_0_sem : memref<1x1x!verif.semaphore>
  scf.for %arg0 = %c0 to %c1 step %c1 {
    scf.for %arg1 = %c0 to %c1 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %0[%arg0, %arg1] : memref<1x1x!verif.semaphore>
    }
  }
  memref.global "private" @channel_1_buffer : memref<1x1xmemref<?xi32>>
  memref.global "private" @channel_1_sem : memref<1x1x!verif.semaphore>
  %1 = memref.get_global @channel_1_sem : memref<1x1x!verif.semaphore>
  scf.for %arg0 = %c0 to %c1 step %c1 {
    scf.for %arg1 = %c0 to %c1 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %1[%arg0, %arg1] : memref<1x1x!verif.semaphore>
    }
  }
  memref.global "private" @channel_2_buffer : memref<2x2xmemref<?xi32>>
  memref.global "private" @channel_2_sem : memref<2x2x!verif.semaphore>
  %2 = memref.get_global @channel_2_sem : memref<2x2x!verif.semaphore>
  scf.for %arg0 = %c0 to %c2 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %2[%arg0, %arg1] : memref<2x2x!verif.semaphore>
    }
  }
  memref.global "private" @channel_3_buffer : memref<2x2xmemref<?xi32>>
  memref.global "private" @channel_3_sem : memref<2x2x!verif.semaphore>
  %3 = memref.get_global @channel_3_sem : memref<2x2x!verif.semaphore>
  scf.for %arg0 = %c0 to %c2 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %3[%arg0, %arg1] : memref<2x2x!verif.semaphore>
    }
  }
  memref.global "private" @channel_4_buffer : memref<2x2xmemref<?xi32>>
  memref.global "private" @channel_4_sem : memref<2x2x!verif.semaphore>
  %4 = memref.get_global @channel_4_sem : memref<2x2x!verif.semaphore>
  scf.for %arg0 = %c0 to %c2 step %c1 {
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %4[%arg0, %arg1] : memref<2x2x!verif.semaphore>
    }
  }
  memref.global "private" @channel_5_buffer : memref<1x1xmemref<?xi32>>
  memref.global "private" @channel_5_sem : memref<1x1x!verif.semaphore>
  %5 = memref.get_global @channel_5_sem : memref<1x1x!verif.semaphore>
  scf.for %arg0 = %c0 to %c1 step %c1 {
    scf.for %arg1 = %c0 to %c1 step %c1 {
      %6 = verif.semaphore
      verif.semaphore.set %6, %c0
      memref.store %6, %5[%arg0, %arg1] : memref<1x1x!verif.semaphore>
    }
  }
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c0_i32 = arith.constant 0 : i32
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c1_0 = arith.constant 1 : index
    %c0_1 = arith.constant 0 : index
    %c2_2 = arith.constant 2 : index
    %c1_3 = arith.constant 1 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %token = async.execute {
      async.yield
    }
    %6 = builtin.unrealized_conversion_cast %token : !async.token to !air.async.token
    %7 = builtin.unrealized_conversion_cast %6 : !air.async.token to !async.token
    %token_4 = async.execute [%7] {
      %8 = async.create_group %c4 : !async.group
      %9 = scf.for %arg3 = %c0_1 to %c2_2 step %c1_0 iter_args(%arg4 = %c0_1) -> (index) {
        %10 = scf.for %arg5 = %c0_1 to %c2_2 step %c1_0 iter_args(%arg6 = %arg4) -> (index) {
          %token_7 = async.execute {
            %c1_8 = arith.constant 1 : index
            %alloc_9 = memref.alloc() : memref<1xindex>
            %token_10 = async.execute {
              %27 = arith.muli %arg3, %c8 : index
              memref.store %27, %alloc_9[%c1_8] : memref<1xindex>
              async.yield
            }
            %13 = builtin.unrealized_conversion_cast %token_10 : !async.token to !air.async.token
            %14 = memref.get_global @channel_0_buffer : memref<1x1xmemref<?xi32>>
            %15 = memref.get_global @channel_0_sem : memref<1x1x!verif.semaphore>
            %16 = builtin.unrealized_conversion_cast %13 : !air.async.token to !async.token
            %token_11 = async.execute [%16] {
              %27 = memref.load %alloc_9[%c1_8] : memref<1xindex>
              %subview = memref.subview %arg0[%27, 0] [8, 16] [1, 1] : memref<16x16xi32> to memref<8x16xi32, strided<[16, 1], offset: ?>>
              %28 = memref.load %15[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
              verif.semaphore.wait %28, %c0_1
              %29 = memref.load %14[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
              %30 = builtin.unrealized_conversion_cast %29 : memref<?xi32> to memref<8x16xi32, strided<[16, 1], offset: ?>>
              memref.copy %subview, %30 : memref<8x16xi32, strided<[16, 1], offset: ?>> to memref<8x16xi32, strided<[16, 1], offset: ?>>
              verif.semaphore.set %28, %c1_0
              async.yield
            }
            %c1_12 = arith.constant 1 : index
            %alloc_13 = memref.alloc() : memref<1xindex>
            %token_14 = async.execute {
              %27 = arith.muli %arg5, %c8 : index
              memref.store %27, %alloc_13[%c1_12] : memref<1xindex>
              async.yield
            }
            %17 = builtin.unrealized_conversion_cast %token_14 : !async.token to !air.async.token
            %18 = memref.get_global @channel_1_buffer : memref<1x1xmemref<?xi32>>
            %19 = memref.get_global @channel_1_sem : memref<1x1x!verif.semaphore>
            %20 = builtin.unrealized_conversion_cast %17 : !air.async.token to !async.token
            %token_15 = async.execute [%20] {
              %27 = memref.load %alloc_13[%c1_12] : memref<1xindex>
              %subview = memref.subview %arg1[0, %27] [16, 8] [1, 1] : memref<16x16xi32> to memref<16x8xi32, strided<[16, 1], offset: ?>>
              %28 = memref.load %19[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
              verif.semaphore.wait %28, %c0_1
              %29 = memref.load %18[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
              %30 = builtin.unrealized_conversion_cast %29 : memref<?xi32> to memref<16x8xi32, strided<[16, 1], offset: ?>>
              memref.copy %subview, %30 : memref<16x8xi32, strided<[16, 1], offset: ?>> to memref<16x8xi32, strided<[16, 1], offset: ?>>
              verif.semaphore.set %28, %c1_0
              async.yield
            }
            %c1_16 = arith.constant 1 : index
            %alloc_17 = memref.alloc() : memref<1xindex>
            %token_18 = async.execute {
              %27 = arith.muli %arg5, %c8 : index
              memref.store %27, %alloc_17[%c1_16] : memref<1xindex>
              async.yield
            }
            %21 = builtin.unrealized_conversion_cast %token_18 : !async.token to !air.async.token
            %c1_19 = arith.constant 1 : index
            %alloc_20 = memref.alloc() : memref<1xindex>
            %token_21 = async.execute {
              %27 = arith.muli %arg3, %c8 : index
              memref.store %27, %alloc_20[%c1_19] : memref<1xindex>
              async.yield
            }
            %22 = builtin.unrealized_conversion_cast %token_21 : !async.token to !air.async.token
            %23 = memref.get_global @channel_5_buffer : memref<1x1xmemref<?xi32>>
            %24 = memref.get_global @channel_5_sem : memref<1x1x!verif.semaphore>
            %25 = builtin.unrealized_conversion_cast %21 : !air.async.token to !async.token
            %26 = builtin.unrealized_conversion_cast %22 : !air.async.token to !async.token
            %token_22 = async.execute [%25, %26] {
              %27 = memref.load %alloc_17[%c1_16] : memref<1xindex>
              %28 = memref.load %alloc_20[%c1_19] : memref<1xindex>
              %subview = memref.subview %alloc[%28, %27] [8, 8] [1, 1] : memref<16x16xi32> to memref<8x8xi32, strided<[16, 1], offset: ?>>
              %29 = memref.load %24[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
              verif.semaphore.wait %29, %c1_0
              %30 = memref.load %23[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
              %31 = builtin.unrealized_conversion_cast %30 : memref<?xi32> to memref<8x8xi32, strided<[16, 1], offset: ?>>
              memref.copy %31, %subview : memref<8x8xi32, strided<[16, 1], offset: ?>> to memref<8x8xi32, strided<[16, 1], offset: ?>>
              verif.semaphore.set %29, %c0_1
              async.yield
            }
            %token_23 = async.execute {
              %token_24 = async.execute {
                async.yield
              }
              %27 = builtin.unrealized_conversion_cast %token_24 : !async.token to !air.async.token
              %token_25 = async.execute {
                async.yield
              }
              %28 = builtin.unrealized_conversion_cast %token_25 : !async.token to !air.async.token
              %c1_26 = arith.constant 1 : index
              %alloc_27 = memref.alloc() : memref<8x8xi32, 1>
              %token_28 = async.execute {
                async.yield
              }
              %29 = builtin.unrealized_conversion_cast %token_28 : !async.token to !air.async.token
              %30 = builtin.unrealized_conversion_cast %29 : !air.async.token to !async.token
              %c1_29 = arith.constant 1 : index
              %alloc_30 = memref.alloc() : memref<8x16xi32, 1>
              %token_31 = async.execute {
                async.yield
              }
              %31 = builtin.unrealized_conversion_cast %token_31 : !async.token to !air.async.token
              %c1_32 = arith.constant 1 : index
              %alloc_33 = memref.alloc() : memref<16x8xi32, 1>
              %token_34 = async.execute {
                async.yield
              }
              %32 = builtin.unrealized_conversion_cast %token_34 : !async.token to !air.async.token
              %33 = memref.get_global @channel_0_buffer : memref<1x1xmemref<?xi32>>
              %34 = memref.get_global @channel_0_sem : memref<1x1x!verif.semaphore>
              %35 = builtin.unrealized_conversion_cast %28 : !air.async.token to !async.token
              %36 = builtin.unrealized_conversion_cast %31 : !air.async.token to !async.token
              %token_35 = async.execute [%35, %36] {
                %49 = memref.load %34[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
                verif.semaphore.wait %49, %c1_0
                %50 = memref.load %33[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
                %51 = builtin.unrealized_conversion_cast %50 : memref<?xi32> to memref<8x16xi32, 1>
                memref.copy %51, %alloc_30 : memref<8x16xi32, 1> to memref<8x16xi32, 1>
                verif.semaphore.set %49, %c0_1
                async.yield
              }
              %37 = memref.get_global @channel_1_buffer : memref<1x1xmemref<?xi32>>
              %38 = memref.get_global @channel_1_sem : memref<1x1x!verif.semaphore>
              %39 = builtin.unrealized_conversion_cast %27 : !air.async.token to !async.token
              %40 = builtin.unrealized_conversion_cast %32 : !air.async.token to !async.token
              %token_36 = async.execute [%39, %40] {
                %49 = memref.load %38[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
                verif.semaphore.wait %49, %c1_0
                %50 = memref.load %37[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
                %51 = builtin.unrealized_conversion_cast %50 : memref<?xi32> to memref<16x8xi32, 1>
                memref.copy %51, %alloc_33 : memref<16x8xi32, 1> to memref<16x8xi32, 1>
                verif.semaphore.set %49, %c0_1
                async.yield
              }
              %token_37 = async.execute [%token_35] {
                async.yield
              }
              %c0_38 = arith.constant 0 : index
              %41 = async.create_group %c0_38 : !async.group
              %42 = async.add_to_group %token_37, %41 : !async.token
              async.await_all %41
              scf.for %arg7 = %c0_1 to %c2_2 step %c1_0 {
                scf.for %arg8 = %c0_1 to %c2_2 step %c1_0 {
                  %c1_51 = arith.constant 1 : index
                  %alloc_52 = memref.alloc() : memref<1xindex>
                  %token_53 = async.execute {
                    %51 = arith.muli %arg7, %c4 : index
                    memref.store %51, %alloc_52[%c1_51] : memref<1xindex>
                    async.yield
                  }
                  %token_54 = async.execute [%token_53, %token_35] {
                    async.yield
                  }
                  %c0_55 = arith.constant 0 : index
                  %49 = async.create_group %c0_55 : !async.group
                  %50 = async.add_to_group %token_54, %49 : !async.token
                  async.await_all %49
                  scf.for %arg9 = %c0_1 to %c16 step %c4 {
                    %51 = memref.get_global @channel_2_buffer : memref<2x2xmemref<?xi32>>
                    %52 = memref.get_global @channel_2_sem : memref<2x2x!verif.semaphore>
                    %53 = memref.load %alloc_52[%c1_51] : memref<1xindex>
                    %subview = memref.subview %alloc_30[%53, %arg9] [4, 4] [1, 1] : memref<8x16xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>, 1>
                    %54 = memref.load %52[%arg7, %arg8] : memref<2x2x!verif.semaphore>
                    verif.semaphore.wait %54, %c0_1
                    %55 = memref.load %51[%arg7, %arg8] : memref<2x2xmemref<?xi32>>
                    %56 = builtin.unrealized_conversion_cast %55 : memref<?xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>, 1>
                    memref.copy %subview, %56 : memref<4x4xi32, strided<[16, 1], offset: ?>, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>, 1>
                    verif.semaphore.set %54, %c1_0
                  }
                }
              }
              %token_39 = async.execute [%token_36] {
                async.yield
              }
              %c0_40 = arith.constant 0 : index
              %43 = async.create_group %c0_40 : !async.group
              %44 = async.add_to_group %token_39, %43 : !async.token
              async.await_all %43
              scf.for %arg7 = %c0_1 to %c2_2 step %c1_0 {
                scf.for %arg8 = %c0_1 to %c2_2 step %c1_0 {
                  %c1_51 = arith.constant 1 : index
                  %alloc_52 = memref.alloc() : memref<1xindex>
                  %token_53 = async.execute {
                    %51 = arith.muli %arg8, %c4 : index
                    memref.store %51, %alloc_52[%c1_51] : memref<1xindex>
                    async.yield
                  }
                  %token_54 = async.execute [%token_53, %token_36] {
                    async.yield
                  }
                  %c0_55 = arith.constant 0 : index
                  %49 = async.create_group %c0_55 : !async.group
                  %50 = async.add_to_group %token_54, %49 : !async.token
                  async.await_all %49
                  scf.for %arg9 = %c0_1 to %c16 step %c4 {
                    %51 = memref.get_global @channel_3_buffer : memref<2x2xmemref<?xi32>>
                    %52 = memref.get_global @channel_3_sem : memref<2x2x!verif.semaphore>
                    %53 = memref.load %alloc_52[%c1_51] : memref<1xindex>
                    %subview = memref.subview %alloc_33[%arg9, %53] [4, 4] [1, 1] : memref<16x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                    %54 = memref.load %52[%arg7, %arg8] : memref<2x2x!verif.semaphore>
                    verif.semaphore.wait %54, %c0_1
                    %55 = memref.load %51[%arg7, %arg8] : memref<2x2xmemref<?xi32>>
                    %56 = builtin.unrealized_conversion_cast %55 : memref<?xi32> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                    memref.copy %subview, %56 : memref<4x4xi32, strided<[8, 1], offset: ?>, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                    verif.semaphore.set %54, %c1_0
                  }
                }
              }
              %token_41 = async.execute [%token_28] {
                async.yield
              }
              %c0_42 = arith.constant 0 : index
              %45 = async.create_group %c0_42 : !async.group
              %46 = async.add_to_group %token_41, %45 : !async.token
              async.await_all %45
              scf.for %arg7 = %c0_1 to %c2_2 step %c1_0 {
                scf.for %arg8 = %c0_1 to %c2_2 step %c1_0 {
                  %c1_51 = arith.constant 1 : index
                  %alloc_52 = memref.alloc() : memref<1xindex>
                  %token_53 = async.execute {
                    %58 = arith.muli %arg8, %c4 : index
                    memref.store %58, %alloc_52[%c1_51] : memref<1xindex>
                    async.yield
                  }
                  %c1_54 = arith.constant 1 : index
                  %alloc_55 = memref.alloc() : memref<1xindex>
                  %token_56 = async.execute {
                    %58 = arith.muli %arg7, %c4 : index
                    memref.store %58, %alloc_55[%c1_54] : memref<1xindex>
                    async.yield
                  }
                  %token_57 = async.execute [%token_28, %token_56, %token_53] {
                    async.yield
                  }
                  %c0_58 = arith.constant 0 : index
                  %49 = async.create_group %c0_58 : !async.group
                  %50 = async.add_to_group %token_57, %49 : !async.token
                  async.await_all %49
                  %51 = memref.get_global @channel_4_buffer : memref<2x2xmemref<?xi32>>
                  %52 = memref.get_global @channel_4_sem : memref<2x2x!verif.semaphore>
                  %53 = memref.load %alloc_52[%c1_51] : memref<1xindex>
                  %54 = memref.load %alloc_55[%c1_54] : memref<1xindex>
                  %subview = memref.subview %alloc_27[%54, %53] [4, 4] [1, 1] : memref<8x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                  %55 = memref.load %52[%arg7, %arg8] : memref<2x2x!verif.semaphore>
                  verif.semaphore.wait %55, %c1_0
                  %56 = memref.load %51[%arg7, %arg8] : memref<2x2xmemref<?xi32>>
                  %57 = builtin.unrealized_conversion_cast %56 : memref<?xi32> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                  memref.copy %57, %subview : memref<4x4xi32, strided<[8, 1], offset: ?>, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                  verif.semaphore.set %55, %c0_1
                }
              }
              %token_43 = async.execute [%30] {
                %49 = async.create_group %c4 : !async.group
                %50 = scf.for %arg7 = %c0_1 to %c2_2 step %c1_0 iter_args(%arg8 = %c0_1) -> (index) {
                  %51 = scf.for %arg9 = %c0_1 to %c2_2 step %c1_0 iter_args(%arg10 = %arg8) -> (index) {
                    %token_51 = async.execute {
                      %c1_52 = arith.constant 1 : index
                      %alloc_53 = memref.alloc() : memref<4x4xi32, 2>
                      %token_54 = async.execute {
                        async.yield
                      }
                      %c1_55 = arith.constant 1 : index
                      %token_56 = async.execute [%token_54] {
                        scf.for %arg11 = %c0_1 to %c4 step %c1_0 {
                          scf.for %arg12 = %c0_1 to %c4 step %c1_0 {
                            memref.store %c0_i32, %alloc_53[%arg11, %arg12] : memref<4x4xi32, 2>
                          }
                        }
                        async.yield
                      }
                      %54 = builtin.unrealized_conversion_cast %token_56 : !async.token to !air.async.token
                      %55 = scf.for %arg11 = %c0_1 to %c16 step %c4 iter_args(%arg12 = %54) -> (!air.async.token) {
                        %c1_60 = arith.constant 1 : index
                        %alloc_61 = memref.alloc() : memref<4x4xi32, 2>
                        %token_62 = async.execute {
                          async.yield
                        }
                        %59 = builtin.unrealized_conversion_cast %token_62 : !async.token to !air.async.token
                        %c1_63 = arith.constant 1 : index
                        %alloc_64 = memref.alloc() : memref<4x4xi32, 2>
                        %token_65 = async.execute {
                          async.yield
                        }
                        %60 = builtin.unrealized_conversion_cast %token_65 : !async.token to !air.async.token
                        %61 = memref.get_global @channel_2_buffer : memref<2x2xmemref<?xi32>>
                        %62 = memref.get_global @channel_2_sem : memref<2x2x!verif.semaphore>
                        %63 = builtin.unrealized_conversion_cast %arg12 : !air.async.token to !async.token
                        %64 = builtin.unrealized_conversion_cast %59 : !air.async.token to !async.token
                        %token_66 = async.execute [%63, %64] {
                          %70 = memref.load %62[%arg7, %arg9] : memref<2x2x!verif.semaphore>
                          verif.semaphore.wait %70, %c1_0
                          %71 = memref.load %61[%arg7, %arg9] : memref<2x2xmemref<?xi32>>
                          %72 = builtin.unrealized_conversion_cast %71 : memref<?xi32> to memref<4x4xi32, 2>
                          memref.copy %72, %alloc_61 : memref<4x4xi32, 2> to memref<4x4xi32, 2>
                          verif.semaphore.set %70, %c0_1
                          async.yield
                        }
                        %65 = memref.get_global @channel_3_buffer : memref<2x2xmemref<?xi32>>
                        %66 = memref.get_global @channel_3_sem : memref<2x2x!verif.semaphore>
                        %67 = builtin.unrealized_conversion_cast %arg12 : !air.async.token to !async.token
                        %68 = builtin.unrealized_conversion_cast %60 : !air.async.token to !async.token
                        %token_67 = async.execute [%67, %68] {
                          %70 = memref.load %66[%arg7, %arg9] : memref<2x2x!verif.semaphore>
                          verif.semaphore.wait %70, %c1_0
                          %71 = memref.load %65[%arg7, %arg9] : memref<2x2xmemref<?xi32>>
                          %72 = builtin.unrealized_conversion_cast %71 : memref<?xi32> to memref<4x4xi32, 2>
                          memref.copy %72, %alloc_64 : memref<4x4xi32, 2> to memref<4x4xi32, 2>
                          verif.semaphore.set %70, %c0_1
                          async.yield
                        }
                        %c1_68 = arith.constant 1 : index
                        %token_69 = async.execute [%token_67, %token_66] {
                          scf.for %arg13 = %c0_1 to %c4 step %c1_0 {
                            scf.for %arg14 = %c0_1 to %c4 step %c1_0 {
                              scf.for %arg15 = %c0_1 to %c4 step %c1_0 {
                                %70 = memref.load %alloc_61[%arg13, %arg15] : memref<4x4xi32, 2>
                                %71 = memref.load %alloc_64[%arg15, %arg14] : memref<4x4xi32, 2>
                                %72 = memref.load %alloc_53[%arg13, %arg14] : memref<4x4xi32, 2>
                                %73 = arith.muli %70, %71 : i32
                                %74 = arith.addi %72, %73 : i32
                                memref.store %74, %alloc_53[%arg13, %arg14] : memref<4x4xi32, 2>
                              }
                            }
                          }
                          async.yield
                        }
                        %69 = builtin.unrealized_conversion_cast %token_69 : !async.token to !air.async.token
                        %c1_70 = arith.constant 1 : index
                        %token_71 = async.execute [%token_69] {
                          memref.dealloc %alloc_61 : memref<4x4xi32, 2>
                          async.yield
                        }
                        %c1_72 = arith.constant 1 : index
                        %token_73 = async.execute [%token_69] {
                          memref.dealloc %alloc_64 : memref<4x4xi32, 2>
                          async.yield
                        }
                        scf.yield %69 : !air.async.token
                      }
                      %56 = memref.get_global @channel_4_buffer : memref<2x2xmemref<?xi32>>
                      %57 = memref.get_global @channel_4_sem : memref<2x2x!verif.semaphore>
                      %58 = builtin.unrealized_conversion_cast %55 : !air.async.token to !async.token
                      %token_57 = async.execute [%58] {
                        %59 = memref.load %57[%arg7, %arg9] : memref<2x2x!verif.semaphore>
                        verif.semaphore.wait %59, %c0_1
                        %60 = memref.load %56[%arg7, %arg9] : memref<2x2xmemref<?xi32>>
                        %61 = builtin.unrealized_conversion_cast %60 : memref<?xi32> to memref<4x4xi32, 2>
                        memref.copy %alloc_53, %61 : memref<4x4xi32, 2> to memref<4x4xi32, 2>
                        verif.semaphore.set %59, %c1_0
                        async.yield
                      }
                      %c1_58 = arith.constant 1 : index
                      %token_59 = async.execute [%token_57] {
                        memref.dealloc %alloc_53 : memref<4x4xi32, 2>
                        async.yield
                      }
                      async.yield
                    }
                    %52 = async.add_to_group %token_51, %49 : !async.token
                    %53 = arith.addi %arg10, %c1_0 : index
                    scf.yield %53 : index
                  }
                  scf.yield %51 : index
                }
                async.await_all %49
                async.yield
              }
              %c1_44 = arith.constant 1 : index
              %token_45 = async.execute [%token_43, %token_35] {
                memref.dealloc %alloc_30 : memref<8x16xi32, 1>
                async.yield
              }
              %c1_46 = arith.constant 1 : index
              %token_47 = async.execute [%token_43, %token_36] {
                memref.dealloc %alloc_33 : memref<16x8xi32, 1>
                async.yield
              }
              %47 = memref.get_global @channel_5_buffer : memref<1x1xmemref<?xi32>>
              %48 = memref.get_global @channel_5_sem : memref<1x1x!verif.semaphore>
              %token_48 = async.execute [%token_43] {
                %49 = memref.load %48[%c0_1, %c0_1] : memref<1x1x!verif.semaphore>
                verif.semaphore.wait %49, %c0_1
                %50 = memref.load %47[%c0_1, %c0_1] : memref<1x1xmemref<?xi32>>
                %51 = builtin.unrealized_conversion_cast %50 : memref<?xi32> to memref<8x8xi32, 1>
                memref.copy %alloc_27, %51 : memref<8x8xi32, 1> to memref<8x8xi32, 1>
                verif.semaphore.set %49, %c1_0
                async.yield
              }
              %c1_49 = arith.constant 1 : index
              %token_50 = async.execute [%token_48] {
                memref.dealloc %alloc_27 : memref<8x8xi32, 1>
                async.yield
              }
              async.yield
            }
            async.yield
          }
          %11 = async.add_to_group %token_7, %8 : !async.token
          %12 = arith.addi %arg6, %c1_0 : index
          scf.yield %12 : index
        }
        scf.yield %10 : index
      }
      async.await_all %8
      async.yield
    }
    %c1_5 = arith.constant 1 : index
    %token_6 = async.execute [%token_4] {
      memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
      async.yield
    }
    return
  }
}

