#pragma pocc-region-start
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = 42; 
  int arith_const_9 = 32; 
  double arith_const_10 = 0.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_muli_15 = (for_iter_14 * arith_const_9); 
    int arith_muli_16 = (for_iter_14 * arith_const_9); 
    int arith_addi_17 = (arith_muli_16 + arith_const_9); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_8); 
    for (int for_iter_19 = arith_muli_15; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_13) {
      func_arg_4[for_iter_19] = arith_const_10; 
    }
  }
  for (int for_iter_20 = arith_const_11; for_iter_20 < arith_const_12; for_iter_20 += arith_const_13) {
    for (int for_iter_21 = arith_const_11; for_iter_21 < arith_const_12; for_iter_21 += arith_const_13) {
      int arith_muli_22 = (for_iter_20 * arith_const_9); 
      int arith_muli_23 = (for_iter_20 * arith_const_9); 
      int arith_addi_24 = (arith_muli_23 + arith_const_9); 
      int arith_minsi_25 = min(arith_addi_24, arith_const_8); 
      for (int for_iter_26 = arith_muli_22; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_13) {
        int arith_muli_27 = (for_iter_21 * arith_const_9); 
        int arith_muli_28 = (for_iter_21 * arith_const_9); 
        int arith_addi_29 = (arith_muli_28 + arith_const_9); 
        int arith_minsi_30 = min(arith_addi_29, arith_const_7); 
        for (int for_iter_31 = arith_muli_27; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_13) {
          double memref_load_32 = func_arg_4[for_iter_26]; 
          double memref_load_33 = func_arg_2[for_iter_26][for_iter_31]; 
          double memref_load_34 = func_arg_5[for_iter_31]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
          func_arg_4[for_iter_26] = arith_addf_36; 
        }
      }
    }
  }
  for (int for_iter_37 = arith_const_11; for_iter_37 < arith_const_12; for_iter_37 += arith_const_13) {
    int arith_muli_38 = (for_iter_37 * arith_const_9); 
    int arith_muli_39 = (for_iter_37 * arith_const_9); 
    int arith_addi_40 = (arith_muli_39 + arith_const_9); 
    int arith_minsi_41 = min(arith_addi_40, arith_const_7); 
    for (int for_iter_42 = arith_muli_38; for_iter_42 < arith_minsi_41; for_iter_42 += arith_const_13) {
      func_arg_3[for_iter_42] = arith_const_10; 
    }
  }
  for (int for_iter_43 = arith_const_11; for_iter_43 < arith_const_12; for_iter_43 += arith_const_13) {
    for (int for_iter_44 = arith_const_11; for_iter_44 < arith_const_12; for_iter_44 += arith_const_13) {
      int arith_muli_45 = (for_iter_44 * arith_const_9); 
      int arith_muli_46 = (for_iter_44 * arith_const_9); 
      int arith_addi_47 = (arith_muli_46 + arith_const_9); 
      int arith_minsi_48 = min(arith_addi_47, arith_const_8); 
      for (int for_iter_49 = arith_muli_45; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_13) {
        double memref_load_50 = func_arg_6[for_iter_49]; 
        int arith_muli_51 = (for_iter_43 * arith_const_9); 
        int arith_muli_52 = (for_iter_43 * arith_const_9); 
        int arith_addi_53 = (arith_muli_52 + arith_const_9); 
        int arith_minsi_54 = min(arith_addi_53, arith_const_7); 
        for (int for_iter_55 = arith_muli_51; for_iter_55 < arith_minsi_54; for_iter_55 += arith_const_13) {
          double memref_load_56 = func_arg_3[for_iter_55]; 
          double memref_load_57 = func_arg_2[for_iter_49][for_iter_55]; 
          double arith_mulf_58 = (memref_load_50 * memref_load_57); 
          double arith_addf_59 = (memref_load_56 + arith_mulf_58); 
          func_arg_3[for_iter_55] = arith_addf_59; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
