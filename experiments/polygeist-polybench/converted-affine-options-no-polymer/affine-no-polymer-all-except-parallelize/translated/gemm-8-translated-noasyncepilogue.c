#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 24; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_16; for_iter_18 < arith_const_17; for_iter_18 += arith_const_17) {
    int arith_muli_19 = (for_iter_18 * arith_const_14); 
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_13; for_iter_20 += arith_const_17) {
      int arith_addi_21 = (arith_muli_19 + for_iter_20); 
      for (int for_iter_22 = arith_const_16; for_iter_22 < arith_const_12; for_iter_22 += arith_const_17) {
        int arith_muli_23 = (for_iter_22 * arith_const_11); 
        double memref_load_24 = func_arg_5[arith_addi_21][arith_muli_23]; 
        double arith_mulf_25 = (memref_load_24 * func_arg_4); 
        func_arg_5[arith_addi_21][arith_muli_23] = arith_mulf_25; 
        int arith_addi_26 = (arith_muli_23 + arith_const_17); 
        double memref_load_27 = func_arg_5[arith_addi_21][arith_addi_26]; 
        double arith_mulf_28 = (memref_load_27 * func_arg_4); 
        func_arg_5[arith_addi_21][arith_addi_26] = arith_mulf_28; 
        int arith_addi_29 = (arith_muli_23 + arith_const_10); 
        double memref_load_30 = func_arg_5[arith_addi_21][arith_addi_29]; 
        double arith_mulf_31 = (memref_load_30 * func_arg_4); 
        func_arg_5[arith_addi_21][arith_addi_29] = arith_mulf_31; 
        int arith_addi_32 = (arith_muli_23 + arith_const_9); 
        double memref_load_33 = func_arg_5[arith_addi_21][arith_addi_32]; 
        double arith_mulf_34 = (memref_load_33 * func_arg_4); 
        func_arg_5[arith_addi_21][arith_addi_32] = arith_mulf_34; 
      }
      double memref_load_35 = func_arg_5[arith_addi_21][arith_const_15]; 
      double arith_mulf_36 = (memref_load_35 * func_arg_4); 
      func_arg_5[arith_addi_21][arith_const_15] = arith_mulf_36; 
      for (int for_iter_37 = arith_const_16; for_iter_37 < arith_const_8; for_iter_37 += arith_const_17) {
        double memref_load_38 = func_arg_6[arith_addi_21][for_iter_37]; 
        double arith_mulf_39 = (func_arg_3 * memref_load_38); 
        double memref_load_40 = func_arg_6[arith_addi_21][for_iter_37]; 
        double arith_mulf_41 = (func_arg_3 * memref_load_40); 
        double memref_load_42 = func_arg_6[arith_addi_21][for_iter_37]; 
        double arith_mulf_43 = (func_arg_3 * memref_load_42); 
        double memref_load_44 = func_arg_6[arith_addi_21][for_iter_37]; 
        double arith_mulf_45 = (func_arg_3 * memref_load_44); 
        for (int for_iter_46 = arith_const_16; for_iter_46 < arith_const_12; for_iter_46 += arith_const_17) {
          int arith_muli_47 = (for_iter_46 * arith_const_11); 
          double memref_load_48 = func_arg_7[for_iter_37][arith_muli_47]; 
          double arith_mulf_49 = (arith_mulf_39 * memref_load_48); 
          double memref_load_50 = func_arg_5[arith_addi_21][arith_muli_47]; 
          double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
          func_arg_5[arith_addi_21][arith_muli_47] = arith_addf_51; 
          int arith_addi_52 = (arith_muli_47 + arith_const_17); 
          double memref_load_53 = func_arg_7[for_iter_37][arith_addi_52]; 
          double arith_mulf_54 = (arith_mulf_41 * memref_load_53); 
          double memref_load_55 = func_arg_5[arith_addi_21][arith_addi_52]; 
          double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
          func_arg_5[arith_addi_21][arith_addi_52] = arith_addf_56; 
          int arith_addi_57 = (arith_muli_47 + arith_const_10); 
          double memref_load_58 = func_arg_7[for_iter_37][arith_addi_57]; 
          double arith_mulf_59 = (arith_mulf_43 * memref_load_58); 
          double memref_load_60 = func_arg_5[arith_addi_21][arith_addi_57]; 
          double arith_addf_61 = (memref_load_60 + arith_mulf_59); 
          func_arg_5[arith_addi_21][arith_addi_57] = arith_addf_61; 
          int arith_addi_62 = (arith_muli_47 + arith_const_9); 
          double memref_load_63 = func_arg_7[for_iter_37][arith_addi_62]; 
          double arith_mulf_64 = (arith_mulf_45 * memref_load_63); 
          double memref_load_65 = func_arg_5[arith_addi_21][arith_addi_62]; 
          double arith_addf_66 = (memref_load_65 + arith_mulf_64); 
          func_arg_5[arith_addi_21][arith_addi_62] = arith_addf_66; 
        }
        double memref_load_67 = func_arg_6[arith_addi_21][for_iter_37]; 
        double arith_mulf_68 = (func_arg_3 * memref_load_67); 
        double memref_load_69 = func_arg_7[for_iter_37][arith_const_15]; 
        double arith_mulf_70 = (arith_mulf_68 * memref_load_69); 
        double memref_load_71 = func_arg_5[arith_addi_21][arith_const_15]; 
        double arith_addf_72 = (memref_load_71 + arith_mulf_70); 
        func_arg_5[arith_addi_21][arith_const_15] = arith_addf_72; 
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
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}

#pragma pocc-region-end
