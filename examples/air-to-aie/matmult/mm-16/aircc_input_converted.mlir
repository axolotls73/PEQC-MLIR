module {
  air.channel @channel_7 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_5 [1, 1]
  air.channel @channel_4 [1, 1]
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %token = async.execute {
      async.yield
    }
    %0 = builtin.unrealized_conversion_cast %token : !async.token to !air.async.token
    %1 = builtin.unrealized_conversion_cast %0 : !air.async.token to !async.token
    %token_0 = async.execute [%1] {
      %c0 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.parallel (%arg3, %arg4) = (%c0, %c0) to (%c4, %c4) step (%c1_3, %c1_3) {
        %c1_4 = arith.constant 1 : index
        %c4_5 = arith.constant 4 : index
        %c0_6 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c8 = arith.constant 8 : index
        %c1_7 = arith.constant 1 : index
        %alloc_8 = memref.alloc() : memref<1xindex>
        %token_9 = async.execute {
          %c4_20 = arith.constant 4 : index
          %12 = arith.muli %arg3, %c4_20 : index
          memref.store %12, %alloc_8[%c1_7] : memref<1xindex>
          async.yield
        }
        %3 = builtin.unrealized_conversion_cast %token_9 : !async.token to !air.async.token
        %4 = scf.for %arg5 = %c0_6 to %c16 step %c8 iter_args(%arg6 = %3) -> (!air.async.token) {
          %12 = memref.load %alloc_8[%c1_7] : memref<1xindex>
          %13 = air.channel.put async [%arg6]  @channel_4[] (%arg0[%12, %arg5] [%c4_5, %c8] [%c16, %c1_4]) {id = 1 : i32} : (memref<16x16xi32>)
          scf.yield %13 : !air.async.token
        }
        %c1_10 = arith.constant 1 : index
        %alloc_11 = memref.alloc() : memref<1xindex>
        %token_12 = async.execute {
          %c4_20 = arith.constant 4 : index
          %12 = arith.muli %arg4, %c4_20 : index
          memref.store %12, %alloc_11[%c1_10] : memref<1xindex>
          async.yield
        }
        %5 = builtin.unrealized_conversion_cast %token_12 : !async.token to !air.async.token
        %6 = scf.for %arg5 = %c0_6 to %c16 step %c8 iter_args(%arg6 = %5) -> (!air.async.token) {
          %12 = memref.load %alloc_11[%c1_10] : memref<1xindex>
          %13 = air.channel.put async [%arg6]  @channel_5[] (%arg1[%arg5, %12] [%c8, %c4_5] [%c16, %c1_4]) {id = 2 : i32} : (memref<16x16xi32>)
          scf.yield %13 : !air.async.token
        }
        %c1_13 = arith.constant 1 : index
        %alloc_14 = memref.alloc() : memref<1xindex>
        %token_15 = async.execute {
          %c4_20 = arith.constant 4 : index
          %12 = arith.muli %arg3, %c4_20 : index
          memref.store %12, %alloc_14[%c1_13] : memref<1xindex>
          async.yield
        }
        %7 = builtin.unrealized_conversion_cast %token_15 : !async.token to !air.async.token
        %c1_16 = arith.constant 1 : index
        %alloc_17 = memref.alloc() : memref<1xindex>
        %token_18 = async.execute {
          %c4_20 = arith.constant 4 : index
          %12 = arith.muli %arg4, %c4_20 : index
          memref.store %12, %alloc_17[%c1_16] : memref<1xindex>
          async.yield
        }
        %8 = builtin.unrealized_conversion_cast %token_18 : !async.token to !air.async.token
        %9 = memref.load %alloc_14[%c1_13] : memref<1xindex>
        %10 = memref.load %alloc_17[%c1_16] : memref<1xindex>
        %11 = air.channel.get async [%7, %8]  @channel_7[] (%alloc[%9, %10] [%c4_5, %c4_5] [%c16, %c1_4]) {id = 3 : i32} : (memref<16x16xi32>)
        %token_19 = async.execute {
          %c1_20 = arith.constant 1 : index
          %c4_21 = arith.constant 4 : index
          %c2 = arith.constant 2 : index
          %c0_22 = arith.constant 0 : index
          %c16_23 = arith.constant 16 : index
          %c8_24 = arith.constant 8 : index
          %c1_25 = arith.constant 1 : index
          %alloc_26 = memref.alloc() : memref<4x4xi32, 1>
          %token_27 = async.execute {
            async.yield
          }
          %12 = builtin.unrealized_conversion_cast %token_27 : !async.token to !air.async.token
          %13 = scf.for %arg5 = %c0_22 to %c16_23 step %c8_24 iter_args(%arg6 = %12) -> (!air.async.token) {
            %c1_30 = arith.constant 1 : index
            %alloc_31 = memref.alloc() : memref<4x8xi32, 1>
            %token_32 = async.execute {
              async.yield
            }
            %16 = builtin.unrealized_conversion_cast %token_32 : !async.token to !air.async.token
            %c1_33 = arith.constant 1 : index
            %alloc_34 = memref.alloc() : memref<8x4xi32, 1>
            %token_35 = async.execute {
              async.yield
            }
            %17 = builtin.unrealized_conversion_cast %token_35 : !async.token to !air.async.token
            %18 = air.channel.get async [%arg6, %16]  @channel_4[] (%alloc_31[] [] []) {id = 4 : i32} : (memref<4x8xi32, 1>)
            %19 = builtin.unrealized_conversion_cast %18 : !air.async.token to !async.token
            %20 = builtin.unrealized_conversion_cast %18 : !air.async.token to !async.token
            %21 = air.channel.get async [%arg6, %17]  @channel_5[] (%alloc_34[] [] []) {id = 5 : i32} : (memref<8x4xi32, 1>)
            %22 = builtin.unrealized_conversion_cast %21 : !air.async.token to !async.token
            %23 = builtin.unrealized_conversion_cast %21 : !air.async.token to !async.token
            %24 = scf.for %arg7 = %c0_22 to %c8_24 step %c2 iter_args(%arg8 = %18) -> (!air.async.token) {
              %36 = air.channel.put async [%arg8]  @channel_0[] (%alloc_31[%c0_22, %arg7] [%c2, %c2] [%c8_24, %c1_20]) {id = 6 : i32} : (memref<4x8xi32, 1>)
              scf.yield %36 : !air.async.token
            }
            %25 = builtin.unrealized_conversion_cast %24 : !air.async.token to !async.token
            %26 = scf.for %arg7 = %c0_22 to %c8_24 step %c2 iter_args(%arg8 = %18) -> (!air.async.token) {
              %36 = air.channel.put async [%arg8]  @channel_1[] (%alloc_31[%c2, %arg7] [%c2, %c2] [%c8_24, %c1_20]) {id = 7 : i32} : (memref<4x8xi32, 1>)
              scf.yield %36 : !air.async.token
            }
            %27 = builtin.unrealized_conversion_cast %26 : !air.async.token to !async.token
            %28 = scf.for %arg7 = %c0_22 to %c8_24 step %c2 iter_args(%arg8 = %21) -> (!air.async.token) {
              %36 = air.channel.put async [%arg8]  @channel_2[] (%alloc_34[%arg7, %c0_22] [%c2, %c2] [%c4_21, %c1_20]) {id = 8 : i32} : (memref<8x4xi32, 1>)
              scf.yield %36 : !air.async.token
            }
            %29 = builtin.unrealized_conversion_cast %28 : !air.async.token to !async.token
            %30 = scf.for %arg7 = %c0_22 to %c8_24 step %c2 iter_args(%arg8 = %21) -> (!air.async.token) {
              %36 = air.channel.put async [%arg8]  @channel_3[] (%alloc_34[%arg7, %c2] [%c2, %c2] [%c4_21, %c1_20]) {id = 9 : i32} : (memref<8x4xi32, 1>)
              scf.yield %36 : !air.async.token
            }
            %31 = builtin.unrealized_conversion_cast %30 : !air.async.token to !async.token
            %32 = scf.parallel (%arg7, %arg8) = (%c0_22, %c0_22) to (%c2, %c2) step (%c1_20, %c1_20) init (%arg6) -> !air.async.token {
              %c1_42 = arith.constant 1 : index
              %alloc_43 = memref.alloc() : memref<1xindex>
              %token_44 = async.execute {
                %c2_48 = arith.constant 2 : index
                %41 = arith.muli %arg7, %c2_48 : index
                memref.store %41, %alloc_43[%c1_42] : memref<1xindex>
                async.yield
              }
              %36 = builtin.unrealized_conversion_cast %token_44 : !async.token to !air.async.token
              %c1_45 = arith.constant 1 : index
              %alloc_46 = memref.alloc() : memref<1xindex>
              %token_47 = async.execute {
                %c2_48 = arith.constant 2 : index
                %41 = arith.muli %arg8, %c2_48 : index
                memref.store %41, %alloc_46[%c1_45] : memref<1xindex>
                async.yield
              }
              %37 = builtin.unrealized_conversion_cast %token_47 : !async.token to !air.async.token
              %38 = memref.load %alloc_43[%c1_42] : memref<1xindex>
              %39 = memref.load %alloc_46[%c1_45] : memref<1xindex>
              %40 = air.channel.get async [%arg6, %37, %36]  @channel_6[%arg7, %arg8] (%alloc_26[%38, %39] [%c2, %c2] [%c4_21, %c1_20]) {id = 10 : i32} : (memref<4x4xi32, 1>)
              scf.reduce(%40 : !air.async.token) {
              ^bb0(%arg9: !air.async.token, %arg10: !air.async.token):
                %41 = builtin.unrealized_conversion_cast %arg9 : !air.async.token to !async.token
                %42 = builtin.unrealized_conversion_cast %arg10 : !air.async.token to !async.token
                %token_48 = async.execute [%41, %42] {
                  async.yield
                }
                %43 = builtin.unrealized_conversion_cast %token_48 : !async.token to !air.async.token
                scf.reduce.return %43 : !air.async.token
              }
            }
            %33 = builtin.unrealized_conversion_cast %32 : !air.async.token to !async.token
            %token_36 = async.execute [%20, %23] {
              %c0_42 = arith.constant 0 : index
              %c1_43 = arith.constant 1 : index
              scf.parallel (%arg7, %arg8) = (%c0_42, %c0_42) to (%c2, %c2) step (%c1_43, %c1_43) {
                %c0_i32 = arith.constant 0 : i32
                %c0_44 = arith.constant 0 : index
                %c8_45 = arith.constant 8 : index
                %c2_46 = arith.constant 2 : index
                %c1_47 = arith.constant 1 : index
                %alloc_48 = memref.alloc() : memref<2x2xi32, 2>
                %token_49 = async.execute {
                  async.yield
                }
                %c1_50 = arith.constant 1 : index
                %token_51 = async.execute [%token_49] {
                  %c0_54 = arith.constant 0 : index
                  %c2_55 = arith.constant 2 : index
                  %c1_56 = arith.constant 1 : index
                  scf.for %arg9 = %c0_54 to %c2_55 step %c1_56 {
                    %c0_57 = arith.constant 0 : index
                    %c2_58 = arith.constant 2 : index
                    %c1_59 = arith.constant 1 : index
                    scf.for %arg10 = %c0_57 to %c2_58 step %c1_59 {
                      memref.store %c0_i32, %alloc_48[%arg9, %arg10] : memref<2x2xi32, 2>
                    }
                  }
                  async.yield
                }
                %36 = builtin.unrealized_conversion_cast %token_51 : !async.token to !air.async.token
                %37 = scf.for %arg9 = %c0_44 to %c8_45 step %c2_46 iter_args(%arg10 = %36) -> (!air.async.token) {
                  %c1_54 = arith.constant 1 : index
                  %alloc_55 = memref.alloc() : memref<2x2xi32, 2>
                  %token_56 = async.execute {
                    async.yield
                  }
                  %40 = builtin.unrealized_conversion_cast %token_56 : !async.token to !air.async.token
                  %c1_57 = arith.constant 1 : index
                  %alloc_58 = memref.alloc() : memref<2x2xi32, 2>
                  %token_59 = async.execute {
                    async.yield
                  }
                  %41 = builtin.unrealized_conversion_cast %token_59 : !async.token to !air.async.token
                  %c0_60 = arith.constant 0 : index
                  %42 = arith.cmpi eq, %arg7, %c0_60 : index
                  %43 = arith.cmpi sge, %arg8, %c0_60 : index
                  %44 = arith.andi %42, %43 : i1
                  %c-1 = arith.constant -1 : index
                  %45 = arith.muli %arg8, %c-1 : index
                  %c1_61 = arith.constant 1 : index
                  %46 = arith.addi %45, %c1_61 : index
                  %47 = arith.cmpi sge, %46, %c0_60 : index
                  %48 = arith.andi %44, %47 : i1
                  %49 = scf.if %48 -> (!air.async.token) {
                    %61 = air.channel.get async [%arg10, %40]  @channel_0[%arg7, %arg8] (%alloc_55[] [] []) {id = 11 : i32} : (memref<2x2xi32, 2>)
                    scf.yield %61 : !air.async.token
                  } else {
                    %61 = air.channel.get async [%arg10, %40]  @channel_1[%arg7, %arg8] (%alloc_55[] [] []) {id = 12 : i32} : (memref<2x2xi32, 2>)
                    scf.yield %61 : !air.async.token
                  }
                  %50 = builtin.unrealized_conversion_cast %49 : !air.async.token to !async.token
                  %c0_62 = arith.constant 0 : index
                  %51 = arith.cmpi sge, %arg7, %c0_62 : index
                  %c-1_63 = arith.constant -1 : index
                  %52 = arith.muli %arg7, %c-1_63 : index
                  %c1_64 = arith.constant 1 : index
                  %53 = arith.addi %52, %c1_64 : index
                  %54 = arith.cmpi sge, %53, %c0_62 : index
                  %55 = arith.andi %51, %54 : i1
                  %56 = arith.cmpi eq, %arg8, %c0_62 : index
                  %57 = arith.andi %55, %56 : i1
                  %58 = scf.if %57 -> (!air.async.token) {
                    %61 = air.channel.get async [%arg10, %41]  @channel_2[%arg7, %arg8] (%alloc_58[] [] []) {id = 13 : i32} : (memref<2x2xi32, 2>)
                    scf.yield %61 : !air.async.token
                  } else {
                    %61 = air.channel.get async [%arg10, %41]  @channel_3[%arg7, %arg8] (%alloc_58[] [] []) {id = 14 : i32} : (memref<2x2xi32, 2>)
                    scf.yield %61 : !air.async.token
                  }
                  %59 = builtin.unrealized_conversion_cast %58 : !air.async.token to !async.token
                  %c1_65 = arith.constant 1 : index
                  %token_66 = async.execute [%59, %50] {
                    %c0_71 = arith.constant 0 : index
                    %c2_72 = arith.constant 2 : index
                    %c1_73 = arith.constant 1 : index
                    scf.for %arg11 = %c0_71 to %c2_72 step %c1_73 {
                      %c0_74 = arith.constant 0 : index
                      %c2_75 = arith.constant 2 : index
                      %c1_76 = arith.constant 1 : index
                      scf.for %arg12 = %c0_74 to %c2_75 step %c1_76 {
                        %c0_77 = arith.constant 0 : index
                        %c2_78 = arith.constant 2 : index
                        %c1_79 = arith.constant 1 : index
                        scf.for %arg13 = %c0_77 to %c2_78 step %c1_79 {
                          %61 = memref.load %alloc_55[%arg11, %arg13] : memref<2x2xi32, 2>
                          %62 = memref.load %alloc_58[%arg13, %arg12] : memref<2x2xi32, 2>
                          %63 = memref.load %alloc_48[%arg11, %arg12] : memref<2x2xi32, 2>
                          %64 = arith.muli %61, %62 : i32
                          %65 = arith.addi %63, %64 : i32
                          memref.store %65, %alloc_48[%arg11, %arg12] : memref<2x2xi32, 2>
                        }
                      }
                    }
                    async.yield
                  }
                  %60 = builtin.unrealized_conversion_cast %token_66 : !async.token to !air.async.token
                  %c1_67 = arith.constant 1 : index
                  %token_68 = async.execute [%token_66] {
                    memref.dealloc %alloc_55 : memref<2x2xi32, 2>
                    async.yield
                  }
                  %c1_69 = arith.constant 1 : index
                  %token_70 = async.execute [%token_66] {
                    memref.dealloc %alloc_58 : memref<2x2xi32, 2>
                    async.yield
                  }
                  scf.yield %60 : !air.async.token
                } {unroll = 2 : i32}
                %38 = air.channel.put async [%37]  @channel_6[%arg7, %arg8] (%alloc_48[] [] []) {id = 15 : i32} : (memref<2x2xi32, 2>)
                %39 = builtin.unrealized_conversion_cast %38 : !air.async.token to !async.token
                %c1_52 = arith.constant 1 : index
                %token_53 = async.execute [%39] {
                  memref.dealloc %alloc_48 : memref<2x2xi32, 2>
                  async.yield
                }
                scf.reduce 
              }
              async.yield
            }
            %34 = builtin.unrealized_conversion_cast %token_36 : !async.token to !air.async.token
            %c1_37 = arith.constant 1 : index
            %token_38 = async.execute [%19] {
              memref.dealloc %alloc_31 : memref<4x8xi32, 1>
              async.yield
            }
            %c1_39 = arith.constant 1 : index
            %token_40 = async.execute [%22] {
              memref.dealloc %alloc_34 : memref<8x4xi32, 1>
              async.yield
            }
            %token_41 = async.execute [%25, %27, %29, %31, %33, %token_36] {
              async.yield
            }
            %35 = builtin.unrealized_conversion_cast %token_41 : !async.token to !air.async.token
            scf.yield %35 : !air.async.token
          } {unroll = 2 : i32}
          %14 = air.channel.put async [%13]  @channel_7[] (%alloc_26[] [] []) {id = 16 : i32} : (memref<4x4xi32, 1>)
          %15 = builtin.unrealized_conversion_cast %14 : !air.async.token to !async.token
          %c1_28 = arith.constant 1 : index
          %token_29 = async.execute [%15] {
            memref.dealloc %alloc_26 : memref<4x4xi32, 1>
            async.yield
          }
          async.yield
        }
        scf.reduce 
      }
      async.yield
    }
    %2 = builtin.unrealized_conversion_cast %token_0 : !async.token to !air.async.token
    %c1_1 = arith.constant 1 : index
    %token_2 = async.execute [%token_0] {
      memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
      async.yield
    }
    return
  }
}

