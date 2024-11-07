#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_10; for_iter_16 += arith_const_14) {
      int* async_group_17; 
      int async_group_index_18 = 0; 
      int for_iter_arg_20 = arith_const_12; 
      for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_14; for_iter_19 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_21); 
        #pragma peqc async_execute
        {
          int arith_addi_22 = (for_iter_15 + for_iter_19); 
          int* async_group_23; 
          int async_group_index_24 = 0; 
          int for_iter_arg_26 = arith_const_12; 
          for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_14; for_iter_25 += arith_const_14) {
            PAST_NEW_SEMAPHORE(execute_token_27); 
            #pragma peqc async_execute
            {
              int arith_addi_28 = (for_iter_16 + for_iter_25); 
              int* async_group_29; 
              int async_group_index_30 = 0; 
              int for_iter_arg_32 = arith_const_12; 
              for (int for_iter_31 = arith_const_12; for_iter_31 < arith_const_9; for_iter_31 += arith_const_14) {
                PAST_NEW_SEMAPHORE(execute_token_33); 
                #pragma peqc async_execute
                {
                  func_arg_5[for_iter_31] = arith_const_11; 
                  for (int for_iter_34 = arith_const_12; for_iter_34 < arith_const_8; for_iter_34 += arith_const_14) {
                    int arith_muli_35 = (for_iter_34 * arith_const_7); 
                    double memref_load_36 = func_arg_3[arith_addi_22][arith_addi_28][arith_muli_35]; 
                    double memref_load_37 = func_arg_4[arith_muli_35][for_iter_31]; 
                    double arith_mulf_38 = (memref_load_36 * memref_load_37); 
                    double memref_load_39 = func_arg_5[for_iter_31]; 
                    double arith_addf_40 = (memref_load_39 + arith_mulf_38); 
                    func_arg_5[for_iter_31] = arith_addf_40; 
                    int arith_addi_41 = (arith_muli_35 + arith_const_14); 
                    double memref_load_42 = func_arg_3[arith_addi_22][arith_addi_28][arith_addi_41]; 
                    double memref_load_43 = func_arg_4[arith_addi_41][for_iter_31]; 
                    double arith_mulf_44 = (memref_load_42 * memref_load_43); 
                    double memref_load_45 = func_arg_5[for_iter_31]; 
                    double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
                    func_arg_5[for_iter_31] = arith_addf_46; 
                    int arith_addi_47 = (arith_muli_35 + arith_const_6); 
                    double memref_load_48 = func_arg_3[arith_addi_22][arith_addi_28][arith_addi_47]; 
                    double memref_load_49 = func_arg_4[arith_addi_47][for_iter_31]; 
                    double arith_mulf_50 = (memref_load_48 * memref_load_49); 
                    double memref_load_51 = func_arg_5[for_iter_31]; 
                    double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
                    func_arg_5[for_iter_31] = arith_addf_52; 
                    int arith_addi_53 = (arith_muli_35 + arith_const_8); 
                    double memref_load_54 = func_arg_3[arith_addi_22][arith_addi_28][arith_addi_53]; 
                    double memref_load_55 = func_arg_4[arith_addi_53][for_iter_31]; 
                    double arith_mulf_56 = (memref_load_54 * memref_load_55); 
                    double memref_load_57 = func_arg_5[for_iter_31]; 
                    double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
                    func_arg_5[for_iter_31] = arith_addf_58; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
                }
                async_group_29[async_group_index_30] = execute_token_33; 
                async_group_index_30++; 
                int arith_addi_59 = (for_iter_arg_32 + arith_const_14); 
                for_iter_arg_32 = arith_addi_59; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
              int* async_group_60; 
              int async_group_index_61 = 0; 
              int for_iter_arg_63 = arith_const_12; 
              for (int for_iter_62 = arith_const_12; for_iter_62 < arith_const_8; for_iter_62 += arith_const_14) {
                PAST_NEW_SEMAPHORE(execute_token_64); 
                #pragma peqc async_execute
                {
                  int arith_muli_65 = (for_iter_62 * arith_const_7); 
                  double memref_load_66 = func_arg_5[arith_muli_65]; 
                  func_arg_3[arith_addi_22][arith_addi_28][arith_muli_65] = memref_load_66; 
                  int arith_addi_67 = (arith_muli_65 + arith_const_14); 
                  double memref_load_68 = func_arg_5[arith_addi_67]; 
                  func_arg_3[arith_addi_22][arith_addi_28][arith_addi_67] = memref_load_68; 
                  int arith_addi_69 = (arith_muli_65 + arith_const_6); 
                  double memref_load_70 = func_arg_5[arith_addi_69]; 
                  func_arg_3[arith_addi_22][arith_addi_28][arith_addi_69] = memref_load_70; 
                  int arith_addi_71 = (arith_muli_65 + arith_const_8); 
                  double memref_load_72 = func_arg_5[arith_addi_71]; 
                  func_arg_3[arith_addi_22][arith_addi_28][arith_addi_71] = memref_load_72; 
                  PAST_SET_SEMAPHORE(execute_token_64, PAST_TASK_FINISHED); 
                }
                async_group_60[async_group_index_61] = execute_token_64; 
                async_group_index_61++; 
                int arith_addi_73 = (for_iter_arg_63 + arith_const_14); 
                for_iter_arg_63 = arith_addi_73; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_60, async_group_index_61, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
            }
            async_group_23[async_group_index_24] = execute_token_27; 
            async_group_index_24++; 
            int arith_addi_74 = (for_iter_arg_26 + arith_const_14); 
            for_iter_arg_26 = arith_addi_74; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
        }
        async_group_17[async_group_index_18] = execute_token_21; 
        async_group_index_18++; 
        int arith_addi_75 = (for_iter_arg_20 + arith_const_14); 
        for_iter_arg_20 = arith_addi_75; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}

#pragma pocc-region-end
