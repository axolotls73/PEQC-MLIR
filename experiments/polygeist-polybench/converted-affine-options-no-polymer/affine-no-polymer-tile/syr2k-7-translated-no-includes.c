#pragma pocc-region-start
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = 0; 
  int arith_const_9 = 30; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_10); 
    for (int for_iter_13 = for_iter_11; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_10) {
      int arith_addi_14 = (for_iter_13 + arith_const_10); 
      for (int for_iter_15 = arith_const_8; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_10) {
        double memref_load_16 = func_arg_4[for_iter_13][for_iter_15]; 
        double arith_mulf_17 = (memref_load_16 * func_arg_3); 
        func_arg_4[for_iter_13][for_iter_15] = arith_mulf_17; 
      }
      for (int for_iter_18 = arith_const_8; for_iter_18 < arith_const_7; for_iter_18 += arith_const_10) {
        int arith_addi_19 = (for_iter_13 + arith_const_10); 
        for (int for_iter_20 = arith_const_8; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_10) {
          double memref_load_21 = func_arg_5[for_iter_20][for_iter_18]; 
          double arith_mulf_22 = (memref_load_21 * func_arg_2); 
          double memref_load_23 = func_arg_6[for_iter_13][for_iter_18]; 
          double arith_mulf_24 = (arith_mulf_22 * memref_load_23); 
          double memref_load_25 = func_arg_6[for_iter_20][for_iter_18]; 
          double arith_mulf_26 = (memref_load_25 * func_arg_2); 
          double memref_load_27 = func_arg_5[for_iter_13][for_iter_18]; 
          double arith_mulf_28 = (arith_mulf_26 * memref_load_27); 
          double arith_addf_29 = (arith_mulf_24 + arith_mulf_28); 
          double memref_load_30 = func_arg_4[for_iter_13][for_iter_20]; 
          double arith_addf_31 = (memref_load_30 + arith_addf_29); 
          func_arg_4[for_iter_13][for_iter_20] = arith_addf_31; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
