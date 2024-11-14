#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 32; 
  int arith_const_7 = 28; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 7; 
  int arith_const_12 = -1; 
  int arith_const_13 = 0; 
  int arith_const_14 = 19; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_12); 
    int arith_addi_18 = (arith_muli_17 + arith_const_14); 
    for (int for_iter_19 = arith_const_13; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_15) {
      int arith_addi_20 = (for_iter_16 + for_iter_19); 
      int arith_addi_21 = (arith_addi_20 + arith_const_15); 
      int* async_group_22; 
      int async_group_index_23 = 0; 
      int for_iter_arg_25 = arith_const_13; 
      for (int for_iter_24 = arith_const_13; for_iter_24 < arith_const_11; for_iter_24 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_26); 
        #pragma peqc async_execute
        {
          int arith_muli_27 = (for_iter_24 * arith_const_10); 
          double memref_load_28 = func_arg_4[for_iter_16][arith_muli_27]; 
          double memref_load_29 = func_arg_3[arith_addi_21][for_iter_16]; 
          double memref_load_30 = func_arg_4[arith_addi_21][arith_muli_27]; 
          double arith_mulf_31 = (memref_load_29 * memref_load_30); 
          double arith_addf_32 = (memref_load_28 + arith_mulf_31); 
          func_arg_4[for_iter_16][arith_muli_27] = arith_addf_32; 
          int arith_addi_33 = (arith_muli_27 + arith_const_15); 
          double memref_load_34 = func_arg_4[for_iter_16][arith_addi_33]; 
          double memref_load_35 = func_arg_3[arith_addi_21][for_iter_16]; 
          double memref_load_36 = func_arg_4[arith_addi_21][arith_addi_33]; 
          double arith_mulf_37 = (memref_load_35 * memref_load_36); 
          double arith_addf_38 = (memref_load_34 + arith_mulf_37); 
          func_arg_4[for_iter_16][arith_addi_33] = arith_addf_38; 
          int arith_addi_39 = (arith_muli_27 + arith_const_9); 
          double memref_load_40 = func_arg_4[for_iter_16][arith_addi_39]; 
          double memref_load_41 = func_arg_3[arith_addi_21][for_iter_16]; 
          double memref_load_42 = func_arg_4[arith_addi_21][arith_addi_39]; 
          double arith_mulf_43 = (memref_load_41 * memref_load_42); 
          double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
          func_arg_4[for_iter_16][arith_addi_39] = arith_addf_44; 
          int arith_addi_45 = (arith_muli_27 + arith_const_8); 
          double memref_load_46 = func_arg_4[for_iter_16][arith_addi_45]; 
          double memref_load_47 = func_arg_3[arith_addi_21][for_iter_16]; 
          double memref_load_48 = func_arg_4[arith_addi_21][arith_addi_45]; 
          double arith_mulf_49 = (memref_load_47 * memref_load_48); 
          double arith_addf_50 = (memref_load_46 + arith_mulf_49); 
          func_arg_4[for_iter_16][arith_addi_45] = arith_addf_50; 
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_51 = (for_iter_arg_25 + arith_const_15); 
        for_iter_arg_25 = arith_addi_51; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      int* async_group_52; 
      int async_group_index_53 = 0; 
      int for_iter_arg_55 = arith_const_13; 
      for (int for_iter_54 = arith_const_13; for_iter_54 < arith_const_9; for_iter_54 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_56); 
        #pragma peqc async_execute
        {
          int arith_addi_57 = (for_iter_54 + arith_const_7); 
          double memref_load_58 = func_arg_4[for_iter_16][arith_addi_57]; 
          double memref_load_59 = func_arg_3[arith_addi_21][for_iter_16]; 
          double memref_load_60 = func_arg_4[arith_addi_21][arith_addi_57]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
          func_arg_4[for_iter_16][arith_addi_57] = arith_addf_62; 
          PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
        }
        async_group_52[async_group_index_53] = execute_token_56; 
        async_group_index_53++; 
        int arith_addi_63 = (for_iter_arg_55 + arith_const_15); 
        for_iter_arg_55 = arith_addi_63; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_52, async_group_index_53, PAST_TASK_FINISHED); 
    }
  }
  int* async_group_64; 
  int async_group_index_65 = 0; 
  int for_iter_arg_67 = arith_const_13; 
  for (int for_iter_66 = arith_const_13; for_iter_66 < arith_const_15; for_iter_66 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_68); 
    #pragma peqc async_execute
    {
      int arith_muli_69 = (for_iter_66 * arith_const_6); 
      for (int for_iter_70 = arith_const_13; for_iter_70 < arith_const_5; for_iter_70 += arith_const_15) {
        int arith_addi_71 = (arith_muli_69 + for_iter_70); 
        for (int for_iter_72 = arith_const_13; for_iter_72 < arith_const_11; for_iter_72 += arith_const_15) {
          int arith_muli_73 = (for_iter_72 * arith_const_10); 
          double memref_load_74 = func_arg_4[arith_addi_71][arith_muli_73]; 
          double arith_mulf_75 = (func_arg_2 * memref_load_74); 
          func_arg_4[arith_addi_71][arith_muli_73] = arith_mulf_75; 
          int arith_addi_76 = (arith_muli_73 + arith_const_15); 
          double memref_load_77 = func_arg_4[arith_addi_71][arith_addi_76]; 
          double arith_mulf_78 = (func_arg_2 * memref_load_77); 
          func_arg_4[arith_addi_71][arith_addi_76] = arith_mulf_78; 
          int arith_addi_79 = (arith_muli_73 + arith_const_9); 
          double memref_load_80 = func_arg_4[arith_addi_71][arith_addi_79]; 
          double arith_mulf_81 = (func_arg_2 * memref_load_80); 
          func_arg_4[arith_addi_71][arith_addi_79] = arith_mulf_81; 
          int arith_addi_82 = (arith_muli_73 + arith_const_8); 
          double memref_load_83 = func_arg_4[arith_addi_71][arith_addi_82]; 
          double arith_mulf_84 = (func_arg_2 * memref_load_83); 
          func_arg_4[arith_addi_71][arith_addi_82] = arith_mulf_84; 
        }
        for (int for_iter_85 = arith_const_13; for_iter_85 < arith_const_9; for_iter_85 += arith_const_15) {
          int arith_addi_86 = (for_iter_85 + arith_const_7); 
          double memref_load_87 = func_arg_4[arith_addi_71][arith_addi_86]; 
          double arith_mulf_88 = (func_arg_2 * memref_load_87); 
          func_arg_4[arith_addi_71][arith_addi_86] = arith_mulf_88; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED); 
    }
    async_group_64[async_group_index_65] = execute_token_68; 
    async_group_index_65++; 
    int arith_addi_89 = (for_iter_arg_67 + arith_const_15); 
    for_iter_arg_67 = arith_addi_89; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_64, async_group_index_65, PAST_TASK_FINISHED); 
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
