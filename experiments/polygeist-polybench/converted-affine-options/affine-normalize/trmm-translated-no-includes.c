#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 30; 
  int arith_const_7 = -1; 
  int arith_const_8 = 0; 
  int arith_const_9 = 19; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_muli_12 = (for_iter_11 * arith_const_7); 
    int arith_addi_13 = (arith_muli_12 + arith_const_9); 
    for (int for_iter_14 = arith_const_8; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_10) {
      int arith_addi_15 = (for_iter_11 + for_iter_14); 
      int arith_addi_16 = (arith_addi_15 + arith_const_10); 
      for (int for_iter_17 = arith_const_8; for_iter_17 < arith_const_6; for_iter_17 += arith_const_10) {
        double memref_load_18 = func_arg_4[for_iter_11][for_iter_17]; 
        double memref_load_19 = func_arg_3[arith_addi_16][for_iter_11]; 
        double memref_load_20 = func_arg_4[arith_addi_16][for_iter_17]; 
        double arith_mulf_21 = (memref_load_19 * memref_load_20); 
        double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
        func_arg_4[for_iter_11][for_iter_17] = arith_addf_22; 
      }
    }
  }
  for (int for_iter_23 = arith_const_8; for_iter_23 < arith_const_5; for_iter_23 += arith_const_10) {
    for (int for_iter_24 = arith_const_8; for_iter_24 < arith_const_6; for_iter_24 += arith_const_10) {
      double memref_load_25 = func_arg_4[for_iter_23][for_iter_24]; 
      double arith_mulf_26 = (func_arg_2 * memref_load_25); 
      func_arg_4[for_iter_23][for_iter_24] = arith_mulf_26; 
    }
  }
  return; 

}
#pragma pocc-region-end
