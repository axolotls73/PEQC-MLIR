#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 2; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_muli_14 = (for_iter_13 * arith_const_8); 
    int arith_muli_15 = (for_iter_13 * arith_const_8); 
    int arith_addi_16 = (arith_muli_15 + arith_const_8); 
    int arith_minsi_17 = min(arith_addi_16, arith_const_7); 
    for (int for_iter_18 = arith_muli_14; for_iter_18 < arith_minsi_17; for_iter_18 += arith_const_12) {
      func_arg_5[for_iter_18] = arith_const_9; 
    }
  }
  for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_11; for_iter_19 += arith_const_12) {
    int arith_muli_20 = (for_iter_19 * arith_const_8); 
    int arith_muli_21 = (for_iter_19 * arith_const_8); 
    int arith_addi_22 = (arith_muli_21 + arith_const_8); 
    int arith_minsi_23 = min(arith_addi_22, arith_const_7); 
    for (int for_iter_24 = arith_muli_20; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_12) {
      for (int for_iter_25 = arith_const_10; for_iter_25 < arith_const_11; for_iter_25 += arith_const_12) {
        int arith_muli_26 = (for_iter_25 * arith_const_8); 
        int arith_muli_27 = (for_iter_25 * arith_const_8); 
        int arith_addi_28 = (arith_muli_27 + arith_const_8); 
        int arith_minsi_29 = min(arith_addi_28, arith_const_6); 
        for (int for_iter_30 = arith_muli_26; for_iter_30 < arith_minsi_29; for_iter_30 += arith_const_12) {
          double memref_load_31 = func_arg_5[for_iter_24]; 
          double memref_load_32 = func_arg_2[for_iter_24][for_iter_30]; 
          double memref_load_33 = func_arg_3[for_iter_30]; 
          double arith_mulf_34 = (memref_load_32 * memref_load_33); 
          double arith_addf_35 = (memref_load_31 + arith_mulf_34); 
          func_arg_5[for_iter_24] = arith_addf_35; 
        }
      }
    }
  }
  for (int for_iter_36 = arith_const_10; for_iter_36 < arith_const_11; for_iter_36 += arith_const_12) {
    int arith_muli_37 = (for_iter_36 * arith_const_8); 
    int arith_muli_38 = (for_iter_36 * arith_const_8); 
    int arith_addi_39 = (arith_muli_38 + arith_const_8); 
    int arith_minsi_40 = min(arith_addi_39, arith_const_6); 
    for (int for_iter_41 = arith_muli_37; for_iter_41 < arith_minsi_40; for_iter_41 += arith_const_12) {
      func_arg_4[for_iter_41] = arith_const_9; 
    }
  }
  for (int for_iter_42 = arith_const_10; for_iter_42 < arith_const_11; for_iter_42 += arith_const_12) {
    int arith_muli_43 = (for_iter_42 * arith_const_8); 
    int arith_muli_44 = (for_iter_42 * arith_const_8); 
    int arith_addi_45 = (arith_muli_44 + arith_const_8); 
    int arith_minsi_46 = min(arith_addi_45, arith_const_6); 
    for (int for_iter_47 = arith_muli_43; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_12) {
      for (int for_iter_48 = arith_const_10; for_iter_48 < arith_const_11; for_iter_48 += arith_const_12) {
        int arith_muli_49 = (for_iter_48 * arith_const_8); 
        int arith_muli_50 = (for_iter_48 * arith_const_8); 
        int arith_addi_51 = (arith_muli_50 + arith_const_8); 
        int arith_minsi_52 = min(arith_addi_51, arith_const_7); 
        for (int for_iter_53 = arith_muli_49; for_iter_53 < arith_minsi_52; for_iter_53 += arith_const_12) {
          double memref_load_54 = func_arg_4[for_iter_47]; 
          double memref_load_55 = func_arg_2[for_iter_53][for_iter_47]; 
          double memref_load_56 = func_arg_5[for_iter_53]; 
          double arith_mulf_57 = (memref_load_55 * memref_load_56); 
          double arith_addf_58 = (memref_load_54 + arith_mulf_57); 
          func_arg_4[for_iter_47] = arith_addf_58; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
