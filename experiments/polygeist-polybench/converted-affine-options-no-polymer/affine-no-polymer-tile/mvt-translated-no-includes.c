#pragma pocc-region-start
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 0; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_7; for_iter_10 += arith_const_8) {
      int arith_addi_11 = (for_iter_9 + arith_const_8); 
      for (int for_iter_12 = for_iter_9; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_8) {
        int arith_addi_13 = (for_iter_10 + arith_const_8); 
        for (int for_iter_14 = for_iter_10; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_8) {
          double memref_load_15 = func_arg_1[for_iter_12]; 
          double memref_load_16 = func_arg_5[for_iter_12][for_iter_14]; 
          double memref_load_17 = func_arg_3[for_iter_14]; 
          double arith_mulf_18 = (memref_load_16 * memref_load_17); 
          double arith_addf_19 = (memref_load_15 + arith_mulf_18); 
          func_arg_1[for_iter_12] = arith_addf_19; 
        }
      }
    }
  }
  for (int for_iter_20 = arith_const_6; for_iter_20 < arith_const_7; for_iter_20 += arith_const_8) {
    for (int for_iter_21 = arith_const_6; for_iter_21 < arith_const_7; for_iter_21 += arith_const_8) {
      int arith_addi_22 = (for_iter_20 + arith_const_8); 
      for (int for_iter_23 = for_iter_20; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_8) {
        int arith_addi_24 = (for_iter_21 + arith_const_8); 
        for (int for_iter_25 = for_iter_21; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_8) {
          double memref_load_26 = func_arg_2[for_iter_23]; 
          double memref_load_27 = func_arg_5[for_iter_25][for_iter_23]; 
          double memref_load_28 = func_arg_4[for_iter_25]; 
          double arith_mulf_29 = (memref_load_27 * memref_load_28); 
          double arith_addf_30 = (memref_load_26 + arith_mulf_29); 
          func_arg_2[for_iter_23] = arith_addf_30; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
