#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 42; 
  int arith_const_4 = -1; 
  int arith_const_5 = 40; 
  int arith_const_6 = 1; 
  int arith_const_7 = 0; 
  double arith_const_8 = 0.000000; 
  double arith_const_9 = 1.000000; 
  double* memref_alloca_10; 
  double _11; 
  memref_alloca_10[0] = _11; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _11; 
  double* memref_alloca_13; 
  memref_alloca_13[0] = _11; 
  double* memref_alloca_14; 
  double memref_load_15 = func_arg_1[arith_const_7]; 
  double arith_negf_16 = -(memref_load_15); 
  func_arg_2[arith_const_7] = arith_negf_16; 
  memref_alloca_12[0] = arith_const_9; 
  double memref_load_17 = func_arg_1[arith_const_7]; 
  double arith_negf_18 = -(memref_load_17); 
  memref_alloca_13[0] = arith_negf_18; 
  for (int for_iter_19 = arith_const_6; for_iter_19 < arith_const_5; for_iter_19 += arith_const_6) {
    double memref_load_20 = memref_alloca_13[0]; 
    double arith_mulf_21 = (memref_load_20 * memref_load_20); 
    double arith_subf_22 = (arith_const_9 - arith_mulf_21); 
    double memref_load_23 = memref_alloca_12[0]; 
    double arith_mulf_24 = (arith_subf_22 * memref_load_23); 
    memref_alloca_12[0] = arith_mulf_24; 
    memref_alloca_10[0] = arith_const_8; 
    for (int for_iter_25 = arith_const_7; for_iter_25 < for_iter_19; for_iter_25 += arith_const_6) {
      int arith_muli_26 = (for_iter_25 * arith_const_4); 
      int arith_addi_27 = (for_iter_19 + arith_muli_26); 
      int arith_addi_28 = (arith_addi_27 + arith_const_4); 
      double memref_load_29 = func_arg_1[arith_addi_28]; 
      double memref_load_30 = func_arg_2[for_iter_25]; 
      double arith_mulf_31 = (memref_load_29 * memref_load_30); 
      double memref_load_32 = memref_alloca_10[0]; 
      double arith_addf_33 = (memref_load_32 + arith_mulf_31); 
      memref_alloca_10[0] = arith_addf_33; 
    }
    double memref_load_34 = func_arg_1[for_iter_19]; 
    double memref_load_35 = memref_alloca_10[0]; 
    double arith_addf_36 = (memref_load_34 + memref_load_35); 
    double arith_negf_37 = -(arith_addf_36); 
    double arith_divf_38 = (arith_negf_37 / arith_mulf_24); 
    memref_alloca_13[0] = arith_divf_38; 
    int* async_group_39; 
    int async_group_index_40 = 0; 
    int for_iter_arg_42 = arith_const_7; 
    for (int for_iter_41 = arith_const_7; for_iter_41 < for_iter_19; for_iter_41 += arith_const_6) {
      PAST_NEW_SEMAPHORE(execute_token_43); 
      #pragma peqc async_execute
      {
        double memref_load_44 = func_arg_2[for_iter_41]; 
        int arith_muli_45 = (for_iter_41 * arith_const_4); 
        int arith_addi_46 = (for_iter_19 + arith_muli_45); 
        int arith_addi_47 = (arith_addi_46 + arith_const_4); 
        double memref_load_48 = func_arg_2[arith_addi_47]; 
        double arith_mulf_49 = (arith_divf_38 * memref_load_48); 
        double arith_addf_50 = (memref_load_44 + arith_mulf_49); 
        memref_alloca_14[for_iter_41] = arith_addf_50; 
        PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
      }
      async_group_39[async_group_index_40] = execute_token_43; 
      async_group_index_40++; 
      int arith_addi_51 = (for_iter_arg_42 + arith_const_6); 
      for_iter_arg_42 = arith_addi_51; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_39, async_group_index_40, PAST_TASK_FINISHED); 
    int* async_group_52; 
    int async_group_index_53 = 0; 
    int for_iter_arg_55 = arith_const_7; 
    for (int for_iter_54 = arith_const_7; for_iter_54 < for_iter_19; for_iter_54 += arith_const_6) {
      PAST_NEW_SEMAPHORE(execute_token_56); 
      #pragma peqc async_execute
      {
        double memref_load_57 = memref_alloca_14[for_iter_54]; 
        func_arg_2[for_iter_54] = memref_load_57; 
        PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
      }
      async_group_52[async_group_index_53] = execute_token_56; 
      async_group_index_53++; 
      int arith_addi_58 = (for_iter_arg_55 + arith_const_6); 
      for_iter_arg_55 = arith_addi_58; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_52, async_group_index_53, PAST_TASK_FINISHED); 
    func_arg_2[for_iter_19] = arith_divf_38; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;

#pragma peqc async_execute
{
  kernel_durbin(n, r, y);
}
}

#pragma pocc-region-end
