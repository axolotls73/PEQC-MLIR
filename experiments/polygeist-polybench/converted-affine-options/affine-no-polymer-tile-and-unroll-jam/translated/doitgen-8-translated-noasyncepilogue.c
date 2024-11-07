#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 1; 
  int arith_const_8 = 8; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 10; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_8; for_iter_14 += arith_const_12) {
      int arith_addi_15 = (for_iter_13 + arith_const_11); 
      for (int for_iter_16 = for_iter_13; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_7) {
        int arith_addi_17 = (for_iter_14 + arith_const_8); 
        for (int for_iter_18 = for_iter_14; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_7) {
          for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_6; for_iter_19 += arith_const_7) {
            func_arg_5[for_iter_19] = arith_const_9; 
            for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_6; for_iter_20 += arith_const_7) {
              double memref_load_21 = func_arg_3[for_iter_16][for_iter_18][for_iter_20]; 
              double memref_load_22 = func_arg_4[for_iter_20][for_iter_19]; 
              double arith_mulf_23 = (memref_load_21 * memref_load_22); 
              double memref_load_24 = func_arg_5[for_iter_19]; 
              double arith_addf_25 = (memref_load_24 + arith_mulf_23); 
              func_arg_5[for_iter_19] = arith_addf_25; 
            }
          }
          for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_6; for_iter_26 += arith_const_7) {
            double memref_load_27 = func_arg_5[for_iter_26]; 
            func_arg_3[for_iter_16][for_iter_18][for_iter_26] = memref_load_27; 
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


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
