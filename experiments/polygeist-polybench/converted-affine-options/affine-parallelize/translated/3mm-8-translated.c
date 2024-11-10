#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 41; 
  int arith_const_13 = -1; 
  int arith_const_14 = -19; 
  int arith_const_15 = 32; 
  int arith_const_16 = 19; 
  int arith_const_17 = 20; 
  int arith_const_18 = 2; 
  int arith_const_19 = 24; 
  int arith_const_20 = 18; 
  int arith_const_21 = 22; 
  double arith_const_22 = 0.000000; 
  int arith_const_23 = 0; 
  int arith_const_24 = 16; 
  int arith_const_25 = 1; 
  int* async_group_26; 
  int async_group_index_27 = 0; 
  int for_iter_arg_29 = arith_const_23; 
  for (int for_iter_28 = arith_const_23; for_iter_28 < arith_const_24; for_iter_28 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_30); 
    #pragma peqc async_execute
    {
      for (int for_iter_31 = arith_const_23; for_iter_31 < arith_const_21; for_iter_31 += arith_const_25) {
        func_arg_11[for_iter_28][for_iter_31] = arith_const_22; 
        func_arg_8[for_iter_28][for_iter_31] = arith_const_22; 
      }
      PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
    }
    async_group_26[async_group_index_27] = execute_token_30; 
    async_group_index_27++; 
    int arith_addi_32 = (for_iter_arg_29 + arith_const_25); 
    for_iter_arg_29 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
  int* async_group_33; 
  int async_group_index_34 = 0; 
  int for_iter_arg_36 = arith_const_23; 
  for (int for_iter_35 = arith_const_24; for_iter_35 < arith_const_20; for_iter_35 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_37); 
    #pragma peqc async_execute
    {
      for (int for_iter_38 = arith_const_23; for_iter_38 < arith_const_21; for_iter_38 += arith_const_25) {
        func_arg_8[for_iter_35][for_iter_38] = arith_const_22; 
      }
      PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
    }
    async_group_33[async_group_index_34] = execute_token_37; 
    async_group_index_34++; 
    int arith_addi_39 = (for_iter_arg_36 + arith_const_25); 
    for_iter_arg_36 = arith_addi_39; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
  int* async_group_40; 
  int async_group_index_41 = 0; 
  int for_iter_arg_43 = arith_const_23; 
  for (int for_iter_42 = arith_const_23; for_iter_42 < arith_const_20; for_iter_42 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_44); 
    #pragma peqc async_execute
    {
      for (int for_iter_45 = arith_const_23; for_iter_45 < arith_const_19; for_iter_45 += arith_const_25) {
        for (int for_iter_46 = arith_const_23; for_iter_46 < arith_const_21; for_iter_46 += arith_const_25) {
          double memref_load_47 = func_arg_8[for_iter_42][for_iter_46]; 
          double memref_load_48 = func_arg_9[for_iter_42][for_iter_45]; 
          double memref_load_49 = func_arg_10[for_iter_45][for_iter_46]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
          func_arg_8[for_iter_42][for_iter_46] = arith_addf_51; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
    }
    async_group_40[async_group_index_41] = execute_token_44; 
    async_group_index_41++; 
    int arith_addi_52 = (for_iter_arg_43 + arith_const_25); 
    for_iter_arg_43 = arith_addi_52; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
  int* async_group_53; 
  int async_group_index_54 = 0; 
  int for_iter_arg_56 = arith_const_23; 
  for (int for_iter_55 = arith_const_23; for_iter_55 < arith_const_24; for_iter_55 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_57); 
    #pragma peqc async_execute
    {
      for (int for_iter_58 = arith_const_23; for_iter_58 < arith_const_20; for_iter_58 += arith_const_25) {
        func_arg_5[for_iter_55][for_iter_58] = arith_const_22; 
      }
      PAST_SET_SEMAPHORE(execute_token_57, PAST_TASK_FINISHED); 
    }
    async_group_53[async_group_index_54] = execute_token_57; 
    async_group_index_54++; 
    int arith_addi_59 = (for_iter_arg_56 + arith_const_25); 
    for_iter_arg_56 = arith_addi_59; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_53, async_group_index_54, PAST_TASK_FINISHED); 
  for (int for_iter_60 = arith_const_23; for_iter_60 < arith_const_18; for_iter_60 += arith_const_25) {
    int arith_cmpi_61 = (for_iter_60 == arith_const_23); 
    if (arith_cmpi_61) {
      int* async_group_62; 
      int async_group_index_63 = 0; 
      int for_iter_arg_65 = arith_const_23; 
      for (int for_iter_64 = arith_const_23; for_iter_64 < arith_const_24; for_iter_64 += arith_const_25) {
        PAST_NEW_SEMAPHORE(execute_token_66); 
        #pragma peqc async_execute
        {
          for (int for_iter_67 = arith_const_23; for_iter_67 < arith_const_20; for_iter_67 += arith_const_25) {
            for (int for_iter_68 = arith_const_23; for_iter_68 < arith_const_17; for_iter_68 += arith_const_25) {
              double memref_load_69 = func_arg_5[for_iter_64][for_iter_67]; 
              double memref_load_70 = func_arg_6[for_iter_64][for_iter_68]; 
              double memref_load_71 = func_arg_7[for_iter_68][for_iter_67]; 
              double arith_mulf_72 = (memref_load_70 * memref_load_71); 
              double arith_addf_73 = (memref_load_69 + arith_mulf_72); 
              func_arg_5[for_iter_64][for_iter_67] = arith_addf_73; 
            }
            for (int for_iter_74 = arith_const_16; for_iter_74 < arith_const_15; for_iter_74 += arith_const_25) {
              int arith_addi_75 = (for_iter_74 + arith_const_14); 
              double memref_load_76 = func_arg_11[for_iter_64][arith_addi_75]; 
              double memref_load_77 = func_arg_5[for_iter_64][for_iter_67]; 
              int arith_addi_78 = (for_iter_74 + arith_const_14); 
              double memref_load_79 = func_arg_8[for_iter_67][arith_addi_78]; 
              double arith_mulf_80 = (memref_load_77 * memref_load_79); 
              double arith_addf_81 = (memref_load_76 + arith_mulf_80); 
              int arith_addi_82 = (for_iter_74 + arith_const_14); 
              func_arg_11[for_iter_64][arith_addi_82] = arith_addf_81; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_66, PAST_TASK_FINISHED); 
        }
        async_group_62[async_group_index_63] = execute_token_66; 
        async_group_index_63++; 
        int arith_addi_83 = (for_iter_arg_65 + arith_const_25); 
        for_iter_arg_65 = arith_addi_83; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED); 
    }
    int arith_addi_84 = (for_iter_60 + arith_const_13); 
    int arith_cmpi_85 = (arith_addi_84 == arith_const_23); 
    if (arith_cmpi_85) {
      int* async_group_86; 
      int async_group_index_87 = 0; 
      int for_iter_arg_89 = arith_const_23; 
      for (int for_iter_88 = arith_const_23; for_iter_88 < arith_const_24; for_iter_88 += arith_const_25) {
        PAST_NEW_SEMAPHORE(execute_token_90); 
        #pragma peqc async_execute
        {
          for (int for_iter_91 = arith_const_23; for_iter_91 < arith_const_20; for_iter_91 += arith_const_25) {
            for (int for_iter_92 = arith_const_15; for_iter_92 < arith_const_12; for_iter_92 += arith_const_25) {
              int arith_addi_93 = (for_iter_92 + arith_const_14); 
              double memref_load_94 = func_arg_11[for_iter_88][arith_addi_93]; 
              double memref_load_95 = func_arg_5[for_iter_88][for_iter_91]; 
              int arith_addi_96 = (for_iter_92 + arith_const_14); 
              double memref_load_97 = func_arg_8[for_iter_91][arith_addi_96]; 
              double arith_mulf_98 = (memref_load_95 * memref_load_97); 
              double arith_addf_99 = (memref_load_94 + arith_mulf_98); 
              int arith_addi_100 = (for_iter_92 + arith_const_14); 
              func_arg_11[for_iter_88][arith_addi_100] = arith_addf_99; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_90, PAST_TASK_FINISHED); 
        }
        async_group_86[async_group_index_87] = execute_token_90; 
        async_group_index_87++; 
        int arith_addi_101 = (for_iter_arg_89 + arith_const_25); 
        for_iter_arg_89 = arith_addi_101; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_86, async_group_index_87, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;

#pragma peqc async_execute
{
  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);
}
}

#pragma pocc-region-end
