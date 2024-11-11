#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 30; 
  int arith_const_8 = 1; 
  int arith_const_9 = 20; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = arith_const_11; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_9; for_iter_13 += arith_const_8) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_7; for_iter_14 += arith_const_8) {
      int arith_addi_15 = (for_iter_13 + arith_const_8); 
      for (int for_iter_16 = for_iter_13; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_8) {
        int arith_addi_17 = (for_iter_14 + arith_const_8); 
        for (int for_iter_18 = for_iter_14; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_8) {
          memref_alloca_12[0] = arith_const_11; 
          for (int for_iter_19 = arith_const_10; for_iter_19 < for_iter_16; for_iter_19 += arith_const_8) {
            double memref_load_20 = func_arg_6[for_iter_16][for_iter_18]; 
            double arith_mulf_21 = (func_arg_2 * memref_load_20); 
            double memref_load_22 = func_arg_5[for_iter_16][for_iter_19]; 
            double arith_mulf_23 = (arith_mulf_21 * memref_load_22); 
            double memref_load_24 = func_arg_4[for_iter_19][for_iter_18]; 
            double arith_addf_25 = (memref_load_24 + arith_mulf_23); 
            func_arg_4[for_iter_19][for_iter_18] = arith_addf_25; 
            double memref_load_26 = func_arg_6[for_iter_19][for_iter_18]; 
            double memref_load_27 = func_arg_5[for_iter_16][for_iter_19]; 
            double arith_mulf_28 = (memref_load_26 * memref_load_27); 
            double memref_load_29 = memref_alloca_12[0]; 
            double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
            memref_alloca_12[0] = arith_addf_30; 
          }
          double memref_load_31 = func_arg_4[for_iter_16][for_iter_18]; 
          double arith_mulf_32 = (func_arg_3 * memref_load_31); 
          double memref_load_33 = func_arg_6[for_iter_16][for_iter_18]; 
          double arith_mulf_34 = (func_arg_2 * memref_load_33); 
          double memref_load_35 = func_arg_5[for_iter_16][for_iter_16]; 
          double arith_mulf_36 = (arith_mulf_34 * memref_load_35); 
          double arith_addf_37 = (arith_mulf_32 + arith_mulf_36); 
          double memref_load_38 = memref_alloca_12[0]; 
          double arith_mulf_39 = (func_arg_2 * memref_load_38); 
          double arith_addf_40 = (arith_addf_37 + arith_mulf_39); 
          func_arg_4[for_iter_16][for_iter_18] = arith_addf_40; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_symm(m, n, alpha, beta, C, A, B);

}

#pragma pocc-region-end
