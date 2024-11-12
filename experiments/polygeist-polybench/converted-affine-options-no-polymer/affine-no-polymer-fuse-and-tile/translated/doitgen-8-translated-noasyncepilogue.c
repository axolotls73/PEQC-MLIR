#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 1; 
  int arith_const_7 = 12; 
  int arith_const_8 = 8; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 10; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_8; for_iter_14 += arith_const_12) {
      for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_7; for_iter_15 += arith_const_12) {
        int arith_addi_16 = (for_iter_13 + arith_const_11); 
        for (int for_iter_17 = for_iter_13; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_6) {
          int arith_addi_18 = (for_iter_14 + arith_const_8); 
          for (int for_iter_19 = for_iter_14; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_6) {
            int arith_addi_20 = (for_iter_15 + arith_const_7); 
            for (int for_iter_21 = for_iter_15; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_6) {
              func_arg_5[for_iter_21] = arith_const_9; 
              for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_7; for_iter_22 += arith_const_6) {
                double memref_load_23 = func_arg_3[for_iter_17][for_iter_19][for_iter_22]; 
                double memref_load_24 = func_arg_4[for_iter_22][for_iter_21]; 
                double arith_mulf_25 = (memref_load_23 * memref_load_24); 
                double memref_load_26 = func_arg_5[for_iter_21]; 
                double arith_addf_27 = (memref_load_26 + arith_mulf_25); 
                func_arg_5[for_iter_21] = arith_addf_27; 
              }
              double memref_load_28 = func_arg_5[for_iter_21]; 
              func_arg_3[for_iter_17][for_iter_19][for_iter_21] = memref_load_28; 
            }
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
