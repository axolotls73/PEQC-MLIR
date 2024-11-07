#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    func_arg_7[for_iter_12] = arith_const_8; 
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_10; for_iter_13 += arith_const_11) {
      double memref_load_14 = func_arg_4[for_iter_12][for_iter_13]; 
      double memref_load_15 = func_arg_6[for_iter_13]; 
      double arith_mulf_16 = (memref_load_14 * memref_load_15); 
      double memref_load_17 = func_arg_7[for_iter_12]; 
      double arith_addf_18 = (arith_mulf_16 + memref_load_17); 
      func_arg_7[for_iter_12] = arith_addf_18; 
    }
    func_arg_5[for_iter_12] = arith_const_8; 
    for (int for_iter_19 = arith_const_9; for_iter_19 < arith_const_10; for_iter_19 += arith_const_11) {
      double memref_load_20 = func_arg_3[for_iter_12][for_iter_19]; 
      double memref_load_21 = func_arg_6[for_iter_19]; 
      double arith_mulf_22 = (memref_load_20 * memref_load_21); 
      double memref_load_23 = func_arg_5[for_iter_12]; 
      double arith_addf_24 = (arith_mulf_22 + memref_load_23); 
      func_arg_5[for_iter_12] = arith_addf_24; 
    }
    double memref_load_25 = func_arg_5[for_iter_12]; 
    double arith_mulf_26 = (func_arg_1 * memref_load_25); 
    double memref_load_27 = func_arg_7[for_iter_12]; 
    double arith_mulf_28 = (func_arg_2 * memref_load_27); 
    double arith_addf_29 = (arith_mulf_26 + arith_mulf_28); 
    func_arg_7[for_iter_12] = arith_addf_29; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
