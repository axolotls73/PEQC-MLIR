#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 3; 
  int arith_const_8 = 4; 
  int arith_const_9 = 8; 
  int arith_const_10 = 10; 
  int arith_const_11 = -8; 
  int arith_const_12 = 40; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_14; 
  for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_15; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_15; for_iter_22 += arith_const_16) {
        int arith_muli_23 = (for_iter_19 * arith_const_13); 
        int arith_muli_24 = (for_iter_19 * arith_const_13); 
        int arith_addi_25 = (arith_muli_24 + arith_const_13); 
        int arith_minsi_26 = min(arith_addi_25, arith_const_12); 
        int* async_group_27; 
        int async_group_index_28 = 0; 
        int for_iter_arg_30 = arith_const_14; 
        for (int for_iter_29 = arith_muli_23; for_iter_29 < arith_minsi_26; for_iter_29 += arith_const_16) {
          PAST_NEW_SEMAPHORE(execute_token_31); 
          #pragma peqc async_execute
          {
            int arith_muli_32 = (for_iter_22 * arith_const_11); 
            int arith_addi_33 = (arith_muli_32 + arith_const_10); 
            int arith_minsi_34 = min(arith_addi_33, arith_const_9); 
            for (int for_iter_35 = arith_const_14; for_iter_35 < arith_minsi_34; for_iter_35 += arith_const_16) {
              int arith_muli_36 = (for_iter_22 * arith_const_13); 
              int arith_muli_37 = (for_iter_35 * arith_const_8); 
              int arith_addi_38 = (arith_muli_36 + arith_muli_37); 
              double memref_load_39 = func_arg_1[for_iter_29]; 
              double memref_load_40 = func_arg_5[for_iter_29][arith_addi_38]; 
              double memref_load_41 = func_arg_3[arith_addi_38]; 
              double arith_mulf_42 = (memref_load_40 * memref_load_41); 
              double arith_addf_43 = (memref_load_39 + arith_mulf_42); 
              func_arg_1[for_iter_29] = arith_addf_43; 
              double memref_load_44 = func_arg_2[for_iter_29]; 
              double memref_load_45 = func_arg_5[arith_addi_38][for_iter_29]; 
              double memref_load_46 = func_arg_4[arith_addi_38]; 
              double arith_mulf_47 = (memref_load_45 * memref_load_46); 
              double arith_addf_48 = (memref_load_44 + arith_mulf_47); 
              func_arg_2[for_iter_29] = arith_addf_48; 
              int arith_addi_49 = (arith_addi_38 + arith_const_16); 
              double memref_load_50 = func_arg_1[for_iter_29]; 
              double memref_load_51 = func_arg_5[for_iter_29][arith_addi_49]; 
              double memref_load_52 = func_arg_3[arith_addi_49]; 
              double arith_mulf_53 = (memref_load_51 * memref_load_52); 
              double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
              func_arg_1[for_iter_29] = arith_addf_54; 
              double memref_load_55 = func_arg_2[for_iter_29]; 
              double memref_load_56 = func_arg_5[arith_addi_49][for_iter_29]; 
              double memref_load_57 = func_arg_4[arith_addi_49]; 
              double arith_mulf_58 = (memref_load_56 * memref_load_57); 
              double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
              func_arg_2[for_iter_29] = arith_addf_59; 
              int arith_addi_60 = (arith_addi_38 + arith_const_15); 
              double memref_load_61 = func_arg_1[for_iter_29]; 
              double memref_load_62 = func_arg_5[for_iter_29][arith_addi_60]; 
              double memref_load_63 = func_arg_3[arith_addi_60]; 
              double arith_mulf_64 = (memref_load_62 * memref_load_63); 
              double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
              func_arg_1[for_iter_29] = arith_addf_65; 
              double memref_load_66 = func_arg_2[for_iter_29]; 
              double memref_load_67 = func_arg_5[arith_addi_60][for_iter_29]; 
              double memref_load_68 = func_arg_4[arith_addi_60]; 
              double arith_mulf_69 = (memref_load_67 * memref_load_68); 
              double arith_addf_70 = (memref_load_66 + arith_mulf_69); 
              func_arg_2[for_iter_29] = arith_addf_70; 
              int arith_addi_71 = (arith_addi_38 + arith_const_7); 
              double memref_load_72 = func_arg_1[for_iter_29]; 
              double memref_load_73 = func_arg_5[for_iter_29][arith_addi_71]; 
              double memref_load_74 = func_arg_3[arith_addi_71]; 
              double arith_mulf_75 = (memref_load_73 * memref_load_74); 
              double arith_addf_76 = (memref_load_72 + arith_mulf_75); 
              func_arg_1[for_iter_29] = arith_addf_76; 
              double memref_load_77 = func_arg_2[for_iter_29]; 
              double memref_load_78 = func_arg_5[arith_addi_71][for_iter_29]; 
              double memref_load_79 = func_arg_4[arith_addi_71]; 
              double arith_mulf_80 = (memref_load_78 * memref_load_79); 
              double arith_addf_81 = (memref_load_77 + arith_mulf_80); 
              func_arg_2[for_iter_29] = arith_addf_81; 
            }
            PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
          }
          async_group_27[async_group_index_28] = execute_token_31; 
          async_group_index_28++; 
          int arith_addi_82 = (for_iter_arg_30 + arith_const_16); 
          for_iter_arg_30 = arith_addi_82; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_83 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_83; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
