#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 32; 
  int arith_const_5 = 0; 
  int arith_const_6 = 64; 
  int arith_const_7 = 128; 
  int arith_const_8 = 1; 
  int arith_const_9 = 0; 
  int arith_const_10 = 2; 
  int* memref_alloc_11; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_9; 
  for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_8) {
    int for_iter_arg_17 = for_iter_arg_15; 
    for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_10; for_iter_16 += arith_const_8) {
      PAST_NEW_SEMAPHORE(execute_token_18); 
      #pragma peqc async_execute
      {
        int arith_muli_19 = (for_iter_16 * arith_const_6); 
        int arith_muli_20 = (for_iter_14 * arith_const_6); 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        int* memref_alloc_23; 
        int* subview_24; 
        _past_array_copy_2d(func_arg_0, arith_muli_20, 0, 1, 1, subview_24, 0, 0, 1, 1, 64, 128); 
        _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 64, 128); 
        int* subview_25; 
        _past_array_copy_2d(func_arg_1, 0, arith_muli_19, 1, 1, subview_25, 0, 0, 1, 1, 128, 64); 
        _past_array_copy_2d(subview_25, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 128, 64); 
        int* async_group_26; 
        int async_group_index_27 = 0; 
        int for_iter_arg_29 = arith_const_9; 
        for (int for_iter_28 = arith_const_9; for_iter_28 < arith_const_10; for_iter_28 += arith_const_8) {
          int for_iter_arg_31 = for_iter_arg_29; 
          for (int for_iter_30 = arith_const_9; for_iter_30 < arith_const_10; for_iter_30 += arith_const_8) {
            PAST_NEW_SEMAPHORE(execute_token_32); 
            #pragma peqc async_execute
            {
              int arith_muli_33 = (for_iter_30 * arith_const_4); 
              int arith_muli_34 = (for_iter_28 * arith_const_4); 
              int* memref_alloc_35; 
              for (int for_iter_36 = arith_const_9; for_iter_36 < arith_const_4; for_iter_36 += arith_const_8) {
                for (int for_iter_37 = arith_const_9; for_iter_37 < arith_const_4; for_iter_37 += arith_const_8) {
                  memref_alloc_35[for_iter_36][for_iter_37] = arith_const_5; 
                }
              }
              for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_7; for_iter_38 += arith_const_4) {
                int* memref_alloc_39; 
                int* memref_alloc_40; 
                int* subview_41; 
                _past_array_copy_2d(memref_alloc_22, arith_muli_34, for_iter_38, 1, 1, subview_41, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_41, 0, 0, 1, 1, memref_alloc_39, 0, 0, 1, 1, 32, 32); 
                int* subview_42; 
                _past_array_copy_2d(memref_alloc_23, for_iter_38, arith_muli_33, 1, 1, subview_42, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_42, 0, 0, 1, 1, memref_alloc_40, 0, 0, 1, 1, 32, 32); 
                for (int for_iter_43 = arith_const_9; for_iter_43 < arith_const_4; for_iter_43 += arith_const_8) {
                  for (int for_iter_44 = arith_const_9; for_iter_44 < arith_const_4; for_iter_44 += arith_const_8) {
                    for (int for_iter_45 = arith_const_9; for_iter_45 < arith_const_4; for_iter_45 += arith_const_8) {
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
              _past_array_copy_2d(memref_alloc_21, arith_muli_34, arith_muli_33, 1, 1, subview_51, 0, 0, 1, 1, 32, 32); 
              _past_array_copy_2d(memref_alloc_35, 0, 0, 1, 1, subview_51, 0, 0, 1, 1, 32, 32); 
              _past_array_copy_2d(subview_51, 0, 0, 1, 1, memref_alloc_21, arith_muli_34, arith_muli_33, 1, 1, 32, 32); 
              PAST_SET_SEMAPHORE(execute_token_32, PAST_TASK_FINISHED); 
            }
            async_group_26[async_group_index_27] = execute_token_32; 
            async_group_index_27++; 
            int arith_addi_52 = (for_iter_arg_31 + arith_const_8); 
            for_iter_arg_31 = arith_addi_52; 
          }
          for_iter_arg_29 = for_iter_arg_31; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
        int* subview_53; 
        _past_array_copy_2d(memref_alloc_11, arith_muli_20, arith_muli_19, 1, 1, subview_53, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(memref_alloc_21, 0, 0, 1, 1, subview_53, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_53, 0, 0, 1, 1, memref_alloc_11, arith_muli_20, arith_muli_19, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
      }
      async_group_12[async_group_index_13] = execute_token_18; 
      async_group_index_13++; 
      int arith_addi_54 = (for_iter_arg_17 + arith_const_8); 
      for_iter_arg_17 = arith_addi_54; 
    }
    for_iter_arg_15 = for_iter_arg_17; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_11, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 128, 128); 
  return; 

}
#pragma pocc-region-end
