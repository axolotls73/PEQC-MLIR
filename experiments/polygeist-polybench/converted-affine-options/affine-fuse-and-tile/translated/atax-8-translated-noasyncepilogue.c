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
    int arith_muli_22 = (for_iter_21 * arith_const_9); 
    int arith_addi_23 = (arith_muli_22 + arith_const_8); 
    int arith_minsi_24 = min(arith_addi_23, arith_const_7); 
    for (int for_iter_25 = arith_const_11; for_iter_25 < arith_minsi_24; for_iter_25 += arith_const_13) {
      for (int for_iter_26 = arith_const_11; for_iter_26 < arith_const_12; for_iter_26 += arith_const_13) {
        int arith_muli_27 = (for_iter_26 * arith_const_9); 
        int arith_addi_28 = (arith_muli_27 + arith_const_6); 
        int arith_minsi_29 = min(arith_addi_28, arith_const_7); 
        for (int for_iter_30 = arith_const_11; for_iter_30 < arith_minsi_29; for_iter_30 += arith_const_13) {
          int arith_muli_31 = (for_iter_21 * arith_const_7); 
          int arith_addi_32 = (arith_muli_31 + for_iter_25); 
          double memref_load_33 = func_arg_5[arith_addi_32]; 
          int arith_muli_34 = (for_iter_21 * arith_const_7); 
          int arith_addi_35 = (arith_muli_34 + for_iter_25); 
          int arith_muli_36 = (for_iter_26 * arith_const_7); 
          int arith_addi_37 = (arith_muli_36 + for_iter_30); 
          double memref_load_38 = func_arg_2[arith_addi_35][arith_addi_37]; 
          int arith_muli_39 = (for_iter_26 * arith_const_7); 
          int arith_addi_40 = (arith_muli_39 + for_iter_30); 
          double memref_load_41 = func_arg_3[arith_addi_40]; 
          double arith_mulf_42 = (memref_load_38 * memref_load_41); 
          double arith_addf_43 = (memref_load_33 + arith_mulf_42); 
          int arith_muli_44 = (for_iter_21 * arith_const_7); 
          int arith_addi_45 = (arith_muli_44 + for_iter_25); 
          func_arg_5[arith_addi_45] = arith_addf_43; 
        }
      }
    }
  }
  for (int for_iter_46 = arith_const_11; for_iter_46 < arith_const_12; for_iter_46 += arith_const_13) {
    int arith_muli_47 = (for_iter_46 * arith_const_9); 
    int arith_addi_48 = (arith_muli_47 + arith_const_6); 
    int arith_minsi_49 = min(arith_addi_48, arith_const_7); 
    for (int for_iter_50 = arith_const_11; for_iter_50 < arith_minsi_49; for_iter_50 += arith_const_13) {
      int arith_muli_51 = (for_iter_46 * arith_const_7); 
      int arith_addi_52 = (arith_muli_51 + for_iter_50); 
      func_arg_4[arith_addi_52] = arith_const_10; 
    }
  }
  for (int for_iter_53 = arith_const_11; for_iter_53 < arith_const_12; for_iter_53 += arith_const_13) {
    int arith_muli_54 = (for_iter_53 * arith_const_9); 
    int arith_addi_55 = (arith_muli_54 + arith_const_6); 
    int arith_minsi_56 = min(arith_addi_55, arith_const_7); 
    for (int for_iter_57 = arith_const_11; for_iter_57 < arith_minsi_56; for_iter_57 += arith_const_13) {
      for (int for_iter_58 = arith_const_11; for_iter_58 < arith_const_12; for_iter_58 += arith_const_13) {
        int arith_muli_59 = (for_iter_58 * arith_const_9); 
        int arith_addi_60 = (arith_muli_59 + arith_const_8); 
        int arith_minsi_61 = min(arith_addi_60, arith_const_7); 
        for (int for_iter_62 = arith_const_11; for_iter_62 < arith_minsi_61; for_iter_62 += arith_const_13) {
          int arith_muli_63 = (for_iter_53 * arith_const_7); 
          int arith_addi_64 = (arith_muli_63 + for_iter_57); 
          double memref_load_65 = func_arg_4[arith_addi_64]; 
          int arith_muli_66 = (for_iter_58 * arith_const_7); 
          int arith_addi_67 = (arith_muli_66 + for_iter_62); 
          int arith_muli_68 = (for_iter_53 * arith_const_7); 
          int arith_addi_69 = (arith_muli_68 + for_iter_57); 
          double memref_load_70 = func_arg_2[arith_addi_67][arith_addi_69]; 
          int arith_muli_71 = (for_iter_58 * arith_const_7); 
          int arith_addi_72 = (arith_muli_71 + for_iter_62); 
          double memref_load_73 = func_arg_5[arith_addi_72]; 
          double arith_mulf_74 = (memref_load_70 * memref_load_73); 
          double arith_addf_75 = (memref_load_65 + arith_mulf_74); 
          int arith_muli_76 = (for_iter_53 * arith_const_7); 
          int arith_addi_77 = (arith_muli_76 + for_iter_57); 
          func_arg_4[arith_addi_77] = arith_addf_75; 
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
