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
    }
  }
  for (int for_iter_37 = arith_const_16; for_iter_37 < arith_const_17; for_iter_37 += arith_const_17) {
    int arith_muli_38 = (for_iter_37 * arith_const_14); 
    for (int for_iter_39 = arith_const_16; for_iter_39 < arith_const_17; for_iter_39 += arith_const_17) {
      int arith_muli_40 = (for_iter_39 * arith_const_14); 
      for (int for_iter_41 = arith_const_16; for_iter_41 < arith_const_13; for_iter_41 += arith_const_17) {
        int arith_addi_42 = (arith_muli_38 + for_iter_41); 
        for (int for_iter_43 = arith_const_16; for_iter_43 < arith_const_8; for_iter_43 += arith_const_17) {
          int arith_addi_44 = (arith_muli_40 + for_iter_43); 
          double memref_load_45 = func_arg_6[arith_addi_42][arith_addi_44]; 
          double arith_mulf_46 = (func_arg_3 * memref_load_45); 
          double memref_load_47 = func_arg_6[arith_addi_42][arith_addi_44]; 
          double arith_mulf_48 = (func_arg_3 * memref_load_47); 
          double memref_load_49 = func_arg_6[arith_addi_42][arith_addi_44]; 
          double arith_mulf_50 = (func_arg_3 * memref_load_49); 
          double memref_load_51 = func_arg_6[arith_addi_42][arith_addi_44]; 
          double arith_mulf_52 = (func_arg_3 * memref_load_51); 
          for (int for_iter_53 = arith_const_16; for_iter_53 < arith_const_12; for_iter_53 += arith_const_17) {
            int arith_muli_54 = (for_iter_53 * arith_const_11); 
            double memref_load_55 = func_arg_5[arith_addi_42][arith_muli_54]; 
            double memref_load_56 = func_arg_7[arith_addi_44][arith_muli_54]; 
            double arith_mulf_57 = (arith_mulf_46 * memref_load_56); 
            double arith_addf_58 = (memref_load_55 + arith_mulf_57); 
            func_arg_5[arith_addi_42][arith_muli_54] = arith_addf_58; 
            int arith_addi_59 = (arith_muli_54 + arith_const_17); 
            double memref_load_60 = func_arg_5[arith_addi_42][arith_addi_59]; 
            double memref_load_61 = func_arg_7[arith_addi_44][arith_addi_59]; 
            double arith_mulf_62 = (arith_mulf_48 * memref_load_61); 
            double arith_addf_63 = (memref_load_60 + arith_mulf_62); 
            func_arg_5[arith_addi_42][arith_addi_59] = arith_addf_63; 
            int arith_addi_64 = (arith_muli_54 + arith_const_10); 
            double memref_load_65 = func_arg_5[arith_addi_42][arith_addi_64]; 
            double memref_load_66 = func_arg_7[arith_addi_44][arith_addi_64]; 
            double arith_mulf_67 = (arith_mulf_50 * memref_load_66); 
            double arith_addf_68 = (memref_load_65 + arith_mulf_67); 
            func_arg_5[arith_addi_42][arith_addi_64] = arith_addf_68; 
            int arith_addi_69 = (arith_muli_54 + arith_const_9); 
            double memref_load_70 = func_arg_5[arith_addi_42][arith_addi_69]; 
            double memref_load_71 = func_arg_7[arith_addi_44][arith_addi_69]; 
            double arith_mulf_72 = (arith_mulf_52 * memref_load_71); 
            double arith_addf_73 = (memref_load_70 + arith_mulf_72); 
            func_arg_5[arith_addi_42][arith_addi_69] = arith_addf_73; 
          }
          double memref_load_74 = func_arg_5[arith_addi_42][arith_const_15]; 
          double memref_load_75 = func_arg_6[arith_addi_42][arith_addi_44]; 
          double arith_mulf_76 = (func_arg_3 * memref_load_75); 
          double memref_load_77 = func_arg_7[arith_addi_44][arith_const_15]; 
          double arith_mulf_78 = (arith_mulf_76 * memref_load_77); 
          double arith_addf_79 = (memref_load_74 + arith_mulf_78); 
          func_arg_5[arith_addi_42][arith_const_15] = arith_addf_79; 
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
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}

#pragma pocc-region-end
