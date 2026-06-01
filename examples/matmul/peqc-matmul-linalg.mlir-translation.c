#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/scripts/interp_macros.h"
void matmul_on_memref(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 1; 
  int arith_const_4 = 32; 
  int arith_const_5 = 0; 
  int arith_const_6 = 0; 
  int* memref_alloc_7; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_4; for_iter_8 += arith_const_3) {
    for (int for_iter_9 = arith_const_5; for_iter_9 < arith_const_4; for_iter_9 += arith_const_3) {
      memref_alloc_7[for_iter_8][for_iter_9] = arith_const_6; 
    }
  }
  for (int for_iter_10 = arith_const_5; for_iter_10 < arith_const_4; for_iter_10 += arith_const_3) {
    for (int for_iter_11 = arith_const_5; for_iter_11 < arith_const_4; for_iter_11 += arith_const_3) {
      for (int for_iter_12 = arith_const_5; for_iter_12 < arith_const_4; for_iter_12 += arith_const_3) {
        int memref_load_13 = func_arg_0[for_iter_10][for_iter_12]; 
        int memref_load_14 = func_arg_1[for_iter_12][for_iter_11]; 
        int memref_load_15 = memref_alloc_7[for_iter_10][for_iter_11]; 
        int arith_muli_16 = (memref_load_13 * memref_load_14); 
        int arith_addi_17 = (memref_load_15 + arith_muli_16); 
        memref_alloc_7[for_iter_10][for_iter_11] = arith_addi_17; 
      }
    }
  }
  _past_array_copy_2d(memref_alloc_7, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 32, 32); 
  return; 

}
int* A; 
int* B; 
int* C; 
{
#include "/data-host-share/verif-dialect/verif-translate/scripts/prologue.h"

  int* func_call_18; 
  matmul_on_memref(A, B, func_call_18); 
  _past_array_copy_2d(func_call_18, 0, 0, 1, 1, C, 0, 0, 1, 1, 32, 32); 
}
#pragma pocc-region-end
