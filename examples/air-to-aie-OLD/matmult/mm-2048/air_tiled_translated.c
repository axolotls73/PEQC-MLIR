#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 1024; 
  int arith_const_5 = 1; 
  int arith_const_6 = 32; 
  int arith_const_7 = 256; 
  int arith_const_8 = 2048; 
  int arith_const_9 = 0; 
  int arith_const_10 = 64; 
  int arith_const_11 = 0; 
  int* memref_alloc_12; 
  int* async_group_13; 
  int async_group_index_14 = 0; 
  int for_iter_arg_16 = arith_const_9; 
  for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_8; for_iter_15 += arith_const_10) {
    int for_iter_arg_18 = for_iter_arg_16; 
    for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_8; for_iter_17 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_19); 
      #pragma peqc async_execute
      {
        int* subview_20; 
        _past_array_copy_2d(memref_alloc_12, for_iter_15, for_iter_17, 1, 1, subview_20, 0, 0, 1, 1, 64, 64); 
        int* memref_alloc_21; 
        for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_8; for_iter_22 += arith_const_7) {
          int* subview_23; 
          _past_array_copy_2d(func_arg_0, for_iter_15, for_iter_22, 1, 1, subview_23, 0, 0, 1, 1, 64, 256); 
          int* subview_24; 
          _past_array_copy_2d(func_arg_1, for_iter_22, for_iter_17, 1, 1, subview_24, 0, 0, 1, 1, 256, 64); 
          int* memref_alloc_25; 
          int* memref_alloc_26; 
          _past_array_copy_2d(subview_23, 0, 0, 1, 1, memref_alloc_25, 0, 0, 1, 1, 64, 256); 
          _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_26, 0, 0, 1, 1, 256, 64); 
          int* async_group_27; 
          int async_group_index_28 = 0; 
          int for_iter_arg_30 = arith_const_9; 
          for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_10; for_iter_29 += arith_const_6) {
            int for_iter_arg_32 = for_iter_arg_30; 
            for (int for_iter_31 = arith_const_9; for_iter_31 < arith_const_10; for_iter_31 += arith_const_6) {
              PAST_NEW_SEMAPHORE(execute_token_33); 
              #pragma peqc async_execute
              {
                int* subview_34; 
                _past_array_copy_2d(memref_alloc_21, for_iter_29, for_iter_31, 1, 1, subview_34, 0, 0, 1, 1, 32, 32); 
                int* memref_alloc_35; 
                for (int for_iter_36 = arith_const_9; for_iter_36 < arith_const_6; for_iter_36 += arith_const_5) {
                  for (int for_iter_37 = arith_const_9; for_iter_37 < arith_const_6; for_iter_37 += arith_const_5) {
                    memref_alloc_35[for_iter_36][for_iter_37] = arith_const_11; 
                  }
                }
                for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_7; for_iter_38 += arith_const_6) {
                  int* subview_39; 
                  _past_array_copy_2d(memref_alloc_25, for_iter_29, for_iter_38, 1, 1, subview_39, 0, 0, 1, 1, 32, 32); 
                  int* subview_40; 
                  _past_array_copy_2d(memref_alloc_26, for_iter_38, for_iter_31, 1, 1, subview_40, 0, 0, 1, 1, 32, 32); 
                  int* memref_alloc_41; 
                  int* memref_alloc_42; 
                  _past_array_copy_2d(subview_39, 0, 0, 1, 1, memref_alloc_41, 0, 0, 1, 1, 32, 32); 
                  _past_array_copy_2d(subview_40, 0, 0, 1, 1, memref_alloc_42, 0, 0, 1, 1, 32, 32); 
                  for (int for_iter_43 = arith_const_9; for_iter_43 < arith_const_6; for_iter_43 += arith_const_5) {
                    for (int for_iter_44 = arith_const_9; for_iter_44 < arith_const_6; for_iter_44 += arith_const_5) {
                      for (int for_iter_45 = arith_const_9; for_iter_45 < arith_const_6; for_iter_45 += arith_const_5) {
                        int memref_load_46 = memref_alloc_41[for_iter_43][for_iter_45]; 
                        int memref_load_47 = memref_alloc_42[for_iter_45][for_iter_44]; 
                        int memref_load_48 = memref_alloc_35[for_iter_43][for_iter_44]; 
                        int arith_muli_49 = (memref_load_46 * memref_load_47); 
                        int arith_addi_50 = (memref_load_48 + arith_muli_49); 
                        memref_alloc_35[for_iter_43][for_iter_44] = arith_addi_50; 
                      }
                    }
                  }
                }
                _past_array_copy_2d(memref_alloc_35, 0, 0, 1, 1, subview_34, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_34, 0, 0, 1, 1, memref_alloc_21, for_iter_29, for_iter_31, 1, 1, 32, 32); 
                PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
              }
              async_group_27[async_group_index_28] = execute_token_33; 
              async_group_index_28++; 
              int arith_addi_51 = (for_iter_arg_32 + arith_const_5); 
              for_iter_arg_32 = arith_addi_51; 
            }
            for_iter_arg_30 = for_iter_arg_32; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
        }
        _past_array_copy_2d(memref_alloc_21, 0, 0, 1, 1, subview_20, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_20, 0, 0, 1, 1, memref_alloc_12, for_iter_15, for_iter_17, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
      }
      async_group_13[async_group_index_14] = execute_token_19; 
      async_group_index_14++; 
      int arith_addi_52 = (for_iter_arg_18 + arith_const_5); 
      for_iter_arg_18 = arith_addi_52; 
    }
    for_iter_arg_16 = for_iter_arg_18; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_12, 0, 0, 1, 1, func_arg_ret_2, 0, 0, 1, 1, 2048, 2048); 
  return; 

}
#pragma pocc-region-end
