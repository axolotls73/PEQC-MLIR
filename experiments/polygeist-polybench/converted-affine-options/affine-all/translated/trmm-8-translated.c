#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 28; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = 4; 
  int arith_const_10 = 7; 
  int arith_const_11 = -1; 
  int arith_const_12 = 0; 
  int arith_const_13 = 19; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_11); 
    int arith_addi_17 = (arith_muli_16 + arith_const_13); 
    for (int for_iter_18 = arith_const_12; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_14) {
      int arith_addi_19 = (for_iter_15 + for_iter_18); 
      int arith_addi_20 = (arith_addi_19 + arith_const_14); 
      int* async_group_21; 
      int async_group_index_22 = 0; 
      int for_iter_arg_24 = arith_const_12; 
      for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_10; for_iter_23 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_25); 
        #pragma peqc async_execute
        {
          int arith_muli_26 = (for_iter_23 * arith_const_9); 
          double memref_load_27 = func_arg_4[for_iter_15][arith_muli_26]; 
          double memref_load_28 = func_arg_3[arith_addi_20][for_iter_15]; 
          double memref_load_29 = func_arg_4[arith_addi_20][arith_muli_26]; 
          double arith_mulf_30 = (memref_load_28 * memref_load_29); 
          double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
          func_arg_4[for_iter_15][arith_muli_26] = arith_addf_31; 
          int arith_addi_32 = (arith_muli_26 + arith_const_14); 
          double memref_load_33 = func_arg_4[for_iter_15][arith_addi_32]; 
          double memref_load_34 = func_arg_3[arith_addi_20][for_iter_15]; 
          double memref_load_35 = func_arg_4[arith_addi_20][arith_addi_32]; 
          double arith_mulf_36 = (memref_load_34 * memref_load_35); 
          double arith_addf_37 = (memref_load_33 + arith_mulf_36); 
          func_arg_4[for_iter_15][arith_addi_32] = arith_addf_37; 
          int arith_addi_38 = (arith_muli_26 + arith_const_8); 
          double memref_load_39 = func_arg_4[for_iter_15][arith_addi_38]; 
          double memref_load_40 = func_arg_3[arith_addi_20][for_iter_15]; 
          double memref_load_41 = func_arg_4[arith_addi_20][arith_addi_38]; 
          double arith_mulf_42 = (memref_load_40 * memref_load_41); 
          double arith_addf_43 = (memref_load_39 + arith_mulf_42); 
          func_arg_4[for_iter_15][arith_addi_38] = arith_addf_43; 
          int arith_addi_44 = (arith_muli_26 + arith_const_7); 
          double memref_load_45 = func_arg_4[for_iter_15][arith_addi_44]; 
          double memref_load_46 = func_arg_3[arith_addi_20][for_iter_15]; 
          double memref_load_47 = func_arg_4[arith_addi_20][arith_addi_44]; 
          double arith_mulf_48 = (memref_load_46 * memref_load_47); 
          double arith_addf_49 = (memref_load_45 + arith_mulf_48); 
          func_arg_4[for_iter_15][arith_addi_44] = arith_addf_49; 
          PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
        }
        async_group_21[async_group_index_22] = execute_token_25; 
        async_group_index_22++; 
        int arith_addi_50 = (for_iter_arg_24 + arith_const_14); 
        for_iter_arg_24 = arith_addi_50; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
      int* async_group_51; 
      int async_group_index_52 = 0; 
      int for_iter_arg_54 = arith_const_12; 
      for (int for_iter_53 = arith_const_12; for_iter_53 < arith_const_8; for_iter_53 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_55); 
        #pragma peqc async_execute
        {
          int arith_addi_56 = (for_iter_53 + arith_const_6); 
          double memref_load_57 = func_arg_4[for_iter_15][arith_addi_56]; 
          double memref_load_58 = func_arg_3[arith_addi_20][for_iter_15]; 
          double memref_load_59 = func_arg_4[arith_addi_20][arith_addi_56]; 
          double arith_mulf_60 = (memref_load_58 * memref_load_59); 
          double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
          func_arg_4[for_iter_15][arith_addi_56] = arith_addf_61; 
          PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
        }
        async_group_51[async_group_index_52] = execute_token_55; 
        async_group_index_52++; 
        int arith_addi_62 = (for_iter_arg_54 + arith_const_14); 
        for_iter_arg_54 = arith_addi_62; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_51, async_group_index_52, PAST_TASK_FINISHED); 
    }
  }
  int* async_group_63; 
  int async_group_index_64 = 0; 
  int for_iter_arg_66 = arith_const_12; 
  for (int for_iter_65 = arith_const_12; for_iter_65 < arith_const_5; for_iter_65 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_67); 
    #pragma peqc async_execute
    {
      for (int for_iter_68 = arith_const_12; for_iter_68 < arith_const_14; for_iter_68 += arith_const_14) {
        int arith_addi_69 = (for_iter_65 + for_iter_68); 
        for (int for_iter_70 = arith_const_12; for_iter_70 < arith_const_10; for_iter_70 += arith_const_14) {
          int arith_muli_71 = (for_iter_70 * arith_const_9); 
          double memref_load_72 = func_arg_4[arith_addi_69][arith_muli_71]; 
          double arith_mulf_73 = (func_arg_2 * memref_load_72); 
          func_arg_4[arith_addi_69][arith_muli_71] = arith_mulf_73; 
          int arith_addi_74 = (arith_muli_71 + arith_const_14); 
          double memref_load_75 = func_arg_4[arith_addi_69][arith_addi_74]; 
          double arith_mulf_76 = (func_arg_2 * memref_load_75); 
          func_arg_4[arith_addi_69][arith_addi_74] = arith_mulf_76; 
          int arith_addi_77 = (arith_muli_71 + arith_const_8); 
          double memref_load_78 = func_arg_4[arith_addi_69][arith_addi_77]; 
          double arith_mulf_79 = (func_arg_2 * memref_load_78); 
          func_arg_4[arith_addi_69][arith_addi_77] = arith_mulf_79; 
          int arith_addi_80 = (arith_muli_71 + arith_const_7); 
          double memref_load_81 = func_arg_4[arith_addi_69][arith_addi_80]; 
          double arith_mulf_82 = (func_arg_2 * memref_load_81); 
          func_arg_4[arith_addi_69][arith_addi_80] = arith_mulf_82; 
        }
        for (int for_iter_83 = arith_const_12; for_iter_83 < arith_const_8; for_iter_83 += arith_const_14) {
          int arith_addi_84 = (for_iter_83 + arith_const_6); 
          double memref_load_85 = func_arg_4[arith_addi_69][arith_addi_84]; 
          double arith_mulf_86 = (func_arg_2 * memref_load_85); 
          func_arg_4[arith_addi_69][arith_addi_84] = arith_mulf_86; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
    }
    async_group_63[async_group_index_64] = execute_token_67; 
    async_group_index_64++; 
    int arith_addi_87 = (for_iter_arg_66 + arith_const_14); 
    for_iter_arg_66 = arith_addi_87; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_63, async_group_index_64, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_trmm(m, n, alpha, A, B);
}
}

#pragma pocc-region-end
