#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 38; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    func_arg_3[for_iter_12] = arith_const_8; 
  }
  for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_7; for_iter_13 += arith_const_11) {
    func_arg_4[for_iter_13] = arith_const_8; 
    double memref_load_14 = func_arg_6[for_iter_13]; 
    for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_10; for_iter_15 += arith_const_11) {
      double memref_load_16 = func_arg_3[for_iter_15]; 
      double memref_load_17 = func_arg_2[for_iter_13][for_iter_15]; 
      double arith_mulf_18 = (memref_load_14 * memref_load_17); 
      double arith_addf_19 = (memref_load_16 + arith_mulf_18); 
      func_arg_3[for_iter_15] = arith_addf_19; 
      double memref_load_20 = func_arg_4[for_iter_13]; 
      double memref_load_21 = func_arg_2[for_iter_13][for_iter_15]; 
      double memref_load_22 = func_arg_5[for_iter_15]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double arith_addf_24 = (memref_load_20 + arith_mulf_23); 
      func_arg_4[for_iter_13] = arith_addf_24; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;


  kernel_bicg(m, n, A, s, q, p, r);

}

#pragma pocc-region-end
