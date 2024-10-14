#pragma pocc-region-start
void matmul_on_memref(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int* memref_alloc_3; 
  int arith_const_4 = 0; 
  int arith_const_5 = 128; 
  int arith_const_6 = 1; 
  for (for_iter_7 = arith_const_4; for_iter_7 < arith_const_5; for_iter_7 += arith_const_6) {
    int arith_const_8 = 0; 
    int arith_const_9 = 128; 
    int arith_const_10 = 1; 
    for (for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
      int arith_const_12 = 0; 
      int arith_const_13 = 128; 
      int arith_const_14 = 1; 
      for (for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
        var_16 = func_arg_0[for_iter_7][for_iter_15]; 
        var_17 = func_arg_1[for_iter_15][for_iter_11]; 
        var_18 = memref_alloc_3[for_iter_7][for_iter_11]; 
        int arith_muli_19 = (var_16 * var_17); 
        int arith_addi_20 = (var_18 + arith_muli_19); 
        memref_alloc_3[for_iter_7][for_iter_11] = arith_addi_20; 
      }
    }
  }
  for (copy_iter_21 = 0; copy_iter_21 < 128; copy_iter_21 += 1) {
    for (copy_iter_22 = 0; copy_iter_22 < 128; copy_iter_22 += 1) {
      func_arg_ret_2[copy_iter_21][copy_iter_22] = memref_alloc_3[copy_iter_21][copy_iter_22]; 
    }
  }
  return; 

}

{
  matmul_on_memref(func_arg_0, func_arg_1, func_arg_ret_2);
}
#pragma pocc-region-end
