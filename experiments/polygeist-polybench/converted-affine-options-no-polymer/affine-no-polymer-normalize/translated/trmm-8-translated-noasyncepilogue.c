#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 19; 
  int arith_const_6 = -1; 
  int arith_const_7 = 30; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_7; for_iter_12 += arith_const_10) {
      int arith_muli_13 = (for_iter_11 * arith_const_6); 
      int arith_addi_14 = (arith_muli_13 + arith_const_5); 
      for (int for_iter_15 = arith_const_8; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_10) {
        int arith_addi_16 = (for_iter_11 + for_iter_15); 
        int arith_addi_17 = (arith_addi_16 + arith_const_10); 
        double memref_load_18 = func_arg_3[arith_addi_17][for_iter_11]; 
        double memref_load_19 = func_arg_4[arith_addi_17][for_iter_12]; 
        double arith_mulf_20 = (memref_load_18 * memref_load_19); 
        double memref_load_21 = func_arg_4[for_iter_11][for_iter_12]; 
        double arith_addf_22 = (memref_load_21 + arith_mulf_20); 
        func_arg_4[for_iter_11][for_iter_12] = arith_addf_22; 
      }
      double memref_load_23 = func_arg_4[for_iter_11][for_iter_12]; 
      double arith_mulf_24 = (func_arg_2 * memref_load_23); 
      func_arg_4[for_iter_11][for_iter_12] = arith_mulf_24; 
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
