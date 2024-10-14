#pragma pocc-region-start
void matmul_on_memref(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 0; 
  int arith_const_4 = 0; 
  int arith_const_5 = 42; 
  int* memref_alloc_6; 
  int arith_const_7 = 0; 
  int arith_const_8 = 128; 
  int arith_const_9 = 1; 
  for (for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_const_11 = 0; 
    int arith_const_12 = 128; 
    int arith_const_13 = 1; 
    for (for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
      int arith_const_15 = 0; 
      int arith_const_16 = 128; 
      int arith_const_17 = 1; 
      for (for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
        var_19 = func_arg_0[for_iter_10][for_iter_18]; 
        var_20 = func_arg_1[for_iter_18][for_iter_14]; 
        var_21 = memref_alloc_6[for_iter_10][for_iter_14]; 
        int arith_muli_22 = (var_19 * var_20); 
        int arith_addi_23 = (var_21 + arith_muli_22); 
        memref_alloc_6[for_iter_10][for_iter_14] = arith_addi_23; 
      }
    }
  }
  memref_alloc_6[arith_const_4][arith_const_5] = arith_const_3; 
  for (copy_iter_24 = 0; copy_iter_24 < 128; copy_iter_24 += 1) {
    for (copy_iter_25 = 0; copy_iter_25 < 128; copy_iter_25 += 1) {
      func_arg_ret_2[copy_iter_24][copy_iter_25] = memref_alloc_6[copy_iter_24][copy_iter_25]; 
    }
  }
  return; 

}

{
  matmul_on_memref(func_arg_0, func_arg_1, func_arg_ret_2);
}
#pragma pocc-region-end
