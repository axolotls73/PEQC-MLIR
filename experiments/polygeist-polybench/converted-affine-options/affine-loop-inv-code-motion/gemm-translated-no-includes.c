#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 25; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_12) {
      double memref_load_15 = func_arg_5[for_iter_13][for_iter_14]; 
      double arith_mulf_16 = (memref_load_15 * func_arg_4); 
      func_arg_5[for_iter_13][for_iter_14] = arith_mulf_16; 
    }
  }
  for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_11; for_iter_17 += arith_const_12) {
    for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_8; for_iter_18 += arith_const_12) {
      double memref_load_19 = func_arg_6[for_iter_17][for_iter_18]; 
      double arith_mulf_20 = (func_arg_3 * memref_load_19); 
      for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_9; for_iter_21 += arith_const_12) {
        double memref_load_22 = func_arg_5[for_iter_17][for_iter_21]; 
        double memref_load_23 = func_arg_7[for_iter_18][for_iter_21]; 
        double arith_mulf_24 = (arith_mulf_20 * memref_load_23); 
        double arith_addf_25 = (memref_load_22 + arith_mulf_24); 
        func_arg_5[for_iter_17][for_iter_21] = arith_addf_25; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
