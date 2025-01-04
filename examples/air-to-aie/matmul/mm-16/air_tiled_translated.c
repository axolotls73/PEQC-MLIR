#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 1; 
  int arith_const_4 = 4; 
  int arith_const_5 = 16; 
  int arith_const_6 = 0; 
  int arith_const_7 = 8; 
  int arith_const_8 = 0; 
  int* memref_alloc_9; 
  int* async_group_10; 
  int async_group_index_11 = 0; 
  int for_iter_arg_13 = arith_const_6; 
  for (int for_iter_12 = arith_const_6; for_iter_12 < arith_const_5; for_iter_12 += arith_const_7) {
    int for_iter_arg_15 = for_iter_arg_13; 
    for (int for_iter_14 = arith_const_6; for_iter_14 < arith_const_5; for_iter_14 += arith_const_7) {
      PAST_NEW_SEMAPHORE(execute_token_16); 
      #pragma peqc async_execute
      {
        int* subview_17; 
        _past_array_copy_2d(func_arg_0, for_iter_12, 0, 1, 1, subview_17, 0, 0, 1, 1, 8, 16); 
        int* subview_18; 
        _past_array_copy_2d(func_arg_1, 0, for_iter_14, 1, 1, subview_18, 0, 0, 1, 1, 16, 8); 
        int* subview_19; 
        _past_array_copy_2d(memref_alloc_9, for_iter_12, for_iter_14, 1, 1, subview_19, 0, 0, 1, 1, 8, 8); 
        int* memref_alloc_20; 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        _past_array_copy_2d(subview_17, 0, 0, 1, 1, memref_alloc_21, 0, 0, 1, 1, 8, 16); 
        _past_array_copy_2d(subview_18, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 16, 8); 
        int* async_group_23; 
        int async_group_index_24 = 0; 
        int for_iter_arg_26 = arith_const_6; 
        for (int for_iter_25 = arith_const_6; for_iter_25 < arith_const_7; for_iter_25 += arith_const_4) {
          int for_iter_arg_28 = for_iter_arg_26; 
          for (int for_iter_27 = arith_const_6; for_iter_27 < arith_const_7; for_iter_27 += arith_const_4) {
            PAST_NEW_SEMAPHORE(execute_token_29); 
            #pragma peqc async_execute
            {
              int* subview_30; 
              _past_array_copy_2d(memref_alloc_20, for_iter_25, for_iter_27, 1, 1, subview_30, 0, 0, 1, 1, 4, 4); 
              int* memref_alloc_31; 
              for (int for_iter_32 = arith_const_6; for_iter_32 < arith_const_4; for_iter_32 += arith_const_3) {
                for (int for_iter_33 = arith_const_6; for_iter_33 < arith_const_4; for_iter_33 += arith_const_3) {
                  memref_alloc_31[for_iter_32][for_iter_33] = arith_const_8; 
                }
              }
              for (int for_iter_34 = arith_const_6; for_iter_34 < arith_const_5; for_iter_34 += arith_const_4) {
                int* subview_35; 
                _past_array_copy_2d(memref_alloc_21, for_iter_25, for_iter_34, 1, 1, subview_35, 0, 0, 1, 1, 4, 4); 
                int* subview_36; 
                _past_array_copy_2d(memref_alloc_22, for_iter_34, for_iter_27, 1, 1, subview_36, 0, 0, 1, 1, 4, 4); 
                int* memref_alloc_37; 
                int* memref_alloc_38; 
                _past_array_copy_2d(subview_35, 0, 0, 1, 1, memref_alloc_37, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_36, 0, 0, 1, 1, memref_alloc_38, 0, 0, 1, 1, 4, 4); 
                for (int for_iter_39 = arith_const_6; for_iter_39 < arith_const_4; for_iter_39 += arith_const_3) {
                  for (int for_iter_40 = arith_const_6; for_iter_40 < arith_const_4; for_iter_40 += arith_const_3) {
                    for (int for_iter_41 = arith_const_6; for_iter_41 < arith_const_4; for_iter_41 += arith_const_3) {
                      int memref_load_42 = memref_alloc_37[for_iter_39][for_iter_41]; 
                      int memref_load_43 = memref_alloc_38[for_iter_41][for_iter_40]; 
                      int memref_load_44 = memref_alloc_31[for_iter_39][for_iter_40]; 
                      int arith_muli_45 = (memref_load_42 * memref_load_43); 
                      int arith_addi_46 = (memref_load_44 + arith_muli_45); 
                      memref_alloc_31[for_iter_39][for_iter_40] = arith_addi_46; 
                    }
                  }
                }
              }
              _past_array_copy_2d(memref_alloc_31, 0, 0, 1, 1, subview_30, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(subview_30, 0, 0, 1, 1, memref_alloc_20, for_iter_25, for_iter_27, 1, 1, 4, 4); 
              PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
            }
            async_group_23[async_group_index_24] = execute_token_29; 
            async_group_index_24++; 
            int arith_addi_47 = (for_iter_arg_28 + arith_const_3); 
            for_iter_arg_28 = arith_addi_47; 
          }
          for_iter_arg_26 = for_iter_arg_28; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
        _past_array_copy_2d(memref_alloc_20, 0, 0, 1, 1, subview_19, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(subview_19, 0, 0, 1, 1, memref_alloc_9, for_iter_12, for_iter_14, 1, 1, 8, 8); 
        PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
      }
      async_group_10[async_group_index_11] = execute_token_16; 
      async_group_index_11++; 
      int arith_addi_48 = (for_iter_arg_15 + arith_const_3); 
      for_iter_arg_15 = arith_addi_48; 
    }
    for_iter_arg_13 = for_iter_arg_15; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_10, async_group_index_11, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_9, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 16, 16); 
  return; 

}
#pragma pocc-region-end
