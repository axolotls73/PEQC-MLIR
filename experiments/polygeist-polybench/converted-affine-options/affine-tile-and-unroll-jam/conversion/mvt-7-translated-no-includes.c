#pragma pocc-region-start
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 32; 
  int arith_const_7 = 40; 
  int arith_const_8 = -32; 
  int arith_const_9 = 0; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_10; for_iter_13 += arith_const_11) {
      int arith_muli_14 = (for_iter_12 * arith_const_8); 
      int arith_addi_15 = (arith_muli_14 + arith_const_7); 
      int arith_minsi_16 = min(arith_addi_15, arith_const_6); 
      for (int for_iter_17 = arith_const_9; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_11) {
        int arith_muli_18 = (for_iter_13 * arith_const_8); 
        int arith_addi_19 = (arith_muli_18 + arith_const_7); 
        int arith_minsi_20 = min(arith_addi_19, arith_const_6); 
        for (int for_iter_21 = arith_const_9; for_iter_21 < arith_minsi_20; for_iter_21 += arith_const_11) {
          int arith_muli_22 = (for_iter_12 * arith_const_6); 
          int arith_addi_23 = (arith_muli_22 + for_iter_17); 
          double memref_load_24 = func_arg_1[arith_addi_23]; 
          int arith_muli_25 = (for_iter_12 * arith_const_6); 
          int arith_addi_26 = (arith_muli_25 + for_iter_17); 
          int arith_muli_27 = (for_iter_13 * arith_const_6); 
          int arith_addi_28 = (arith_muli_27 + for_iter_21); 
          double memref_load_29 = func_arg_5[arith_addi_26][arith_addi_28]; 
          int arith_muli_30 = (for_iter_13 * arith_const_6); 
          int arith_addi_31 = (arith_muli_30 + for_iter_21); 
          double memref_load_32 = func_arg_3[arith_addi_31]; 
          double arith_mulf_33 = (memref_load_29 * memref_load_32); 
          double arith_addf_34 = (memref_load_24 + arith_mulf_33); 
          int arith_muli_35 = (for_iter_12 * arith_const_6); 
          int arith_addi_36 = (arith_muli_35 + for_iter_17); 
          func_arg_1[arith_addi_36] = arith_addf_34; 
          int arith_muli_37 = (for_iter_12 * arith_const_6); 
          int arith_addi_38 = (arith_muli_37 + for_iter_17); 
          double memref_load_39 = func_arg_2[arith_addi_38]; 
          int arith_muli_40 = (for_iter_13 * arith_const_6); 
          int arith_addi_41 = (arith_muli_40 + for_iter_21); 
          int arith_muli_42 = (for_iter_12 * arith_const_6); 
          int arith_addi_43 = (arith_muli_42 + for_iter_17); 
          double memref_load_44 = func_arg_5[arith_addi_41][arith_addi_43]; 
          int arith_muli_45 = (for_iter_13 * arith_const_6); 
          int arith_addi_46 = (arith_muli_45 + for_iter_21); 
          double memref_load_47 = func_arg_4[arith_addi_46]; 
          double arith_mulf_48 = (memref_load_44 * memref_load_47); 
          double arith_addf_49 = (memref_load_39 + arith_mulf_48); 
          int arith_muli_50 = (for_iter_12 * arith_const_6); 
          int arith_addi_51 = (arith_muli_50 + for_iter_17); 
          func_arg_2[arith_addi_51] = arith_addf_49; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
