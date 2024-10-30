#pragma pocc-region-start
#include "interp_macros.h"
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 0; 
  int arith_const_4 = 8; 
  int arith_const_5 = 16; 
  int arith_const_6 = 2; 
  int arith_const_7 = 1; 
  int arith_const_8 = 0; 
  int arith_const_9 = 4; 
  int* memref_alloc_10; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_8; 
  for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_9; for_iter_13 += arith_const_7) {
    int for_iter_arg_16 = for_iter_arg_14; 
    for (int for_iter_15 = arith_const_8; for_iter_15 < arith_const_9; for_iter_15 += arith_const_7) {
      PAST_NEW_SEMAPHORE(execute_token_17); 
      #pragma peqc async_execute
      {
        int arith_muli_18 = (for_iter_13 * arith_const_9); 
        int arith_muli_19 = (for_iter_15 * arith_const_9); 
        int* memref_alloc_20; 
        for (int for_iter_21 = arith_const_8; for_iter_21 < arith_const_5; for_iter_21 += arith_const_4) {
          int* memref_alloc_22; 
          int* memref_alloc_23; 
          int* subview_24; 
          _past_array_copy_2d(func_arg_0, arith_muli_18, for_iter_21, 1, 1, subview_24, 0, 0, 1, 1, 4, 8); 
          _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 4, 8); 
          int* subview_25; 
          _past_array_copy_2d(func_arg_1, for_iter_21, arith_muli_19, 1, 1, subview_25, 0, 0, 1, 1, 8, 4); 
          _past_array_copy_2d(subview_25, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 8, 4); 
          int* async_group_26; 
          int async_group_index_27 = 0; 
          int for_iter_arg_29 = arith_const_8; 
          for (int for_iter_28 = arith_const_8; for_iter_28 < arith_const_6; for_iter_28 += arith_const_7) {
            int for_iter_arg_31 = for_iter_arg_29; 
            for (int for_iter_30 = arith_const_8; for_iter_30 < arith_const_6; for_iter_30 += arith_const_7) {
              PAST_NEW_SEMAPHORE(execute_token_32); 
              #pragma peqc async_execute
              {
                int arith_muli_33 = (for_iter_28 * arith_const_6); 
                int arith_muli_34 = (for_iter_30 * arith_const_6); 
                int* memref_alloc_35; 
                for (int for_iter_36 = arith_const_8; for_iter_36 < arith_const_6; for_iter_36 += arith_const_7) {
                  for (int for_iter_37 = arith_const_8; for_iter_37 < arith_const_6; for_iter_37 += arith_const_7) {
                    memref_alloc_35[for_iter_36][for_iter_37] = arith_const_3; 
                  }
                }
                for (int for_iter_38 = arith_const_8; for_iter_38 < arith_const_4; for_iter_38 += arith_const_6) {
                  int* memref_alloc_39; 
                  int* memref_alloc_40; 
                  int* subview_41; 
                  _past_array_copy_2d(memref_alloc_22, arith_muli_33, for_iter_38, 1, 1, subview_41, 0, 0, 1, 1, 2, 2); 
                  _past_array_copy_2d(subview_41, 0, 0, 1, 1, memref_alloc_39, 0, 0, 1, 1, 2, 2); 
                  int* subview_42; 
                  _past_array_copy_2d(memref_alloc_23, for_iter_38, arith_muli_34, 1, 1, subview_42, 0, 0, 1, 1, 2, 2); 
                  _past_array_copy_2d(subview_42, 0, 0, 1, 1, memref_alloc_40, 0, 0, 1, 1, 2, 2); 
                  for (int for_iter_43 = arith_const_8; for_iter_43 < arith_const_6; for_iter_43 += arith_const_7) {
                    for (int for_iter_44 = arith_const_8; for_iter_44 < arith_const_6; for_iter_44 += arith_const_7) {
                      for (int for_iter_45 = arith_const_8; for_iter_45 < arith_const_6; for_iter_45 += arith_const_7) {
                        int memref_load_46 = memref_alloc_39[for_iter_43][for_iter_45]; 
                        int memref_load_47 = memref_alloc_40[for_iter_45][for_iter_44]; 
                        int memref_load_48 = memref_alloc_35[for_iter_43][for_iter_44]; 
                        int arith_muli_49 = (memref_load_46 * memref_load_47); 
                        int arith_addi_50 = (memref_load_48 + arith_muli_49); 
                        memref_alloc_35[for_iter_43][for_iter_44] = arith_addi_50; 
                      }
                    }
                  }
                }
                int* subview_51; 
                _past_array_copy_2d(memref_alloc_20, arith_muli_33, arith_muli_34, 1, 1, subview_51, 0, 0, 1, 1, 2, 2); 
                _past_array_copy_2d(memref_alloc_35, 0, 0, 1, 1, subview_51, 0, 0, 1, 1, 2, 2); 
                _past_array_copy_2d(subview_51, 0, 0, 1, 1, memref_alloc_20, arith_muli_33, arith_muli_34, 1, 1, 2, 2); 
                PAST_SET_SEMAPHORE(execute_token_32, PAST_TASK_FINISHED); 
              }
              async_group_26[async_group_index_27] = execute_token_32; 
              async_group_index_27++; 
              int arith_addi_52 = (for_iter_arg_31 + arith_const_7); 
              for_iter_arg_31 = arith_addi_52; 
            }
            for_iter_arg_29 = for_iter_arg_31; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
        }
        int* subview_53; 
        _past_array_copy_2d(memref_alloc_10, arith_muli_18, arith_muli_19, 1, 1, subview_53, 0, 0, 1, 1, 4, 4); 
        _past_array_copy_2d(memref_alloc_20, 0, 0, 1, 1, subview_53, 0, 0, 1, 1, 4, 4); 
        _past_array_copy_2d(subview_53, 0, 0, 1, 1, memref_alloc_10, arith_muli_18, arith_muli_19, 1, 1, 4, 4); 
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_11[async_group_index_12] = execute_token_17; 
      async_group_index_12++; 
      int arith_addi_54 = (for_iter_arg_16 + arith_const_7); 
      for_iter_arg_16 = arith_addi_54; 
    }
    for_iter_arg_14 = for_iter_arg_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_10, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 16, 16); 
  return; 

}


{
#include "prologue.h"
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}


#pragma pocc-region-end
