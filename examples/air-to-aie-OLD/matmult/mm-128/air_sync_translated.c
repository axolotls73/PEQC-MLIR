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
        int arith_muli_19 = (for_iter_14 * arith_const_6); 
        int arith_muli_20 = (for_iter_16 * arith_const_6); 
        int* memref_alloc_21; 
        for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_7; for_iter_22 += arith_const_6) {
          int* memref_alloc_23; 
          int* memref_alloc_24; 
          int* subview_25; 
          _past_array_copy_2d(func_arg_0, arith_muli_19, for_iter_22, 1, 1, subview_25, 0, 0, 1, 1, 64, 64); 
          _past_array_copy_2d(subview_25, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 64, 64); 
          int* subview_26; 
          _past_array_copy_2d(func_arg_1, for_iter_22, arith_muli_20, 1, 1, subview_26, 0, 0, 1, 1, 64, 64); 
          _past_array_copy_2d(subview_26, 0, 0, 1, 1, memref_alloc_24, 0, 0, 1, 1, 64, 64); 
          int* async_group_27; 
          int async_group_index_28 = 0; 
          int for_iter_arg_30 = arith_const_9; 
          for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_10; for_iter_29 += arith_const_8) {
            int for_iter_arg_32 = for_iter_arg_30; 
            for (int for_iter_31 = arith_const_9; for_iter_31 < arith_const_10; for_iter_31 += arith_const_8) {
              PAST_NEW_SEMAPHORE(execute_token_33); 
              #pragma peqc async_execute
              {
                int arith_muli_34 = (for_iter_29 * arith_const_4); 
                int arith_muli_35 = (for_iter_31 * arith_const_4); 
                int* memref_alloc_36; 
                for (int for_iter_37 = arith_const_9; for_iter_37 < arith_const_4; for_iter_37 += arith_const_8) {
                  for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_4; for_iter_38 += arith_const_8) {
                    memref_alloc_36[for_iter_37][for_iter_38] = arith_const_5; 
                  }
                }
                for (int for_iter_39 = arith_const_9; for_iter_39 < arith_const_6; for_iter_39 += arith_const_4) {
                  int* memref_alloc_40; 
                  int* memref_alloc_41; 
                  int* subview_42; 
                  _past_array_copy_2d(memref_alloc_23, arith_muli_34, for_iter_39, 1, 1, subview_42, 0, 0, 1, 1, 32, 32); 
                  _past_array_copy_2d(subview_42, 0, 0, 1, 1, memref_alloc_40, 0, 0, 1, 1, 32, 32); 
                  int* subview_43; 
                  _past_array_copy_2d(memref_alloc_24, for_iter_39, arith_muli_35, 1, 1, subview_43, 0, 0, 1, 1, 32, 32); 
                  _past_array_copy_2d(subview_43, 0, 0, 1, 1, memref_alloc_41, 0, 0, 1, 1, 32, 32); 
                  for (int for_iter_44 = arith_const_9; for_iter_44 < arith_const_4; for_iter_44 += arith_const_8) {
                    for (int for_iter_45 = arith_const_9; for_iter_45 < arith_const_4; for_iter_45 += arith_const_8) {
                      for (int for_iter_46 = arith_const_9; for_iter_46 < arith_const_4; for_iter_46 += arith_const_8) {
                        int memref_load_47 = memref_alloc_40[for_iter_44][for_iter_46]; 
                        int memref_load_48 = memref_alloc_41[for_iter_46][for_iter_45]; 
                        int memref_load_49 = memref_alloc_36[for_iter_44][for_iter_45]; 
                        int arith_muli_50 = (memref_load_47 * memref_load_48); 
                        int arith_addi_51 = (memref_load_49 + arith_muli_50); 
                        memref_alloc_36[for_iter_44][for_iter_45] = arith_addi_51; 
                      }
                    }
                  }
                }
                int* subview_52; 
                _past_array_copy_2d(memref_alloc_21, arith_muli_34, arith_muli_35, 1, 1, subview_52, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(memref_alloc_36, 0, 0, 1, 1, subview_52, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_52, 0, 0, 1, 1, memref_alloc_21, arith_muli_34, arith_muli_35, 1, 1, 32, 32); 
                PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
              }
              async_group_27[async_group_index_28] = execute_token_33; 
              async_group_index_28++; 
              int arith_addi_53 = (for_iter_arg_32 + arith_const_8); 
              for_iter_arg_32 = arith_addi_53; 
            }
            for_iter_arg_30 = for_iter_arg_32; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
        }
        int* subview_54; 
        _past_array_copy_2d(memref_alloc_11, arith_muli_19, arith_muli_20, 1, 1, subview_54, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(memref_alloc_21, 0, 0, 1, 1, subview_54, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_54, 0, 0, 1, 1, memref_alloc_11, arith_muli_19, arith_muli_20, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
      }
      async_group_12[async_group_index_13] = execute_token_18; 
      async_group_index_13++; 
      int arith_addi_55 = (for_iter_arg_17 + arith_const_8); 
      for_iter_arg_17 = arith_addi_55; 
    }
    for_iter_arg_15 = for_iter_arg_17; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_11, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 128, 128); 
  return; 

}
#pragma pocc-region-end
