#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 39; 
  double arith_const_5 = 9.000000; 
  int arith_const_6 = 0; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_8; for_iter_10 < arith_const_4; for_iter_10 += arith_const_8) {
      for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_4; for_iter_11 += arith_const_8) {
        int arith_addi_12 = (for_iter_10 + arith_const_3); 
        int arith_addi_13 = (for_iter_11 + arith_const_3); 
        double memref_load_14 = func_arg_2[arith_addi_12][arith_addi_13]; 
        int arith_addi_15 = (for_iter_10 + arith_const_3); 
        double memref_load_16 = func_arg_2[arith_addi_15][for_iter_11]; 
        double arith_addf_17 = (memref_load_14 + memref_load_16); 
        int arith_addi_18 = (for_iter_10 + arith_const_3); 
        int arith_addi_19 = (for_iter_11 + arith_const_8); 
        double memref_load_20 = func_arg_2[arith_addi_18][arith_addi_19]; 
        double arith_addf_21 = (arith_addf_17 + memref_load_20); 
        int arith_addi_22 = (for_iter_11 + arith_const_3); 
        double memref_load_23 = func_arg_2[for_iter_10][arith_addi_22]; 
        double arith_addf_24 = (arith_addf_21 + memref_load_23); 
        double memref_load_25 = func_arg_2[for_iter_10][for_iter_11]; 
        double arith_addf_26 = (arith_addf_24 + memref_load_25); 
        int arith_addi_27 = (for_iter_11 + arith_const_8); 
        double memref_load_28 = func_arg_2[for_iter_10][arith_addi_27]; 
        double arith_addf_29 = (arith_addf_26 + memref_load_28); 
        int arith_addi_30 = (for_iter_10 + arith_const_8); 
        int arith_addi_31 = (for_iter_11 + arith_const_3); 
        double memref_load_32 = func_arg_2[arith_addi_30][arith_addi_31]; 
        double arith_addf_33 = (arith_addf_29 + memref_load_32); 
        int arith_addi_34 = (for_iter_10 + arith_const_8); 
        double memref_load_35 = func_arg_2[arith_addi_34][for_iter_11]; 
        double arith_addf_36 = (arith_addf_33 + memref_load_35); 
        int arith_addi_37 = (for_iter_10 + arith_const_8); 
        int arith_addi_38 = (for_iter_11 + arith_const_8); 
        double memref_load_39 = func_arg_2[arith_addi_37][arith_addi_38]; 
        double arith_addf_40 = (arith_addf_36 + memref_load_39); 
        double arith_divf_41 = (arith_addf_40 / arith_const_5); 
        func_arg_2[for_iter_10][for_iter_11] = arith_divf_41; 
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
