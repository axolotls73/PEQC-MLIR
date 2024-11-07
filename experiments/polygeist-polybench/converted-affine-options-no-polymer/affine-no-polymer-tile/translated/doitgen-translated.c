#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 8; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 10; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_7; for_iter_13 += arith_const_11) {
      int arith_addi_14 = (for_iter_12 + arith_const_11); 
      for (int for_iter_15 = for_iter_12; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_11) {
        int arith_addi_16 = (for_iter_13 + arith_const_11); 
        for (int for_iter_17 = for_iter_13; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_11) {
          for (int for_iter_18 = arith_const_9; for_iter_18 < arith_const_6; for_iter_18 += arith_const_11) {
            func_arg_5[for_iter_18] = arith_const_8; 
            for (int for_iter_19 = arith_const_9; for_iter_19 < arith_const_6; for_iter_19 += arith_const_11) {
              double memref_load_20 = func_arg_3[for_iter_15][for_iter_17][for_iter_19]; 
              double memref_load_21 = func_arg_4[for_iter_19][for_iter_18]; 
              double arith_mulf_22 = (memref_load_20 * memref_load_21); 
              double memref_load_23 = func_arg_5[for_iter_18]; 
              double arith_addf_24 = (memref_load_23 + arith_mulf_22); 
              func_arg_5[for_iter_18] = arith_addf_24; 
            }
          }
          for (int for_iter_25 = arith_const_9; for_iter_25 < arith_const_6; for_iter_25 += arith_const_11) {
            double memref_load_26 = func_arg_5[for_iter_25]; 
            func_arg_3[for_iter_15][for_iter_17][for_iter_25] = memref_load_26; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}

#pragma pocc-region-end
