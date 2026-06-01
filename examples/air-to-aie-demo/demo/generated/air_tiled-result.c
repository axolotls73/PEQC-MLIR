#pragma pocc-region-start
int* A; 
int* B; 
int* C; 
void forward(int* func_arg_1, int* func_arg_2, int* func_arg_ret_3)
{
  int arith_const_1_4 = 1; 
  int arith_const_4_5 = 4; 
  int arith_const_16_6 = 16; 
  int arith_const_0_7 = 0; 
  int arith_const_8_8 = 8; 
  int arith_const_0_9 = 0; 
  int* memref_alloc_10; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_0_7; 
  for (int for_iter_13 = arith_const_0_7; for_iter_13 < arith_const_16_6; for_iter_13 += arith_const_8_8) {
    int for_iter_arg_16 = for_iter_arg_14; 
    for (int for_iter_15 = arith_const_0_7; for_iter_15 < arith_const_16_6; for_iter_15 += arith_const_8_8) {
      PAST_NEW_SEMAPHORE(execute_token_17, PAST_TASK_INIT); 
      #pragma peqc async_execute
      {
        int* subview_18; 
        _past_array_copy_2d(func_arg_1, for_iter_13, 0, 1, 1, subview_18, 0, 0, 1, 1, 8, 16); 
        int* subview_19; 
        _past_array_copy_2d(func_arg_2, 0, for_iter_15, 1, 1, subview_19, 0, 0, 1, 1, 16, 8); 
        int* subview_20; 
        _past_array_copy_2d(memref_alloc_10, for_iter_13, for_iter_15, 1, 1, subview_20, 0, 0, 1, 1, 8, 8); 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        int* memref_alloc_23; 
        _past_array_copy_2d(subview_18, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 8, 16); 
        _past_array_copy_2d(subview_19, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 16, 8); 
        int* async_group_24; 
        int async_group_index_25 = 0; 
        int for_iter_arg_27 = arith_const_0_7; 
        for (int for_iter_26 = arith_const_0_7; for_iter_26 < arith_const_8_8; for_iter_26 += arith_const_4_5) {
          int for_iter_arg_29 = for_iter_arg_27; 
          for (int for_iter_28 = arith_const_0_7; for_iter_28 < arith_const_8_8; for_iter_28 += arith_const_4_5) {
            PAST_NEW_SEMAPHORE(execute_token_30, PAST_TASK_INIT); 
            #pragma peqc async_execute
            {
              int* subview_31; 
              _past_array_copy_2d(memref_alloc_21, for_iter_26, for_iter_28, 1, 1, subview_31, 0, 0, 1, 1, 4, 4); 
              int* memref_alloc_32; 
              for (int for_iter_33 = arith_const_0_7; for_iter_33 < arith_const_4_5; for_iter_33 += arith_const_1_4) {
                for (int for_iter_34 = arith_const_0_7; for_iter_34 < arith_const_4_5; for_iter_34 += arith_const_1_4) {
                  memref_alloc_32[for_iter_33][for_iter_34] = arith_const_0_9; 
                }
              }
              for (int for_iter_35 = arith_const_0_7; for_iter_35 < arith_const_16_6; for_iter_35 += arith_const_4_5) {
                int* subview_36; 
                _past_array_copy_2d(memref_alloc_22, for_iter_26, for_iter_35, 1, 1, subview_36, 0, 0, 1, 1, 4, 4); 
                int* subview_37; 
                _past_array_copy_2d(memref_alloc_23, for_iter_35, for_iter_28, 1, 1, subview_37, 0, 0, 1, 1, 4, 4); 
                int* memref_alloc_38; 
                int* memref_alloc_39; 
                _past_array_copy_2d(subview_36, 0, 0, 1, 1, memref_alloc_38, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_37, 0, 0, 1, 1, memref_alloc_39, 0, 0, 1, 1, 4, 4); 
                for (int for_iter_40 = arith_const_0_7; for_iter_40 < arith_const_4_5; for_iter_40 += arith_const_1_4) {
                  for (int for_iter_41 = arith_const_0_7; for_iter_41 < arith_const_4_5; for_iter_41 += arith_const_1_4) {
                    for (int for_iter_42 = arith_const_0_7; for_iter_42 < arith_const_4_5; for_iter_42 += arith_const_1_4) {
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
              _past_array_copy_2d(memref_alloc_32, 0, 0, 1, 1, subview_31, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(subview_31, 0, 0, 1, 1, memref_alloc_21, for_iter_26, for_iter_28, 1, 1, 4, 4); 
              PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
            }
            async_group_24[async_group_index_25] = execute_token_30; 
            async_group_index_25++; 
            int arith_addi_48 = (for_iter_arg_29 + arith_const_1_4); 
            for_iter_arg_29 = arith_addi_48; 
          }
          for_iter_arg_27 = for_iter_arg_29; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
        _past_array_copy_2d(memref_alloc_21, 0, 0, 1, 1, subview_20, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(subview_20, 0, 0, 1, 1, memref_alloc_10, for_iter_13, for_iter_15, 1, 1, 8, 8); 
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_11[async_group_index_12] = execute_token_17; 
      async_group_index_12++; 
      int arith_addi_49 = (for_iter_arg_16 + arith_const_1_4); 
      for_iter_arg_16 = arith_addi_49; 
    }
    for_iter_arg_14 = for_iter_arg_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_10, 0, 0, 1, 1, func_arg_ret_3, 0, 0, 1, 1, 16, 16); 
  return; 

}
{
  #pragma peqc async_execute
  {
    int* func_call_0; 
    forward(A, B, func_call_0); 
    _past_array_copy_2d(func_call_0, 0, 0, 1, 1, C, 0, 0, 1, 1, 16, 16); 
  }
}
#pragma pocc-region-end
