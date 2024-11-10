#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    func_arg_7[for_iter_12] = arith_const_8; 
  }
  for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_10; for_iter_13 += arith_const_11) {
    for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_11) {
      double memref_load_15 = func_arg_4[for_iter_13][for_iter_14]; 
      double memref_load_16 = func_arg_6[for_iter_14]; 
      double arith_mulf_17 = (memref_load_15 * memref_load_16); 
      double memref_load_18 = func_arg_7[for_iter_13]; 
      double arith_addf_19 = (arith_mulf_17 + memref_load_18); 
      func_arg_7[for_iter_13] = arith_addf_19; 
    }
  }
  for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_10; for_iter_20 += arith_const_11) {
    func_arg_5[for_iter_20] = arith_const_8; 
  }
  for (int for_iter_21 = arith_const_9; for_iter_21 < arith_const_10; for_iter_21 += arith_const_11) {
    for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_10; for_iter_22 += arith_const_11) {
      double memref_load_23 = func_arg_3[for_iter_21][for_iter_22]; 
      double memref_load_24 = func_arg_6[for_iter_22]; 
      double arith_mulf_25 = (memref_load_23 * memref_load_24); 
      double memref_load_26 = func_arg_5[for_iter_21]; 
      double arith_addf_27 = (arith_mulf_25 + memref_load_26); 
      func_arg_5[for_iter_21] = arith_addf_27; 
    }
  }
  for (int for_iter_28 = arith_const_9; for_iter_28 < arith_const_10; for_iter_28 += arith_const_11) {
    double memref_load_29 = func_arg_5[for_iter_28]; 
    double arith_mulf_30 = (func_arg_1 * memref_load_29); 
    double memref_load_31 = func_arg_7[for_iter_28]; 
    double arith_mulf_32 = (func_arg_2 * memref_load_31); 
    double arith_addf_33 = (arith_mulf_30 + arith_mulf_32); 
    func_arg_7[for_iter_28] = arith_addf_33; 
  }
  return; 

}
#pragma pocc-region-end
