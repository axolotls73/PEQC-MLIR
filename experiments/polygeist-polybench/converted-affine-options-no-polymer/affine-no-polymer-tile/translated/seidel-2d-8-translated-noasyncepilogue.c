#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 39; 
  int arith_const_5 = 1; 
  double arith_const_6 = 9.000000; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 32; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_5; for_iter_11 < arith_const_4; for_iter_11 += arith_const_9) {
      for (int for_iter_12 = arith_const_5; for_iter_12 < arith_const_4; for_iter_12 += arith_const_9) {
        int arith_addi_13 = (for_iter_10 + arith_const_8); 
        for (int for_iter_14 = for_iter_10; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_5) {
          int arith_addi_15 = (for_iter_11 + arith_const_9); 
          int arith_minsi_16 = min(arith_addi_15, arith_const_4); 
          for (int for_iter_17 = for_iter_11; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_5) {
            int arith_addi_18 = (for_iter_12 + arith_const_9); 
            int arith_minsi_19 = min(arith_addi_18, arith_const_4); 
            for (int for_iter_20 = for_iter_12; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_5) {
              int arith_addi_21 = (for_iter_17 + arith_const_3); 
              int arith_addi_22 = (for_iter_20 + arith_const_3); 
              double memref_load_23 = func_arg_2[arith_addi_21][arith_addi_22]; 
              int arith_addi_24 = (for_iter_17 + arith_const_3); 
              double memref_load_25 = func_arg_2[arith_addi_24][for_iter_20]; 
              double arith_addf_26 = (memref_load_23 + memref_load_25); 
              int arith_addi_27 = (for_iter_17 + arith_const_3); 
              int arith_addi_28 = (for_iter_20 + arith_const_5); 
              double memref_load_29 = func_arg_2[arith_addi_27][arith_addi_28]; 
              double arith_addf_30 = (arith_addf_26 + memref_load_29); 
              int arith_addi_31 = (for_iter_20 + arith_const_3); 
              double memref_load_32 = func_arg_2[for_iter_17][arith_addi_31]; 
              double arith_addf_33 = (arith_addf_30 + memref_load_32); 
              double memref_load_34 = func_arg_2[for_iter_17][for_iter_20]; 
              double arith_addf_35 = (arith_addf_33 + memref_load_34); 
              int arith_addi_36 = (for_iter_20 + arith_const_5); 
              double memref_load_37 = func_arg_2[for_iter_17][arith_addi_36]; 
              double arith_addf_38 = (arith_addf_35 + memref_load_37); 
              int arith_addi_39 = (for_iter_17 + arith_const_5); 
              int arith_addi_40 = (for_iter_20 + arith_const_3); 
              double memref_load_41 = func_arg_2[arith_addi_39][arith_addi_40]; 
              double arith_addf_42 = (arith_addf_38 + memref_load_41); 
              int arith_addi_43 = (for_iter_17 + arith_const_5); 
              double memref_load_44 = func_arg_2[arith_addi_43][for_iter_20]; 
              double arith_addf_45 = (arith_addf_42 + memref_load_44); 
              int arith_addi_46 = (for_iter_17 + arith_const_5); 
              int arith_addi_47 = (for_iter_20 + arith_const_5); 
              double memref_load_48 = func_arg_2[arith_addi_46][arith_addi_47]; 
              double arith_addf_49 = (arith_addf_45 + memref_load_48); 
              double arith_divf_50 = (arith_addf_49 / arith_const_6); 
              func_arg_2[for_iter_17][for_iter_20] = arith_divf_50; 
            }
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
