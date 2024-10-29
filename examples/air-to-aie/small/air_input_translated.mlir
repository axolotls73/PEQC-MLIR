#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 0; 
  int* memref_alloc_4; 
  int arith_const_5 = 0; 
  int arith_const_6 = 16; 
  int arith_const_7 = 1; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_6; for_iter_8 += arith_const_7) {
    int arith_const_9 = 0; 
    int arith_const_10 = 16; 
    int arith_const_11 = 1; 
    for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
      memref_alloc_4[for_iter_8][for_iter_12] = arith_const_3; 
    }
  }
  int arith_const_13 = 0; 
  int arith_const_14 = 16; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_const_17 = 0; 
    int arith_const_18 = 16; 
    int arith_const_19 = 1; 
    for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
      int arith_const_21 = 0; 
      int arith_const_22 = 16; 
      int arith_const_23 = 1; 
      for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_22; for_iter_24 += arith_const_23) {
        int memref_load_25 = func_arg_0[for_iter_16][for_iter_24]; 
        int memref_load_26 = func_arg_1[for_iter_24][for_iter_20]; 
        int memref_load_27 = memref_alloc_4[for_iter_16][for_iter_20]; 
        int arith_muli_28 = (memref_load_25 * memref_load_26); 
        int arith_addi_29 = (memref_load_27 + arith_muli_28); 
        memref_alloc_4[for_iter_16][for_iter_20] = arith_addi_29; 
      }
    }
  }
  _past_array_copy_2d(memref_alloc_4, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 16, 16); 
  return; 

}
#pragma pocc-region-end
