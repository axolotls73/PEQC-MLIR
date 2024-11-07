#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -4; 
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 19; 
  int arith_const_10 = -1; 
  int arith_const_11 = 30; 
  int arith_const_12 = 0; 
  int arith_const_13 = 20; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int* async_group_16; 
    int async_group_index_17 = 0; 
    int for_iter_arg_19 = arith_const_12; 
    for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_11; for_iter_18 += arith_const_14) {
      PAST_NEW_SEMAPHORE(execute_token_20); 
      #pragma peqc async_execute
      {
        int* async_group_21; 
        int async_group_index_22 = 0; 
        int for_iter_arg_24 = arith_const_12; 
        for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_14; for_iter_23 += arith_const_14) {
          PAST_NEW_SEMAPHORE(execute_token_25); 
          #pragma peqc async_execute
          {
            int arith_addi_26 = (for_iter_15 + for_iter_23); 
            int* async_group_27; 
            int async_group_index_28 = 0; 
            int for_iter_arg_30 = arith_const_12; 
            for (int for_iter_29 = arith_const_12; for_iter_29 < arith_const_14; for_iter_29 += arith_const_14) {
              PAST_NEW_SEMAPHORE(execute_token_31); 
              #pragma peqc async_execute
              {
                int arith_addi_32 = (for_iter_18 + for_iter_29); 
                int arith_muli_33 = (for_iter_15 * arith_const_10); 
                int arith_muli_34 = (for_iter_23 * arith_const_10); 
                int arith_addi_35 = (arith_muli_33 + arith_muli_34); 
                int arith_addi_36 = (arith_addi_35 + arith_const_9); 
                int arith_cmpi_37 = ((arith_addi_36 < arith_const_12) ? 1 : 0); 
                int arith_subi_38 = (arith_const_10 - arith_addi_36); 
                int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
                int arith_divi_40 = (arith_select_39 / arith_const_8); 
                int arith_subi_41 = (arith_const_10 - arith_divi_40); 
                int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
                for (int for_iter_43 = arith_const_12; for_iter_43 < arith_select_42; for_iter_43 += arith_const_14) {
                  int arith_muli_44 = (for_iter_43 * arith_const_8); 
                  int arith_addi_45 = (arith_addi_26 + arith_muli_44); 
                  int arith_addi_46 = (arith_addi_45 + arith_const_14); 
                  double memref_load_47 = func_arg_3[arith_addi_46][arith_addi_26]; 
                  double memref_load_48 = func_arg_4[arith_addi_46][arith_addi_32]; 
                  double arith_mulf_49 = (memref_load_47 * memref_load_48); 
                  double memref_load_50 = func_arg_4[arith_addi_26][arith_addi_32]; 
                  double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
                  func_arg_4[arith_addi_26][arith_addi_32] = arith_addf_51; 
                  int arith_addi_52 = (arith_addi_46 + arith_const_14); 
                  double memref_load_53 = func_arg_3[arith_addi_52][arith_addi_26]; 
                  double memref_load_54 = func_arg_4[arith_addi_52][arith_addi_32]; 
                  double arith_mulf_55 = (memref_load_53 * memref_load_54); 
                  double memref_load_56 = func_arg_4[arith_addi_26][arith_addi_32]; 
                  double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
                  func_arg_4[arith_addi_26][arith_addi_32] = arith_addf_57; 
                  int arith_addi_58 = (arith_addi_46 + arith_const_7); 
                  double memref_load_59 = func_arg_3[arith_addi_58][arith_addi_26]; 
                  double memref_load_60 = func_arg_4[arith_addi_58][arith_addi_32]; 
                  double arith_mulf_61 = (memref_load_59 * memref_load_60); 
                  double memref_load_62 = func_arg_4[arith_addi_26][arith_addi_32]; 
                  double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
                  func_arg_4[arith_addi_26][arith_addi_32] = arith_addf_63; 
                  int arith_addi_64 = (arith_addi_46 + arith_const_6); 
                  double memref_load_65 = func_arg_3[arith_addi_64][arith_addi_26]; 
                  double memref_load_66 = func_arg_4[arith_addi_64][arith_addi_32]; 
                  double arith_mulf_67 = (memref_load_65 * memref_load_66); 
                  double memref_load_68 = func_arg_4[arith_addi_26][arith_addi_32]; 
                  double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
                  func_arg_4[arith_addi_26][arith_addi_32] = arith_addf_69; 
                }
                int arith_muli_70 = (for_iter_15 * arith_const_10); 
                int arith_muli_71 = (for_iter_23 * arith_const_10); 
                int arith_addi_72 = (arith_muli_70 + arith_muli_71); 
                int arith_muli_73 = (for_iter_15 * arith_const_10); 
                int arith_muli_74 = (for_iter_23 * arith_const_10); 
                int arith_addi_75 = (arith_muli_73 + arith_muli_74); 
                int arith_addi_76 = (arith_addi_75 + arith_const_9); 
                int arith_cmpi_77 = ((arith_addi_76 < arith_const_12) ? 1 : 0); 
                int arith_subi_78 = (arith_const_10 - arith_addi_76); 
                int arith_select_79 = (arith_cmpi_77 ? arith_subi_78 : arith_addi_76); 
                int arith_divi_80 = (arith_select_79 / arith_const_8); 
                int arith_subi_81 = (arith_const_10 - arith_divi_80); 
                int arith_select_82 = (arith_cmpi_77 ? arith_subi_81 : arith_divi_80); 
                int arith_muli_83 = (arith_select_82 * arith_const_5); 
                int arith_addi_84 = (arith_addi_72 + arith_muli_83); 
                int arith_addi_85 = (arith_addi_84 + arith_const_9); 
                for (int for_iter_86 = arith_const_12; for_iter_86 < arith_addi_85; for_iter_86 += arith_const_14) {
                  int arith_addi_87 = (arith_addi_26 + for_iter_86); 
                  int arith_muli_88 = (arith_addi_26 * arith_const_10); 
                  int arith_addi_89 = (arith_muli_88 + arith_const_9); 
                  int arith_cmpi_90 = ((arith_addi_89 < arith_const_12) ? 1 : 0); 
                  int arith_subi_91 = (arith_const_10 - arith_addi_89); 
                  int arith_select_92 = (arith_cmpi_90 ? arith_subi_91 : arith_addi_89); 
                  int arith_divi_93 = (arith_select_92 / arith_const_8); 
                  int arith_subi_94 = (arith_const_10 - arith_divi_93); 
                  int arith_select_95 = (arith_cmpi_90 ? arith_subi_94 : arith_divi_93); 
                  int arith_muli_96 = (arith_select_95 * arith_const_8); 
                  int arith_addi_97 = (arith_addi_87 + arith_muli_96); 
                  int arith_addi_98 = (arith_addi_97 + arith_const_14); 
                  double memref_load_99 = func_arg_3[arith_addi_98][arith_addi_26]; 
                  double memref_load_100 = func_arg_4[arith_addi_98][arith_addi_32]; 
                  double arith_mulf_101 = (memref_load_99 * memref_load_100); 
                  double memref_load_102 = func_arg_4[arith_addi_26][arith_addi_32]; 
                  double arith_addf_103 = (memref_load_102 + arith_mulf_101); 
                  func_arg_4[arith_addi_26][arith_addi_32] = arith_addf_103; 
                }
                double memref_load_104 = func_arg_4[arith_addi_26][arith_addi_32]; 
                double arith_mulf_105 = (func_arg_2 * memref_load_104); 
                func_arg_4[arith_addi_26][arith_addi_32] = arith_mulf_105; 
                PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
              }
              async_group_27[async_group_index_28] = execute_token_31; 
              async_group_index_28++; 
              int arith_addi_106 = (for_iter_arg_30 + arith_const_14); 
              for_iter_arg_30 = arith_addi_106; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
          }
          async_group_21[async_group_index_22] = execute_token_25; 
          async_group_index_22++; 
          int arith_addi_107 = (for_iter_arg_24 + arith_const_14); 
          for_iter_arg_24 = arith_addi_107; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
      }
      async_group_16[async_group_index_17] = execute_token_20; 
      async_group_index_17++; 
      int arith_addi_108 = (for_iter_arg_19 + arith_const_14); 
      for_iter_arg_19 = arith_addi_108; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
