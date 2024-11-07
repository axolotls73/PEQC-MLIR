#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 38; 
  double arith_const_5 = 9.000000; 
  int arith_const_6 = 0; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_4; for_iter_10 += arith_const_8) {
      int arith_addi_11 = (for_iter_10 + arith_const_8); 
      for (int for_iter_12 = arith_const_6; for_iter_12 < arith_const_4; for_iter_12 += arith_const_8) {
        int arith_addi_13 = (for_iter_12 + arith_const_8); 
        int arith_addi_14 = (arith_addi_11 + arith_const_3); 
        int arith_addi_15 = (arith_addi_13 + arith_const_3); 
        double memref_load_16 = func_arg_2[arith_addi_14][arith_addi_15]; 
        int arith_addi_17 = (arith_addi_11 + arith_const_3); 
        double memref_load_18 = func_arg_2[arith_addi_17][arith_addi_13]; 
        double arith_addf_19 = (memref_load_16 + memref_load_18); 
        int arith_addi_20 = (arith_addi_11 + arith_const_3); 
        int arith_addi_21 = (arith_addi_13 + arith_const_8); 
        double memref_load_22 = func_arg_2[arith_addi_20][arith_addi_21]; 
        double arith_addf_23 = (arith_addf_19 + memref_load_22); 
        int arith_addi_24 = (arith_addi_13 + arith_const_3); 
        double memref_load_25 = func_arg_2[arith_addi_11][arith_addi_24]; 
        double arith_addf_26 = (arith_addf_23 + memref_load_25); 
        double memref_load_27 = func_arg_2[arith_addi_11][arith_addi_13]; 
        double arith_addf_28 = (arith_addf_26 + memref_load_27); 
        int arith_addi_29 = (arith_addi_13 + arith_const_8); 
        double memref_load_30 = func_arg_2[arith_addi_11][arith_addi_29]; 
        double arith_addf_31 = (arith_addf_28 + memref_load_30); 
        int arith_addi_32 = (arith_addi_11 + arith_const_8); 
        int arith_addi_33 = (arith_addi_13 + arith_const_3); 
        double memref_load_34 = func_arg_2[arith_addi_32][arith_addi_33]; 
        double arith_addf_35 = (arith_addf_31 + memref_load_34); 
        int arith_addi_36 = (arith_addi_11 + arith_const_8); 
        double memref_load_37 = func_arg_2[arith_addi_36][arith_addi_13]; 
        double arith_addf_38 = (arith_addf_35 + memref_load_37); 
        int arith_addi_39 = (arith_addi_11 + arith_const_8); 
        int arith_addi_40 = (arith_addi_13 + arith_const_8); 
        double memref_load_41 = func_arg_2[arith_addi_39][arith_addi_40]; 
        double arith_addf_42 = (arith_addf_38 + memref_load_41); 
        double arith_divf_43 = (arith_addf_42 / arith_const_5); 
        func_arg_2[arith_addi_11][arith_addi_13] = arith_divf_43; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
