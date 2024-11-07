#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 19; 
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  int arith_const_8 = 30; 
  int arith_const_9 = 0; 
  int arith_const_10 = 20; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_8; for_iter_13 += arith_const_11) {
      int arith_addi_14 = (for_iter_12 + arith_const_10); 
      for (int for_iter_15 = for_iter_12; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_7) {
        int arith_addi_16 = (for_iter_13 + arith_const_8); 
        for (int for_iter_17 = for_iter_13; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_7) {
          int arith_muli_18 = (for_iter_15 * arith_const_6); 
          int arith_addi_19 = (arith_muli_18 + arith_const_5); 
          for (int for_iter_20 = arith_const_9; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_7) {
            int arith_addi_21 = (for_iter_15 + for_iter_20); 
            int arith_addi_22 = (arith_addi_21 + arith_const_7); 
            double memref_load_23 = func_arg_3[arith_addi_22][for_iter_15]; 
            int arith_addi_24 = (for_iter_15 + for_iter_20); 
            int arith_addi_25 = (arith_addi_24 + arith_const_7); 
            double memref_load_26 = func_arg_4[arith_addi_25][for_iter_17]; 
            double arith_mulf_27 = (memref_load_23 * memref_load_26); 
            double memref_load_28 = func_arg_4[for_iter_15][for_iter_17]; 
            double arith_addf_29 = (memref_load_28 + arith_mulf_27); 
            func_arg_4[for_iter_15][for_iter_17] = arith_addf_29; 
          }
          double memref_load_30 = func_arg_4[for_iter_15][for_iter_17]; 
          double arith_mulf_31 = (func_arg_2 * memref_load_30); 
          func_arg_4[for_iter_15][for_iter_17] = arith_mulf_31; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
