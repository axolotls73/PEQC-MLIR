#pragma pocc-region-start
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 0; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_7; for_iter_10 += arith_const_8) {
      double memref_load_11 = func_arg_1[for_iter_9]; 
      double memref_load_12 = func_arg_5[for_iter_9][for_iter_10]; 
      double memref_load_13 = func_arg_3[for_iter_10]; 
      double arith_mulf_14 = (memref_load_12 * memref_load_13); 
      double arith_addf_15 = (memref_load_11 + arith_mulf_14); 
      func_arg_1[for_iter_9] = arith_addf_15; 
    }
  }
  for (int for_iter_16 = arith_const_6; for_iter_16 < arith_const_7; for_iter_16 += arith_const_8) {
    for (int for_iter_17 = arith_const_6; for_iter_17 < arith_const_7; for_iter_17 += arith_const_8) {
      double memref_load_18 = func_arg_2[for_iter_16]; 
      double memref_load_19 = func_arg_5[for_iter_17][for_iter_16]; 
      double memref_load_20 = func_arg_4[for_iter_17]; 
      double arith_mulf_21 = (memref_load_19 * memref_load_20); 
      double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
      func_arg_2[for_iter_16] = arith_addf_22; 
    }
  }
  return; 

}
#pragma pocc-region-end
