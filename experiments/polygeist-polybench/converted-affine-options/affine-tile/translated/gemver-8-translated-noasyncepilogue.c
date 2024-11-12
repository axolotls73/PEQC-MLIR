#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_16) {
      int arith_muli_19 = (for_iter_18 * arith_const_13); 
      int arith_muli_20 = (for_iter_18 * arith_const_13); 
      int arith_addi_21 = (arith_muli_20 + arith_const_13); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_12); 
      for (int for_iter_23 = arith_muli_19; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_16) {
        int arith_muli_24 = (for_iter_17 * arith_const_13); 
        int arith_muli_25 = (for_iter_17 * arith_const_13); 
        int arith_addi_26 = (arith_muli_25 + arith_const_13); 
        int arith_minsi_27 = min(arith_addi_26, arith_const_12); 
        for (int for_iter_28 = arith_muli_24; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_16) {
          double memref_load_29 = func_arg_3[for_iter_23][for_iter_28]; 
          double memref_load_30 = func_arg_4[for_iter_23]; 
          double memref_load_31 = func_arg_5[for_iter_28]; 
          double arith_mulf_32 = (memref_load_30 * memref_load_31); 
          double arith_addf_33 = (memref_load_29 + arith_mulf_32); 
          double memref_load_34 = func_arg_6[for_iter_23]; 
          double memref_load_35 = func_arg_7[for_iter_28]; 
          double arith_mulf_36 = (memref_load_34 * memref_load_35); 
          double arith_addf_37 = (arith_addf_33 + arith_mulf_36); 
          func_arg_3[for_iter_23][for_iter_28] = arith_addf_37; 
          double memref_load_38 = func_arg_9[for_iter_28]; 
          double memref_load_39 = func_arg_3[for_iter_23][for_iter_28]; 
          double arith_mulf_40 = (func_arg_2 * memref_load_39); 
          double memref_load_41 = func_arg_10[for_iter_23]; 
          double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
          double arith_addf_43 = (memref_load_38 + arith_mulf_42); 
          func_arg_9[for_iter_28] = arith_addf_43; 
        }
      }
    }
  }
  for (int for_iter_44 = arith_const_14; for_iter_44 < arith_const_15; for_iter_44 += arith_const_16) {
    int arith_muli_45 = (for_iter_44 * arith_const_13); 
    int arith_muli_46 = (for_iter_44 * arith_const_13); 
    int arith_addi_47 = (arith_muli_46 + arith_const_13); 
    int arith_minsi_48 = min(arith_addi_47, arith_const_12); 
    for (int for_iter_49 = arith_muli_45; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_16) {
      double memref_load_50 = func_arg_9[for_iter_49]; 
      double memref_load_51 = func_arg_11[for_iter_49]; 
      double arith_addf_52 = (memref_load_50 + memref_load_51); 
      func_arg_9[for_iter_49] = arith_addf_52; 
    }
  }
  for (int for_iter_53 = arith_const_14; for_iter_53 < arith_const_15; for_iter_53 += arith_const_16) {
    for (int for_iter_54 = arith_const_14; for_iter_54 < arith_const_15; for_iter_54 += arith_const_16) {
      int arith_muli_55 = (for_iter_53 * arith_const_13); 
      int arith_muli_56 = (for_iter_53 * arith_const_13); 
      int arith_addi_57 = (arith_muli_56 + arith_const_13); 
      int arith_minsi_58 = min(arith_addi_57, arith_const_12); 
      for (int for_iter_59 = arith_muli_55; for_iter_59 < arith_minsi_58; for_iter_59 += arith_const_16) {
        int arith_muli_60 = (for_iter_54 * arith_const_13); 
        int arith_muli_61 = (for_iter_54 * arith_const_13); 
        int arith_addi_62 = (arith_muli_61 + arith_const_13); 
        int arith_minsi_63 = min(arith_addi_62, arith_const_12); 
        for (int for_iter_64 = arith_muli_60; for_iter_64 < arith_minsi_63; for_iter_64 += arith_const_16) {
          double memref_load_65 = func_arg_8[for_iter_59]; 
          double memref_load_66 = func_arg_3[for_iter_59][for_iter_64]; 
          double arith_mulf_67 = (func_arg_1 * memref_load_66); 
          double memref_load_68 = func_arg_9[for_iter_64]; 
          double arith_mulf_69 = (arith_mulf_67 * memref_load_68); 
          double arith_addf_70 = (memref_load_65 + arith_mulf_69); 
          func_arg_8[for_iter_59] = arith_addf_70; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
