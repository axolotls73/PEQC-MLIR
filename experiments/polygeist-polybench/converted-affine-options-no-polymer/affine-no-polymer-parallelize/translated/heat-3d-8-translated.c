#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 8; 
  int arith_const_5 = 0; 
  int arith_const_6 = -1; 
  int arith_const_7 = 9; 
  double arith_const_8 = 2.000000; 
  double arith_const_9 = 0.125000; 
  int arith_const_10 = 1; 
  int arith_const_11 = 21; 
  for (int for_iter_12 = arith_const_10; for_iter_12 < arith_const_11; for_iter_12 += arith_const_10) {
    int* async_group_13; 
    int async_group_index_14 = 0; 
    int for_iter_arg_16 = arith_const_5; 
    for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_7; for_iter_15 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_17); 
      #pragma peqc async_execute
      {
        for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_7; for_iter_18 += arith_const_10) {
          for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_7; for_iter_19 += arith_const_10) {
            int arith_addi_20 = (for_iter_15 + arith_const_10); 
            double memref_load_21 = func_arg_2[arith_addi_20][for_iter_18][for_iter_19]; 
            double memref_load_22 = func_arg_2[for_iter_15][for_iter_18][for_iter_19]; 
            double arith_mulf_23 = (memref_load_22 * arith_const_8); 
            double arith_subf_24 = (memref_load_21 - arith_mulf_23); 
            int arith_addi_25 = (for_iter_15 + arith_const_6); 
            double memref_load_26 = func_arg_2[arith_addi_25][for_iter_18][for_iter_19]; 
            double arith_addf_27 = (arith_subf_24 + memref_load_26); 
            double arith_mulf_28 = (arith_addf_27 * arith_const_9); 
            int arith_addi_29 = (for_iter_18 + arith_const_10); 
            double memref_load_30 = func_arg_2[for_iter_15][arith_addi_29][for_iter_19]; 
            double arith_subf_31 = (memref_load_30 - arith_mulf_23); 
            int arith_addi_32 = (for_iter_18 + arith_const_6); 
            double memref_load_33 = func_arg_2[for_iter_15][arith_addi_32][for_iter_19]; 
            double arith_addf_34 = (arith_subf_31 + memref_load_33); 
            double arith_mulf_35 = (arith_addf_34 * arith_const_9); 
            double arith_addf_36 = (arith_mulf_28 + arith_mulf_35); 
            int arith_addi_37 = (for_iter_19 + arith_const_10); 
            double memref_load_38 = func_arg_2[for_iter_15][for_iter_18][arith_addi_37]; 
            double arith_subf_39 = (memref_load_38 - arith_mulf_23); 
            int arith_addi_40 = (for_iter_19 + arith_const_6); 
            double memref_load_41 = func_arg_2[for_iter_15][for_iter_18][arith_addi_40]; 
            double arith_addf_42 = (arith_subf_39 + memref_load_41); 
            double arith_mulf_43 = (arith_addf_42 * arith_const_9); 
            double arith_addf_44 = (arith_addf_36 + arith_mulf_43); 
            double arith_addf_45 = (arith_addf_44 + memref_load_22); 
            func_arg_3[for_iter_15][for_iter_18][for_iter_19] = arith_addf_45; 
          }
        }
        PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
      }
      async_group_13[async_group_index_14] = execute_token_17; 
      async_group_index_14++; 
      int arith_addi_46 = (for_iter_arg_16 + arith_const_10); 
      for_iter_arg_16 = arith_addi_46; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
    int* async_group_47; 
    int async_group_index_48 = 0; 
    int for_iter_arg_50 = arith_const_5; 
    for (int for_iter_49 = arith_const_10; for_iter_49 < arith_const_7; for_iter_49 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_51); 
      #pragma peqc async_execute
      {
        for (int for_iter_52 = arith_const_10; for_iter_52 < arith_const_7; for_iter_52 += arith_const_10) {
          for (int for_iter_53 = arith_const_10; for_iter_53 < arith_const_7; for_iter_53 += arith_const_10) {
            int arith_addi_54 = (for_iter_49 + arith_const_10); 
            double memref_load_55 = func_arg_3[arith_addi_54][for_iter_52][for_iter_53]; 
            double memref_load_56 = func_arg_3[for_iter_49][for_iter_52][for_iter_53]; 
            double arith_mulf_57 = (memref_load_56 * arith_const_8); 
            double arith_subf_58 = (memref_load_55 - arith_mulf_57); 
            int arith_addi_59 = (for_iter_49 + arith_const_6); 
            double memref_load_60 = func_arg_3[arith_addi_59][for_iter_52][for_iter_53]; 
            double arith_addf_61 = (arith_subf_58 + memref_load_60); 
            double arith_mulf_62 = (arith_addf_61 * arith_const_9); 
            int arith_addi_63 = (for_iter_52 + arith_const_10); 
            double memref_load_64 = func_arg_3[for_iter_49][arith_addi_63][for_iter_53]; 
            double arith_subf_65 = (memref_load_64 - arith_mulf_57); 
            int arith_addi_66 = (for_iter_52 + arith_const_6); 
            double memref_load_67 = func_arg_3[for_iter_49][arith_addi_66][for_iter_53]; 
            double arith_addf_68 = (arith_subf_65 + memref_load_67); 
            double arith_mulf_69 = (arith_addf_68 * arith_const_9); 
            double arith_addf_70 = (arith_mulf_62 + arith_mulf_69); 
            int arith_addi_71 = (for_iter_53 + arith_const_10); 
            double memref_load_72 = func_arg_3[for_iter_49][for_iter_52][arith_addi_71]; 
            double arith_subf_73 = (memref_load_72 - arith_mulf_57); 
            int arith_addi_74 = (for_iter_53 + arith_const_6); 
            double memref_load_75 = func_arg_3[for_iter_49][for_iter_52][arith_addi_74]; 
            double arith_addf_76 = (arith_subf_73 + memref_load_75); 
            double arith_mulf_77 = (arith_addf_76 * arith_const_9); 
            double arith_addf_78 = (arith_addf_70 + arith_mulf_77); 
            double arith_addf_79 = (arith_addf_78 + memref_load_56); 
            func_arg_2[for_iter_49][for_iter_52][for_iter_53] = arith_addf_79; 
          }
        }
        PAST_SET_SEMAPHORE(execute_token_51, PAST_TASK_FINISHED); 
      }
      async_group_47[async_group_index_48] = execute_token_51; 
      async_group_index_48++; 
      int arith_addi_80 = (for_iter_arg_50 + arith_const_10); 
      for_iter_arg_50 = arith_addi_80; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
