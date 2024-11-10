#pragma pocc-region-start
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 32; 
  int arith_const_3 = -32; 
  int arith_const_4 = 2; 
  int arith_const_5 = 0; 
  int arith_const_6 = 60; 
  int arith_const_7 = 1; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_6; for_iter_8 += arith_const_7) {
    for (int for_iter_9 = arith_const_5; for_iter_9 < arith_const_4; for_iter_9 += arith_const_7) {
      for (int for_iter_10 = arith_const_5; for_iter_10 < arith_const_4; for_iter_10 += arith_const_7) {
        int arith_muli_11 = (for_iter_9 * arith_const_3); 
        int arith_addi_12 = (arith_muli_11 + arith_const_6); 
        int arith_minsi_13 = min(arith_addi_12, arith_const_2); 
        for (int for_iter_14 = arith_const_5; for_iter_14 < arith_minsi_13; for_iter_14 += arith_const_7) {
          int arith_muli_15 = (for_iter_10 * arith_const_3); 
          int arith_addi_16 = (arith_muli_15 + arith_const_6); 
          int arith_minsi_17 = min(arith_addi_16, arith_const_2); 
          for (int for_iter_18 = arith_const_5; for_iter_18 < arith_minsi_17; for_iter_18 += arith_const_7) {
            int arith_muli_19 = (for_iter_9 * arith_const_2); 
            int arith_addi_20 = (arith_muli_19 + for_iter_14); 
            int arith_muli_21 = (for_iter_10 * arith_const_2); 
            int arith_addi_22 = (arith_muli_21 + for_iter_18); 
            int memref_load_23 = func_arg_1[arith_addi_20][arith_addi_22]; 
            int arith_muli_24 = (for_iter_9 * arith_const_2); 
            int arith_addi_25 = (arith_muli_24 + for_iter_14); 
            int memref_load_26 = func_arg_1[arith_addi_25][for_iter_8]; 
            int arith_muli_27 = (for_iter_10 * arith_const_2); 
            int arith_addi_28 = (arith_muli_27 + for_iter_18); 
            int memref_load_29 = func_arg_1[for_iter_8][arith_addi_28]; 
            int arith_addi_30 = (memref_load_26 + memref_load_29); 
            int arith_cmpi_31 = (memref_load_23 < arith_addi_30); 
            int arith_select_32 = (arith_cmpi_31 ? memref_load_23 : arith_addi_30); 
            int arith_muli_33 = (for_iter_9 * arith_const_2); 
            int arith_addi_34 = (arith_muli_33 + for_iter_14); 
            int arith_muli_35 = (for_iter_10 * arith_const_2); 
            int arith_addi_36 = (arith_muli_35 + for_iter_18); 
            func_arg_1[arith_addi_34][arith_addi_36] = arith_select_32; 
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
