module {
  memref.global "private" @A : memref<16x16xi32>
  memref.global "private" @B : memref<16x16xi32>
  memref.global "private" @C : memref<16x16xi32>
  func.func @main() {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c1 step %c1 {
          scf.for %arg3 = %c0 to %c2 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %0[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x2x!verif.semaphore>
          }
        }
      }
    }
    %1 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c1 step %c1 {
          scf.for %arg3 = %c0 to %c2 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %1[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x2x!verif.semaphore>
          }
        }
      }
    }
    %2 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          scf.for %arg3 = %c0 to %c1 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %2[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x1x!verif.semaphore>
          }
        }
      }
    }
    %3 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          scf.for %arg3 = %c0 to %c1 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %3[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x1x!verif.semaphore>
          }
        }
      }
    }
    %4 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c1 step %c1 {
          scf.for %arg3 = %c0 to %c1 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %4[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
          }
        }
      }
    }
    %5 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c1 step %c1 {
          scf.for %arg3 = %c0 to %c1 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %5[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
          }
        }
      }
    }
    %6 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c2 step %c1 {
          scf.for %arg3 = %c0 to %c2 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %6[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x2x!verif.semaphore>
          }
        }
      }
    }
    %7 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      scf.for %arg1 = %c0 to %c2 step %c1 {
        scf.for %arg2 = %c0 to %c1 step %c1 {
          scf.for %arg3 = %c0 to %c1 step %c1 {
            %11 = verif.semaphore(0 : index)
            memref.store %11, %7[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
          }
        }
      }
    }
    %8 = memref.get_global @A : memref<16x16xi32>
    %9 = memref.get_global @B : memref<16x16xi32>
    %10 = memref.get_global @C : memref<16x16xi32>
    call @forward(%8, %9, %10) : (memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32>) -> ()
    return
  }
  memref.global "private" @channel_0_buffer : memref<2x2x1x2xi32>
  memref.global "private" @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
  memref.global "private" @channel_1_buffer : memref<2x2x1x2xi32>
  memref.global "private" @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
  memref.global "private" @channel_2_buffer : memref<2x2x2x1xi32>
  memref.global "private" @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
  memref.global "private" @channel_3_buffer : memref<2x2x2x1xi32>
  memref.global "private" @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
  memref.global "private" @channel_4_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
  memref.global "private" @channel_5_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
  memref.global "private" @channel_6_buffer : memref<2x2x2x2xi32>
  memref.global "private" @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
  memref.global "private" @channel_7_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c-1 = arith.constant -1 : index
    %c0_i32 = arith.constant 0 : i32
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %token = async.execute {
      async.yield
    }
    %token_0 = async.execute [%token] {
      %0 = async.create_group %c4 : !async.group
      %1 = scf.for %arg3 = %c0 to %c2 step %c1 iter_args(%arg4 = %c0) -> (index) {
        %2 = scf.for %arg5 = %c0 to %c2 step %c1 iter_args(%arg6 = %arg4) -> (index) {
          %token_2 = async.execute {
            %alloc_3 = memref.alloc() : memref<1xindex>
            %token_4 = async.execute {
              %5 = arith.muli %arg3, %c8 overflow<nsw> : index
              memref.store %5, %alloc_3[%c1] : memref<1xindex>
              async.yield
            }
            %token_5 = async.execute [%token_4] {
              %5 = memref.get_global @channel_4_buffer : memref<2x2x1x1xi32>
              %6 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
              scf.for %arg7 = %c0 to %c8 step %c1 {
                scf.for %arg8 = %c0 to %c16 step %c1 {
                  %7 = memref.load %alloc_3[%c1] : memref<1xindex>
                  %8 = arith.addi %arg7, %7 : index
                  %9 = arith.muli %8, %c16 overflow<nsw> : index
                  %10 = arith.addi %9, %arg8 : index
                  %11 = arith.floordivsi %10, %c16 : index
                  %12 = arith.remsi %10, %c16 : index
                  %13 = arith.cmpi slt, %12, %c0 : index
                  %14 = arith.addi %12, %c16 : index
                  %15 = arith.select %13, %14, %12 : index
                  %16 = memref.load %6[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                  verif.semaphore.wait %16, %c0
                  %17 = memref.load %arg0[%11, %15] : memref<16x16xi32>
                  memref.store %17, %5[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                  verif.semaphore.set %16, %c1
                }
              }
              async.yield
            }
            %alloc_6 = memref.alloc() : memref<1xindex>
            %token_7 = async.execute {
              %5 = arith.muli %arg5, %c8 overflow<nsw> : index
              memref.store %5, %alloc_6[%c1] : memref<1xindex>
              async.yield
            }
            %token_8 = async.execute [%token_7] {
              %5 = memref.get_global @channel_5_buffer : memref<2x2x1x1xi32>
              %6 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
              scf.for %arg7 = %c0 to %c16 step %c1 {
                scf.for %arg8 = %c0 to %c8 step %c1 {
                  %7 = arith.muli %arg7, %c16 overflow<nsw> : index
                  %8 = memref.load %alloc_6[%c1] : memref<1xindex>
                  %9 = arith.addi %arg8, %8 : index
                  %10 = arith.addi %7, %9 : index
                  %11 = arith.floordivsi %10, %c16 : index
                  %12 = arith.remsi %10, %c16 : index
                  %13 = arith.cmpi slt, %12, %c0 : index
                  %14 = arith.addi %12, %c16 : index
                  %15 = arith.select %13, %14, %12 : index
                  %16 = memref.load %6[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                  verif.semaphore.wait %16, %c0
                  %17 = memref.load %arg1[%11, %15] : memref<16x16xi32>
                  memref.store %17, %5[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                  verif.semaphore.set %16, %c1
                }
              }
              async.yield
            }
            %alloc_9 = memref.alloc() : memref<1xindex>
            %token_10 = async.execute {
              %5 = arith.muli %arg5, %c8 overflow<nsw> : index
              memref.store %5, %alloc_9[%c1] : memref<1xindex>
              async.yield
            }
            %alloc_11 = memref.alloc() : memref<1xindex>
            %token_12 = async.execute {
              %5 = arith.muli %arg3, %c8 overflow<nsw> : index
              memref.store %5, %alloc_11[%c1] : memref<1xindex>
              async.yield
            }
            %token_13 = async.execute [%token_10, %token_12] {
              %5 = memref.get_global @channel_7_buffer : memref<2x2x1x1xi32>
              %6 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
              scf.for %arg7 = %c0 to %c8 step %c1 {
                scf.for %arg8 = %c0 to %c8 step %c1 {
                  %7 = memref.load %alloc_11[%c1] : memref<1xindex>
                  %8 = arith.addi %arg7, %7 : index
                  %9 = arith.muli %8, %c16 overflow<nsw> : index
                  %10 = memref.load %alloc_9[%c1] : memref<1xindex>
                  %11 = arith.addi %arg8, %10 : index
                  %12 = arith.addi %9, %11 : index
                  %13 = arith.floordivsi %12, %c16 : index
                  %14 = arith.remsi %12, %c16 : index
                  %15 = arith.cmpi slt, %14, %c0 : index
                  %16 = arith.addi %14, %c16 : index
                  %17 = arith.select %15, %16, %14 : index
                  %18 = memref.load %6[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                  verif.semaphore.wait %18, %c1
                  %19 = memref.load %5[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                  memref.store %19, %alloc[%13, %17] : memref<16x16xi32>
                  verif.semaphore.set %18, %c0
                }
              }
              async.yield
            }
            %token_14 = async.execute {
              %alloc_15 = memref.alloc() : memref<8x8xi32, 1>
              %token_16 = async.execute {
                async.yield
              }
              %alloc_17 = memref.alloc() : memref<8x16xi32, 1>
              %token_18 = async.execute {
                async.yield
              }
              %alloc_19 = memref.alloc() : memref<16x8xi32, 1>
              %token_20 = async.execute {
                async.yield
              }
              %token_21 = async.execute [%token_18] {
                %7 = memref.get_global @channel_4_buffer : memref<2x2x1x1xi32>
                %8 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
                scf.for %arg7 = %c0 to %c8 step %c1 {
                  scf.for %arg8 = %c0 to %c16 step %c1 {
                    %9 = arith.muli %arg8, %c16 overflow<nsw> : index
                    %10 = arith.addi %arg7, %9 : index
                    %11 = arith.floordivsi %10, %c16 : index
                    %12 = arith.remsi %10, %c16 : index
                    %13 = arith.cmpi slt, %12, %c0 : index
                    %14 = arith.addi %12, %c16 : index
                    %15 = arith.select %13, %14, %12 : index
                    %16 = memref.load %8[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                    verif.semaphore.wait %16, %c1
                    %17 = memref.load %7[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                    memref.store %17, %alloc_17[%11, %15] : memref<8x16xi32, 1>
                    verif.semaphore.set %16, %c0
                  }
                }
                async.yield
              }
              %token_22 = async.execute [%token_20] {
                %7 = memref.get_global @channel_5_buffer : memref<2x2x1x1xi32>
                %8 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
                scf.for %arg7 = %c0 to %c16 step %c1 {
                  scf.for %arg8 = %c0 to %c8 step %c1 {
                    %9 = arith.muli %arg8, %c8 overflow<nsw> : index
                    %10 = arith.addi %arg7, %9 : index
                    %11 = arith.floordivsi %10, %c8 : index
                    %12 = arith.remsi %10, %c8 : index
                    %13 = arith.cmpi slt, %12, %c0 : index
                    %14 = arith.addi %12, %c8 : index
                    %15 = arith.select %13, %14, %12 : index
                    %16 = memref.load %8[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                    verif.semaphore.wait %16, %c1
                    %17 = memref.load %7[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                    memref.store %17, %alloc_19[%11, %15] : memref<16x8xi32, 1>
                    verif.semaphore.set %16, %c0
                  }
                }
                async.yield
              }
              %token_23 = async.execute [%token_21] {
                %7 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
                %8 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    scf.for %arg9 = %c0 to %c4 step %c1 {
                      %9 = arith.muli %arg7, %c4 overflow<nsw> : index
                      %10 = arith.muli %arg8, %c16 overflow<nsw> : index
                      %11 = arith.addi %9, %10 : index
                      %12 = arith.addi %11, %arg9 : index
                      %13 = arith.floordivsi %12, %c16 : index
                      %14 = arith.remsi %12, %c16 : index
                      %15 = arith.cmpi slt, %14, %c0 : index
                      %16 = arith.addi %14, %c16 : index
                      %17 = arith.select %15, %16, %14 : index
                      %18 = async.create_group %c2 : !async.group
                      %19 = scf.for %arg10 = %c0 to %c2 step %c1 iter_args(%arg11 = %c0) -> (index) {
                        %token_37 = async.execute {
                          %22 = memref.load %8[%arg3, %arg5, %c0, %arg10] : memref<2x2x1x2x!verif.semaphore>
                          verif.semaphore.wait %22, %c0
                          %23 = memref.load %alloc_17[%13, %17] : memref<8x16xi32, 1>
                          memref.store %23, %7[%arg3, %arg5, %c0, %arg10] : memref<2x2x1x2xi32>
                          verif.semaphore.set %22, %c1
                          async.yield
                        }
                        %20 = async.add_to_group %token_37, %18 : !async.token
                        %21 = arith.addi %arg11, %c1 : index
                        scf.yield %21 : index
                      }
                      async.await_all %18
                    }
                  }
                }
                async.yield
              }
              %token_24 = async.execute [%token_21] {
                %7 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
                %8 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    scf.for %arg9 = %c0 to %c4 step %c1 {
                      %9 = arith.muli %arg7, %c4 overflow<nsw> : index
                      %10 = arith.addi %arg8, %c4 : index
                      %11 = arith.muli %10, %c16 overflow<nsw> : index
                      %12 = arith.addi %9, %11 : index
                      %13 = arith.addi %12, %arg9 : index
                      %14 = arith.floordivsi %13, %c16 : index
                      %15 = arith.remsi %13, %c16 : index
                      %16 = arith.cmpi slt, %15, %c0 : index
                      %17 = arith.addi %15, %c16 : index
                      %18 = arith.select %16, %17, %15 : index
                      %19 = async.create_group %c2 : !async.group
                      %20 = scf.for %arg10 = %c0 to %c2 step %c1 iter_args(%arg11 = %c0) -> (index) {
                        %token_37 = async.execute {
                          %23 = memref.load %8[%arg3, %arg5, %c0, %arg10] : memref<2x2x1x2x!verif.semaphore>
                          verif.semaphore.wait %23, %c0
                          %24 = memref.load %alloc_17[%14, %18] : memref<8x16xi32, 1>
                          memref.store %24, %7[%arg3, %arg5, %c0, %arg10] : memref<2x2x1x2xi32>
                          verif.semaphore.set %23, %c1
                          async.yield
                        }
                        %21 = async.add_to_group %token_37, %19 : !async.token
                        %22 = arith.addi %arg11, %c1 : index
                        scf.yield %22 : index
                      }
                      async.await_all %19
                    }
                  }
                }
                async.yield
              }
              %token_25 = async.execute [%token_22] {
                %7 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
                %8 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg7 = %c0 to %c16 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.muli %arg7, %c8 overflow<nsw> : index
                    %10 = arith.addi %9, %arg8 : index
                    %11 = arith.floordivsi %10, %c8 : index
                    %12 = arith.remsi %10, %c8 : index
                    %13 = arith.cmpi slt, %12, %c0 : index
                    %14 = arith.addi %12, %c8 : index
                    %15 = arith.select %13, %14, %12 : index
                    %16 = async.create_group %c2 : !async.group
                    %17 = scf.for %arg9 = %c0 to %c2 step %c1 iter_args(%arg10 = %c0) -> (index) {
                      %token_37 = async.execute {
                        %20 = memref.load %8[%arg3, %arg5, %arg9, %c0] : memref<2x2x2x1x!verif.semaphore>
                        verif.semaphore.wait %20, %c0
                        %21 = memref.load %alloc_19[%11, %15] : memref<16x8xi32, 1>
                        memref.store %21, %7[%arg3, %arg5, %arg9, %c0] : memref<2x2x2x1xi32>
                        verif.semaphore.set %20, %c1
                        async.yield
                      }
                      %18 = async.add_to_group %token_37, %16 : !async.token
                      %19 = arith.addi %arg10, %c1 : index
                      scf.yield %19 : index
                    }
                    async.await_all %16
                  }
                }
                async.yield
              }
              %token_26 = async.execute [%token_22] {
                %7 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
                %8 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg7 = %c0 to %c16 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.muli %arg7, %c8 overflow<nsw> : index
                    %10 = arith.addi %arg8, %c4 : index
                    %11 = arith.addi %9, %10 : index
                    %12 = arith.floordivsi %11, %c8 : index
                    %13 = arith.remsi %11, %c8 : index
                    %14 = arith.cmpi slt, %13, %c0 : index
                    %15 = arith.addi %13, %c8 : index
                    %16 = arith.select %14, %15, %13 : index
                    %17 = async.create_group %c2 : !async.group
                    %18 = scf.for %arg9 = %c0 to %c2 step %c1 iter_args(%arg10 = %c0) -> (index) {
                      %token_37 = async.execute {
                        %21 = memref.load %8[%arg3, %arg5, %arg9, %c0] : memref<2x2x2x1x!verif.semaphore>
                        verif.semaphore.wait %21, %c0
                        %22 = memref.load %alloc_19[%12, %16] : memref<16x8xi32, 1>
                        memref.store %22, %7[%arg3, %arg5, %arg9, %c0] : memref<2x2x2x1xi32>
                        verif.semaphore.set %21, %c1
                        async.yield
                      }
                      %19 = async.add_to_group %token_37, %17 : !async.token
                      %20 = arith.addi %arg10, %c1 : index
                      scf.yield %20 : index
                    }
                    async.await_all %17
                  }
                }
                async.yield
              }
              %token_27 = async.execute [%token_16] {
                %7 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
                %8 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.muli %arg7, %c8 overflow<nsw> : index
                    %10 = arith.addi %9, %arg8 : index
                    %11 = arith.floordivsi %10, %c8 : index
                    %12 = arith.remsi %10, %c8 : index
                    %13 = arith.cmpi slt, %12, %c0 : index
                    %14 = arith.addi %12, %c8 : index
                    %15 = arith.select %13, %14, %12 : index
                    %16 = memref.load %8[%arg3, %arg5, %c0, %c0] : memref<2x2x2x2x!verif.semaphore>
                    verif.semaphore.wait %16, %c1
                    %17 = memref.load %7[%arg3, %arg5, %c0, %c0] : memref<2x2x2x2xi32>
                    memref.store %17, %alloc_15[%11, %15] : memref<8x8xi32, 1>
                    verif.semaphore.set %16, %c0
                  }
                }
                async.yield
              }
              %token_28 = async.execute [%token_16] {
                %7 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
                %8 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.addi %arg7, %c4 : index
                    %10 = arith.muli %9, %c8 overflow<nsw> : index
                    %11 = arith.addi %10, %arg8 : index
                    %12 = arith.floordivsi %11, %c8 : index
                    %13 = arith.remsi %11, %c8 : index
                    %14 = arith.cmpi slt, %13, %c0 : index
                    %15 = arith.addi %13, %c8 : index
                    %16 = arith.select %14, %15, %13 : index
                    %17 = memref.load %8[%arg3, %arg5, %c1, %c0] : memref<2x2x2x2x!verif.semaphore>
                    verif.semaphore.wait %17, %c1
                    %18 = memref.load %7[%arg3, %arg5, %c1, %c0] : memref<2x2x2x2xi32>
                    memref.store %18, %alloc_15[%12, %16] : memref<8x8xi32, 1>
                    verif.semaphore.set %17, %c0
                  }
                }
                async.yield
              }
              %token_29 = async.execute [%token_16] {
                %7 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
                %8 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.muli %arg7, %c8 overflow<nsw> : index
                    %10 = arith.addi %arg8, %c4 : index
                    %11 = arith.addi %9, %10 : index
                    %12 = arith.floordivsi %11, %c8 : index
                    %13 = arith.remsi %11, %c8 : index
                    %14 = arith.cmpi slt, %13, %c0 : index
                    %15 = arith.addi %13, %c8 : index
                    %16 = arith.select %14, %15, %13 : index
                    %17 = memref.load %8[%arg3, %arg5, %c0, %c1] : memref<2x2x2x2x!verif.semaphore>
                    verif.semaphore.wait %17, %c1
                    %18 = memref.load %7[%arg3, %arg5, %c0, %c1] : memref<2x2x2x2xi32>
                    memref.store %18, %alloc_15[%12, %16] : memref<8x8xi32, 1>
                    verif.semaphore.set %17, %c0
                  }
                }
                async.yield
              }
              %token_30 = async.execute [%token_16] {
                %7 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
                %8 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
                scf.for %arg7 = %c0 to %c4 step %c1 {
                  scf.for %arg8 = %c0 to %c4 step %c1 {
                    %9 = arith.addi %arg7, %c4 : index
                    %10 = arith.muli %9, %c8 overflow<nsw> : index
                    %11 = arith.addi %arg8, %c4 : index
                    %12 = arith.addi %10, %11 : index
                    %13 = arith.floordivsi %12, %c8 : index
                    %14 = arith.remsi %12, %c8 : index
                    %15 = arith.cmpi slt, %14, %c0 : index
                    %16 = arith.addi %14, %c8 : index
                    %17 = arith.select %15, %16, %14 : index
                    %18 = memref.load %8[%arg3, %arg5, %c1, %c1] : memref<2x2x2x2x!verif.semaphore>
                    verif.semaphore.wait %18, %c1
                    %19 = memref.load %7[%arg3, %arg5, %c1, %c1] : memref<2x2x2x2xi32>
                    memref.store %19, %alloc_15[%13, %17] : memref<8x8xi32, 1>
                    verif.semaphore.set %18, %c0
                  }
                }
                async.yield
              }
              %token_31 = async.execute [%token_16, %token_21, %token_22] {
                %7 = async.create_group %c4 : !async.group
                %8 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
                  %9 = scf.for %arg9 = %c0 to %c4 step %c1 iter_args(%arg10 = %arg8) -> (index) {
                    %token_37 = async.execute {
                      %12 = arith.remsi %arg9, %c2 : index
                      %13 = arith.divsi %arg9, %c2 : index
                      %alloc_38 = memref.alloc() : memref<4x4xi32, 2>
                      %token_39 = async.execute {
                        async.yield
                      }
                      %token_40 = async.execute [%token_39] {
                        scf.for %arg11 = %c0 to %c4 step %c1 {
                          scf.for %arg12 = %c0 to %c4 step %c1 {
                            memref.store %c0_i32, %alloc_38[%arg11, %arg12] : memref<4x4xi32, 2>
                          }
                        }
                        async.yield
                      }
                      %alloc_41 = memref.alloc() : memref<4x4xi32, 2>
                      %token_42 = async.execute {
                        async.yield
                      }
                      %alloc_43 = memref.alloc() : memref<4x4xi32, 2>
                      %token_44 = async.execute {
                        async.yield
                      }
                      %alloc_45 = memref.alloc() : memref<4x4xi32, 2>
                      %token_46 = async.execute {
                        async.yield
                      }
                      %14 = builtin.unrealized_conversion_cast %token_46 : !async.token to !async.token
                      %alloc_47 = memref.alloc() : memref<4x4xi32, 2>
                      %token_48 = async.execute {
                        async.yield
                      }
                      %15 = builtin.unrealized_conversion_cast %token_48 : !async.token to !async.token
                      %16:3 = scf.for %arg11 = %c0 to %c16 step %c8 iter_args(%arg12 = %14, %arg13 = %15, %arg14 = %15) -> (!async.token, !async.token, !async.token) {
                        %19 = builtin.unrealized_conversion_cast %arg13 : !async.token to !async.token
                        %20 = arith.cmpi eq, %13, %c0 : index
                        %21 = arith.cmpi sge, %12, %c0 : index
                        %22 = arith.andi %20, %21 : i1
                        %23 = arith.muli %12, %c-1 overflow<nsw> : index
                        %24 = arith.addi %23, %c1 : index
                        %25 = arith.cmpi sge, %24, %c0 : index
                        %26 = arith.andi %22, %25 : i1
                        %27 = scf.if %26 -> (!async.token) {
                          %59 = builtin.unrealized_conversion_cast %arg14 : !async.token to !async.token
                          %60 = builtin.unrealized_conversion_cast %arg12 : !async.token to !async.token
                          %token_58 = async.execute [%59, %60, %token_46] {
                            %62 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
                            %63 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %64 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %65 = arith.addi %arg15, %64 : index
                                %66 = arith.floordivsi %65, %c4 : index
                                %67 = arith.remsi %65, %c4 : index
                                %68 = arith.cmpi slt, %67, %c0 : index
                                %69 = arith.addi %67, %c4 : index
                                %70 = arith.select %68, %69, %67 : index
                                %71 = memref.load %63[%arg3, %arg5, %13, %12] : memref<2x2x1x2x!verif.semaphore>
                                verif.semaphore.wait %71, %c1
                                %72 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x1x2xi32>
                                memref.store %72, %alloc_45[%66, %70] : memref<4x4xi32, 2>
                                verif.semaphore.set %71, %c0
                              }
                            }
                            async.yield
                          }
                          %61 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %61 : !async.token
                        } else {
                          %59 = builtin.unrealized_conversion_cast %arg14 : !async.token to !async.token
                          %60 = builtin.unrealized_conversion_cast %arg12 : !async.token to !async.token
                          %token_58 = async.execute [%59, %60, %token_46] {
                            %62 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
                            %63 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %64 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %65 = arith.addi %arg15, %64 : index
                                %66 = arith.floordivsi %65, %c4 : index
                                %67 = arith.remsi %65, %c4 : index
                                %68 = arith.cmpi slt, %67, %c0 : index
                                %69 = arith.addi %67, %c4 : index
                                %70 = arith.select %68, %69, %67 : index
                                %71 = memref.load %63[%arg3, %arg5, %13, %12] : memref<2x2x1x2x!verif.semaphore>
                                verif.semaphore.wait %71, %c1
                                %72 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x1x2xi32>
                                memref.store %72, %alloc_45[%66, %70] : memref<4x4xi32, 2>
                                verif.semaphore.set %71, %c0
                              }
                            }
                            async.yield
                          }
                          %61 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %61 : !async.token
                        }
                        %28 = builtin.unrealized_conversion_cast %27 : !async.token to !async.token
                        %29 = arith.cmpi sge, %13, %c0 : index
                        %30 = arith.muli %13, %c-1 overflow<nsw> : index
                        %31 = arith.addi %30, %c1 : index
                        %32 = arith.cmpi sge, %31, %c0 : index
                        %33 = arith.andi %29, %32 : i1
                        %34 = arith.cmpi eq, %12, %c0 : index
                        %35 = arith.andi %33, %34 : i1
                        %36 = scf.if %35 -> (!async.token) {
                          %59 = builtin.unrealized_conversion_cast %arg14 : !async.token to !async.token
                          %60 = builtin.unrealized_conversion_cast %arg12 : !async.token to !async.token
                          %token_58 = async.execute [%59, %60, %token_48] {
                            %62 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
                            %63 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %64 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %65 = arith.addi %arg15, %64 : index
                                %66 = arith.floordivsi %65, %c4 : index
                                %67 = arith.remsi %65, %c4 : index
                                %68 = arith.cmpi slt, %67, %c0 : index
                                %69 = arith.addi %67, %c4 : index
                                %70 = arith.select %68, %69, %67 : index
                                %71 = memref.load %63[%arg3, %arg5, %13, %12] : memref<2x2x2x1x!verif.semaphore>
                                verif.semaphore.wait %71, %c1
                                %72 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x2x1xi32>
                                memref.store %72, %alloc_47[%66, %70] : memref<4x4xi32, 2>
                                verif.semaphore.set %71, %c0
                              }
                            }
                            async.yield
                          }
                          %61 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %61 : !async.token
                        } else {
                          %59 = builtin.unrealized_conversion_cast %arg14 : !async.token to !async.token
                          %60 = builtin.unrealized_conversion_cast %arg12 : !async.token to !async.token
                          %token_58 = async.execute [%59, %60, %token_48] {
                            %62 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
                            %63 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %64 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %65 = arith.addi %arg15, %64 : index
                                %66 = arith.floordivsi %65, %c4 : index
                                %67 = arith.remsi %65, %c4 : index
                                %68 = arith.cmpi slt, %67, %c0 : index
                                %69 = arith.addi %67, %c4 : index
                                %70 = arith.select %68, %69, %67 : index
                                %71 = memref.load %63[%arg3, %arg5, %13, %12] : memref<2x2x2x1x!verif.semaphore>
                                verif.semaphore.wait %71, %c1
                                %72 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x2x1xi32>
                                memref.store %72, %alloc_47[%66, %70] : memref<4x4xi32, 2>
                                verif.semaphore.set %71, %c0
                              }
                            }
                            async.yield
                          }
                          %61 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %61 : !async.token
                        }
                        %37 = builtin.unrealized_conversion_cast %36 : !async.token to !async.token
                        %token_55 = async.execute [%19, %37, %28] {
                          scf.for %arg15 = %c0 to %c4 step %c1 {
                            scf.for %arg16 = %c0 to %c4 step %c1 {
                              scf.for %arg17 = %c0 to %c4 step %c1 {
                                %59 = memref.load %alloc_45[%arg15, %arg17] : memref<4x4xi32, 2>
                                %60 = memref.load %alloc_47[%arg17, %arg16] : memref<4x4xi32, 2>
                                %61 = memref.load %alloc_38[%arg15, %arg16] : memref<4x4xi32, 2>
                                %62 = arith.muli %59, %60 : i32
                                %63 = arith.addi %61, %62 : i32
                                memref.store %63, %alloc_38[%arg15, %arg16] : memref<4x4xi32, 2>
                              }
                            }
                          }
                          async.yield
                        }
                        %38 = builtin.unrealized_conversion_cast %token_55 : !async.token to !async.token
                        %39 = arith.cmpi eq, %13, %c0 : index
                        %40 = arith.cmpi sge, %12, %c0 : index
                        %41 = arith.andi %39, %40 : i1
                        %42 = arith.muli %12, %c-1 overflow<nsw> : index
                        %43 = arith.addi %42, %c1 : index
                        %44 = arith.cmpi sge, %43, %c0 : index
                        %45 = arith.andi %41, %44 : i1
                        %46 = scf.if %45 -> (!async.token) {
                          %59 = builtin.unrealized_conversion_cast %arg13 : !async.token to !async.token
                          %token_58 = async.execute [%59] {
                            %61 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
                            %62 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %63 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %64 = arith.addi %arg15, %63 : index
                                %65 = arith.floordivsi %64, %c4 : index
                                %66 = arith.remsi %64, %c4 : index
                                %67 = arith.cmpi slt, %66, %c0 : index
                                %68 = arith.addi %66, %c4 : index
                                %69 = arith.select %67, %68, %66 : index
                                %70 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x1x2x!verif.semaphore>
                                verif.semaphore.wait %70, %c1
                                %71 = memref.load %61[%arg3, %arg5, %13, %12] : memref<2x2x1x2xi32>
                                memref.store %71, %alloc_43[%65, %69] : memref<4x4xi32, 2>
                                verif.semaphore.set %70, %c0
                              }
                            }
                            async.yield
                          }
                          %60 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %60 : !async.token
                        } else {
                          %59 = builtin.unrealized_conversion_cast %arg13 : !async.token to !async.token
                          %token_58 = async.execute [%59] {
                            %61 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
                            %62 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %63 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %64 = arith.addi %arg15, %63 : index
                                %65 = arith.floordivsi %64, %c4 : index
                                %66 = arith.remsi %64, %c4 : index
                                %67 = arith.cmpi slt, %66, %c0 : index
                                %68 = arith.addi %66, %c4 : index
                                %69 = arith.select %67, %68, %66 : index
                                %70 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x1x2x!verif.semaphore>
                                verif.semaphore.wait %70, %c1
                                %71 = memref.load %61[%arg3, %arg5, %13, %12] : memref<2x2x1x2xi32>
                                memref.store %71, %alloc_43[%65, %69] : memref<4x4xi32, 2>
                                verif.semaphore.set %70, %c0
                              }
                            }
                            async.yield
                          }
                          %60 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %60 : !async.token
                        }
                        %47 = builtin.unrealized_conversion_cast %46 : !async.token to !async.token
                        %48 = arith.cmpi sge, %13, %c0 : index
                        %49 = arith.muli %13, %c-1 overflow<nsw> : index
                        %50 = arith.addi %49, %c1 : index
                        %51 = arith.cmpi sge, %50, %c0 : index
                        %52 = arith.andi %48, %51 : i1
                        %53 = arith.cmpi eq, %12, %c0 : index
                        %54 = arith.andi %52, %53 : i1
                        %55 = scf.if %54 -> (!async.token) {
                          %59 = builtin.unrealized_conversion_cast %arg13 : !async.token to !async.token
                          %token_58 = async.execute [%59] {
                            %61 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
                            %62 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %63 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %64 = arith.addi %arg15, %63 : index
                                %65 = arith.floordivsi %64, %c4 : index
                                %66 = arith.remsi %64, %c4 : index
                                %67 = arith.cmpi slt, %66, %c0 : index
                                %68 = arith.addi %66, %c4 : index
                                %69 = arith.select %67, %68, %66 : index
                                %70 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x2x1x!verif.semaphore>
                                verif.semaphore.wait %70, %c1
                                %71 = memref.load %61[%arg3, %arg5, %13, %12] : memref<2x2x2x1xi32>
                                memref.store %71, %alloc_41[%65, %69] : memref<4x4xi32, 2>
                                verif.semaphore.set %70, %c0
                              }
                            }
                            async.yield
                          }
                          %60 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %60 : !async.token
                        } else {
                          %59 = builtin.unrealized_conversion_cast %arg13 : !async.token to !async.token
                          %token_58 = async.execute [%59] {
                            %61 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
                            %62 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
                            scf.for %arg15 = %c0 to %c4 step %c1 {
                              scf.for %arg16 = %c0 to %c4 step %c1 {
                                %63 = arith.muli %arg16, %c4 overflow<nsw> : index
                                %64 = arith.addi %arg15, %63 : index
                                %65 = arith.floordivsi %64, %c4 : index
                                %66 = arith.remsi %64, %c4 : index
                                %67 = arith.cmpi slt, %66, %c0 : index
                                %68 = arith.addi %66, %c4 : index
                                %69 = arith.select %67, %68, %66 : index
                                %70 = memref.load %62[%arg3, %arg5, %13, %12] : memref<2x2x2x1x!verif.semaphore>
                                verif.semaphore.wait %70, %c1
                                %71 = memref.load %61[%arg3, %arg5, %13, %12] : memref<2x2x2x1xi32>
                                memref.store %71, %alloc_41[%65, %69] : memref<4x4xi32, 2>
                                verif.semaphore.set %70, %c0
                              }
                            }
                            async.yield
                          }
                          %60 = builtin.unrealized_conversion_cast %token_58 : !async.token to !async.token
                          scf.yield %60 : !async.token
                        }
                        %56 = builtin.unrealized_conversion_cast %55 : !async.token to !async.token
                        %token_56 = async.execute [%token_55, %56, %47] {
                          scf.for %arg15 = %c0 to %c4 step %c1 {
                            scf.for %arg16 = %c0 to %c4 step %c1 {
                              scf.for %arg17 = %c0 to %c4 step %c1 {
                                %59 = memref.load %alloc_43[%arg15, %arg17] : memref<4x4xi32, 2>
                                %60 = memref.load %alloc_41[%arg17, %arg16] : memref<4x4xi32, 2>
                                %61 = memref.load %alloc_38[%arg15, %arg16] : memref<4x4xi32, 2>
                                %62 = arith.muli %59, %60 : i32
                                %63 = arith.addi %61, %62 : i32
                                memref.store %63, %alloc_38[%arg15, %arg16] : memref<4x4xi32, 2>
                              }
                            }
                          }
                          async.yield
                        }
                        %57 = builtin.unrealized_conversion_cast %token_56 : !async.token to !async.token
                        %token_57 = async.execute [%47, %56] {
                          async.yield
                        }
                        %58 = builtin.unrealized_conversion_cast %token_57 : !async.token to !async.token
                        scf.yield %38, %57, %58 : !async.token, !async.token, !async.token
                      }
                      %17 = builtin.unrealized_conversion_cast %16#1 : !async.token to !async.token
                      %token_49 = async.execute [%17] {
                        memref.dealloc %alloc_45 : memref<4x4xi32, 2>
                        async.yield
                      }
                      %token_50 = async.execute [%17] {
                        memref.dealloc %alloc_47 : memref<4x4xi32, 2>
                        async.yield
                      }
                      %token_51 = async.execute [%17] {
                        memref.dealloc %alloc_43 : memref<4x4xi32, 2>
                        async.yield
                      }
                      %token_52 = async.execute [%17] {
                        memref.dealloc %alloc_41 : memref<4x4xi32, 2>
                        async.yield
                      }
                      %18 = builtin.unrealized_conversion_cast %16#1 : !async.token to !async.token
                      %token_53 = async.execute [%18] {
                        %19 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
                        %20 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
                        scf.for %arg11 = %c0 to %c4 step %c1 {
                          scf.for %arg12 = %c0 to %c4 step %c1 {
                            %21 = arith.muli %arg12, %c4 overflow<nsw> : index
                            %22 = arith.addi %arg11, %21 : index
                            %23 = arith.floordivsi %22, %c4 : index
                            %24 = arith.remsi %22, %c4 : index
                            %25 = arith.cmpi slt, %24, %c0 : index
                            %26 = arith.addi %24, %c4 : index
                            %27 = arith.select %25, %26, %24 : index
                            %28 = memref.load %20[%arg3, %arg5, %13, %12] : memref<2x2x2x2x!verif.semaphore>
                            verif.semaphore.wait %28, %c0
                            %29 = memref.load %alloc_38[%23, %27] : memref<4x4xi32, 2>
                            memref.store %29, %19[%arg3, %arg5, %13, %12] : memref<2x2x2x2xi32>
                            verif.semaphore.set %28, %c1
                          }
                        }
                        async.yield
                      }
                      %token_54 = async.execute [%token_53] {
                        memref.dealloc %alloc_38 : memref<4x4xi32, 2>
                        async.yield
                      }
                      async.yield
                    }
                    %10 = async.add_to_group %token_37, %7 : !async.token
                    %11 = arith.addi %arg10, %c1 : index
                    scf.yield %11 : index
                  }
                  scf.yield %9 : index
                }
                async.await_all %7
                async.yield
              }
              %token_32 = async.execute {
                memref.dealloc %alloc_17 : memref<8x16xi32, 1>
                async.yield
              }
              %token_33 = async.execute {
                memref.dealloc %alloc_19 : memref<16x8xi32, 1>
                async.yield
              }
              %token_34 = async.execute {
                %7 = memref.get_global @channel_7_buffer : memref<2x2x1x1xi32>
                %8 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
                scf.for %arg7 = %c0 to %c8 step %c1 {
                  scf.for %arg8 = %c0 to %c8 step %c1 {
                    %9 = arith.muli %arg8, %c8 overflow<nsw> : index
                    %10 = arith.addi %arg7, %9 : index
                    %11 = arith.floordivsi %10, %c8 : index
                    %12 = arith.remsi %10, %c8 : index
                    %13 = arith.cmpi slt, %12, %c0 : index
                    %14 = arith.addi %12, %c8 : index
                    %15 = arith.select %13, %14, %12 : index
                    %16 = memref.load %8[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1x!verif.semaphore>
                    verif.semaphore.wait %16, %c0
                    %17 = memref.load %alloc_15[%11, %15] : memref<8x8xi32, 1>
                    memref.store %17, %7[%arg3, %arg5, %c0, %c0] : memref<2x2x1x1xi32>
                    verif.semaphore.set %16, %c1
                  }
                }
                async.yield
              }
              %token_35 = async.execute [%token_34] {
                memref.dealloc %alloc_15 : memref<8x8xi32, 1>
                async.yield
              }
              %token_36 = async.execute [%token_23, %token_24, %token_25, %token_26, %token_27, %token_28, %token_29, %token_30, %token_31, %token_32, %token_33, %token_35] {
                async.yield
              }
              %5 = async.create_group %c0 : !async.group
              %6 = async.add_to_group %token_36, %5 : !async.token
              async.await_all %5
              async.yield
            }
            async.yield
          }
          %3 = async.add_to_group %token_2, %0 : !async.token
          %4 = arith.addi %arg6, %c1 : index
          scf.yield %4 : index
        }
        scf.yield %2 : index
      }
      async.await_all %0
      async.yield
    }
    %token_1 = async.execute [%token_0] {
      memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
      async.yield
    }
    return
  }
}

