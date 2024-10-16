module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    %token = async.execute {
      async.yield
    }
    %token_0 = async.execute [%token] {
      async.yield
    }
    %0 = builtin.unrealized_conversion_cast %token_0 : !async.token to !air.async.token
    %1 = scf.for %arg2 = %c0 to %c128 step %c1 iter_args(%arg3 = %0) -> (!air.async.token) {
      %6 = builtin.unrealized_conversion_cast %arg3 : !air.async.token to !async.token
      %token_3 = async.execute [%6] {
        async.yield
      }
      %7 = builtin.unrealized_conversion_cast %token_3 : !async.token to !air.async.token
      %8 = scf.for %arg4 = %c0 to %c128 step %c1 iter_args(%arg5 = %7) -> (!air.async.token) {
        %11 = builtin.unrealized_conversion_cast %arg5 : !air.async.token to !async.token
        %token_5 = async.execute [%11] {
          memref.store %c0_i32, %alloc[%arg2, %arg4] : memref<128x128xi32>
          async.yield
        }
        %token_6 = async.execute [%11, %token_5] {
          async.yield
        }
        %12 = builtin.unrealized_conversion_cast %token_6 : !async.token to !air.async.token
        scf.yield %12 : !air.async.token
      }
      %9 = builtin.unrealized_conversion_cast %8 : !air.async.token to !async.token
      %token_4 = async.execute [%6, %9] {
        async.yield
      }
      %10 = builtin.unrealized_conversion_cast %token_4 : !async.token to !air.async.token
      scf.yield %10 : !air.async.token
    }
    %2 = builtin.unrealized_conversion_cast %1 : !air.async.token to !async.token
    %token_1 = async.execute [%2] {
      async.yield
    }
    %3 = async.create_group %c4 : !async.group
    %4 = async.create_group %c4 : !async.group
    %5 = scf.for %arg2 = %c0 to %c128 step %c64 iter_args(%arg3 = %c0) -> (index) {
      %6 = scf.for %arg4 = %c0 to %c128 step %c64 iter_args(%arg5 = %arg3) -> (index) {
        %token_3 = async.execute {
          %token_4 = async.execute [%token_1] {
            async.yield
          }
          %9 = builtin.unrealized_conversion_cast %token_4 : !async.token to !air.async.token
          %10 = scf.for %arg6 = %c0 to %c128 step %c64 iter_args(%arg7 = %9) -> (!air.async.token) {
            %13 = builtin.unrealized_conversion_cast %arg7 : !air.async.token to !async.token
            %alloc_6 = memref.alloc()[%arg2] : memref<64x64xi32, strided<[128, 1], offset: ?>>
            %alloc_7 = memref.alloc()[%arg2] : memref<64x64xi32, strided<[128, 1], offset: ?>>
            %alloc_8 = memref.alloc()[%arg2] : memref<64x64xi32, strided<[128, 1], offset: ?>>
            %alloc_9 = memref.alloc() : memref<64x64xi32, 1>
            %token_10 = async.execute {
              async.yield
            }
            %alloc_11 = memref.alloc() : memref<64x64xi32, 1>
            %token_12 = async.execute {
              async.yield
            }
            %alloc_13 = memref.alloc() : memref<64x64xi32, 1>
            %token_14 = async.execute {
              async.yield
            }
            %token_15 = async.execute [%13, %token_10] {
              memref.copy %alloc_6, %alloc_9 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
              async.yield
            }
            %token_16 = async.execute [%13, %token_12] {
              memref.copy %alloc_7, %alloc_11 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
              async.yield
            }
            %token_17 = async.execute [%token_14, %13] {
              memref.copy %alloc_8, %alloc_13 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
              async.yield
            }
            %token_18 = async.execute [%13, %token_15, %token_16, %token_17] {
              async.yield
            }
            %14 = async.create_group %c4 : !async.group
            %15 = async.create_group %c4 : !async.group
            %16 = scf.for %arg8 = %c0 to %c64 step %c32 iter_args(%arg9 = %c0) -> (index) {
              %18 = scf.for %arg10 = %c0 to %c64 step %c32 iter_args(%arg11 = %arg9) -> (index) {
                %token_25 = async.execute {
                  %token_26 = async.execute [%token_18, %token_18, %token_18] {
                    async.yield
                  }
                  %21 = builtin.unrealized_conversion_cast %token_26 : !async.token to !air.async.token
                  %22 = scf.for %arg12 = %c0 to %c64 step %c32 iter_args(%arg13 = %21) -> (!air.async.token) {
                    %25 = builtin.unrealized_conversion_cast %arg13 : !air.async.token to !async.token
                    %alloc_28 = memref.alloc()[%arg12] : memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                    %alloc_29 = memref.alloc()[%arg12] : memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                    %alloc_30 = memref.alloc()[%arg12] : memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                    %alloc_31 = memref.alloc() : memref<32x32xi32, 2>
                    %token_32 = async.execute {
                      async.yield
                    }
                    %alloc_33 = memref.alloc() : memref<32x32xi32, 2>
                    %token_34 = async.execute {
                      async.yield
                    }
                    %alloc_35 = memref.alloc() : memref<32x32xi32, 2>
                    %token_36 = async.execute {
                      async.yield
                    }
                    %token_37 = async.execute [%token_32, %25] {
                      memref.copy %alloc_28, %alloc_31 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_38 = async.execute [%token_34, %25] {
                      memref.copy %alloc_29, %alloc_33 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_39 = async.execute [%token_36, %25] {
                      memref.copy %alloc_30, %alloc_35 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_40 = async.execute [%25, %token_37, %token_38, %token_39] {
                      async.yield
                    }
                    %26 = builtin.unrealized_conversion_cast %token_40 : !async.token to !air.async.token
                    %27 = scf.for %arg14 = %c0 to %c32 step %c1 iter_args(%arg15 = %26) -> (!air.async.token) {
                      %30 = builtin.unrealized_conversion_cast %arg15 : !air.async.token to !async.token
                      %token_46 = async.execute [%30, %30, %30] {
                        async.yield
                      }
                      %31 = builtin.unrealized_conversion_cast %token_46 : !async.token to !air.async.token
                      %32 = scf.for %arg16 = %c0 to %c32 step %c1 iter_args(%arg17 = %31) -> (!air.async.token) {
                        %35 = builtin.unrealized_conversion_cast %arg17 : !air.async.token to !async.token
                        %token_48 = async.execute [%35, %35, %35] {
                          async.yield
                        }
                        %36 = builtin.unrealized_conversion_cast %token_48 : !async.token to !air.async.token
                        %37 = scf.for %arg18 = %c0 to %c32 step %c1 iter_args(%arg19 = %36) -> (!air.async.token) {
                          %40 = builtin.unrealized_conversion_cast %arg19 : !air.async.token to !async.token
                          %alloc_50 = memref.alloc() : memref<1xi32>
                          %token_51 = async.execute [%40] {
                            %47 = memref.load %alloc_31[%arg14, %arg18] : memref<32x32xi32, 2>
                            memref.store %47, %alloc_50[%c1] : memref<1xi32>
                            async.yield
                          }
                          %alloc_52 = memref.alloc() : memref<1xi32>
                          %token_53 = async.execute [%40] {
                            %47 = memref.load %alloc_33[%arg18, %arg16] : memref<32x32xi32, 2>
                            memref.store %47, %alloc_52[%c1] : memref<1xi32>
                            async.yield
                          }
                          %alloc_54 = memref.alloc() : memref<1xi32>
                          %token_55 = async.execute [%40] {
                            %47 = memref.load %alloc_35[%arg14, %arg16] : memref<32x32xi32, 2>
                            memref.store %47, %alloc_54[%c1] : memref<1xi32>
                            async.yield
                          }
                          %41 = memref.load %alloc_50[%c1] : memref<1xi32>
                          %42 = memref.load %alloc_52[%c1] : memref<1xi32>
                          %43 = arith.muli %41, %42 : i32
                          %44 = memref.load %alloc_54[%c1] : memref<1xi32>
                          %45 = arith.addi %44, %43 : i32
                          %token_56 = async.execute [%40, %token_55] {
                            memref.store %45, %alloc_35[%arg14, %arg16] : memref<32x32xi32, 2>
                            async.yield
                          }
                          %token_57 = async.execute [%40, %token_51, %token_53, %token_56] {
                            async.yield
                          }
                          %46 = builtin.unrealized_conversion_cast %token_57 : !async.token to !air.async.token
                          scf.yield %46 : !air.async.token
                        }
                        %38 = builtin.unrealized_conversion_cast %37 : !air.async.token to !async.token
                        %token_49 = async.execute [%35, %38] {
                          async.yield
                        }
                        %39 = builtin.unrealized_conversion_cast %token_49 : !async.token to !air.async.token
                        scf.yield %39 : !air.async.token
                      }
                      %33 = builtin.unrealized_conversion_cast %32 : !air.async.token to !async.token
                      %token_47 = async.execute [%30, %33] {
                        async.yield
                      }
                      %34 = builtin.unrealized_conversion_cast %token_47 : !async.token to !air.async.token
                      scf.yield %34 : !air.async.token
                    }
                    %28 = builtin.unrealized_conversion_cast %27 : !air.async.token to !async.token
                    %token_41 = async.execute [%25, %28] {
                      memref.copy %alloc_35, %alloc_30 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                      async.yield
                    }
                    %token_42 = async.execute [%28] {
                      memref.dealloc %alloc_31 : memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_43 = async.execute [%28] {
                      memref.dealloc %alloc_33 : memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_44 = async.execute [%token_41] {
                      memref.dealloc %alloc_35 : memref<32x32xi32, 2>
                      async.yield
                    }
                    %token_45 = async.execute [%25, %token_41] {
                      async.yield
                    }
                    %29 = builtin.unrealized_conversion_cast %token_45 : !async.token to !air.async.token
                    scf.yield %29 : !air.async.token
                  }
                  %23 = builtin.unrealized_conversion_cast %22 : !air.async.token to !async.token
                  %token_27 = async.execute [%23] {
                    async.yield
                  }
                  %24 = async.add_to_group %token_27, %14 : !async.token
                  async.yield
                }
                %19 = async.add_to_group %token_25, %15 : !async.token
                %20 = arith.addi %arg11, %c1 : index
                scf.yield %20 : index
              }
              scf.yield %18 : index
            }
            async.await_all %15
            %token_19 = async.execute {
              async.await_all %14
              async.yield
            }
            %token_20 = async.execute [%13, %token_17] {
              memref.copy %alloc_13, %alloc_8 : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
              async.yield
            }
            %token_21 = async.execute [%token_15] {
              memref.dealloc %alloc_9 : memref<64x64xi32, 1>
              async.yield
            }
            %token_22 = async.execute [%token_16] {
              memref.dealloc %alloc_11 : memref<64x64xi32, 1>
              async.yield
            }
            %token_23 = async.execute [%token_20] {
              memref.dealloc %alloc_13 : memref<64x64xi32, 1>
              async.yield
            }
            %token_24 = async.execute [%13, %token_20, %token_19] {
              async.yield
            }
            %17 = builtin.unrealized_conversion_cast %token_24 : !async.token to !air.async.token
            scf.yield %17 : !air.async.token
          }
          %11 = builtin.unrealized_conversion_cast %10 : !air.async.token to !async.token
          %token_5 = async.execute [%11] {
            async.yield
          }
          %12 = async.add_to_group %token_5, %3 : !async.token
          async.yield
        }
        %7 = async.add_to_group %token_3, %4 : !async.token
        %8 = arith.addi %arg5, %c1 : index
        scf.yield %8 : index
      }
      scf.yield %6 : index
    }
    async.await_all %4
    %token_2 = async.execute {
      async.await_all %3
      async.yield
    }
    return %alloc : memref<128x128xi32>
  }
}

