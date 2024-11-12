#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 1; 
  int arith_const_6 = 30; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 32; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_7; for_iter_11 < arith_const_6; for_iter_11 += arith_const_9) {
      int arith_addi_12 = (for_iter_10 + arith_const_8); 
      for (int for_iter_13 = for_iter_10; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_5) {
        int arith_addi_14 = (for_iter_11 + arith_const_6); 
        for (int for_iter_15 = for_iter_11; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_5) {
          int arith_addi_16 = (for_iter_13 + arith_const_5); 
          for (int for_iter_17 = arith_addi_16; for_iter_17 < arith_const_8; for_iter_17 += arith_const_5) {
            double memref_load_18 = func_arg_3[for_iter_17][for_iter_13]; 
            double memref_load_19 = func_arg_4[for_iter_17][for_iter_15]; 
            double arith_mulf_20 = (memref_load_18 * memref_load_19); 
            double memref_load_21 = func_arg_4[for_iter_13][for_iter_15]; 
            double arith_addf_22 = (memref_load_21 + arith_mulf_20); 
            func_arg_4[for_iter_13][for_iter_15] = arith_addf_22; 
          }
          double memref_load_23 = func_arg_4[for_iter_13][for_iter_15]; 
          double arith_mulf_24 = (func_arg_2 * memref_load_23); 
          func_arg_4[for_iter_13][for_iter_15] = arith_mulf_24; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
