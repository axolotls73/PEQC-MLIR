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
        int arith_muli_18 = (for_iter_12 * arith_const_6); 
        int arith_addi_19 = (arith_muli_18 + for_iter_17); 
        int arith_muli_20 = (for_iter_13 * arith_const_8); 
        int arith_addi_21 = (arith_muli_20 + arith_const_7); 
        int arith_minsi_22 = min(arith_addi_21, arith_const_6); 
        for (int for_iter_23 = arith_const_9; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_11) {
          int arith_muli_24 = (for_iter_13 * arith_const_6); 
          int arith_addi_25 = (arith_muli_24 + for_iter_23); 
          double memref_load_26 = func_arg_1[arith_addi_19]; 
          double memref_load_27 = func_arg_5[arith_addi_19][arith_addi_25]; 
          double memref_load_28 = func_arg_3[arith_addi_25]; 
          double arith_mulf_29 = (memref_load_27 * memref_load_28); 
          double arith_addf_30 = (memref_load_26 + arith_mulf_29); 
          func_arg_1[arith_addi_19] = arith_addf_30; 
          double memref_load_31 = func_arg_2[arith_addi_19]; 
          double memref_load_32 = func_arg_5[arith_addi_25][arith_addi_19]; 
          double memref_load_33 = func_arg_4[arith_addi_25]; 
          double arith_mulf_34 = (memref_load_32 * memref_load_33); 
          double arith_addf_35 = (memref_load_31 + arith_mulf_34); 
          func_arg_2[arith_addi_19] = arith_addf_35; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
