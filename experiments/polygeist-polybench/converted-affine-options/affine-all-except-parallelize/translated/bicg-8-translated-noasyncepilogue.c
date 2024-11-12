#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  int arith_const_9 = 42; 
  int arith_const_10 = -32; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_10); 
    int arith_addi_17 = (arith_muli_16 + arith_const_9); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_8); 
    for (int for_iter_19 = arith_const_12; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_14) {
      int arith_muli_20 = (for_iter_15 * arith_const_8); 
      int arith_addi_21 = (arith_muli_20 + for_iter_19); 
      func_arg_4[arith_addi_21] = arith_const_11; 
    }
  }
  for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_13; for_iter_22 += arith_const_14) {
    int arith_muli_23 = (for_iter_22 * arith_const_10); 
    int arith_addi_24 = (arith_muli_23 + arith_const_9); 
    int arith_minsi_25 = min(arith_addi_24, arith_const_8); 
    for (int for_iter_26 = arith_const_12; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_14) {
      int arith_muli_27 = (for_iter_22 * arith_const_8); 
      int arith_addi_28 = (arith_muli_27 + for_iter_26); 
      for (int for_iter_29 = arith_const_12; for_iter_29 < arith_const_13; for_iter_29 += arith_const_14) {
        int arith_muli_30 = (for_iter_29 * arith_const_10); 
        int arith_addi_31 = (arith_muli_30 + arith_const_7); 
        int arith_minsi_32 = min(arith_addi_31, arith_const_8); 
        for (int for_iter_33 = arith_const_12; for_iter_33 < arith_minsi_32; for_iter_33 += arith_const_14) {
          int arith_muli_34 = (for_iter_29 * arith_const_8); 
          int arith_addi_35 = (arith_muli_34 + for_iter_33); 
          double memref_load_36 = func_arg_4[arith_addi_28]; 
          double memref_load_37 = func_arg_2[arith_addi_28][arith_addi_35]; 
          double memref_load_38 = func_arg_5[arith_addi_35]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double arith_addf_40 = (memref_load_36 + arith_mulf_39); 
          func_arg_4[arith_addi_28] = arith_addf_40; 
        }
      }
    }
  }
  for (int for_iter_41 = arith_const_12; for_iter_41 < arith_const_13; for_iter_41 += arith_const_14) {
    int arith_muli_42 = (for_iter_41 * arith_const_10); 
    int arith_addi_43 = (arith_muli_42 + arith_const_7); 
    int arith_minsi_44 = min(arith_addi_43, arith_const_8); 
    for (int for_iter_45 = arith_const_12; for_iter_45 < arith_minsi_44; for_iter_45 += arith_const_14) {
      int arith_muli_46 = (for_iter_41 * arith_const_8); 
      int arith_addi_47 = (arith_muli_46 + for_iter_45); 
      func_arg_3[arith_addi_47] = arith_const_11; 
    }
  }
  for (int for_iter_48 = arith_const_12; for_iter_48 < arith_const_13; for_iter_48 += arith_const_14) {
    for (int for_iter_49 = arith_const_12; for_iter_49 < arith_const_13; for_iter_49 += arith_const_14) {
      int arith_muli_50 = (for_iter_49 * arith_const_10); 
      int arith_addi_51 = (arith_muli_50 + arith_const_9); 
      int arith_minsi_52 = min(arith_addi_51, arith_const_8); 
      for (int for_iter_53 = arith_const_12; for_iter_53 < arith_minsi_52; for_iter_53 += arith_const_14) {
        int arith_muli_54 = (for_iter_49 * arith_const_8); 
        int arith_addi_55 = (arith_muli_54 + for_iter_53); 
        double memref_load_56 = func_arg_6[arith_addi_55]; 
        int arith_muli_57 = (for_iter_48 * arith_const_10); 
        int arith_addi_58 = (arith_muli_57 + arith_const_7); 
        int arith_minsi_59 = min(arith_addi_58, arith_const_8); 
        for (int for_iter_60 = arith_const_12; for_iter_60 < arith_minsi_59; for_iter_60 += arith_const_14) {
          int arith_muli_61 = (for_iter_48 * arith_const_8); 
          int arith_addi_62 = (arith_muli_61 + for_iter_60); 
          double memref_load_63 = func_arg_3[arith_addi_62]; 
          double memref_load_64 = func_arg_2[arith_addi_55][arith_addi_62]; 
          double arith_mulf_65 = (memref_load_56 * memref_load_64); 
          double arith_addf_66 = (memref_load_63 + arith_mulf_65); 
          func_arg_3[arith_addi_62] = arith_addf_66; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;


  kernel_bicg(m, n, A, s, q, p, r);

}

#pragma pocc-region-end
