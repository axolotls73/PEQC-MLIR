#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 32; 
  int arith_const_8 = 38; 
  int arith_const_9 = -32; 
  double arith_const_10 = 0.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_muli_15 = (for_iter_14 * arith_const_9); 
    int arith_addi_16 = (arith_muli_15 + arith_const_8); 
    int arith_minsi_17 = min(arith_addi_16, arith_const_7); 
    for (int for_iter_18 = arith_const_11; for_iter_18 < arith_minsi_17; for_iter_18 += arith_const_13) {
      int arith_muli_19 = (for_iter_14 * arith_const_7); 
      int arith_addi_20 = (arith_muli_19 + for_iter_18); 
      func_arg_5[arith_addi_20] = arith_const_10; 
    }
  }
  for (int for_iter_21 = arith_const_11; for_iter_21 < arith_const_12; for_iter_21 += arith_const_13) {
    for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_12; for_iter_22 += arith_const_13) {
      int arith_muli_23 = (for_iter_21 * arith_const_9); 
      int arith_addi_24 = (arith_muli_23 + arith_const_8); 
      int arith_minsi_25 = min(arith_addi_24, arith_const_7); 
      for (int for_iter_26 = arith_const_11; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_13) {
        int arith_muli_27 = (for_iter_21 * arith_const_7); 
        int arith_addi_28 = (arith_muli_27 + for_iter_26); 
        int arith_muli_29 = (for_iter_22 * arith_const_9); 
        int arith_addi_30 = (arith_muli_29 + arith_const_6); 
        int arith_minsi_31 = min(arith_addi_30, arith_const_7); 
        for (int for_iter_32 = arith_const_11; for_iter_32 < arith_minsi_31; for_iter_32 += arith_const_13) {
          int arith_muli_33 = (for_iter_22 * arith_const_7); 
          int arith_addi_34 = (arith_muli_33 + for_iter_32); 
          double memref_load_35 = func_arg_5[arith_addi_28]; 
          double memref_load_36 = func_arg_2[arith_addi_28][arith_addi_34]; 
          double memref_load_37 = func_arg_3[arith_addi_34]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double arith_addf_39 = (memref_load_35 + arith_mulf_38); 
          func_arg_5[arith_addi_28] = arith_addf_39; 
        }
      }
    }
  }
  for (int for_iter_40 = arith_const_11; for_iter_40 < arith_const_12; for_iter_40 += arith_const_13) {
    int arith_muli_41 = (for_iter_40 * arith_const_9); 
    int arith_addi_42 = (arith_muli_41 + arith_const_6); 
    int arith_minsi_43 = min(arith_addi_42, arith_const_7); 
    for (int for_iter_44 = arith_const_11; for_iter_44 < arith_minsi_43; for_iter_44 += arith_const_13) {
      int arith_muli_45 = (for_iter_40 * arith_const_7); 
      int arith_addi_46 = (arith_muli_45 + for_iter_44); 
      func_arg_4[arith_addi_46] = arith_const_10; 
    }
  }
  for (int for_iter_47 = arith_const_11; for_iter_47 < arith_const_12; for_iter_47 += arith_const_13) {
    for (int for_iter_48 = arith_const_11; for_iter_48 < arith_const_12; for_iter_48 += arith_const_13) {
      int arith_muli_49 = (for_iter_48 * arith_const_9); 
      int arith_addi_50 = (arith_muli_49 + arith_const_8); 
      int arith_minsi_51 = min(arith_addi_50, arith_const_7); 
      for (int for_iter_52 = arith_const_11; for_iter_52 < arith_minsi_51; for_iter_52 += arith_const_13) {
        int arith_muli_53 = (for_iter_48 * arith_const_7); 
        int arith_addi_54 = (arith_muli_53 + for_iter_52); 
        int arith_muli_55 = (for_iter_47 * arith_const_9); 
        int arith_addi_56 = (arith_muli_55 + arith_const_6); 
        int arith_minsi_57 = min(arith_addi_56, arith_const_7); 
        for (int for_iter_58 = arith_const_11; for_iter_58 < arith_minsi_57; for_iter_58 += arith_const_13) {
          int arith_muli_59 = (for_iter_47 * arith_const_7); 
          int arith_addi_60 = (arith_muli_59 + for_iter_58); 
          double memref_load_61 = func_arg_4[arith_addi_60]; 
          double memref_load_62 = func_arg_2[arith_addi_54][arith_addi_60]; 
          double memref_load_63 = func_arg_5[arith_addi_54]; 
          double arith_mulf_64 = (memref_load_62 * memref_load_63); 
          double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
          func_arg_4[arith_addi_60] = arith_addf_65; 
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
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}

#pragma pocc-region-end
