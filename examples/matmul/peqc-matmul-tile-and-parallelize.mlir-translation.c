#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/scripts/interp_macros.h"
void matmul_on_memref(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 1; 
  int arith_const_4 = 4; 
  int arith_const_5 = 32; 
  int arith_const_6 = 0; 
  int arith_const_7 = 0; 
  int* memref_alloc_8; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_5; for_iter_9 += arith_const_4) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_5; for_iter_10 += arith_const_4) {
      int arith_addi_11 = (for_iter_9 + arith_const_4); 
      for (int for_iter_12 = for_iter_9; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_3) {
        int arith_addi_13 = (for_iter_10 + arith_const_4); 
        for (int for_iter_14 = for_iter_10; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_3) {
          memref_alloc_8[for_iter_12][for_iter_14] = arith_const_7; 
        }
      }
    }
  }
  for (int for_iter_15 = arith_const_6; for_iter_15 < arith_const_5; for_iter_15 += arith_const_4) {
    for (int for_iter_16 = arith_const_6; for_iter_16 < arith_const_5; for_iter_16 += arith_const_4) {
      for (int for_iter_17 = arith_const_6; for_iter_17 < arith_const_5; for_iter_17 += arith_const_4) {
        int arith_addi_18 = (for_iter_15 + arith_const_4); 
        for (int for_iter_19 = for_iter_15; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_3) {
          int arith_addi_20 = (for_iter_16 + arith_const_4); 
          for (int for_iter_21 = for_iter_16; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_3) {
            int arith_addi_22 = (for_iter_17 + arith_const_4); 
            for (int for_iter_23 = for_iter_17; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_3) {
              int memref_load_24 = func_arg_0[for_iter_19][for_iter_23]; 
              int memref_load_25 = func_arg_1[for_iter_23][for_iter_21]; 
              int memref_load_26 = memref_alloc_8[for_iter_19][for_iter_21]; 
              int arith_muli_27 = (memref_load_24 * memref_load_25); 
              int arith_addi_28 = (memref_load_26 + arith_muli_27); 
              memref_alloc_8[for_iter_19][for_iter_21] = arith_addi_28; 
            }
          }
        }
      }
    }
  }
  _past_array_copy_2d(memref_alloc_8, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 32, 32); 
  return; 

}
int* A; 
int* B; 
int* C; 
{
#include "/data-host-share/verif-dialect/verif-translate/scripts/prologue.h"

  int* func_call_29; 
  matmul_on_memref(A, B, func_call_29); 
  _past_array_copy_2d(func_call_29, 0, 0, 1, 1, C, 0, 0, 1, 1, 32, 32); 
}
#pragma pocc-region-end
