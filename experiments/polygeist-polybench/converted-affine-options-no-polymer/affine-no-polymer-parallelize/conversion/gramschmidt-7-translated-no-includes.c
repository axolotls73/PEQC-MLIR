#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 42; 
  int arith_const_6 = 20; 
  int arith_const_7 = 1; 
  int arith_const_8 = 30; 
  int arith_const_9 = 0; 
  double _10; 
  double arith_const_11 = 0.000000; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _10; 
  for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_8; for_iter_13 += arith_const_7) {
    memref_alloca_12[0] = arith_const_11; 
    for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_6; for_iter_14 += arith_const_7) {
      double memref_load_15 = func_arg_2[for_iter_14][for_iter_13]; 
      double arith_mulf_16 = (memref_load_15 * memref_load_15); 
      double memref_load_17 = memref_alloca_12[0]; 
      double arith_addf_18 = (memref_load_17 + arith_mulf_16); 
      memref_alloca_12[0] = arith_addf_18; 
    }
    double memref_load_19 = memref_alloca_12[0]; 
    double math_sqrt_20 = sqrt(memref_load_19); 
    func_arg_3[for_iter_13][for_iter_13] = math_sqrt_20; 
    int* async_group_21; 
    int async_group_index_22 = 0; 
    int for_iter_arg_24 = arith_const_9; 
    for (int for_iter_23 = arith_const_9; for_iter_23 < arith_const_6; for_iter_23 += arith_const_7) {
      PAST_NEW_SEMAPHORE(execute_token_25); 
      #pragma peqc async_execute
      {
        double memref_load_26 = func_arg_2[for_iter_23][for_iter_13]; 
        double memref_load_27 = func_arg_3[for_iter_13][for_iter_13]; 
        double arith_divf_28 = (memref_load_26 / memref_load_27); 
        func_arg_4[for_iter_23][for_iter_13] = arith_divf_28; 
        PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
      }
      async_group_21[async_group_index_22] = execute_token_25; 
      async_group_index_22++; 
      int arith_addi_29 = (for_iter_arg_24 + arith_const_7); 
      for_iter_arg_24 = arith_addi_29; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
    int arith_addi_30 = (for_iter_13 + arith_const_7); 
    int* async_group_31; 
    int async_group_index_32 = 0; 
    int for_iter_arg_34 = arith_const_9; 
    for (int for_iter_33 = arith_addi_30; for_iter_33 < arith_const_8; for_iter_33 += arith_const_7) {
      PAST_NEW_SEMAPHORE(execute_token_35); 
      #pragma peqc async_execute
      {
        func_arg_3[for_iter_13][for_iter_33] = arith_const_11; 
        for (int for_iter_36 = arith_const_9; for_iter_36 < arith_const_6; for_iter_36 += arith_const_7) {
          double memref_load_37 = func_arg_4[for_iter_36][for_iter_13]; 
          double memref_load_38 = func_arg_2[for_iter_36][for_iter_33]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double memref_load_40 = func_arg_3[for_iter_13][for_iter_33]; 
          double arith_addf_41 = (memref_load_40 + arith_mulf_39); 
          func_arg_3[for_iter_13][for_iter_33] = arith_addf_41; 
        }
        for (int for_iter_42 = arith_const_9; for_iter_42 < arith_const_6; for_iter_42 += arith_const_7) {
          double memref_load_43 = func_arg_2[for_iter_42][for_iter_33]; 
          double memref_load_44 = func_arg_4[for_iter_42][for_iter_13]; 
          double memref_load_45 = func_arg_3[for_iter_13][for_iter_33]; 
          double arith_mulf_46 = (memref_load_44 * memref_load_45); 
          double arith_subf_47 = (memref_load_43 - arith_mulf_46); 
          func_arg_2[for_iter_42][for_iter_33] = arith_subf_47; 
        }
        PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
      }
      async_group_31[async_group_index_32] = execute_token_35; 
      async_group_index_32++; 
      int arith_addi_48 = (for_iter_arg_34 + arith_const_7); 
      for_iter_arg_34 = arith_addi_48; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
