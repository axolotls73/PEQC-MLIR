#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 18; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 16; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_13; for_iter_19 += arith_const_17) {
      int arith_addi_20 = (for_iter_18 + arith_const_17); 
      for (int for_iter_21 = for_iter_18; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_17) {
        int arith_addi_22 = (for_iter_19 + arith_const_17); 
        for (int for_iter_23 = for_iter_19; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_17) {
          func_arg_6[for_iter_21][for_iter_23] = arith_const_14; 
          for (int for_iter_24 = arith_const_15; for_iter_24 < arith_const_12; for_iter_24 += arith_const_17) {
            double memref_load_25 = func_arg_7[for_iter_21][for_iter_24]; 
            double arith_mulf_26 = (func_arg_4 * memref_load_25); 
            double memref_load_27 = func_arg_8[for_iter_24][for_iter_23]; 
            double arith_mulf_28 = (arith_mulf_26 * memref_load_27); 
            double memref_load_29 = func_arg_6[for_iter_21][for_iter_23]; 
            double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
            func_arg_6[for_iter_21][for_iter_23] = arith_addf_30; 
          }
        }
      }
    }
  }
  for (int for_iter_31 = arith_const_15; for_iter_31 < arith_const_16; for_iter_31 += arith_const_17) {
    for (int for_iter_32 = arith_const_15; for_iter_32 < arith_const_11; for_iter_32 += arith_const_17) {
      int arith_addi_33 = (for_iter_31 + arith_const_17); 
      for (int for_iter_34 = for_iter_31; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_17) {
        int arith_addi_35 = (for_iter_32 + arith_const_17); 
        for (int for_iter_36 = for_iter_32; for_iter_36 < arith_addi_35; for_iter_36 += arith_const_17) {
          double memref_load_37 = func_arg_10[for_iter_34][for_iter_36]; 
          double arith_mulf_38 = (memref_load_37 * func_arg_5); 
          func_arg_10[for_iter_34][for_iter_36] = arith_mulf_38; 
          for (int for_iter_39 = arith_const_15; for_iter_39 < arith_const_13; for_iter_39 += arith_const_17) {
            double memref_load_40 = func_arg_6[for_iter_34][for_iter_39]; 
            double memref_load_41 = func_arg_9[for_iter_39][for_iter_36]; 
            double arith_mulf_42 = (memref_load_40 * memref_load_41); 
            double memref_load_43 = func_arg_10[for_iter_34][for_iter_36]; 
            double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
            func_arg_10[for_iter_34][for_iter_36] = arith_addf_44; 
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

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}

#pragma pocc-region-end
