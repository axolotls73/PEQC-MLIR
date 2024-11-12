#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 24; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_12; for_iter_17 += arith_const_11) {
      double memref_load_18 = func_arg_5[for_iter_16][for_iter_17]; 
      double arith_mulf_19 = (memref_load_18 * func_arg_4); 
      func_arg_5[for_iter_16][for_iter_17] = arith_mulf_19; 
      int arith_addi_20 = (for_iter_17 + arith_const_15); 
      double memref_load_21 = func_arg_5[for_iter_16][arith_addi_20]; 
      double arith_mulf_22 = (memref_load_21 * func_arg_4); 
      func_arg_5[for_iter_16][arith_addi_20] = arith_mulf_22; 
      int arith_addi_23 = (for_iter_17 + arith_const_10); 
      double memref_load_24 = func_arg_5[for_iter_16][arith_addi_23]; 
      double arith_mulf_25 = (memref_load_24 * func_arg_4); 
      func_arg_5[for_iter_16][arith_addi_23] = arith_mulf_25; 
      int arith_addi_26 = (for_iter_17 + arith_const_9); 
      double memref_load_27 = func_arg_5[for_iter_16][arith_addi_26]; 
      double arith_mulf_28 = (memref_load_27 * func_arg_4); 
      func_arg_5[for_iter_16][arith_addi_26] = arith_mulf_28; 
    }
    double memref_load_29 = func_arg_5[for_iter_16][arith_const_12]; 
    double arith_mulf_30 = (memref_load_29 * func_arg_4); 
    func_arg_5[for_iter_16][arith_const_12] = arith_mulf_30; 
    for (int for_iter_31 = arith_const_13; for_iter_31 < arith_const_8; for_iter_31 += arith_const_15) {
      for (int for_iter_32 = arith_const_13; for_iter_32 < arith_const_12; for_iter_32 += arith_const_11) {
        double memref_load_33 = func_arg_6[for_iter_16][for_iter_31]; 
        double arith_mulf_34 = (func_arg_3 * memref_load_33); 
        double memref_load_35 = func_arg_7[for_iter_31][for_iter_32]; 
        double arith_mulf_36 = (arith_mulf_34 * memref_load_35); 
        double memref_load_37 = func_arg_5[for_iter_16][for_iter_32]; 
        double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
        func_arg_5[for_iter_16][for_iter_32] = arith_addf_38; 
        int arith_addi_39 = (for_iter_32 + arith_const_15); 
        double memref_load_40 = func_arg_6[for_iter_16][for_iter_31]; 
        double arith_mulf_41 = (func_arg_3 * memref_load_40); 
        double memref_load_42 = func_arg_7[for_iter_31][arith_addi_39]; 
        double arith_mulf_43 = (arith_mulf_41 * memref_load_42); 
        double memref_load_44 = func_arg_5[for_iter_16][arith_addi_39]; 
        double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
        func_arg_5[for_iter_16][arith_addi_39] = arith_addf_45; 
        int arith_addi_46 = (for_iter_32 + arith_const_10); 
        double memref_load_47 = func_arg_6[for_iter_16][for_iter_31]; 
        double arith_mulf_48 = (func_arg_3 * memref_load_47); 
        double memref_load_49 = func_arg_7[for_iter_31][arith_addi_46]; 
        double arith_mulf_50 = (arith_mulf_48 * memref_load_49); 
        double memref_load_51 = func_arg_5[for_iter_16][arith_addi_46]; 
        double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
        func_arg_5[for_iter_16][arith_addi_46] = arith_addf_52; 
        int arith_addi_53 = (for_iter_32 + arith_const_9); 
        double memref_load_54 = func_arg_6[for_iter_16][for_iter_31]; 
        double arith_mulf_55 = (func_arg_3 * memref_load_54); 
        double memref_load_56 = func_arg_7[for_iter_31][arith_addi_53]; 
        double arith_mulf_57 = (arith_mulf_55 * memref_load_56); 
        double memref_load_58 = func_arg_5[for_iter_16][arith_addi_53]; 
        double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
        func_arg_5[for_iter_16][arith_addi_53] = arith_addf_59; 
      }
      double memref_load_60 = func_arg_6[for_iter_16][for_iter_31]; 
      double arith_mulf_61 = (func_arg_3 * memref_load_60); 
      double memref_load_62 = func_arg_7[for_iter_31][arith_const_12]; 
      double arith_mulf_63 = (arith_mulf_61 * memref_load_62); 
      double memref_load_64 = func_arg_5[for_iter_16][arith_const_12]; 
      double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
      func_arg_5[for_iter_16][arith_const_12] = arith_addf_65; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}

#pragma pocc-region-end
