#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/scripts/interp_macros.h"
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 0; 
  int arith_const_5 = 8; 
  int arith_const_6 = 16; 
  int arith_const_7 = 1; 
  int arith_const_8 = 0; 
  int arith_const_9 = 2; 
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
        int arith_muli_18 = (for_iter_15 * arith_const_5); 
        int arith_muli_19 = (for_iter_13 * arith_const_5); 
        int* memref_alloc_20; 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        int* subview_23; 
        _past_array_copy_2d(func_arg_0, arith_muli_19, 0, 1, 1, subview_23, 0, 0, 1, 1, 8, 16); 
        _past_array_copy_2d(subview_23, 0, 0, 1, 1, memref_alloc_21, 0, 0, 1, 1, 8, 16); 
        int* subview_24; 
        _past_array_copy_2d(func_arg_1, 0, arith_muli_18, 1, 1, subview_24, 0, 0, 1, 1, 16, 8); 
        _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 16, 8); 
        int* async_group_25; 
        int async_group_index_26 = 0; 
        int for_iter_arg_28 = arith_const_8; 
        for (int for_iter_27 = arith_const_8; for_iter_27 < arith_const_9; for_iter_27 += arith_const_7) {
          int for_iter_arg_30 = for_iter_arg_28; 
          for (int for_iter_29 = arith_const_8; for_iter_29 < arith_const_9; for_iter_29 += arith_const_7) {
            PAST_NEW_SEMAPHORE(execute_token_31); 
            #pragma peqc async_execute
            {
              int arith_muli_32 = (for_iter_29 * arith_const_3); 
              int arith_muli_33 = (for_iter_27 * arith_const_3); 
              int* memref_alloc_34; 
              for (int for_iter_35 = arith_const_8; for_iter_35 < arith_const_3; for_iter_35 += arith_const_7) {
                for (int for_iter_36 = arith_const_8; for_iter_36 < arith_const_3; for_iter_36 += arith_const_7) {
                  memref_alloc_34[for_iter_35][for_iter_36] = arith_const_4; 
                }
              }
              for (int for_iter_37 = arith_const_8; for_iter_37 < arith_const_6; for_iter_37 += arith_const_3) {
                int* memref_alloc_38; 
                int* memref_alloc_39; 
                int* subview_40; 
                _past_array_copy_2d(memref_alloc_21, arith_muli_33, for_iter_37, 1, 1, subview_40, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_40, 0, 0, 1, 1, memref_alloc_38, 0, 0, 1, 1, 4, 4); 
                int* subview_41; 
                _past_array_copy_2d(memref_alloc_22, for_iter_37, arith_muli_32, 1, 1, subview_41, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_41, 0, 0, 1, 1, memref_alloc_39, 0, 0, 1, 1, 4, 4); 
                for (int for_iter_42 = arith_const_8; for_iter_42 < arith_const_3; for_iter_42 += arith_const_7) {
                  for (int for_iter_43 = arith_const_8; for_iter_43 < arith_const_3; for_iter_43 += arith_const_7) {
                    for (int for_iter_44 = arith_const_8; for_iter_44 < arith_const_3; for_iter_44 += arith_const_7) {
                      int memref_load_45 = memref_alloc_38[for_iter_42][for_iter_44]; 
                      int memref_load_46 = memref_alloc_39[for_iter_44][for_iter_43]; 
                      int memref_load_47 = memref_alloc_34[for_iter_42][for_iter_43]; 
                      int arith_muli_48 = (memref_load_45 * memref_load_46); 
                      int arith_addi_49 = (memref_load_47 + arith_muli_48); 
                      memref_alloc_34[for_iter_42][for_iter_43] = arith_addi_49; 
                    }
                  }
                }
              }
              int* subview_50; 
              _past_array_copy_2d(memref_alloc_20, arith_muli_33, arith_muli_32, 1, 1, subview_50, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(memref_alloc_34, 0, 0, 1, 1, subview_50, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(subview_50, 0, 0, 1, 1, memref_alloc_20, arith_muli_33, arith_muli_32, 1, 1, 4, 4); 
              PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
            }
            async_group_25[async_group_index_26] = execute_token_31; 
            async_group_index_26++; 
            int arith_addi_51 = (for_iter_arg_30 + arith_const_7); 
            for_iter_arg_30 = arith_addi_51; 
          }
          for_iter_arg_28 = for_iter_arg_30; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
        int* subview_52; 
        _past_array_copy_2d(memref_alloc_10, arith_muli_19, arith_muli_18, 1, 1, subview_52, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(memref_alloc_20, 0, 0, 1, 1, subview_52, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(subview_52, 0, 0, 1, 1, memref_alloc_10, arith_muli_19, arith_muli_18, 1, 1, 8, 8); 
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_11[async_group_index_12] = execute_token_17; 
      async_group_index_12++; 
      int arith_addi_53 = (for_iter_arg_16 + arith_const_7); 
      for_iter_arg_16 = arith_addi_53; 
    }
    for_iter_arg_14 = for_iter_arg_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_10, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 16, 16); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/scripts/prologue.h"
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}


#pragma pocc-region-end
