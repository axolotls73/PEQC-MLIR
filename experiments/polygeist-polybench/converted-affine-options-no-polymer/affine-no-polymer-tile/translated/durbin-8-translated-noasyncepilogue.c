#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 32; 
  int arith_const_5 = 40; 
  int arith_const_6 = 1; 
  int arith_const_7 = 0; 
  double arith_const_8 = 0.000000; 
  double arith_const_9 = 1.000000; 
  double* memref_alloca_10; 
  double _11; 
  memref_alloca_10[0] = _11; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _11; 
  double* memref_alloca_13; 
  memref_alloca_13[0] = _11; 
  double* memref_alloca_14; 
  double memref_load_15 = func_arg_1[arith_const_7]; 
  double arith_negf_16 = -(memref_load_15); 
  func_arg_2[arith_const_7] = arith_negf_16; 
  memref_alloca_12[0] = arith_const_9; 
  double memref_load_17 = func_arg_1[arith_const_7]; 
  double arith_negf_18 = -(memref_load_17); 
  memref_alloca_13[0] = arith_negf_18; 
  for (int for_iter_19 = arith_const_6; for_iter_19 < arith_const_5; for_iter_19 += arith_const_4) {
    int arith_addi_20 = (for_iter_19 + arith_const_4); 
    int arith_minsi_21 = min(arith_addi_20, arith_const_5); 
    for (int for_iter_22 = for_iter_19; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_6) {
      double memref_load_23 = memref_alloca_13[0]; 
      double arith_mulf_24 = (memref_load_23 * memref_load_23); 
      double arith_subf_25 = (arith_const_9 - arith_mulf_24); 
      double memref_load_26 = memref_alloca_12[0]; 
      double arith_mulf_27 = (arith_subf_25 * memref_load_26); 
      memref_alloca_12[0] = arith_mulf_27; 
      memref_alloca_10[0] = arith_const_8; 
      for (int for_iter_28 = arith_const_7; for_iter_28 < for_iter_22; for_iter_28 += arith_const_6) {
        int arith_muli_29 = (for_iter_28 * arith_const_3); 
        int arith_addi_30 = (for_iter_22 + arith_muli_29); 
        int arith_addi_31 = (arith_addi_30 + arith_const_3); 
        double memref_load_32 = func_arg_1[arith_addi_31]; 
        double memref_load_33 = func_arg_2[for_iter_28]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = memref_alloca_10[0]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        memref_alloca_10[0] = arith_addf_36; 
      }
      double memref_load_37 = func_arg_1[for_iter_22]; 
      double memref_load_38 = memref_alloca_10[0]; 
      double arith_addf_39 = (memref_load_37 + memref_load_38); 
      double arith_negf_40 = -(arith_addf_39); 
      double arith_divf_41 = (arith_negf_40 / arith_mulf_27); 
      memref_alloca_13[0] = arith_divf_41; 
      for (int for_iter_42 = arith_const_7; for_iter_42 < for_iter_22; for_iter_42 += arith_const_6) {
        double memref_load_43 = func_arg_2[for_iter_42]; 
        int arith_muli_44 = (for_iter_42 * arith_const_3); 
        int arith_addi_45 = (for_iter_22 + arith_muli_44); 
        int arith_addi_46 = (arith_addi_45 + arith_const_3); 
        double memref_load_47 = func_arg_2[arith_addi_46]; 
        double arith_mulf_48 = (arith_divf_41 * memref_load_47); 
        double arith_addf_49 = (memref_load_43 + arith_mulf_48); 
        memref_alloca_14[for_iter_42] = arith_addf_49; 
      }
      for (int for_iter_50 = arith_const_7; for_iter_50 < for_iter_22; for_iter_50 += arith_const_6) {
        double memref_load_51 = memref_alloca_14[for_iter_50]; 
        func_arg_2[for_iter_50] = memref_load_51; 
      }
      func_arg_2[for_iter_22] = arith_divf_41; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}

#pragma pocc-region-end
