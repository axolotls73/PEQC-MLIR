#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 8; 
  int arith_const_10 = -1; 
  int arith_const_11 = 31; 
  int arith_const_12 = 10; 
  int arith_const_13 = 7; 
  int arith_const_14 = -7; 
  int arith_const_15 = 32; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 3; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    int arith_muli_21 = (for_iter_20 * arith_const_15); 
    int arith_addi_22 = (arith_muli_21 + arith_const_14); 
    int arith_cmpi_23 = (arith_addi_22 <= arith_const_17); 
    int arith_subi_24 = (arith_const_17 - arith_addi_22); 
    int arith_subi_25 = (arith_addi_22 - arith_const_19); 
    int arith_select_26 = (arith_cmpi_23 ? arith_subi_24 : arith_subi_25); 
    int arith_divi_27 = (arith_select_26 / arith_const_13); 
    int arith_subi_28 = (arith_const_17 - arith_divi_27); 
    int arith_addi_29 = (arith_divi_27 + arith_const_19); 
    int arith_select_30 = (arith_cmpi_23 ? arith_subi_28 : arith_addi_29); 
    int arith_maxsi_31 = max(arith_select_30, arith_const_17); 
    int arith_muli_32 = (for_iter_20 * arith_const_15); 
    int arith_addi_33 = (arith_muli_32 + arith_const_11); 
    int arith_cmpi_34 = (arith_addi_33 < arith_const_17); 
    int arith_subi_35 = (arith_const_10 - arith_addi_33); 
    int arith_select_36 = (arith_cmpi_34 ? arith_subi_35 : arith_addi_33); 
    int arith_divi_37 = (arith_select_36 / arith_const_13); 
    int arith_subi_38 = (arith_const_10 - arith_divi_37); 
    int arith_select_39 = (arith_cmpi_34 ? arith_subi_38 : arith_divi_37); 
    int arith_addi_40 = (arith_select_39 + arith_const_19); 
    int arith_minsi_41 = min(arith_addi_40, arith_const_12); 
    for (int for_iter_42 = arith_maxsi_31; for_iter_42 < arith_minsi_41; for_iter_42 += arith_const_19) {
      int arith_muli_43 = (for_iter_20 * arith_const_15); 
      int arith_muli_44 = (for_iter_42 * arith_const_13); 
      int arith_maxsi_45 = max(arith_muli_43, arith_muli_44); 
      int arith_muli_46 = (for_iter_20 * arith_const_15); 
      int arith_addi_47 = (arith_muli_46 + arith_const_15); 
      int arith_muli_48 = (for_iter_42 * arith_const_13); 
      int arith_addi_49 = (arith_muli_48 + arith_const_9); 
      int arith_minsi_50 = min(arith_addi_47, arith_addi_49); 
      for (int for_iter_51 = arith_maxsi_45; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_19) {
        int* async_group_52; 
        int async_group_index_53 = 0; 
        int for_iter_arg_55 = arith_const_17; 
        for (int for_iter_54 = arith_const_17; for_iter_54 < arith_const_18; for_iter_54 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_56); 
          #pragma peqc async_execute
          {
            int arith_muli_57 = (for_iter_54 * arith_const_8); 
            func_arg_5[arith_muli_57] = arith_const_16; 
            int arith_addi_58 = (arith_muli_57 + arith_const_19); 
            func_arg_5[arith_addi_58] = arith_const_16; 
            int arith_addi_59 = (arith_muli_57 + arith_const_7); 
            func_arg_5[arith_addi_59] = arith_const_16; 
            int arith_addi_60 = (arith_muli_57 + arith_const_18); 
            func_arg_5[arith_addi_60] = arith_const_16; 
            PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
          }
          async_group_52[async_group_index_53] = execute_token_56; 
          async_group_index_53++; 
          int arith_addi_61 = (for_iter_arg_55 + arith_const_19); 
          for_iter_arg_55 = arith_addi_61; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_52, async_group_index_53, PAST_TASK_FINISHED); 
        for (int for_iter_62 = arith_const_17; for_iter_62 < arith_const_6; for_iter_62 += arith_const_19) {
          int* async_group_63; 
          int async_group_index_64 = 0; 
          int for_iter_arg_66 = arith_const_17; 
          for (int for_iter_65 = arith_const_17; for_iter_65 < arith_const_18; for_iter_65 += arith_const_19) {
            PAST_NEW_SEMAPHORE(execute_token_67); 
            #pragma peqc async_execute
            {
              int arith_muli_68 = (for_iter_65 * arith_const_8); 
              double memref_load_69 = func_arg_5[arith_muli_68]; 
              int arith_muli_70 = (for_iter_42 * arith_const_14); 
              int arith_addi_71 = (arith_muli_70 + for_iter_51); 
              double memref_load_72 = func_arg_3[for_iter_42][arith_addi_71][for_iter_62]; 
              double memref_load_73 = func_arg_4[for_iter_62][arith_muli_68]; 
              double arith_mulf_74 = (memref_load_72 * memref_load_73); 
              double arith_addf_75 = (memref_load_69 + arith_mulf_74); 
              func_arg_5[arith_muli_68] = arith_addf_75; 
              int arith_addi_76 = (arith_muli_68 + arith_const_19); 
              double memref_load_77 = func_arg_5[arith_addi_76]; 
              int arith_muli_78 = (for_iter_42 * arith_const_14); 
              int arith_addi_79 = (arith_muli_78 + for_iter_51); 
              double memref_load_80 = func_arg_3[for_iter_42][arith_addi_79][for_iter_62]; 
              double memref_load_81 = func_arg_4[for_iter_62][arith_addi_76]; 
              double arith_mulf_82 = (memref_load_80 * memref_load_81); 
              double arith_addf_83 = (memref_load_77 + arith_mulf_82); 
              func_arg_5[arith_addi_76] = arith_addf_83; 
              int arith_addi_84 = (arith_muli_68 + arith_const_7); 
              double memref_load_85 = func_arg_5[arith_addi_84]; 
              int arith_muli_86 = (for_iter_42 * arith_const_14); 
              int arith_addi_87 = (arith_muli_86 + for_iter_51); 
              double memref_load_88 = func_arg_3[for_iter_42][arith_addi_87][for_iter_62]; 
              double memref_load_89 = func_arg_4[for_iter_62][arith_addi_84]; 
              double arith_mulf_90 = (memref_load_88 * memref_load_89); 
              double arith_addf_91 = (memref_load_85 + arith_mulf_90); 
              func_arg_5[arith_addi_84] = arith_addf_91; 
              int arith_addi_92 = (arith_muli_68 + arith_const_18); 
              double memref_load_93 = func_arg_5[arith_addi_92]; 
              int arith_muli_94 = (for_iter_42 * arith_const_14); 
              int arith_addi_95 = (arith_muli_94 + for_iter_51); 
              double memref_load_96 = func_arg_3[for_iter_42][arith_addi_95][for_iter_62]; 
              double memref_load_97 = func_arg_4[for_iter_62][arith_addi_92]; 
              double arith_mulf_98 = (memref_load_96 * memref_load_97); 
              double arith_addf_99 = (memref_load_93 + arith_mulf_98); 
              func_arg_5[arith_addi_92] = arith_addf_99; 
              PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
            }
            async_group_63[async_group_index_64] = execute_token_67; 
            async_group_index_64++; 
            int arith_addi_100 = (for_iter_arg_66 + arith_const_19); 
            for_iter_arg_66 = arith_addi_100; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_63, async_group_index_64, PAST_TASK_FINISHED); 
        }
        int* async_group_101; 
        int async_group_index_102 = 0; 
        int for_iter_arg_104 = arith_const_17; 
        for (int for_iter_103 = arith_const_17; for_iter_103 < arith_const_18; for_iter_103 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_105); 
          #pragma peqc async_execute
          {
            int arith_muli_106 = (for_iter_103 * arith_const_8); 
            double memref_load_107 = func_arg_5[arith_muli_106]; 
            int arith_muli_108 = (for_iter_42 * arith_const_14); 
            int arith_addi_109 = (arith_muli_108 + for_iter_51); 
            func_arg_3[for_iter_42][arith_addi_109][arith_muli_106] = memref_load_107; 
            int arith_addi_110 = (arith_muli_106 + arith_const_19); 
            double memref_load_111 = func_arg_5[arith_addi_110]; 
            int arith_muli_112 = (for_iter_42 * arith_const_14); 
            int arith_addi_113 = (arith_muli_112 + for_iter_51); 
            func_arg_3[for_iter_42][arith_addi_113][arith_addi_110] = memref_load_111; 
            int arith_addi_114 = (arith_muli_106 + arith_const_7); 
            double memref_load_115 = func_arg_5[arith_addi_114]; 
            int arith_muli_116 = (for_iter_42 * arith_const_14); 
            int arith_addi_117 = (arith_muli_116 + for_iter_51); 
            func_arg_3[for_iter_42][arith_addi_117][arith_addi_114] = memref_load_115; 
            int arith_addi_118 = (arith_muli_106 + arith_const_18); 
            double memref_load_119 = func_arg_5[arith_addi_118]; 
            int arith_muli_120 = (for_iter_42 * arith_const_14); 
            int arith_addi_121 = (arith_muli_120 + for_iter_51); 
            func_arg_3[for_iter_42][arith_addi_121][arith_addi_118] = memref_load_119; 
            PAST_SET_SEMAPHORE(execute_token_105, PAST_TASK_FINISHED); 
          }
          async_group_101[async_group_index_102] = execute_token_105; 
          async_group_index_102++; 
          int arith_addi_122 = (for_iter_arg_104 + arith_const_19); 
          for_iter_arg_104 = arith_addi_122; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_101, async_group_index_102, PAST_TASK_FINISHED); 
      }
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
