#pragma pocc-region-start
int* A; 
int* B; 
int* C; 
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_4_3 = 4; 
  int arith_const_32_4 = 32; 
  int arith_const_0_5 = 0; 
  int arith_const_64_6 = 64; 
  int arith_const_256_7 = 256; 
  int arith_const_128_8 = 128; 
  int arith_const_1_9 = 1; 
  int arith_const_0_10 = 0; 
  int arith_const_2_11 = 2; 
  int* memref_alloc_12; 
  int* async_group_13; 
  int async_group_index_14 = 0; 
  int for_iter_arg_16 = arith_const_0_10; 
  for (int for_iter_15 = arith_const_0_10; for_iter_15 < arith_const_2_11; for_iter_15 += arith_const_1_9) {
    int for_iter_arg_18 = for_iter_arg_16; 
    for (int for_iter_17 = arith_const_0_10; for_iter_17 < arith_const_2_11; for_iter_17 += arith_const_1_9) {
      PAST_NEW_SEMAPHORE(execute_token_19, PAST_TASK_INIT); 
      #pragma peqc async_execute
      {
        int arith_muli_20 = (for_iter_17 * arith_const_64_6); 
        int arith_muli_21 = (for_iter_15 * arith_const_64_6); 
        int* memref_alloc_22; 
        int* memref_alloc_23; 
        int* memref_alloc_24; 
        int arith_const_1_25 = 1; 
        int* subview_26; 
        _past_array_copy_2d(func_arg_0, arith_muli_21, 0, 1, 1, subview_26, 0, 0, 1, 1, 64, 256); 
        _past_array_copy_2d(subview_26, 0, 0, 1, 1, memref_alloc_23, 0, 0, 1, 1, 64, 256); 
        int arith_const_1_27 = 1; 
        int* subview_28; 
        _past_array_copy_2d(func_arg_1, 0, arith_muli_20, 1, 1, subview_28, 0, 0, 1, 1, 256, 64); 
        _past_array_copy_2d(subview_28, 0, 0, 1, 1, memref_alloc_24, 0, 0, 1, 1, 256, 64); 
        int* async_group_29; 
        int async_group_index_30 = 0; 
        int for_iter_arg_32 = arith_const_0_10; 
        for (int for_iter_31 = arith_const_0_10; for_iter_31 < arith_const_2_11; for_iter_31 += arith_const_1_9) {
          int for_iter_arg_34 = for_iter_arg_32; 
          for (int for_iter_33 = arith_const_0_10; for_iter_33 < arith_const_2_11; for_iter_33 += arith_const_1_9) {
            PAST_NEW_SEMAPHORE(execute_token_35, PAST_TASK_INIT); 
            #pragma peqc async_execute
            {
              int arith_muli_36 = (for_iter_33 * arith_const_32_4); 
              int arith_muli_37 = (for_iter_31 * arith_const_32_4); 
              int* memref_alloc_38; 
              for (int for_iter_39 = arith_const_0_10; for_iter_39 < arith_const_32_4; for_iter_39 += arith_const_1_9) {
                for (int for_iter_40 = arith_const_0_10; for_iter_40 < arith_const_32_4; for_iter_40 += arith_const_1_9) {
                  memref_alloc_38[for_iter_39][for_iter_40] = arith_const_0_5; 
                }
              }
              for (int for_iter_41 = arith_const_0_10; for_iter_41 < arith_const_256_7; for_iter_41 += arith_const_32_4) {
                int* memref_alloc_42; 
                int* memref_alloc_43; 
                int arith_const_1_44 = 1; 
                int* subview_45; 
                _past_array_copy_2d(memref_alloc_23, arith_muli_37, for_iter_41, 1, 1, subview_45, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_45, 0, 0, 1, 1, memref_alloc_42, 0, 0, 1, 1, 32, 32); 
                int arith_const_1_46 = 1; 
                int* subview_47; 
                _past_array_copy_2d(memref_alloc_24, for_iter_41, arith_muli_36, 1, 1, subview_47, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_47, 0, 0, 1, 1, memref_alloc_43, 0, 0, 1, 1, 32, 32); 
                for (int for_iter_48 = arith_const_0_10; for_iter_48 < arith_const_32_4; for_iter_48 += arith_const_1_9) {
                  for (int for_iter_49 = arith_const_0_10; for_iter_49 < arith_const_32_4; for_iter_49 += arith_const_1_9) {
                    for (int for_iter_50 = arith_const_0_10; for_iter_50 < arith_const_32_4; for_iter_50 += arith_const_1_9) {
                      int memref_load_51 = memref_alloc_42[for_iter_48][for_iter_50]; 
                      int memref_load_52 = memref_alloc_43[for_iter_50][for_iter_49]; 
                      int memref_load_53 = memref_alloc_38[for_iter_48][for_iter_49]; 
                      int arith_muli_54 = (memref_load_51 * memref_load_52); 
                      int arith_addi_55 = (memref_load_53 + arith_muli_54); 
                      memref_alloc_38[for_iter_48][for_iter_49] = arith_addi_55; 
                    }
                  }
                }
              }
              int arith_const_1_56 = 1; 
              int* subview_57; 
              _past_array_copy_2d(memref_alloc_22, arith_muli_37, arith_muli_36, 1, 1, subview_57, 0, 0, 1, 1, 32, 32); 
              _past_array_copy_2d(memref_alloc_38, 0, 0, 1, 1, subview_57, 0, 0, 1, 1, 32, 32); 
              _past_array_copy_2d(subview_57, 0, 0, 1, 1, memref_alloc_22, arith_muli_37, arith_muli_36, 1, 1, 32, 32); 
              PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
            }
            async_group_29[async_group_index_30] = execute_token_35; 
            async_group_index_30++; 
            int arith_addi_58 = (for_iter_arg_34 + arith_const_1_9); 
            for_iter_arg_34 = arith_addi_58; 
          }
          for_iter_arg_32 = for_iter_arg_34; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
        int arith_const_1_59 = 1; 
        int* subview_60; 
        _past_array_copy_2d(memref_alloc_12, arith_muli_21, arith_muli_20, 1, 1, subview_60, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(memref_alloc_22, 0, 0, 1, 1, subview_60, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_60, 0, 0, 1, 1, memref_alloc_12, arith_muli_21, arith_muli_20, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
      }
      async_group_13[async_group_index_14] = execute_token_19; 
      async_group_index_14++; 
      int arith_addi_61 = (for_iter_arg_18 + arith_const_1_9); 
      for_iter_arg_18 = arith_addi_61; 
    }
    for_iter_arg_16 = for_iter_arg_18; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_12, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 128, 128); 
  return; 

}
{
  #pragma peqc async_execute
  {
    forward(A, B, C); 
  }
}
#pragma pocc-region-end
