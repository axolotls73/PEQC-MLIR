#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 1; 
  int arith_const_14 = 18; 
  double arith_const_15 = 0.000000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 16; 
  int arith_const_18 = 32; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_14; for_iter_20 += arith_const_18) {
      int arith_addi_21 = (for_iter_19 + arith_const_17); 
      for (int for_iter_22 = for_iter_19; for_iter_22 < arith_addi_21; for_iter_22 += arith_const_13) {
        int arith_addi_23 = (for_iter_20 + arith_const_14); 
        for (int for_iter_24 = for_iter_20; for_iter_24 < arith_addi_23; for_iter_24 += arith_const_13) {
          func_arg_6[for_iter_22][for_iter_24] = arith_const_15; 
          for (int for_iter_25 = arith_const_16; for_iter_25 < arith_const_12; for_iter_25 += arith_const_13) {
            double memref_load_26 = func_arg_7[for_iter_22][for_iter_25]; 
            double arith_mulf_27 = (func_arg_4 * memref_load_26); 
            double memref_load_28 = func_arg_8[for_iter_25][for_iter_24]; 
            double arith_mulf_29 = (arith_mulf_27 * memref_load_28); 
            double memref_load_30 = func_arg_6[for_iter_22][for_iter_24]; 
            double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
            func_arg_6[for_iter_22][for_iter_24] = arith_addf_31; 
          }
        }
      }
    }
  }
  for (int for_iter_32 = arith_const_16; for_iter_32 < arith_const_17; for_iter_32 += arith_const_18) {
    for (int for_iter_33 = arith_const_16; for_iter_33 < arith_const_11; for_iter_33 += arith_const_18) {
      int arith_addi_34 = (for_iter_32 + arith_const_17); 
      for (int for_iter_35 = for_iter_32; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_13) {
        int arith_addi_36 = (for_iter_33 + arith_const_11); 
        for (int for_iter_37 = for_iter_33; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_13) {
          double memref_load_38 = func_arg_10[for_iter_35][for_iter_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_5); 
          func_arg_10[for_iter_35][for_iter_37] = arith_mulf_39; 
          for (int for_iter_40 = arith_const_16; for_iter_40 < arith_const_14; for_iter_40 += arith_const_13) {
            double memref_load_41 = func_arg_6[for_iter_35][for_iter_40]; 
            double memref_load_42 = func_arg_9[for_iter_40][for_iter_37]; 
            double arith_mulf_43 = (memref_load_41 * memref_load_42); 
            double memref_load_44 = func_arg_10[for_iter_35][for_iter_37]; 
            double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
            func_arg_10[for_iter_35][for_iter_37] = arith_addf_45; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}

#pragma pocc-region-end
