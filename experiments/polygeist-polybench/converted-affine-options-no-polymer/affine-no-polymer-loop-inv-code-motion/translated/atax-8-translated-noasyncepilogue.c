#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  double arith_const_7 = 0.000000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 42; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    func_arg_4[for_iter_11] = arith_const_7; 
  }
  for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_6; for_iter_12 += arith_const_10) {
    func_arg_5[for_iter_12] = arith_const_7; 
    for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_9; for_iter_13 += arith_const_10) {
      double memref_load_14 = func_arg_5[for_iter_12]; 
      double memref_load_15 = func_arg_2[for_iter_12][for_iter_13]; 
      double memref_load_16 = func_arg_3[for_iter_13]; 
      double arith_mulf_17 = (memref_load_15 * memref_load_16); 
      double arith_addf_18 = (memref_load_14 + arith_mulf_17); 
      func_arg_5[for_iter_12] = arith_addf_18; 
    }
    double memref_load_19 = func_arg_5[for_iter_12]; 
    for (int for_iter_20 = arith_const_8; for_iter_20 < arith_const_9; for_iter_20 += arith_const_10) {
      double memref_load_21 = func_arg_4[for_iter_20]; 
      double memref_load_22 = func_arg_2[for_iter_12][for_iter_20]; 
      double arith_mulf_23 = (memref_load_22 * memref_load_19); 
      double arith_addf_24 = (memref_load_21 + arith_mulf_23); 
      func_arg_4[for_iter_20] = arith_addf_24; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}

#pragma pocc-region-end
