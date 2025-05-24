#map = affine_map<(d0, d1)[s0, s1, s2, s3] -> ((d0 + s0) * s1 + (d1 + s2) * s3)>
#map1 = affine_map<(d0, d1, d2)[s0, s1, s2, s3, s4, s5] -> ((d0 + s0) * s1 + (d1 + s2) * s3 + (d2 + s4) * s5)>
module {
  memref.global "private" @A : memref<16x16xi32>
  memref.global "private" @B : memref<16x16xi32>
  memref.global "private" @C : memref<16x16xi32>
  func.func @main() {
    %8 = memref.get_global @A : memref<16x16xi32>
    %9 = memref.get_global @B : memref<16x16xi32>
    %10 = memref.get_global @C : memref<16x16xi32>
    call @forward(%8, %9, %10) : (memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32>) -> ()
    return
  }
  memref.global "private" @channel_0_buffer : memref<2x2x1x2xi32>
  memref.global "private" @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %0 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
  %c2 = arith.constant 2 : index
  scf.for %arg0 = %c0 to %c2 step %c1 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0 to %c2_21 step %c1 {
      %c1_22 = arith.constant 1 : index
      scf.for %arg2 = %c0 to %c1_22 step %c1 {
        %c2_23 = arith.constant 2 : index
        scf.for %arg3 = %c0 to %c2_23 step %c1 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %0[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x2x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_1_buffer : memref<2x2x1x2xi32>
  memref.global "private" @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
  %c0_0 = arith.constant 0 : index
  %c1_1 = arith.constant 1 : index
  %1 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
  %c2_2 = arith.constant 2 : index
  scf.for %arg0 = %c0_0 to %c2_2 step %c1_1 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_0 to %c2_21 step %c1_1 {
      %c1_22 = arith.constant 1 : index
      scf.for %arg2 = %c0_0 to %c1_22 step %c1_1 {
        %c2_23 = arith.constant 2 : index
        scf.for %arg3 = %c0_0 to %c2_23 step %c1_1 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %1[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x2x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_2_buffer : memref<2x2x2x1xi32>
  memref.global "private" @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
  %c0_3 = arith.constant 0 : index
  %c1_4 = arith.constant 1 : index
  %2 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
  %c2_5 = arith.constant 2 : index
  scf.for %arg0 = %c0_3 to %c2_5 step %c1_4 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_3 to %c2_21 step %c1_4 {
      %c2_22 = arith.constant 2 : index
      scf.for %arg2 = %c0_3 to %c2_22 step %c1_4 {
        %c1_23 = arith.constant 1 : index
        scf.for %arg3 = %c0_3 to %c1_23 step %c1_4 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %2[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x1x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_3_buffer : memref<2x2x2x1xi32>
  memref.global "private" @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
  %c0_6 = arith.constant 0 : index
  %c1_7 = arith.constant 1 : index
  %3 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
  %c2_8 = arith.constant 2 : index
  scf.for %arg0 = %c0_6 to %c2_8 step %c1_7 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_6 to %c2_21 step %c1_7 {
      %c2_22 = arith.constant 2 : index
      scf.for %arg2 = %c0_6 to %c2_22 step %c1_7 {
        %c1_23 = arith.constant 1 : index
        scf.for %arg3 = %c0_6 to %c1_23 step %c1_7 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %3[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x1x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_4_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
  %c0_9 = arith.constant 0 : index
  %c1_10 = arith.constant 1 : index
  %4 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
  %c2_11 = arith.constant 2 : index
  scf.for %arg0 = %c0_9 to %c2_11 step %c1_10 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_9 to %c2_21 step %c1_10 {
      %c1_22 = arith.constant 1 : index
      scf.for %arg2 = %c0_9 to %c1_22 step %c1_10 {
        %c1_23 = arith.constant 1 : index
        scf.for %arg3 = %c0_9 to %c1_23 step %c1_10 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %4[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_5_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
  %c0_12 = arith.constant 0 : index
  %c1_13 = arith.constant 1 : index
  %5 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
  %c2_14 = arith.constant 2 : index
  scf.for %arg0 = %c0_12 to %c2_14 step %c1_13 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_12 to %c2_21 step %c1_13 {
      %c1_22 = arith.constant 1 : index
      scf.for %arg2 = %c0_12 to %c1_22 step %c1_13 {
        %c1_23 = arith.constant 1 : index
        scf.for %arg3 = %c0_12 to %c1_23 step %c1_13 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %5[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_6_buffer : memref<2x2x2x2xi32>
  memref.global "private" @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
  %c0_15 = arith.constant 0 : index
  %c1_16 = arith.constant 1 : index
  %6 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
  %c2_17 = arith.constant 2 : index
  scf.for %arg0 = %c0_15 to %c2_17 step %c1_16 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_15 to %c2_21 step %c1_16 {
      %c2_22 = arith.constant 2 : index
      scf.for %arg2 = %c0_15 to %c2_22 step %c1_16 {
        %c2_23 = arith.constant 2 : index
        scf.for %arg3 = %c0_15 to %c2_23 step %c1_16 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %6[%arg0, %arg1, %arg2, %arg3] : memref<2x2x2x2x!verif.semaphore>
        }
      }
    }
  }
  memref.global "private" @channel_7_buffer : memref<2x2x1x1xi32>
  memref.global "private" @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
  %c0_18 = arith.constant 0 : index
  %c1_19 = arith.constant 1 : index
  %7 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
  %c2_20 = arith.constant 2 : index
  scf.for %arg0 = %c0_18 to %c2_20 step %c1_19 {
    %c2_21 = arith.constant 2 : index
    scf.for %arg1 = %c0_18 to %c2_21 step %c1_19 {
      %c1_22 = arith.constant 1 : index
      scf.for %arg2 = %c0_18 to %c1_22 step %c1_19 {
        %c1_23 = arith.constant 1 : index
        scf.for %arg3 = %c0_18 to %c1_23 step %c1_19 {
          %8 = verif.semaphore(0 : index)
          memref.store %8, %7[%arg0, %arg1, %arg2, %arg3] : memref<2x2x1x1x!verif.semaphore>
        }
      }
    }
  }
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c2_21 = arith.constant 2 : index
    %async_token, %results = air.execute -> (memref<16x16xi32>) {
      %alloc = memref.alloc() : memref<16x16xi32>
      air.execute_terminator %alloc : memref<16x16xi32>
    }
    %8 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c2_21, %arg6=%c2_21) args(%arg7=%arg0, %arg8=%arg1, %arg9=%results) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> attributes {id = 1 : i32} {
      %c1_23 = arith.constant 1 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %c0_24 = arith.constant 0 : index
      %async_token_25, %results_26 = air.execute -> (index) {
        %c8_35 = arith.constant 8 : index
        %17 = arith.muli %arg3, %c8_35 overflow<nsw> : index
        air.execute_terminator %17 : index
      }
      %9 = builtin.unrealized_conversion_cast %async_token_25 : !air.async.token to !async.token
      %token = async.execute [%9] {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %17 = memref.get_global @channel_4_buffer : memref<2x2x1x1xi32>
        %18 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
        scf.for %arg10 = %c0_35 to %c8 step %c1_36 {
          scf.for %arg11 = %c0_35 to %c16 step %c1_36 {
            %19 = affine.apply #map(%arg10, %arg11)[%results_26, %c16, %c0_24, %c1_23]
            %20:2 = affine.delinearize_index %19 into (16, 16) : index, index
            %21 = memref.load %18[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1x!verif.semaphore>
            %c0_37 = arith.constant 0 : index
            verif.semaphore.wait %21, %c0_37
            %22 = memref.load %arg7[%20#0, %20#1] : memref<16x16xi32>
            memref.store %22, %17[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1xi32>
            %c1_38 = arith.constant 1 : index
            verif.semaphore.set %21, %c1_38
          }
        }
        async.yield
      }
      %10 = builtin.unrealized_conversion_cast %token : !async.token to !air.async.token
      %async_token_27, %results_28 = air.execute -> (index) {
        %c8_35 = arith.constant 8 : index
        %17 = arith.muli %arg4, %c8_35 overflow<nsw> : index
        air.execute_terminator %17 : index
      }
      %11 = builtin.unrealized_conversion_cast %async_token_27 : !air.async.token to !async.token
      %token_29 = async.execute [%11] {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %17 = memref.get_global @channel_5_buffer : memref<2x2x1x1xi32>
        %18 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
        scf.for %arg10 = %c0_35 to %c16 step %c1_36 {
          scf.for %arg11 = %c0_35 to %c8 step %c1_36 {
            %19 = affine.apply #map(%arg10, %arg11)[%c0_24, %c16, %results_28, %c1_23]
            %20:2 = affine.delinearize_index %19 into (16, 16) : index, index
            %21 = memref.load %18[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1x!verif.semaphore>
            %c0_37 = arith.constant 0 : index
            verif.semaphore.wait %21, %c0_37
            %22 = memref.load %arg8[%20#0, %20#1] : memref<16x16xi32>
            memref.store %22, %17[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1xi32>
            %c1_38 = arith.constant 1 : index
            verif.semaphore.set %21, %c1_38
          }
        }
        async.yield
      }
      %12 = builtin.unrealized_conversion_cast %token_29 : !async.token to !air.async.token
      %async_token_30, %results_31 = air.execute -> (index) {
        %c8_35 = arith.constant 8 : index
        %17 = arith.muli %arg4, %c8_35 overflow<nsw> : index
        air.execute_terminator %17 : index
      }
      %async_token_32, %results_33 = air.execute -> (index) {
        %c8_35 = arith.constant 8 : index
        %17 = arith.muli %arg3, %c8_35 overflow<nsw> : index
        air.execute_terminator %17 : index
      }
      %13 = builtin.unrealized_conversion_cast %async_token_30 : !air.async.token to !async.token
      %14 = builtin.unrealized_conversion_cast %async_token_32 : !air.async.token to !async.token
      %token_34 = async.execute [%13, %14] {
        %c0_35 = arith.constant 0 : index
        %c1_36 = arith.constant 1 : index
        %17 = memref.get_global @channel_7_buffer : memref<2x2x1x1xi32>
        %18 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
        scf.for %arg10 = %c0_35 to %c8 step %c1_36 {
          scf.for %arg11 = %c0_35 to %c8 step %c1_36 {
            %19 = affine.apply #map(%arg10, %arg11)[%results_33, %c16, %results_31, %c1_23]
            %20:2 = affine.delinearize_index %19 into (16, 16) : index, index
            %21 = memref.load %18[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1x!verif.semaphore>
            %c1_37 = arith.constant 1 : index
            verif.semaphore.wait %21, %c1_37
            %22 = memref.load %17[%arg3, %arg4, %c0_35, %c0_35] : memref<2x2x1x1xi32>
            memref.store %22, %arg9[%20#0, %20#1] : memref<16x16xi32>
            %c0_38 = arith.constant 0 : index
            verif.semaphore.set %21, %c0_38
          }
        }
        async.yield
      }
      %15 = builtin.unrealized_conversion_cast %token_34 : !async.token to !air.async.token
      %16 = air.segment @forward_0 async  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg3, %arg13=%arg4, %arg14=%arg3, %arg15=%arg4, %arg16=%arg3, %arg17=%arg4, %arg18=%arg3, %arg19=%arg4, %arg20=%arg3, %arg21=%arg4, %arg22=%arg3, %arg23=%arg4, %arg24=%arg3, %arg25=%arg4, %arg26=%arg3, %arg27=%arg4, %arg28=%arg3, %arg29=%arg4, %arg30=%arg3, %arg31=%arg4, %arg32=%arg3, %arg33=%arg4, %arg34=%arg3, %arg35=%arg4, %arg36=%arg3, %arg37=%arg4, %arg38=%arg3, %arg39=%arg4, %arg40=%arg3, %arg41=%arg4, %arg42=%arg3, %arg43=%arg4, %arg44=%arg3, %arg45=%arg4, %arg46=%arg3, %arg47=%arg4, %arg48=%arg3, %arg49=%arg4) : index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index attributes {id = 2 : i32, x_loc = 1 : i64, x_size = 4 : i64, y_loc = 2 : i64, y_size = 6 : i64} {
        %c4 = arith.constant 4 : index
        %c1_35 = arith.constant 1 : index
        %c16_36 = arith.constant 16 : index
        %c8_37 = arith.constant 8 : index
        %c0_38 = arith.constant 0 : index
        %async_token_39, %results_40 = air.execute -> (memref<8x8xi32, 1>) {
          %alloc = memref.alloc() : memref<8x8xi32, 1>
          air.execute_terminator %alloc : memref<8x8xi32, 1>
        }
        %async_token_41, %results_42 = air.execute -> (memref<8x16xi32, 1>) {
          %alloc = memref.alloc() : memref<8x16xi32, 1>
          air.execute_terminator %alloc : memref<8x16xi32, 1>
        }
        %async_token_43, %results_44 = air.execute -> (memref<16x8xi32, 1>) {
          %alloc = memref.alloc() : memref<16x8xi32, 1>
          air.execute_terminator %alloc : memref<16x8xi32, 1>
        }
        %17 = builtin.unrealized_conversion_cast %async_token_41 : !air.async.token to !async.token
        %token_45 = async.execute [%17] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %c8_61 = arith.constant 8 : index
          %c16_62 = arith.constant 16 : index
          %c1_63 = arith.constant 1 : index
          %c16_64 = arith.constant 16 : index
          %39 = memref.get_global @channel_4_buffer : memref<2x2x1x1xi32>
          %40 = memref.get_global @channel_4_sem : memref<2x2x1x1x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c8_61 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c16_62 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_59, %c1_63, %c0_59, %c16_64]
              %42:2 = affine.delinearize_index %41 into (8, 16) : index, index
              %43 = memref.load %40[%arg34, %arg35, %c0_59, %c0_59] : memref<2x2x1x1x!verif.semaphore>
              %c1_65 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_65
              %44 = memref.load %39[%arg34, %arg35, %c0_59, %c0_59] : memref<2x2x1x1xi32>
              memref.store %44, %results_42[%42#0, %42#1] : memref<8x16xi32, 1>
              %c0_66 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_66
            }
          }
          async.yield
        }
        %18 = builtin.unrealized_conversion_cast %token_45 : !async.token to !air.async.token
        %19 = builtin.unrealized_conversion_cast %async_token_43 : !air.async.token to !async.token
        %token_46 = async.execute [%19] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %c16_61 = arith.constant 16 : index
          %c8_62 = arith.constant 8 : index
          %c1_63 = arith.constant 1 : index
          %c8_64 = arith.constant 8 : index
          %39 = memref.get_global @channel_5_buffer : memref<2x2x1x1xi32>
          %40 = memref.get_global @channel_5_sem : memref<2x2x1x1x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c16_61 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c8_62 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_59, %c1_63, %c0_59, %c8_64]
              %42:2 = affine.delinearize_index %41 into (16, 8) : index, index
              %43 = memref.load %40[%arg36, %arg37, %c0_59, %c0_59] : memref<2x2x1x1x!verif.semaphore>
              %c1_65 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_65
              %44 = memref.load %39[%arg36, %arg37, %c0_59, %c0_59] : memref<2x2x1x1xi32>
              memref.store %44, %results_44[%42#0, %42#1] : memref<16x8xi32, 1>
              %c0_66 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_66
            }
          }
          async.yield
        }
        %20 = builtin.unrealized_conversion_cast %token_46 : !async.token to !air.async.token
        %21 = builtin.unrealized_conversion_cast %18 : !air.async.token to !async.token
        %token_47 = async.execute [%21] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
          %40 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              scf.for %arg52 = %c0_59 to %c4 step %c1_60 {
                %41 = affine.apply #map1(%arg50, %arg51, %arg52)[%c0_38, %c4, %c0_38, %c16_36, %c0_38, %c1_35]
                %42:2 = affine.delinearize_index %41 into (8, 16) : index, index
                %c2_61 = arith.constant 2 : index
                scf.parallel (%arg53) = (%c0_59) to (%c2_61) step (%c1_60) {
                  %43 = memref.load %40[%arg10, %arg11, %c0_59, %arg53] : memref<2x2x1x2x!verif.semaphore>
                  %c0_62 = arith.constant 0 : index
                  verif.semaphore.wait %43, %c0_62
                  %44 = memref.load %results_42[%42#0, %42#1] : memref<8x16xi32, 1>
                  memref.store %44, %39[%arg10, %arg11, %c0_59, %arg53] : memref<2x2x1x2xi32>
                  %c1_63 = arith.constant 1 : index
                  verif.semaphore.set %43, %c1_63
                  scf.reduce 
                }
              }
            }
          }
          async.yield
        }
        %22 = builtin.unrealized_conversion_cast %token_47 : !async.token to !air.async.token
        %23 = builtin.unrealized_conversion_cast %18 : !air.async.token to !async.token
        %token_48 = async.execute [%23] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
          %40 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              scf.for %arg52 = %c0_59 to %c4 step %c1_60 {
                %41 = affine.apply #map1(%arg50, %arg51, %arg52)[%c0_38, %c4, %c4, %c16_36, %c0_38, %c1_35]
                %42:2 = affine.delinearize_index %41 into (8, 16) : index, index
                %c2_61 = arith.constant 2 : index
                scf.parallel (%arg53) = (%c0_59) to (%c2_61) step (%c1_60) {
                  %43 = memref.load %40[%arg16, %arg17, %c0_59, %arg53] : memref<2x2x1x2x!verif.semaphore>
                  %c0_62 = arith.constant 0 : index
                  verif.semaphore.wait %43, %c0_62
                  %44 = memref.load %results_42[%42#0, %42#1] : memref<8x16xi32, 1>
                  memref.store %44, %39[%arg16, %arg17, %c0_59, %arg53] : memref<2x2x1x2xi32>
                  %c1_63 = arith.constant 1 : index
                  verif.semaphore.set %43, %c1_63
                  scf.reduce 
                }
              }
            }
          }
          async.yield
        }
        %24 = builtin.unrealized_conversion_cast %token_48 : !async.token to !air.async.token
        %25 = builtin.unrealized_conversion_cast %20 : !air.async.token to !async.token
        %token_49 = async.execute [%25] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
          %40 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c16_36 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_38, %c8_37, %c0_38, %c1_35]
              %42:2 = affine.delinearize_index %41 into (16, 8) : index, index
              %c2_61 = arith.constant 2 : index
              scf.parallel (%arg52) = (%c0_59) to (%c2_61) step (%c1_60) {
                %43 = memref.load %40[%arg22, %arg23, %arg52, %c0_59] : memref<2x2x2x1x!verif.semaphore>
                %c0_62 = arith.constant 0 : index
                verif.semaphore.wait %43, %c0_62
                %44 = memref.load %results_44[%42#0, %42#1] : memref<16x8xi32, 1>
                memref.store %44, %39[%arg22, %arg23, %arg52, %c0_59] : memref<2x2x2x1xi32>
                %c1_63 = arith.constant 1 : index
                verif.semaphore.set %43, %c1_63
                scf.reduce 
              }
            }
          }
          async.yield
        }
        %26 = builtin.unrealized_conversion_cast %token_49 : !async.token to !air.async.token
        %27 = builtin.unrealized_conversion_cast %20 : !air.async.token to !async.token
        %token_50 = async.execute [%27] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
          %40 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c16_36 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_38, %c8_37, %c4, %c1_35]
              %42:2 = affine.delinearize_index %41 into (16, 8) : index, index
              %c2_61 = arith.constant 2 : index
              scf.parallel (%arg52) = (%c0_59) to (%c2_61) step (%c1_60) {
                %43 = memref.load %40[%arg28, %arg29, %arg52, %c0_59] : memref<2x2x2x1x!verif.semaphore>
                %c0_62 = arith.constant 0 : index
                verif.semaphore.wait %43, %c0_62
                %44 = memref.load %results_44[%42#0, %42#1] : memref<16x8xi32, 1>
                memref.store %44, %39[%arg28, %arg29, %arg52, %c0_59] : memref<2x2x2x1xi32>
                %c1_63 = arith.constant 1 : index
                verif.semaphore.set %43, %c1_63
                scf.reduce 
              }
            }
          }
          async.yield
        }
        %28 = builtin.unrealized_conversion_cast %token_50 : !async.token to !air.async.token
        %29 = builtin.unrealized_conversion_cast %async_token_39 : !air.async.token to !async.token
        %token_51 = async.execute [%29] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
          %40 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_38, %c8_37, %c0_38, %c1_35]
              %42:2 = affine.delinearize_index %41 into (8, 8) : index, index
              %43 = memref.load %40[%arg38, %arg39, %c0_38, %c0_38] : memref<2x2x2x2x!verif.semaphore>
              %c1_61 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_61
              %44 = memref.load %39[%arg38, %arg39, %c0_38, %c0_38] : memref<2x2x2x2xi32>
              memref.store %44, %results_40[%42#0, %42#1] : memref<8x8xi32, 1>
              %c0_62 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_62
            }
          }
          async.yield
        }
        %30 = builtin.unrealized_conversion_cast %token_51 : !async.token to !air.async.token
        %31 = builtin.unrealized_conversion_cast %async_token_39 : !air.async.token to !async.token
        %token_52 = async.execute [%31] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
          %40 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c4, %c8_37, %c0_38, %c1_35]
              %42:2 = affine.delinearize_index %41 into (8, 8) : index, index
              %43 = memref.load %40[%arg40, %arg41, %c1_35, %c0_38] : memref<2x2x2x2x!verif.semaphore>
              %c1_61 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_61
              %44 = memref.load %39[%arg40, %arg41, %c1_35, %c0_38] : memref<2x2x2x2xi32>
              memref.store %44, %results_40[%42#0, %42#1] : memref<8x8xi32, 1>
              %c0_62 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_62
            }
          }
          async.yield
        }
        %32 = builtin.unrealized_conversion_cast %token_52 : !async.token to !air.async.token
        %33 = builtin.unrealized_conversion_cast %async_token_39 : !air.async.token to !async.token
        %token_53 = async.execute [%33] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
          %40 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_38, %c8_37, %c4, %c1_35]
              %42:2 = affine.delinearize_index %41 into (8, 8) : index, index
              %43 = memref.load %40[%arg42, %arg43, %c0_38, %c1_35] : memref<2x2x2x2x!verif.semaphore>
              %c1_61 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_61
              %44 = memref.load %39[%arg42, %arg43, %c0_38, %c1_35] : memref<2x2x2x2xi32>
              memref.store %44, %results_40[%42#0, %42#1] : memref<8x8xi32, 1>
              %c0_62 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_62
            }
          }
          async.yield
        }
        %34 = builtin.unrealized_conversion_cast %token_53 : !async.token to !air.async.token
        %35 = builtin.unrealized_conversion_cast %async_token_39 : !air.async.token to !async.token
        %token_54 = async.execute [%35] {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %39 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
          %40 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c4 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c4 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c4, %c8_37, %c4, %c1_35]
              %42:2 = affine.delinearize_index %41 into (8, 8) : index, index
              %43 = memref.load %40[%arg44, %arg45, %c1_35, %c1_35] : memref<2x2x2x2x!verif.semaphore>
              %c1_61 = arith.constant 1 : index
              verif.semaphore.wait %43, %c1_61
              %44 = memref.load %39[%arg44, %arg45, %c1_35, %c1_35] : memref<2x2x2x2xi32>
              memref.store %44, %results_40[%42#0, %42#1] : memref<8x8xi32, 1>
              %c0_62 = arith.constant 0 : index
              verif.semaphore.set %43, %c0_62
            }
          }
          async.yield
        }
        %36 = builtin.unrealized_conversion_cast %token_54 : !async.token to !air.async.token
        %37 = air.herd @herd_0 async [%async_token_39, %18, %20]  tile (%arg50, %arg51) in (%arg52=%c1_35, %arg53=%c4) args(%arg54=%arg12, %arg55=%arg13, %arg56=%arg14, %arg57=%arg15, %arg58=%arg18, %arg59=%arg19, %arg60=%arg20, %arg61=%arg21, %arg62=%arg24, %arg63=%arg25, %arg64=%arg26, %arg65=%arg27, %arg66=%arg30, %arg67=%arg31, %arg68=%arg32, %arg69=%arg33, %arg70=%arg46, %arg71=%arg47) : index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index, index attributes {id = 3 : i32, x_loc = 1 : i64, y_loc = 2 : i64} {
          %c16_59 = arith.constant 16 : index
          %c0_60 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c8_61 = arith.constant 8 : index
          %c4_62 = arith.constant 4 : index
          %c1_63 = arith.constant 1 : index
          %c2_64 = arith.constant 2 : index
          %39 = arith.remsi %arg51, %c2_64 : index
          %40 = arith.divsi %arg51, %c2_64 : index
          %async_token_65, %results_66 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_67 = air.execute [%async_token_65] {
            scf.for %arg72 = %c0_60 to %c4_62 step %c1_63 {
              scf.for %arg73 = %c0_60 to %c4_62 step %c1_63 {
                memref.store %c0_i32, %results_66[%arg72, %arg73] : memref<4x4xi32, 2>
              }
            }
          }
          %async_token_68, %results_69 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_70, %results_71 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_72, %results_73 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_74, %results_75 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %41:3 = scf.for %arg72 = %c0_60 to %c16_59 step %c8_61 iter_args(%arg73 = %async_token_72, %arg74 = %async_token_74, %arg75 = %async_token_74) -> (!air.async.token, !air.async.token, !air.async.token) {
            %c0_82 = arith.constant 0 : index
            %44 = arith.cmpi eq, %40, %c0_82 : index
            %45 = arith.cmpi sge, %39, %c0_82 : index
            %46 = arith.andi %44, %45 : i1
            %c-1 = arith.constant -1 : index
            %47 = arith.muli %39, %c-1 overflow<nsw> : index
            %c1_83 = arith.constant 1 : index
            %48 = arith.addi %47, %c1_83 : index
            %49 = arith.cmpi sge, %48, %c0_82 : index
            %50 = arith.andi %46, %49 : i1
            %51 = scf.if %50 -> (!air.async.token) {
              %77 = builtin.unrealized_conversion_cast %arg75 : !air.async.token to !async.token
              %78 = builtin.unrealized_conversion_cast %arg73 : !air.async.token to !async.token
              %79 = builtin.unrealized_conversion_cast %async_token_72 : !air.async.token to !async.token
              %token_95 = async.execute [%77, %78, %79] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %81 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
                %82 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %83 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %84:2 = affine.delinearize_index %83 into (4, 4) : index, index
                    %85 = memref.load %82[%arg56, %arg57, %40, %39] : memref<2x2x1x2x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %85, %c1_102
                    %86 = memref.load %81[%arg56, %arg57, %40, %39] : memref<2x2x1x2xi32>
                    memref.store %86, %results_73[%84#0, %84#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %85, %c0_103
                  }
                }
                async.yield
              }
              %80 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %80 : !air.async.token
            } else {
              %77 = builtin.unrealized_conversion_cast %arg75 : !air.async.token to !async.token
              %78 = builtin.unrealized_conversion_cast %arg73 : !air.async.token to !async.token
              %79 = builtin.unrealized_conversion_cast %async_token_72 : !air.async.token to !async.token
              %token_95 = async.execute [%77, %78, %79] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %81 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
                %82 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %83 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %84:2 = affine.delinearize_index %83 into (4, 4) : index, index
                    %85 = memref.load %82[%arg60, %arg61, %40, %39] : memref<2x2x1x2x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %85, %c1_102
                    %86 = memref.load %81[%arg60, %arg61, %40, %39] : memref<2x2x1x2xi32>
                    memref.store %86, %results_73[%84#0, %84#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %85, %c0_103
                  }
                }
                async.yield
              }
              %80 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %80 : !air.async.token
            }
            %c0_84 = arith.constant 0 : index
            %52 = arith.cmpi sge, %40, %c0_84 : index
            %c-1_85 = arith.constant -1 : index
            %53 = arith.muli %40, %c-1_85 overflow<nsw> : index
            %c1_86 = arith.constant 1 : index
            %54 = arith.addi %53, %c1_86 : index
            %55 = arith.cmpi sge, %54, %c0_84 : index
            %56 = arith.andi %52, %55 : i1
            %57 = arith.cmpi eq, %39, %c0_84 : index
            %58 = arith.andi %56, %57 : i1
            %59 = scf.if %58 -> (!air.async.token) {
              %77 = builtin.unrealized_conversion_cast %arg75 : !air.async.token to !async.token
              %78 = builtin.unrealized_conversion_cast %arg73 : !air.async.token to !async.token
              %79 = builtin.unrealized_conversion_cast %async_token_74 : !air.async.token to !async.token
              %token_95 = async.execute [%77, %78, %79] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %81 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
                %82 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %83 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %84:2 = affine.delinearize_index %83 into (4, 4) : index, index
                    %85 = memref.load %82[%arg64, %arg65, %40, %39] : memref<2x2x2x1x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %85, %c1_102
                    %86 = memref.load %81[%arg64, %arg65, %40, %39] : memref<2x2x2x1xi32>
                    memref.store %86, %results_75[%84#0, %84#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %85, %c0_103
                  }
                }
                async.yield
              }
              %80 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %80 : !air.async.token
            } else {
              %77 = builtin.unrealized_conversion_cast %arg75 : !air.async.token to !async.token
              %78 = builtin.unrealized_conversion_cast %arg73 : !air.async.token to !async.token
              %79 = builtin.unrealized_conversion_cast %async_token_74 : !air.async.token to !async.token
              %token_95 = async.execute [%77, %78, %79] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %81 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
                %82 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %83 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %84:2 = affine.delinearize_index %83 into (4, 4) : index, index
                    %85 = memref.load %82[%arg68, %arg69, %40, %39] : memref<2x2x2x1x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %85, %c1_102
                    %86 = memref.load %81[%arg68, %arg69, %40, %39] : memref<2x2x2x1xi32>
                    memref.store %86, %results_75[%84#0, %84#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %85, %c0_103
                  }
                }
                async.yield
              }
              %80 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %80 : !air.async.token
            }
            %async_token_87 = air.execute [%arg74, %59, %51] {
              scf.for %arg76 = %c0_60 to %c4_62 step %c1_63 {
                scf.for %arg77 = %c0_60 to %c4_62 step %c1_63 {
                  scf.for %arg78 = %c0_60 to %c4_62 step %c1_63 {
                    %77 = memref.load %results_73[%arg76, %arg78] : memref<4x4xi32, 2>
                    %78 = memref.load %results_75[%arg78, %arg77] : memref<4x4xi32, 2>
                    %79 = memref.load %results_66[%arg76, %arg77] : memref<4x4xi32, 2>
                    %80 = arith.muli %77, %78 : i32
                    %81 = arith.addi %79, %80 : i32
                    memref.store %81, %results_66[%arg76, %arg77] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %c0_88 = arith.constant 0 : index
            %60 = arith.cmpi eq, %40, %c0_88 : index
            %61 = arith.cmpi sge, %39, %c0_88 : index
            %62 = arith.andi %60, %61 : i1
            %c-1_89 = arith.constant -1 : index
            %63 = arith.muli %39, %c-1_89 overflow<nsw> : index
            %c1_90 = arith.constant 1 : index
            %64 = arith.addi %63, %c1_90 : index
            %65 = arith.cmpi sge, %64, %c0_88 : index
            %66 = arith.andi %62, %65 : i1
            %67 = scf.if %66 -> (!air.async.token) {
              %77 = builtin.unrealized_conversion_cast %arg74 : !air.async.token to !async.token
              %token_95 = async.execute [%77] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %79 = memref.get_global @channel_0_buffer : memref<2x2x1x2xi32>
                %80 = memref.get_global @channel_0_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %81 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %82:2 = affine.delinearize_index %81 into (4, 4) : index, index
                    %83 = memref.load %80[%arg54, %arg55, %40, %39] : memref<2x2x1x2x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %83, %c1_102
                    %84 = memref.load %79[%arg54, %arg55, %40, %39] : memref<2x2x1x2xi32>
                    memref.store %84, %results_71[%82#0, %82#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %83, %c0_103
                  }
                }
                async.yield
              }
              %78 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %78 : !air.async.token
            } else {
              %77 = builtin.unrealized_conversion_cast %arg74 : !air.async.token to !async.token
              %token_95 = async.execute [%77] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %79 = memref.get_global @channel_1_buffer : memref<2x2x1x2xi32>
                %80 = memref.get_global @channel_1_sem : memref<2x2x1x2x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %81 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %82:2 = affine.delinearize_index %81 into (4, 4) : index, index
                    %83 = memref.load %80[%arg58, %arg59, %40, %39] : memref<2x2x1x2x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %83, %c1_102
                    %84 = memref.load %79[%arg58, %arg59, %40, %39] : memref<2x2x1x2xi32>
                    memref.store %84, %results_71[%82#0, %82#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %83, %c0_103
                  }
                }
                async.yield
              }
              %78 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %78 : !air.async.token
            }
            %c0_91 = arith.constant 0 : index
            %68 = arith.cmpi sge, %40, %c0_91 : index
            %c-1_92 = arith.constant -1 : index
            %69 = arith.muli %40, %c-1_92 overflow<nsw> : index
            %c1_93 = arith.constant 1 : index
            %70 = arith.addi %69, %c1_93 : index
            %71 = arith.cmpi sge, %70, %c0_91 : index
            %72 = arith.andi %68, %71 : i1
            %73 = arith.cmpi eq, %39, %c0_91 : index
            %74 = arith.andi %72, %73 : i1
            %75 = scf.if %74 -> (!air.async.token) {
              %77 = builtin.unrealized_conversion_cast %arg74 : !air.async.token to !async.token
              %token_95 = async.execute [%77] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %79 = memref.get_global @channel_2_buffer : memref<2x2x2x1xi32>
                %80 = memref.get_global @channel_2_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %81 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %82:2 = affine.delinearize_index %81 into (4, 4) : index, index
                    %83 = memref.load %80[%arg62, %arg63, %40, %39] : memref<2x2x2x1x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %83, %c1_102
                    %84 = memref.load %79[%arg62, %arg63, %40, %39] : memref<2x2x2x1xi32>
                    memref.store %84, %results_69[%82#0, %82#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %83, %c0_103
                  }
                }
                async.yield
              }
              %78 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %78 : !air.async.token
            } else {
              %77 = builtin.unrealized_conversion_cast %arg74 : !air.async.token to !async.token
              %token_95 = async.execute [%77] {
                %c0_96 = arith.constant 0 : index
                %c1_97 = arith.constant 1 : index
                %c4_98 = arith.constant 4 : index
                %c4_99 = arith.constant 4 : index
                %c1_100 = arith.constant 1 : index
                %c4_101 = arith.constant 4 : index
                %79 = memref.get_global @channel_3_buffer : memref<2x2x2x1xi32>
                %80 = memref.get_global @channel_3_sem : memref<2x2x2x1x!verif.semaphore>
                scf.for %arg76 = %c0_96 to %c4_98 step %c1_97 {
                  scf.for %arg77 = %c0_96 to %c4_99 step %c1_97 {
                    %81 = affine.apply #map(%arg76, %arg77)[%c0_96, %c1_100, %c0_96, %c4_101]
                    %82:2 = affine.delinearize_index %81 into (4, 4) : index, index
                    %83 = memref.load %80[%arg66, %arg67, %40, %39] : memref<2x2x2x1x!verif.semaphore>
                    %c1_102 = arith.constant 1 : index
                    verif.semaphore.wait %83, %c1_102
                    %84 = memref.load %79[%arg66, %arg67, %40, %39] : memref<2x2x2x1xi32>
                    memref.store %84, %results_69[%82#0, %82#1] : memref<4x4xi32, 2>
                    %c0_103 = arith.constant 0 : index
                    verif.semaphore.set %83, %c0_103
                  }
                }
                async.yield
              }
              %78 = builtin.unrealized_conversion_cast %token_95 : !async.token to !air.async.token
              scf.yield %78 : !air.async.token
            }
            %async_token_94 = air.execute [%async_token_87, %75, %67] {
              scf.for %arg76 = %c0_60 to %c4_62 step %c1_63 {
                scf.for %arg77 = %c0_60 to %c4_62 step %c1_63 {
                  scf.for %arg78 = %c0_60 to %c4_62 step %c1_63 {
                    %77 = memref.load %results_71[%arg76, %arg78] : memref<4x4xi32, 2>
                    %78 = memref.load %results_69[%arg78, %arg77] : memref<4x4xi32, 2>
                    %79 = memref.load %results_66[%arg76, %arg77] : memref<4x4xi32, 2>
                    %80 = arith.muli %77, %78 : i32
                    %81 = arith.addi %79, %80 : i32
                    memref.store %81, %results_66[%arg76, %arg77] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %76 = air.wait_all async [%67, %75] 
            scf.yield %async_token_87, %async_token_94, %76 : !air.async.token, !air.async.token, !air.async.token
          }
          %async_token_76 = air.execute [%41#1] {
            memref.dealloc %results_73 : memref<4x4xi32, 2>
          }
          %async_token_77 = air.execute [%41#1] {
            memref.dealloc %results_75 : memref<4x4xi32, 2>
          }
          %async_token_78 = air.execute [%41#1] {
            memref.dealloc %results_71 : memref<4x4xi32, 2>
          }
          %async_token_79 = air.execute [%41#1] {
            memref.dealloc %results_69 : memref<4x4xi32, 2>
          }
          %42 = builtin.unrealized_conversion_cast %41#1 : !air.async.token to !async.token
          %token_80 = async.execute [%42] {
            %c0_82 = arith.constant 0 : index
            %c1_83 = arith.constant 1 : index
            %c4_84 = arith.constant 4 : index
            %c4_85 = arith.constant 4 : index
            %c1_86 = arith.constant 1 : index
            %c4_87 = arith.constant 4 : index
            %44 = memref.get_global @channel_6_buffer : memref<2x2x2x2xi32>
            %45 = memref.get_global @channel_6_sem : memref<2x2x2x2x!verif.semaphore>
            scf.for %arg72 = %c0_82 to %c4_84 step %c1_83 {
              scf.for %arg73 = %c0_82 to %c4_85 step %c1_83 {
                %46 = affine.apply #map(%arg72, %arg73)[%c0_82, %c1_86, %c0_82, %c4_87]
                %47:2 = affine.delinearize_index %46 into (4, 4) : index, index
                %48 = memref.load %45[%arg70, %arg71, %40, %39] : memref<2x2x2x2x!verif.semaphore>
                %c0_88 = arith.constant 0 : index
                verif.semaphore.wait %48, %c0_88
                %49 = memref.load %results_66[%47#0, %47#1] : memref<4x4xi32, 2>
                memref.store %49, %44[%arg70, %arg71, %40, %39] : memref<2x2x2x2xi32>
                %c1_89 = arith.constant 1 : index
                verif.semaphore.set %48, %c1_89
              }
            }
            async.yield
          }
          %43 = builtin.unrealized_conversion_cast %token_80 : !async.token to !air.async.token
          %async_token_81 = air.execute [%43] {
            memref.dealloc %results_66 : memref<4x4xi32, 2>
          }
        }
        %async_token_55 = air.execute {
          memref.dealloc %results_42 : memref<8x16xi32, 1>
        }
        %async_token_56 = air.execute {
          memref.dealloc %results_44 : memref<16x8xi32, 1>
        }
        %token_57 = async.execute {
          %c0_59 = arith.constant 0 : index
          %c1_60 = arith.constant 1 : index
          %c8_61 = arith.constant 8 : index
          %c8_62 = arith.constant 8 : index
          %c1_63 = arith.constant 1 : index
          %c8_64 = arith.constant 8 : index
          %39 = memref.get_global @channel_7_buffer : memref<2x2x1x1xi32>
          %40 = memref.get_global @channel_7_sem : memref<2x2x1x1x!verif.semaphore>
          scf.for %arg50 = %c0_59 to %c8_61 step %c1_60 {
            scf.for %arg51 = %c0_59 to %c8_62 step %c1_60 {
              %41 = affine.apply #map(%arg50, %arg51)[%c0_59, %c1_63, %c0_59, %c8_64]
              %42:2 = affine.delinearize_index %41 into (8, 8) : index, index
              %43 = memref.load %40[%arg48, %arg49, %c0_59, %c0_59] : memref<2x2x1x1x!verif.semaphore>
              %c0_65 = arith.constant 0 : index
              verif.semaphore.wait %43, %c0_65
              %44 = memref.load %results_40[%42#0, %42#1] : memref<8x8xi32, 1>
              memref.store %44, %39[%arg48, %arg49, %c0_59, %c0_59] : memref<2x2x1x1xi32>
              %c1_66 = arith.constant 1 : index
              verif.semaphore.set %43, %c1_66
            }
          }
          async.yield
        }
        %38 = builtin.unrealized_conversion_cast %token_57 : !async.token to !air.async.token
        %async_token_58 = air.execute [%38] {
          memref.dealloc %results_40 : memref<8x8xi32, 1>
        }
        air.wait_all [%22, %24, %26, %28, %30, %32, %34, %36, %37, %async_token_55, %async_token_56, %async_token_58] 
      }
    }
    %async_token_22 = air.execute [%8] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}

