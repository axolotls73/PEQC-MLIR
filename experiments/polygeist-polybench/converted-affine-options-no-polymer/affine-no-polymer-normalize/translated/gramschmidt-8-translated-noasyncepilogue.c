#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -1; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  int arith_const_9 = 30; 
  int arith_const_10 = 0; 
  double _11; 
  double arith_const_12 = 0.000000; 
  double* memref_alloca_13; 
  memref_alloca_13[0] = _11; 
  for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_8) {
    memref_alloca_13[0] = arith_const_12; 
    for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_7; for_iter_15 += arith_const_8) {
      double memref_load_16 = func_arg_2[for_iter_15][for_iter_14]; 
      double arith_mulf_17 = (memref_load_16 * memref_load_16); 
      double memref_load_18 = memref_alloca_13[0]; 
      double arith_addf_19 = (memref_load_18 + arith_mulf_17); 
      memref_alloca_13[0] = arith_addf_19; 
    }
    double memref_load_20 = memref_alloca_13[0]; 
    double math_sqrt_21 = sqrt(memref_load_20); 
    func_arg_3[for_iter_14][for_iter_14] = math_sqrt_21; 
    for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_7; for_iter_22 += arith_const_8) {
      double memref_load_23 = func_arg_2[for_iter_22][for_iter_14]; 
      double memref_load_24 = func_arg_3[for_iter_14][for_iter_14]; 
      double arith_divf_25 = (memref_load_23 / memref_load_24); 
      func_arg_4[for_iter_22][for_iter_14] = arith_divf_25; 
    }
    int arith_muli_26 = (for_iter_14 * arith_const_6); 
    int arith_addi_27 = (arith_muli_26 + arith_const_5); 
    for (int for_iter_28 = arith_const_10; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_8) {
      int arith_addi_29 = (for_iter_14 + for_iter_28); 
      int arith_addi_30 = (arith_addi_29 + arith_const_8); 
      func_arg_3[for_iter_14][arith_addi_30] = arith_const_12; 
      for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_7; for_iter_31 += arith_const_8) {
        double memref_load_32 = func_arg_4[for_iter_31][for_iter_14]; 
        double memref_load_33 = func_arg_2[for_iter_31][arith_addi_30]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = func_arg_3[for_iter_14][arith_addi_30]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        func_arg_3[for_iter_14][arith_addi_30] = arith_addf_36; 
      }
      for (int for_iter_37 = arith_const_10; for_iter_37 < arith_const_7; for_iter_37 += arith_const_8) {
        double memref_load_38 = func_arg_2[for_iter_37][arith_addi_30]; 
        double memref_load_39 = func_arg_4[for_iter_37][for_iter_14]; 
        double memref_load_40 = func_arg_3[for_iter_14][arith_addi_30]; 
        double arith_mulf_41 = (memref_load_39 * memref_load_40); 
        double arith_subf_42 = (memref_load_38 - arith_mulf_41); 
        func_arg_2[for_iter_37][arith_addi_30] = arith_subf_42; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* R;
  double* Q;


  kernel_gramschmidt(m, n, A, R, Q);

}

#pragma pocc-region-end
