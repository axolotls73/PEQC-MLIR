#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 30; 
  int arith_const_6 = 20; 
  int arith_const_7 = 0; 
  int arith_const_8 = 19; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = arith_addi_11; for_iter_12 < arith_const_6; for_iter_12 += arith_const_9) {
      for (int for_iter_13 = arith_const_7; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
        double memref_load_14 = func_arg_4[for_iter_10][for_iter_13]; 
        double memref_load_15 = func_arg_3[for_iter_12][for_iter_10]; 
        double memref_load_16 = func_arg_4[for_iter_12][for_iter_13]; 
        double arith_mulf_17 = (memref_load_15 * memref_load_16); 
        double arith_addf_18 = (memref_load_14 + arith_mulf_17); 
        func_arg_4[for_iter_10][for_iter_13] = arith_addf_18; 
      }
    }
  }
  for (int for_iter_19 = arith_const_7; for_iter_19 < arith_const_6; for_iter_19 += arith_const_9) {
    for (int for_iter_20 = arith_const_7; for_iter_20 < arith_const_5; for_iter_20 += arith_const_9) {
      double memref_load_21 = func_arg_4[for_iter_19][for_iter_20]; 
      double arith_mulf_22 = (func_arg_2 * memref_load_21); 
      func_arg_4[for_iter_19][for_iter_20] = arith_mulf_22; 
    }
  }
  return; 

}
#pragma pocc-region-end
