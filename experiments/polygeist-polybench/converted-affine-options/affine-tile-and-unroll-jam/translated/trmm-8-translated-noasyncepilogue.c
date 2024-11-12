#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 32; 
  int arith_const_6 = 20; 
  int arith_const_7 = 30; 
  int arith_const_8 = -1; 
  int arith_const_9 = 0; 
  int arith_const_10 = 19; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_muli_13 = (for_iter_12 * arith_const_8); 
    int arith_addi_14 = (arith_muli_13 + arith_const_10); 
    for (int for_iter_15 = arith_const_9; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_11) {
      for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_7; for_iter_16 += arith_const_11) {
        double memref_load_17 = func_arg_4[for_iter_12][for_iter_16]; 
        int arith_addi_18 = (for_iter_12 + for_iter_15); 
        int arith_addi_19 = (arith_addi_18 + arith_const_11); 
        double memref_load_20 = func_arg_3[arith_addi_19][for_iter_12]; 
        int arith_addi_21 = (for_iter_12 + for_iter_15); 
        int arith_addi_22 = (arith_addi_21 + arith_const_11); 
        double memref_load_23 = func_arg_4[arith_addi_22][for_iter_16]; 
        double arith_mulf_24 = (memref_load_20 * memref_load_23); 
        double arith_addf_25 = (memref_load_17 + arith_mulf_24); 
        func_arg_4[for_iter_12][for_iter_16] = arith_addf_25; 
      }
    }
  }
  for (int for_iter_26 = arith_const_9; for_iter_26 < arith_const_6; for_iter_26 += arith_const_5) {
    for (int for_iter_27 = arith_const_9; for_iter_27 < arith_const_7; for_iter_27 += arith_const_5) {
      int arith_addi_28 = (for_iter_26 + arith_const_6); 
      for (int for_iter_29 = for_iter_26; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_11) {
        int arith_addi_30 = (for_iter_27 + arith_const_7); 
        for (int for_iter_31 = for_iter_27; for_iter_31 < arith_addi_30; for_iter_31 += arith_const_11) {
          double memref_load_32 = func_arg_4[for_iter_29][for_iter_31]; 
          double arith_mulf_33 = (func_arg_2 * memref_load_32); 
          func_arg_4[for_iter_29][for_iter_31] = arith_mulf_33; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
