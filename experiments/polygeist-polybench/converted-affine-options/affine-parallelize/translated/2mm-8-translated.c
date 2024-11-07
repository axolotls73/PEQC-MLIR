#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 45; 
  int arith_const_12 = -1; 
  int arith_const_13 = -21; 
  int arith_const_14 = 32; 
  int arith_const_15 = 21; 
  int arith_const_16 = 22; 
  int arith_const_17 = 2; 
  int arith_const_18 = 24; 
  int arith_const_19 = 18; 
  double arith_const_20 = 0.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 16; 
  int arith_const_23 = 1; 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_21; 
  for (int for_iter_26 = arith_const_21; for_iter_26 < arith_const_22; for_iter_26 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      for (int for_iter_29 = arith_const_21; for_iter_29 < arith_const_19; for_iter_29 += arith_const_23) {
        double memref_load_30 = func_arg_10[for_iter_26][for_iter_29]; 
        double arith_mulf_31 = (memref_load_30 * func_arg_5); 
        func_arg_10[for_iter_26][for_iter_29] = arith_mulf_31; 
        func_arg_6[for_iter_26][for_iter_29] = arith_const_20; 
      }
      for (int for_iter_32 = arith_const_19; for_iter_32 < arith_const_18; for_iter_32 += arith_const_23) {
        double memref_load_33 = func_arg_10[for_iter_26][for_iter_32]; 
        double arith_mulf_34 = (memref_load_33 * func_arg_5); 
        func_arg_10[for_iter_26][for_iter_32] = arith_mulf_34; 
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_35 = (for_iter_arg_27 + arith_const_23); 
    for_iter_arg_27 = arith_addi_35; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  for (int for_iter_36 = arith_const_21; for_iter_36 < arith_const_17; for_iter_36 += arith_const_23) {
    int arith_cmpi_37 = ((for_iter_36 == arith_const_21) ? 1 : 0); 
    if (arith_cmpi_37) {
      int* async_group_38; 
      int async_group_index_39 = 0; 
      int for_iter_arg_41 = arith_const_21; 
      for (int for_iter_40 = arith_const_21; for_iter_40 < arith_const_22; for_iter_40 += arith_const_23) {
        PAST_NEW_SEMAPHORE(execute_token_42); 
        #pragma peqc async_execute
        {
          for (int for_iter_43 = arith_const_21; for_iter_43 < arith_const_19; for_iter_43 += arith_const_23) {
            for (int for_iter_44 = arith_const_21; for_iter_44 < arith_const_16; for_iter_44 += arith_const_23) {
              double memref_load_45 = func_arg_6[for_iter_40][for_iter_43]; 
              double memref_load_46 = func_arg_7[for_iter_40][for_iter_44]; 
              double arith_mulf_47 = (func_arg_4 * memref_load_46); 
              double memref_load_48 = func_arg_8[for_iter_44][for_iter_43]; 
              double arith_mulf_49 = (arith_mulf_47 * memref_load_48); 
              double arith_addf_50 = (memref_load_45 + arith_mulf_49); 
              func_arg_6[for_iter_40][for_iter_43] = arith_addf_50; 
            }
            for (int for_iter_51 = arith_const_15; for_iter_51 < arith_const_14; for_iter_51 += arith_const_23) {
              int arith_addi_52 = (for_iter_51 + arith_const_13); 
              double memref_load_53 = func_arg_10[for_iter_40][arith_addi_52]; 
              double memref_load_54 = func_arg_6[for_iter_40][for_iter_43]; 
              int arith_addi_55 = (for_iter_51 + arith_const_13); 
              double memref_load_56 = func_arg_9[for_iter_43][arith_addi_55]; 
              double arith_mulf_57 = (memref_load_54 * memref_load_56); 
              double arith_addf_58 = (memref_load_53 + arith_mulf_57); 
              int arith_addi_59 = (for_iter_51 + arith_const_13); 
              func_arg_10[for_iter_40][arith_addi_59] = arith_addf_58; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
        }
        async_group_38[async_group_index_39] = execute_token_42; 
        async_group_index_39++; 
        int arith_addi_60 = (for_iter_arg_41 + arith_const_23); 
        for_iter_arg_41 = arith_addi_60; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
    }
    int arith_addi_61 = (for_iter_36 + arith_const_12); 
    int arith_cmpi_62 = ((arith_addi_61 == arith_const_21) ? 1 : 0); 
    if (arith_cmpi_62) {
      int* async_group_63; 
      int async_group_index_64 = 0; 
      int for_iter_arg_66 = arith_const_21; 
      for (int for_iter_65 = arith_const_21; for_iter_65 < arith_const_22; for_iter_65 += arith_const_23) {
        PAST_NEW_SEMAPHORE(execute_token_67); 
        #pragma peqc async_execute
        {
          for (int for_iter_68 = arith_const_21; for_iter_68 < arith_const_19; for_iter_68 += arith_const_23) {
            for (int for_iter_69 = arith_const_14; for_iter_69 < arith_const_11; for_iter_69 += arith_const_23) {
              int arith_addi_70 = (for_iter_69 + arith_const_13); 
              double memref_load_71 = func_arg_10[for_iter_65][arith_addi_70]; 
              double memref_load_72 = func_arg_6[for_iter_65][for_iter_68]; 
              int arith_addi_73 = (for_iter_69 + arith_const_13); 
              double memref_load_74 = func_arg_9[for_iter_68][arith_addi_73]; 
              double arith_mulf_75 = (memref_load_72 * memref_load_74); 
              double arith_addf_76 = (memref_load_71 + arith_mulf_75); 
              int arith_addi_77 = (for_iter_69 + arith_const_13); 
              func_arg_10[for_iter_65][arith_addi_77] = arith_addf_76; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
        }
        async_group_63[async_group_index_64] = execute_token_67; 
        async_group_index_64++; 
        int arith_addi_78 = (for_iter_arg_66 + arith_const_23); 
        for_iter_arg_66 = arith_addi_78; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_63, async_group_index_64, PAST_TASK_FINISHED); 
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
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}

#pragma pocc-region-end
