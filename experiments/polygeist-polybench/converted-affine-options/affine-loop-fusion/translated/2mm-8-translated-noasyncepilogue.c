#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 45; 
  int arith_const_12 = -1; 
  int arith_const_13 = -21; 
  int arith_const_14 = 32; 
  int arith_const_15 = 21; 
  int arith_const_16 = 22; 
  int arith_const_17 = 2; 
  int arith_const_18 = 24; 
  int arith_const_19 = 18; 
  double arith_const_20 = 0.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 16; 
  int arith_const_23 = 1; 
  for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_22; for_iter_24 += arith_const_23) {
    for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_19; for_iter_25 += arith_const_23) {
      double memref_load_26 = func_arg_10[for_iter_24][for_iter_25]; 
      double arith_mulf_27 = (memref_load_26 * func_arg_5); 
      func_arg_10[for_iter_24][for_iter_25] = arith_mulf_27; 
      func_arg_6[for_iter_24][for_iter_25] = arith_const_20; 
    }
    for (int for_iter_28 = arith_const_19; for_iter_28 < arith_const_18; for_iter_28 += arith_const_23) {
      double memref_load_29 = func_arg_10[for_iter_24][for_iter_28]; 
      double arith_mulf_30 = (memref_load_29 * func_arg_5); 
      func_arg_10[for_iter_24][for_iter_28] = arith_mulf_30; 
    }
  }
  for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_17; for_iter_31 += arith_const_23) {
    int arith_cmpi_32 = (for_iter_31 == arith_const_21); 
    if (arith_cmpi_32) {
      for (int for_iter_33 = arith_const_21; for_iter_33 < arith_const_22; for_iter_33 += arith_const_23) {
        for (int for_iter_34 = arith_const_21; for_iter_34 < arith_const_19; for_iter_34 += arith_const_23) {
          for (int for_iter_35 = arith_const_21; for_iter_35 < arith_const_16; for_iter_35 += arith_const_23) {
            double memref_load_36 = func_arg_6[for_iter_33][for_iter_34]; 
            double memref_load_37 = func_arg_7[for_iter_33][for_iter_35]; 
            double arith_mulf_38 = (func_arg_4 * memref_load_37); 
            double memref_load_39 = func_arg_8[for_iter_35][for_iter_34]; 
            double arith_mulf_40 = (arith_mulf_38 * memref_load_39); 
            double arith_addf_41 = (memref_load_36 + arith_mulf_40); 
            func_arg_6[for_iter_33][for_iter_34] = arith_addf_41; 
          }
          for (int for_iter_42 = arith_const_15; for_iter_42 < arith_const_14; for_iter_42 += arith_const_23) {
            int arith_addi_43 = (for_iter_42 + arith_const_13); 
            double memref_load_44 = func_arg_10[for_iter_33][arith_addi_43]; 
            double memref_load_45 = func_arg_6[for_iter_33][for_iter_34]; 
            int arith_addi_46 = (for_iter_42 + arith_const_13); 
            double memref_load_47 = func_arg_9[for_iter_34][arith_addi_46]; 
            double arith_mulf_48 = (memref_load_45 * memref_load_47); 
            double arith_addf_49 = (memref_load_44 + arith_mulf_48); 
            int arith_addi_50 = (for_iter_42 + arith_const_13); 
            func_arg_10[for_iter_33][arith_addi_50] = arith_addf_49; 
          }
        }
      }
    }
    int arith_addi_51 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_52 = (arith_addi_51 == arith_const_21); 
    if (arith_cmpi_52) {
      for (int for_iter_53 = arith_const_21; for_iter_53 < arith_const_22; for_iter_53 += arith_const_23) {
        for (int for_iter_54 = arith_const_21; for_iter_54 < arith_const_19; for_iter_54 += arith_const_23) {
          for (int for_iter_55 = arith_const_14; for_iter_55 < arith_const_11; for_iter_55 += arith_const_23) {
            int arith_addi_56 = (for_iter_55 + arith_const_13); 
            double memref_load_57 = func_arg_10[for_iter_53][arith_addi_56]; 
            double memref_load_58 = func_arg_6[for_iter_53][for_iter_54]; 
            int arith_addi_59 = (for_iter_55 + arith_const_13); 
            double memref_load_60 = func_arg_9[for_iter_54][arith_addi_59]; 
            double arith_mulf_61 = (memref_load_58 * memref_load_60); 
            double arith_addf_62 = (memref_load_57 + arith_mulf_61); 
            int arith_addi_63 = (for_iter_55 + arith_const_13); 
            func_arg_10[for_iter_53][arith_addi_63] = arith_addf_62; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
