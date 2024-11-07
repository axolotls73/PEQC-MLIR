#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 18; 
  int arith_const_14 = 1; 
  int arith_const_15 = 32; 
  int arith_const_16 = 16; 
  int arith_const_17 = 0; 
  double arith_const_18 = 0.000000; 
  double* memref_alloc_19; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_16; for_iter_20 += arith_const_15) {
    int arith_addi_21 = (for_iter_20 + arith_const_16); 
    for (int for_iter_22 = for_iter_20; for_iter_22 < arith_addi_21; for_iter_22 += arith_const_14) {
      for (int for_iter_23 = arith_const_17; for_iter_23 < arith_const_13; for_iter_23 += arith_const_14) {
        func_arg_6[for_iter_22][for_iter_23] = arith_const_18; 
        for (int for_iter_24 = arith_const_17; for_iter_24 < arith_const_12; for_iter_24 += arith_const_14) {
          double memref_load_25 = func_arg_7[for_iter_22][for_iter_24]; 
          double arith_mulf_26 = (func_arg_4 * memref_load_25); 
          double memref_load_27 = func_arg_8[for_iter_24][for_iter_23]; 
          double arith_mulf_28 = (arith_mulf_26 * memref_load_27); 
          double memref_load_29 = func_arg_6[for_iter_22][for_iter_23]; 
          double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
          func_arg_6[for_iter_22][for_iter_23] = arith_addf_30; 
        }
      }
      for (int for_iter_31 = arith_const_17; for_iter_31 < arith_const_11; for_iter_31 += arith_const_14) {
        double memref_load_32 = func_arg_10[for_iter_22][for_iter_31]; 
        double arith_mulf_33 = (memref_load_32 * func_arg_5); 
        func_arg_10[for_iter_22][for_iter_31] = arith_mulf_33; 
        for (int for_iter_34 = arith_const_17; for_iter_34 < arith_const_13; for_iter_34 += arith_const_14) {
          memref_alloc_19[arith_const_17][arith_const_17] = arith_const_18; 
          for (int for_iter_35 = arith_const_17; for_iter_35 < arith_const_12; for_iter_35 += arith_const_14) {
            double memref_load_36 = func_arg_7[for_iter_22][for_iter_35]; 
            double arith_mulf_37 = (func_arg_4 * memref_load_36); 
            double memref_load_38 = func_arg_8[for_iter_35][for_iter_34]; 
            double arith_mulf_39 = (arith_mulf_37 * memref_load_38); 
            double memref_load_40 = memref_alloc_19[arith_const_17][arith_const_17]; 
            double arith_addf_41 = (memref_load_40 + arith_mulf_39); 
            memref_alloc_19[arith_const_17][arith_const_17] = arith_addf_41; 
          }
          double memref_load_42 = memref_alloc_19[arith_const_17][arith_const_17]; 
          double memref_load_43 = func_arg_9[for_iter_34][for_iter_31]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double memref_load_45 = func_arg_10[for_iter_22][for_iter_31]; 
          double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
          func_arg_10[for_iter_22][for_iter_31] = arith_addf_46; 
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
