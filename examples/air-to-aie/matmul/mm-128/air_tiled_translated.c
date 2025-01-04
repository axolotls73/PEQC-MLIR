#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 1; 
  int arith_const_5 = 32; 
  int arith_const_6 = 128; 
  int arith_const_7 = 0; 
  int arith_const_8 = 64; 
  int arith_const_9 = 0; 
  int* memref_alloc_10; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_7; 
  for (int for_iter_13 = arith_const_7; for_iter_13 < arith_const_6; for_iter_13 += arith_const_8) {
    int for_iter_arg_16 = for_iter_arg_14; 
    for (int for_iter_15 = arith_const_7; for_iter_15 < arith_const_6; for_iter_15 += arith_const_8) {
      PAST_NEW_SEMAPHORE(execute_token_17); 
      #pragma peqc async_execute
      {
        int* subview_18; 
        _past_array_copy_2d(func_arg_0, for_iter_13, 0, 1, 1, subview_18, 0, 0, 1, 1, 64, 128); 
        int* subview_19; 
        _past_array_copy_2d(func_arg_1, 0, for_iter_15, 1, 1, subview_19, 0, 0, 1, 1, 128, 64); 
        int* subview_20; 
        _past_array_copy_2d(memref_alloc_10, for_iter_13, for_iter_15, 1, 1, subview_20, 0, 0, 1, 1, 64, 64); 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        int* memref_alloc_23; 
        _past_array_copy_2d(subview_18, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 64, 128); 
        _past_array_copy_2d(subview_19, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 128, 64); 
        int* async_group_24; 
        int async_group_index_25 = 0; 
        int for_iter_arg_27 = arith_const_7; 
        for (int for_iter_26 = arith_const_7; for_iter_26 < arith_const_8; for_iter_26 += arith_const_5) {
          int for_iter_arg_29 = for_iter_arg_27; 
          for (int for_iter_28 = arith_const_7; for_iter_28 < arith_const_8; for_iter_28 += arith_const_5) {
            PAST_NEW_SEMAPHORE(execute_token_30); 
            #pragma peqc async_execute
            {
              int* subview_31; 
              _past_array_copy_2d(memref_alloc_21, for_iter_26, for_iter_28, 1, 1, subview_31, 0, 0, 1, 1, 32, 32); 
              int* memref_alloc_32; 
              for (int for_iter_33 = arith_const_7; for_iter_33 < arith_const_5; for_iter_33 += arith_const_4) {
                for (int for_iter_34 = arith_const_7; for_iter_34 < arith_const_5; for_iter_34 += arith_const_4) {
                  memref_alloc_32[for_iter_33][for_iter_34] = arith_const_9; 
                }
              }
              for (int for_iter_35 = arith_const_7; for_iter_35 < arith_const_6; for_iter_35 += arith_const_5) {
                int* subview_36; 
                _past_array_copy_2d(memref_alloc_22, for_iter_26, for_iter_35, 1, 1, subview_36, 0, 0, 1, 1, 32, 32); 
                int* subview_37; 
                _past_array_copy_2d(memref_alloc_23, for_iter_35, for_iter_28, 1, 1, subview_37, 0, 0, 1, 1, 32, 32); 
                int* memref_alloc_38; 
                int* memref_alloc_39; 
                _past_array_copy_2d(subview_36, 0, 0, 1, 1, memref_alloc_38, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_37, 0, 0, 1, 1, memref_alloc_39, 0, 0, 1, 1, 32, 32); 
                for (int for_iter_40 = arith_const_7; for_iter_40 < arith_const_5; for_iter_40 += arith_const_4) {
                  for (int for_iter_41 = arith_const_7; for_iter_41 < arith_const_5; for_iter_41 += arith_const_4) {
                    for (int for_iter_42 = arith_const_7; for_iter_42 < arith_const_5; for_iter_42 += arith_const_4) {
                      int memref_load_43 = memref_alloc_38[for_iter_40][for_iter_42]; 
                      int memref_load_44 = memref_alloc_39[for_iter_42][for_iter_41]; 
                      int memref_load_45 = memref_alloc_32[for_iter_40][for_iter_41]; 
                      int arith_muli_46 = (memref_load_43 * memref_load_44); 
                      int arith_addi_47 = (memref_load_45 + arith_muli_46); 
                      memref_alloc_32[for_iter_40][for_iter_41] = arith_addi_47; 
                    }
                  }
                }
              }
              _past_array_copy_2d(memref_alloc_32, 0, 0, 1, 1, subview_31, 0, 0, 1, 1, 32, 32); 
              _past_array_copy_2d(subview_31, 0, 0, 1, 1, memref_alloc_21, for_iter_26, for_iter_28, 1, 1, 32, 32); 
              PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
            }
            async_group_24[async_group_index_25] = execute_token_30; 
            async_group_index_25++; 
            int arith_addi_48 = (for_iter_arg_29 + arith_const_4); 
            for_iter_arg_29 = arith_addi_48; 
          }
          for_iter_arg_27 = for_iter_arg_29; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
        _past_array_copy_2d(memref_alloc_21, 0, 0, 1, 1, subview_20, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_20, 0, 0, 1, 1, memref_alloc_10, for_iter_13, for_iter_15, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_11[async_group_index_12] = execute_token_17; 
      async_group_index_12++; 
      int arith_addi_49 = (for_iter_arg_16 + arith_const_4); 
      for_iter_arg_16 = arith_addi_49; 
    }
    for_iter_arg_14 = for_iter_arg_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_10, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 128, 128); 
  return; 

}
#pragma pocc-region-end
