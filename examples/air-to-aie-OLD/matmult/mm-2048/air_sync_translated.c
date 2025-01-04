#pragma pocc-region-start
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 1024; 
  int arith_const_5 = 0; 
  int arith_const_6 = 256; 
  int arith_const_7 = 2048; 
  int arith_const_8 = 2; 
  int arith_const_9 = 64; 
  int arith_const_10 = 1; 
  int arith_const_11 = 0; 
  int arith_const_12 = 32; 
  int* memref_alloc_13; 
  int* async_group_14; 
  int async_group_index_15 = 0; 
  int for_iter_arg_17 = arith_const_11; 
  for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_12; for_iter_16 += arith_const_10) {
    int for_iter_arg_19 = for_iter_arg_17; 
    for (int for_iter_18 = arith_const_11; for_iter_18 < arith_const_12; for_iter_18 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_20); 
      #pragma peqc async_execute
      {
        int arith_muli_21 = (for_iter_16 * arith_const_9); 
        int arith_muli_22 = (for_iter_18 * arith_const_9); 
        int* memref_alloc_23; 
        for (int for_iter_24 = arith_const_11; for_iter_24 < arith_const_7; for_iter_24 += arith_const_6) {
          int* memref_alloc_25; 
          int* memref_alloc_26; 
          int* subview_27; 
          _past_array_copy_2d(func_arg_0, arith_muli_21, for_iter_24, 1, 1, subview_27, 0, 0, 1, 1, 64, 256); 
          _past_array_copy_2d(subview_27, 0, 0, 1, 1, memref_alloc_25, 0, 0, 1, 1, 64, 256); 
          int* subview_28; 
          _past_array_copy_2d(func_arg_1, for_iter_24, arith_muli_22, 1, 1, subview_28, 0, 0, 1, 1, 256, 64); 
          _past_array_copy_2d(subview_28, 0, 0, 1, 1, memref_alloc_26, 0, 0, 1, 1, 256, 64); 
          int* async_group_29; 
          int async_group_index_30 = 0; 
          int for_iter_arg_32 = arith_const_11; 
          for (int for_iter_31 = arith_const_11; for_iter_31 < arith_const_8; for_iter_31 += arith_const_10) {
            int for_iter_arg_34 = for_iter_arg_32; 
            for (int for_iter_33 = arith_const_11; for_iter_33 < arith_const_8; for_iter_33 += arith_const_10) {
              PAST_NEW_SEMAPHORE(execute_token_35); 
              #pragma peqc async_execute
              {
                int arith_muli_36 = (for_iter_31 * arith_const_12); 
                int arith_muli_37 = (for_iter_33 * arith_const_12); 
                int* memref_alloc_38; 
                for (int for_iter_39 = arith_const_11; for_iter_39 < arith_const_12; for_iter_39 += arith_const_10) {
                  for (int for_iter_40 = arith_const_11; for_iter_40 < arith_const_12; for_iter_40 += arith_const_10) {
                    memref_alloc_38[for_iter_39][for_iter_40] = arith_const_5; 
                  }
                }
                for (int for_iter_41 = arith_const_11; for_iter_41 < arith_const_6; for_iter_41 += arith_const_12) {
                  int* memref_alloc_42; 
                  int* memref_alloc_43; 
                  int* subview_44; 
                  _past_array_copy_2d(memref_alloc_25, arith_muli_36, for_iter_41, 1, 1, subview_44, 0, 0, 1, 1, 32, 32); 
                  _past_array_copy_2d(subview_44, 0, 0, 1, 1, memref_alloc_42, 0, 0, 1, 1, 32, 32); 
                  int* subview_45; 
                  _past_array_copy_2d(memref_alloc_26, for_iter_41, arith_muli_37, 1, 1, subview_45, 0, 0, 1, 1, 32, 32); 
                  _past_array_copy_2d(subview_45, 0, 0, 1, 1, memref_alloc_43, 0, 0, 1, 1, 32, 32); 
                  for (int for_iter_46 = arith_const_11; for_iter_46 < arith_const_12; for_iter_46 += arith_const_10) {
                    for (int for_iter_47 = arith_const_11; for_iter_47 < arith_const_12; for_iter_47 += arith_const_10) {
                      for (int for_iter_48 = arith_const_11; for_iter_48 < arith_const_12; for_iter_48 += arith_const_10) {
                        int memref_load_49 = memref_alloc_42[for_iter_46][for_iter_48]; 
                        int memref_load_50 = memref_alloc_43[for_iter_48][for_iter_47]; 
                        int memref_load_51 = memref_alloc_38[for_iter_46][for_iter_47]; 
                        int arith_muli_52 = (memref_load_49 * memref_load_50); 
                        int arith_addi_53 = (memref_load_51 + arith_muli_52); 
                        memref_alloc_38[for_iter_46][for_iter_47] = arith_addi_53; 
                      }
                    }
                  }
                }
                int* subview_54; 
                _past_array_copy_2d(memref_alloc_23, arith_muli_36, arith_muli_37, 1, 1, subview_54, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(memref_alloc_38, 0, 0, 1, 1, subview_54, 0, 0, 1, 1, 32, 32); 
                _past_array_copy_2d(subview_54, 0, 0, 1, 1, memref_alloc_23, arith_muli_36, arith_muli_37, 1, 1, 32, 32); 
                PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
              }
              async_group_29[async_group_index_30] = execute_token_35; 
              async_group_index_30++; 
              int arith_addi_55 = (for_iter_arg_34 + arith_const_10); 
              for_iter_arg_34 = arith_addi_55; 
            }
            for_iter_arg_32 = for_iter_arg_34; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
        }
        int* subview_56; 
        _past_array_copy_2d(memref_alloc_13, arith_muli_21, arith_muli_22, 1, 1, subview_56, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(memref_alloc_23, 0, 0, 1, 1, subview_56, 0, 0, 1, 1, 64, 64); 
        _past_array_copy_2d(subview_56, 0, 0, 1, 1, memref_alloc_13, arith_muli_21, arith_muli_22, 1, 1, 64, 64); 
        PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
      }
      async_group_14[async_group_index_15] = execute_token_20; 
      async_group_index_15++; 
      int arith_addi_57 = (for_iter_arg_19 + arith_const_10); 
      for_iter_arg_19 = arith_addi_57; 
    }
    for_iter_arg_17 = for_iter_arg_19; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  _past_array_copy_2d(memref_alloc_13, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 2048, 2048); 
  return; 

}
#pragma pocc-region-end
