#pragma pocc-region-start
#include "/data-host-share/verif-dialect/tools/verif-translate/include/interp_macros.h"
int* A; 
int* B; 
int* C; 
void forward(int* func_arg_1, int* func_arg_2, int* func_arg_ret_3)
{
  int arith_const_0_4 = 0; 
  int* memref_alloc_5; 
  int arith_const_0_6 = 0; 
  int arith_const_16_7 = 16; 
  int arith_const_1_8 = 1; 
  for (int for_iter_9 = arith_const_0_6; for_iter_9 < arith_const_16_7; for_iter_9 += arith_const_1_8) {
    int arith_const_0_10 = 0; 
    int arith_const_16_11 = 16; 
    int arith_const_1_12 = 1; 
    for (int for_iter_13 = arith_const_0_10; for_iter_13 < arith_const_16_11; for_iter_13 += arith_const_1_12) {
      memref_alloc_5[for_iter_9][for_iter_13] = arith_const_0_4; 
    }
  }
  int arith_const_0_14 = 0; 
  int arith_const_16_15 = 16; 
  int arith_const_1_16 = 1; 
  for (int for_iter_17 = arith_const_0_14; for_iter_17 < arith_const_16_15; for_iter_17 += arith_const_1_16) {
    int arith_const_0_18 = 0; 
    int arith_const_16_19 = 16; 
    int arith_const_1_20 = 1; 
    for (int for_iter_21 = arith_const_0_18; for_iter_21 < arith_const_16_19; for_iter_21 += arith_const_1_20) {
      int arith_const_0_22 = 0; 
      int arith_const_16_23 = 16; 
      int arith_const_1_24 = 1; 
      for (int for_iter_25 = arith_const_0_22; for_iter_25 < arith_const_16_23; for_iter_25 += arith_const_1_24) {
        int memref_load_26 = func_arg_1[for_iter_17][for_iter_25]; 
        int memref_load_27 = func_arg_2[for_iter_25][for_iter_21]; 
        int memref_load_28 = memref_alloc_5[for_iter_17][for_iter_21]; 
        int arith_muli_29 = (memref_load_26 * memref_load_27); 
        int arith_addi_30 = (memref_load_28 + arith_muli_29); 
        memref_alloc_5[for_iter_17][for_iter_21] = arith_addi_30; 
      }
    }
  }
  _past_array_copy_2d(memref_alloc_5, 0, 0, 1, 1, func_arg_ret_3, 0, 0, 1, 1, 16, 16); 
  return; 

}
{
#include "/data-host-share/verif-dialect/tools/verif-translate/include/prologue.h"

  #pragma peqc async_execute
  {
    int* func_call_0; 
    forward(A, B, func_call_0); 
    _past_array_copy_2d(func_call_0, 0, 0, 1, 1, C, 0, 0, 1, 1, 16, 16); 
  }
}
#pragma pocc-region-end
