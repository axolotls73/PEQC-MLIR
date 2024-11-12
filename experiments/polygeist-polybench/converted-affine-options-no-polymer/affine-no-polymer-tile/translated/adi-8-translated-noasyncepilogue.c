#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -1; 
  int arith_const_8 = 18; 
  int arith_const_9 = 32; 
  int arith_const_10 = 19; 
  int arith_const_11 = 2; 
  double arith_const_12 = 10.000000; 
  double arith_const_13 = -19.000000; 
  double arith_const_14 = -10.000000; 
  double arith_const_15 = -20.000000; 
  double arith_const_16 = 41.000000; 
  double arith_const_17 = 20.000000; 
  double arith_const_18 = 0.000000; 
  double arith_const_19 = 1.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 1; 
  func_arg_3[arith_const_20][arith_const_21] = arith_const_19; 
  func_arg_4[arith_const_21][arith_const_20] = arith_const_18; 
  double memref_load_22 = func_arg_3[arith_const_20][arith_const_21]; 
  func_arg_5[arith_const_21][arith_const_20] = memref_load_22; 
  double memref_load_23 = func_arg_4[arith_const_21][arith_const_20]; 
  double arith_mulf_24 = (memref_load_23 * arith_const_15); 
  double arith_addf_25 = (arith_mulf_24 + arith_const_16); 
  double arith_divf_26 = (arith_const_17 / arith_addf_25); 
  func_arg_4[arith_const_21][arith_const_21] = arith_divf_26; 
  double memref_load_27 = func_arg_2[arith_const_21][arith_const_20]; 
  double arith_mulf_28 = (memref_load_27 * arith_const_12); 
  double memref_load_29 = func_arg_2[arith_const_21][arith_const_21]; 
  double arith_mulf_30 = (memref_load_29 * arith_const_13); 
  double arith_addf_31 = (arith_mulf_28 + arith_mulf_30); 
  double memref_load_32 = func_arg_2[arith_const_21][arith_const_11]; 
  double arith_mulf_33 = (memref_load_32 * arith_const_14); 
  double arith_subf_34 = (arith_addf_31 - arith_mulf_33); 
  double memref_load_35 = func_arg_5[arith_const_21][arith_const_20]; 
  double arith_mulf_36 = (memref_load_35 * arith_const_15); 
  double arith_subf_37 = (arith_subf_34 - arith_mulf_36); 
  double arith_divf_38 = (arith_subf_37 / arith_addf_25); 
  func_arg_5[arith_const_21][arith_const_21] = arith_divf_38; 
  func_arg_3[arith_const_10][arith_const_21] = arith_const_19; 
  for (int for_iter_39 = arith_const_21; for_iter_39 < arith_const_10; for_iter_39 += arith_const_9) {
    int arith_addi_40 = (for_iter_39 + arith_const_8); 
    for (int for_iter_41 = for_iter_39; for_iter_41 < arith_addi_40; for_iter_41 += arith_const_21) {
      int arith_muli_42 = (for_iter_41 * arith_const_7); 
      int arith_addi_43 = (arith_muli_42 + arith_const_10); 
      double memref_load_44 = func_arg_4[arith_const_21][arith_addi_43]; 
      int arith_muli_45 = (for_iter_41 * arith_const_7); 
      int arith_addi_46 = (arith_muli_45 + arith_const_6); 
      double memref_load_47 = func_arg_3[arith_addi_46][arith_const_21]; 
      double arith_mulf_48 = (memref_load_44 * memref_load_47); 
      int arith_muli_49 = (for_iter_41 * arith_const_7); 
      int arith_addi_50 = (arith_muli_49 + arith_const_10); 
      double memref_load_51 = func_arg_5[arith_const_21][arith_addi_50]; 
      double arith_addf_52 = (arith_mulf_48 + memref_load_51); 
      int arith_muli_53 = (for_iter_41 * arith_const_7); 
      int arith_addi_54 = (arith_muli_53 + arith_const_10); 
      func_arg_3[arith_addi_54][arith_const_21] = arith_addf_52; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* u;
  double* v;
  double* p;
  double* q;


  kernel_adi(tsteps, n, u, v, p, q);

}

#pragma pocc-region-end
