#pragma pocc-region-start
int* A; 
int* B; 
int* C; 
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_4_3 = 4; 
  int arith_const_0_4 = 0; 
  int arith_const_8_5 = 8; 
  int arith_const_16_6 = 16; 
  int arith_const_1_7 = 1; 
  int arith_const_0_8 = 0; 
  int arith_const_2_9 = 2; 
  int* memref_alloc_10; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_0_8; 
  for (int for_iter_13 = arith_const_0_8; for_iter_13 < arith_const_2_9; for_iter_13 += arith_const_1_7) {
    int for_iter_arg_16 = for_iter_arg_14; 
    for (int for_iter_15 = arith_const_0_8; for_iter_15 < arith_const_2_9; for_iter_15 += arith_const_1_7) {
      PAST_NEW_SEMAPHORE(execute_token_17, PAST_TASK_INIT); 
      #pragma peqc async_execute
      {
        int arith_muli_18 = (for_iter_15 * arith_const_8_5); 
        int arith_muli_19 = (for_iter_13 * arith_const_8_5); 
        int* memref_alloc_20; 
        int* memref_alloc_21; 
        int* memref_alloc_22; 
        int arith_const_1_23 = 1; 
        int* subview_24; 
        _past_array_copy_2d(func_arg_0, arith_muli_19, 0, 1, 1, subview_24, 0, 0, 1, 1, 8, 16); 
        _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_21, 0, 0, 1, 1, 8, 16); 
        int arith_const_1_25 = 1; 
        int* subview_26; 
        _past_array_copy_2d(func_arg_1, 0, arith_muli_18, 1, 1, subview_26, 0, 0, 1, 1, 16, 8); 
        _past_array_copy_2d(subview_26, 0, 0, 1, 1, memref_alloc_22, 0, 0, 1, 1, 16, 8); 
        int* async_group_27; 
        int async_group_index_28 = 0; 
        int for_iter_arg_30 = arith_const_0_8; 
        for (int for_iter_29 = arith_const_0_8; for_iter_29 < arith_const_2_9; for_iter_29 += arith_const_1_7) {
          int for_iter_arg_32 = for_iter_arg_30; 
          for (int for_iter_31 = arith_const_0_8; for_iter_31 < arith_const_2_9; for_iter_31 += arith_const_1_7) {
            PAST_NEW_SEMAPHORE(execute_token_33, PAST_TASK_INIT); 
            #pragma peqc async_execute
            {
              int arith_muli_34 = (for_iter_31 * arith_const_4_3); 
              int arith_muli_35 = (for_iter_29 * arith_const_4_3); 
              int* memref_alloc_36; 
              for (int for_iter_37 = arith_const_0_8; for_iter_37 < arith_const_4_3; for_iter_37 += arith_const_1_7) {
                for (int for_iter_38 = arith_const_0_8; for_iter_38 < arith_const_4_3; for_iter_38 += arith_const_1_7) {
                  memref_alloc_36[for_iter_37][for_iter_38] = arith_const_0_4; 
                }
              }
              for (int for_iter_39 = arith_const_0_8; for_iter_39 < arith_const_16_6; for_iter_39 += arith_const_4_3) {
                int* memref_alloc_40; 
                int* memref_alloc_41; 
                int arith_const_1_42 = 1; 
                int* subview_43; 
                _past_array_copy_2d(memref_alloc_21, arith_muli_35, for_iter_39, 1, 1, subview_43, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_43, 0, 0, 1, 1, memref_alloc_40, 0, 0, 1, 1, 4, 4); 
                int arith_const_1_44 = 1; 
                int* subview_45; 
                _past_array_copy_2d(memref_alloc_22, for_iter_39, arith_muli_34, 1, 1, subview_45, 0, 0, 1, 1, 4, 4); 
                _past_array_copy_2d(subview_45, 0, 0, 1, 1, memref_alloc_41, 0, 0, 1, 1, 4, 4); 
                for (int for_iter_46 = arith_const_0_8; for_iter_46 < arith_const_4_3; for_iter_46 += arith_const_1_7) {
                  for (int for_iter_47 = arith_const_0_8; for_iter_47 < arith_const_4_3; for_iter_47 += arith_const_1_7) {
                    for (int for_iter_48 = arith_const_0_8; for_iter_48 < arith_const_4_3; for_iter_48 += arith_const_1_7) {
                      int memref_load_49 = memref_alloc_40[for_iter_46][for_iter_48]; 
                      int memref_load_50 = memref_alloc_41[for_iter_48][for_iter_47]; 
                      int memref_load_51 = memref_alloc_36[for_iter_46][for_iter_47]; 
                      int arith_muli_52 = (memref_load_49 * memref_load_50); 
                      int arith_addi_53 = (memref_load_51 + arith_muli_52); 
                      memref_alloc_36[for_iter_46][for_iter_47] = arith_addi_53; 
                    }
                  }
                }
              }
              int arith_const_1_54 = 1; 
              int* subview_55; 
              _past_array_copy_2d(memref_alloc_20, arith_muli_35, arith_muli_34, 1, 1, subview_55, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(memref_alloc_36, 0, 0, 1, 1, subview_55, 0, 0, 1, 1, 4, 4); 
              _past_array_copy_2d(subview_55, 0, 0, 1, 1, memref_alloc_20, arith_muli_35, arith_muli_34, 1, 1, 4, 4); 
              PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
            }
            async_group_27[async_group_index_28] = execute_token_33; 
            async_group_index_28++; 
            int arith_addi_56 = (for_iter_arg_32 + arith_const_1_7); 
            for_iter_arg_32 = arith_addi_56; 
          }
          for_iter_arg_30 = for_iter_arg_32; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
        int arith_const_1_57 = 1; 
        int* subview_58; 
        _past_array_copy_2d(memref_alloc_10, arith_muli_19, arith_muli_18, 1, 1, subview_58, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(memref_alloc_20, 0, 0, 1, 1, subview_58, 0, 0, 1, 1, 8, 8); 
        _past_array_copy_2d(subview_58, 0, 0, 1, 1, memref_alloc_10, arith_muli_19, arith_muli_18, 1, 1, 8, 8); 
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_11[async_group_index_12] = execute_token_17; 
      async_group_index_12++; 
      int arith_addi_59 = (for_iter_arg_16 + arith_const_1_7); 
      for_iter_arg_16 = arith_addi_59; 
    }
    for_iter_arg_14 = for_iter_arg_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_10, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 16, 16); 
  return; 

}
{
  #pragma peqc async_execute
  {
    forward(A, B, C); 
  }
}
#pragma pocc-region-end
