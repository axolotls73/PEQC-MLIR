#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 40; 
  int arith_const_5 = 1; 
  int arith_const_6 = 0; 
  double arith_const_7 = 0.000000; 
  double arith_const_8 = 1.000000; 
  double* memref_alloca_9; 
  double _10; 
  memref_alloca_9[0] = _10; 
  double* memref_alloca_11; 
  memref_alloca_11[0] = _10; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _10; 
  double* memref_alloca_13; 
  double memref_load_14 = func_arg_1[arith_const_6]; 
  double arith_negf_15 = -(memref_load_14); 
  func_arg_2[arith_const_6] = arith_negf_15; 
  memref_alloca_11[0] = arith_const_8; 
  double memref_load_16 = func_arg_1[arith_const_6]; 
  double arith_negf_17 = -(memref_load_16); 
  memref_alloca_12[0] = arith_negf_17; 
  for (int for_iter_18 = arith_const_5; for_iter_18 < arith_const_4; for_iter_18 += arith_const_5) {
    double memref_load_19 = memref_alloca_12[0]; 
    double arith_mulf_20 = (memref_load_19 * memref_load_19); 
    double arith_subf_21 = (arith_const_8 - arith_mulf_20); 
    double memref_load_22 = memref_alloca_11[0]; 
    double arith_mulf_23 = (arith_subf_21 * memref_load_22); 
    memref_alloca_11[0] = arith_mulf_23; 
    memref_alloca_9[0] = arith_const_7; 
    for (int for_iter_24 = arith_const_6; for_iter_24 < for_iter_18; for_iter_24 += arith_const_5) {
      int arith_muli_25 = (for_iter_24 * arith_const_3); 
      int arith_addi_26 = (for_iter_18 + arith_muli_25); 
      int arith_addi_27 = (arith_addi_26 + arith_const_3); 
      double memref_load_28 = func_arg_1[arith_addi_27]; 
      double memref_load_29 = func_arg_2[for_iter_24]; 
      double arith_mulf_30 = (memref_load_28 * memref_load_29); 
      double memref_load_31 = memref_alloca_9[0]; 
      double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
      memref_alloca_9[0] = arith_addf_32; 
    }
    double memref_load_33 = func_arg_1[for_iter_18]; 
    double memref_load_34 = memref_alloca_9[0]; 
    double arith_addf_35 = (memref_load_33 + memref_load_34); 
    double arith_negf_36 = -(arith_addf_35); 
    double arith_divf_37 = (arith_negf_36 / arith_mulf_23); 
    memref_alloca_12[0] = arith_divf_37; 
    for (int for_iter_38 = arith_const_6; for_iter_38 < for_iter_18; for_iter_38 += arith_const_5) {
      double memref_load_39 = func_arg_2[for_iter_38]; 
      int arith_muli_40 = (for_iter_38 * arith_const_3); 
      int arith_addi_41 = (for_iter_18 + arith_muli_40); 
      int arith_addi_42 = (arith_addi_41 + arith_const_3); 
      double memref_load_43 = func_arg_2[arith_addi_42]; 
      double arith_mulf_44 = (arith_divf_37 * memref_load_43); 
      double arith_addf_45 = (memref_load_39 + arith_mulf_44); 
      memref_alloca_13[for_iter_38] = arith_addf_45; 
    }
    for (int for_iter_46 = arith_const_6; for_iter_46 < for_iter_18; for_iter_46 += arith_const_5) {
      double memref_load_47 = memref_alloca_13[for_iter_46]; 
      func_arg_2[for_iter_46] = memref_load_47; 
    }
    func_arg_2[for_iter_18] = arith_divf_37; 
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
