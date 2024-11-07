#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 7; 
  int arith_const_5 = 42; 
  int arith_const_6 = 39; 
  int arith_const_7 = -2; 
  int arith_const_8 = 33; 
  int arith_const_9 = 31; 
  int arith_const_10 = -1; 
  int arith_const_11 = 40; 
  int arith_const_12 = 32; 
  int arith_const_13 = 0; 
  int arith_const_14 = 2; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_13; 
  for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_14; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_muli_21 = (for_iter_18 * arith_const_12); 
      int arith_muli_22 = (for_iter_18 * arith_const_12); 
      int arith_addi_23 = (arith_muli_22 + arith_const_12); 
      int arith_minsi_24 = min(arith_addi_23, arith_const_11); 
      int* async_group_25; 
      int async_group_index_26 = 0; 
      int for_iter_arg_28 = arith_const_13; 
      for (int for_iter_27 = arith_muli_21; for_iter_27 < arith_minsi_24; for_iter_27 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_29); 
        #pragma peqc async_execute
        {
          double memref_load_30 = func_arg_3[for_iter_27]; 
          func_arg_2[for_iter_27] = memref_load_30; 
          PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
        }
        async_group_25[async_group_index_26] = execute_token_29; 
        async_group_index_26++; 
        int arith_addi_31 = (for_iter_arg_28 + arith_const_15); 
        for_iter_arg_28 = arith_addi_31; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_32 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  for (int for_iter_33 = arith_const_13; for_iter_33 < arith_const_14; for_iter_33 += arith_const_15) {
    int arith_addi_34 = (for_iter_33 + arith_const_15); 
    for (int for_iter_35 = arith_const_13; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_15) {
      int arith_addi_36 = (for_iter_33 + arith_const_10); 
      int arith_cmpi_37 = ((arith_addi_36 == arith_const_13) ? 1 : 0); 
      int arith_addi_38 = (for_iter_35 + arith_const_10); 
      int arith_cmpi_39 = ((arith_addi_38 == arith_const_13) ? 1 : 0); 
      int arith_andi_40 = (arith_cmpi_37 & arith_cmpi_39); 
      if (arith_andi_40) {
        double memref_load_41 = func_arg_2[arith_const_12]; 
        double memref_load_42 = func_arg_1[arith_const_12][arith_const_9]; 
        double memref_load_43 = func_arg_2[arith_const_9]; 
        double arith_mulf_44 = (memref_load_42 * memref_load_43); 
        double arith_subf_45 = (memref_load_41 - arith_mulf_44); 
        func_arg_2[arith_const_12] = arith_subf_45; 
      }
      int arith_muli_46 = (for_iter_33 * arith_const_12); 
      int arith_muli_47 = (for_iter_35 * arith_const_12); 
      int arith_addi_48 = (arith_muli_47 + arith_const_15); 
      int arith_maxsi_49 = max(arith_muli_46, arith_addi_48); 
      int arith_muli_50 = (for_iter_33 * arith_const_12); 
      int arith_addi_51 = (arith_muli_50 + arith_const_12); 
      int arith_muli_52 = (for_iter_35 * arith_const_12); 
      int arith_addi_53 = (arith_muli_52 + arith_const_8); 
      int arith_minsi_54 = min(arith_addi_51, arith_const_11); 
      int arith_minsi_55 = min(arith_minsi_54, arith_addi_53); 
      for (int for_iter_56 = arith_maxsi_49; for_iter_56 < arith_minsi_55; for_iter_56 += arith_const_15) {
        int arith_muli_57 = (for_iter_35 * arith_const_12); 
        int arith_maxsi_58 = max(arith_muli_57, arith_const_15); 
        int arith_addi_59 = (for_iter_56 + arith_const_10); 
        for (int for_iter_60 = arith_maxsi_58; for_iter_60 < arith_addi_59; for_iter_60 += arith_const_15) {
          double memref_load_61 = func_arg_2[for_iter_56]; 
          int arith_addi_62 = (for_iter_60 + arith_const_10); 
          double memref_load_63 = func_arg_1[for_iter_56][arith_addi_62]; 
          int arith_addi_64 = (for_iter_60 + arith_const_10); 
          double memref_load_65 = func_arg_2[arith_addi_64]; 
          double arith_mulf_66 = (memref_load_63 * memref_load_65); 
          double arith_subf_67 = (memref_load_61 - arith_mulf_66); 
          func_arg_2[for_iter_56] = arith_subf_67; 
        }
        int arith_cmpi_68 = ((for_iter_33 == arith_const_13) ? 1 : 0); 
        int arith_cmpi_69 = ((for_iter_35 == arith_const_13) ? 1 : 0); 
        int arith_andi_70 = (arith_cmpi_68 & arith_cmpi_69); 
        int arith_addi_71 = (for_iter_56 + arith_const_10); 
        int arith_cmpi_72 = ((arith_addi_71 == arith_const_13) ? 1 : 0); 
        int arith_andi_73 = (arith_andi_70 & arith_cmpi_72); 
        if (arith_andi_73) {
          double memref_load_74 = func_arg_2[arith_const_13]; 
          double memref_load_75 = func_arg_1[arith_const_13][arith_const_13]; 
          double arith_divf_76 = (memref_load_74 / memref_load_75); 
          func_arg_2[arith_const_13] = arith_divf_76; 
        }
        int arith_addi_77 = (for_iter_56 + arith_const_7); 
        int arith_cmpi_78 = ((arith_addi_77 >= arith_const_13) ? 1 : 0); 
        if (arith_cmpi_78) {
          int arith_addi_79 = (for_iter_56 + arith_const_10); 
          double memref_load_80 = func_arg_2[arith_addi_79]; 
          int arith_addi_81 = (for_iter_56 + arith_const_10); 
          int arith_addi_82 = (for_iter_56 + arith_const_10); 
          double memref_load_83 = func_arg_1[arith_addi_81][arith_addi_82]; 
          double arith_divf_84 = (memref_load_80 / memref_load_83); 
          int arith_addi_85 = (for_iter_56 + arith_const_10); 
          func_arg_2[arith_addi_85] = arith_divf_84; 
          double memref_load_86 = func_arg_2[for_iter_56]; 
          int arith_addi_87 = (for_iter_56 + arith_const_7); 
          double memref_load_88 = func_arg_1[for_iter_56][arith_addi_87]; 
          int arith_addi_89 = (for_iter_56 + arith_const_7); 
          double memref_load_90 = func_arg_2[arith_addi_89]; 
          double arith_mulf_91 = (memref_load_88 * memref_load_90); 
          double arith_subf_92 = (memref_load_86 - arith_mulf_91); 
          func_arg_2[for_iter_56] = arith_subf_92; 
        }
        int arith_muli_93 = (for_iter_35 * arith_const_10); 
        int arith_addi_94 = (for_iter_33 + arith_muli_93); 
        int arith_cmpi_95 = ((arith_addi_94 == arith_const_13) ? 1 : 0); 
        if (arith_cmpi_95) {
          double memref_load_96 = func_arg_2[for_iter_56]; 
          int arith_addi_97 = (for_iter_56 + arith_const_10); 
          double memref_load_98 = func_arg_1[for_iter_56][arith_addi_97]; 
          int arith_addi_99 = (for_iter_56 + arith_const_10); 
          double memref_load_100 = func_arg_2[arith_addi_99]; 
          double arith_mulf_101 = (memref_load_98 * memref_load_100); 
          double arith_subf_102 = (memref_load_96 - arith_mulf_101); 
          func_arg_2[for_iter_56] = arith_subf_102; 
        }
      }
      int arith_addi_103 = (for_iter_33 + arith_const_10); 
      int arith_cmpi_104 = ((arith_addi_103 == arith_const_13) ? 1 : 0); 
      int arith_cmpi_105 = ((for_iter_35 == arith_const_13) ? 1 : 0); 
      int arith_andi_106 = (arith_cmpi_104 & arith_cmpi_105); 
      if (arith_andi_106) {
        int* async_group_107; 
        int async_group_index_108 = 0; 
        int for_iter_arg_110 = arith_const_13; 
        for (int for_iter_109 = arith_const_8; for_iter_109 < arith_const_11; for_iter_109 += arith_const_15) {
          PAST_NEW_SEMAPHORE(execute_token_111); 
          #pragma peqc async_execute
          {
            for (int for_iter_112 = arith_const_15; for_iter_112 < arith_const_12; for_iter_112 += arith_const_15) {
              double memref_load_113 = func_arg_2[for_iter_109]; 
              int arith_addi_114 = (for_iter_112 + arith_const_10); 
              double memref_load_115 = func_arg_1[for_iter_109][arith_addi_114]; 
              int arith_addi_116 = (for_iter_112 + arith_const_10); 
              double memref_load_117 = func_arg_2[arith_addi_116]; 
              double arith_mulf_118 = (memref_load_115 * memref_load_117); 
              double arith_subf_119 = (memref_load_113 - arith_mulf_118); 
              func_arg_2[for_iter_109] = arith_subf_119; 
            }
            PAST_SET_SEMAPHORE(execute_token_111, PAST_TASK_FINISHED); 
          }
          async_group_107[async_group_index_108] = execute_token_111; 
          async_group_index_108++; 
          int arith_addi_120 = (for_iter_arg_110 + arith_const_15); 
          for_iter_arg_110 = arith_addi_120; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_107, async_group_index_108, PAST_TASK_FINISHED); 
      }
      int arith_addi_121 = (for_iter_33 + arith_const_10); 
      int arith_cmpi_122 = ((arith_addi_121 == arith_const_13) ? 1 : 0); 
      int arith_addi_123 = (for_iter_35 + arith_const_10); 
      int arith_cmpi_124 = ((arith_addi_123 == arith_const_13) ? 1 : 0); 
      int arith_andi_125 = (arith_cmpi_122 & arith_cmpi_124); 
      if (arith_andi_125) {
        double memref_load_126 = func_arg_2[arith_const_6]; 
        double memref_load_127 = func_arg_1[arith_const_6][arith_const_6]; 
        double arith_divf_128 = (memref_load_126 / memref_load_127); 
        func_arg_2[arith_const_6] = arith_divf_128; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;

#pragma peqc async_execute
{
  kernel_trisolv(n, L, x, b);
}
}

#pragma pocc-region-end
