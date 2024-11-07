#pragma pocc-region-start
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 3; 
  int arith_const_3 = 4; 
  int arith_const_4 = 32; 
  int arith_const_5 = 2; 
  int arith_const_6 = 0; 
  int arith_const_7 = 60; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_5; for_iter_10 += arith_const_8) {
      for (int for_iter_11 = arith_const_6; for_iter_11 < arith_const_5; for_iter_11 += arith_const_8) {
        int arith_muli_12 = (for_iter_10 * arith_const_4); 
        int arith_muli_13 = (for_iter_10 * arith_const_4); 
        int arith_addi_14 = (arith_muli_13 + arith_const_4); 
        int arith_minsi_15 = min(arith_addi_14, arith_const_7); 
        for (int for_iter_16 = arith_muli_12; for_iter_16 < arith_minsi_15; for_iter_16 += arith_const_8) {
          int arith_muli_17 = (for_iter_11 * arith_const_4); 
          int arith_muli_18 = (for_iter_11 * arith_const_4); 
          int arith_addi_19 = (arith_muli_18 + arith_const_4); 
          int arith_minsi_20 = min(arith_addi_19, arith_const_7); 
          for (int for_iter_21 = arith_muli_17; for_iter_21 < arith_minsi_20; for_iter_21 += arith_const_3) {
            int memref_load_22 = func_arg_1[for_iter_16][for_iter_21]; 
            int memref_load_23 = func_arg_1[for_iter_16][for_iter_9]; 
            int memref_load_24 = func_arg_1[for_iter_9][for_iter_21]; 
            int arith_addi_25 = (memref_load_23 + memref_load_24); 
            int arith_cmpi_26 = ((memref_load_22 < arith_addi_25) ? 1 : 0); 
            int arith_select_27 = (arith_cmpi_26 ? memref_load_22 : arith_addi_25); 
            func_arg_1[for_iter_16][for_iter_21] = arith_select_27; 
            int arith_addi_28 = (for_iter_21 + arith_const_8); 
            int memref_load_29 = func_arg_1[for_iter_16][arith_addi_28]; 
            int memref_load_30 = func_arg_1[for_iter_16][for_iter_9]; 
            int memref_load_31 = func_arg_1[for_iter_9][arith_addi_28]; 
            int arith_addi_32 = (memref_load_30 + memref_load_31); 
            int arith_cmpi_33 = ((memref_load_29 < arith_addi_32) ? 1 : 0); 
            int arith_select_34 = (arith_cmpi_33 ? memref_load_29 : arith_addi_32); 
            func_arg_1[for_iter_16][arith_addi_28] = arith_select_34; 
            int arith_addi_35 = (for_iter_21 + arith_const_5); 
            int memref_load_36 = func_arg_1[for_iter_16][arith_addi_35]; 
            int memref_load_37 = func_arg_1[for_iter_16][for_iter_9]; 
            int memref_load_38 = func_arg_1[for_iter_9][arith_addi_35]; 
            int arith_addi_39 = (memref_load_37 + memref_load_38); 
            int arith_cmpi_40 = ((memref_load_36 < arith_addi_39) ? 1 : 0); 
            int arith_select_41 = (arith_cmpi_40 ? memref_load_36 : arith_addi_39); 
            func_arg_1[for_iter_16][arith_addi_35] = arith_select_41; 
            int arith_addi_42 = (for_iter_21 + arith_const_2); 
            int memref_load_43 = func_arg_1[for_iter_16][arith_addi_42]; 
            int memref_load_44 = func_arg_1[for_iter_16][for_iter_9]; 
            int memref_load_45 = func_arg_1[for_iter_9][arith_addi_42]; 
            int arith_addi_46 = (memref_load_44 + memref_load_45); 
            int arith_cmpi_47 = ((memref_load_43 < arith_addi_46) ? 1 : 0); 
            int arith_select_48 = (arith_cmpi_47 ? memref_load_43 : arith_addi_46); 
            func_arg_1[for_iter_16][arith_addi_42] = arith_select_48; 
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
