#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 60; 
  int arith_const_3 = -32; 
  int arith_const_4 = 3; 
  int arith_const_5 = 4; 
  int arith_const_6 = 15; 
  int arith_const_7 = 32; 
  int arith_const_8 = 2; 
  int arith_const_9 = 128; 
  int arith_const_10 = 0; 
  int arith_const_11 = 1; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_10; 
  for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_11; for_iter_14 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_16); 
    #pragma peqc async_execute
    {
      int arith_muli_17 = (for_iter_14 * arith_const_9); 
      for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_8; for_iter_18 += arith_const_11) {
        int arith_muli_19 = (for_iter_18 * arith_const_7); 
        for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_11; for_iter_20 += arith_const_11) {
          int arith_muli_21 = (for_iter_20 * arith_const_9); 
          for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_6; for_iter_22 += arith_const_11) {
            int arith_muli_23 = (for_iter_22 * arith_const_5); 
            int arith_addi_24 = (arith_muli_17 + arith_muli_23); 
            int arith_addi_25 = (arith_addi_24 + arith_const_11); 
            int arith_addi_26 = (arith_addi_24 + arith_const_8); 
            int arith_addi_27 = (arith_addi_24 + arith_const_4); 
            int arith_muli_28 = (for_iter_18 * arith_const_3); 
            int arith_addi_29 = (arith_muli_28 + arith_const_2); 
            int arith_minsi_30 = min(arith_addi_29, arith_const_7); 
            for (int for_iter_31 = arith_const_10; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_11) {
              int arith_addi_32 = (arith_muli_19 + for_iter_31); 
              for (int for_iter_33 = arith_const_10; for_iter_33 < arith_const_6; for_iter_33 += arith_const_11) {
                int arith_muli_34 = (for_iter_33 * arith_const_5); 
                int arith_addi_35 = (arith_muli_21 + arith_muli_34); 
                int memref_load_36 = func_arg_1[arith_addi_32][arith_addi_35]; 
                int memref_load_37 = func_arg_1[arith_addi_32][arith_addi_24]; 
                int memref_load_38 = func_arg_1[arith_addi_24][arith_addi_35]; 
                int arith_addi_39 = (memref_load_37 + memref_load_38); 
                int arith_cmpi_40 = (memref_load_36 < arith_addi_39); 
                int arith_select_41 = (arith_cmpi_40 ? memref_load_36 : arith_addi_39); 
                func_arg_1[arith_addi_32][arith_addi_35] = arith_select_41; 
                int arith_addi_42 = (arith_addi_35 + arith_const_11); 
                int memref_load_43 = func_arg_1[arith_addi_32][arith_addi_42]; 
                int memref_load_44 = func_arg_1[arith_addi_32][arith_addi_24]; 
                int memref_load_45 = func_arg_1[arith_addi_24][arith_addi_42]; 
                int arith_addi_46 = (memref_load_44 + memref_load_45); 
                int arith_cmpi_47 = (memref_load_43 < arith_addi_46); 
                int arith_select_48 = (arith_cmpi_47 ? memref_load_43 : arith_addi_46); 
                func_arg_1[arith_addi_32][arith_addi_42] = arith_select_48; 
                int arith_addi_49 = (arith_addi_35 + arith_const_8); 
                int memref_load_50 = func_arg_1[arith_addi_32][arith_addi_49]; 
                int memref_load_51 = func_arg_1[arith_addi_32][arith_addi_24]; 
                int memref_load_52 = func_arg_1[arith_addi_24][arith_addi_49]; 
                int arith_addi_53 = (memref_load_51 + memref_load_52); 
                int arith_cmpi_54 = (memref_load_50 < arith_addi_53); 
                int arith_select_55 = (arith_cmpi_54 ? memref_load_50 : arith_addi_53); 
                func_arg_1[arith_addi_32][arith_addi_49] = arith_select_55; 
                int arith_addi_56 = (arith_addi_35 + arith_const_4); 
                int memref_load_57 = func_arg_1[arith_addi_32][arith_addi_56]; 
                int memref_load_58 = func_arg_1[arith_addi_32][arith_addi_24]; 
                int memref_load_59 = func_arg_1[arith_addi_24][arith_addi_56]; 
                int arith_addi_60 = (memref_load_58 + memref_load_59); 
                int arith_cmpi_61 = (memref_load_57 < arith_addi_60); 
                int arith_select_62 = (arith_cmpi_61 ? memref_load_57 : arith_addi_60); 
                func_arg_1[arith_addi_32][arith_addi_56] = arith_select_62; 
                int memref_load_63 = func_arg_1[arith_addi_32][arith_addi_35]; 
                int memref_load_64 = func_arg_1[arith_addi_32][arith_addi_25]; 
                int memref_load_65 = func_arg_1[arith_addi_25][arith_addi_35]; 
                int arith_addi_66 = (memref_load_64 + memref_load_65); 
                int arith_cmpi_67 = (memref_load_63 < arith_addi_66); 
                int arith_select_68 = (arith_cmpi_67 ? memref_load_63 : arith_addi_66); 
                func_arg_1[arith_addi_32][arith_addi_35] = arith_select_68; 
                int arith_addi_69 = (arith_addi_35 + arith_const_11); 
                int memref_load_70 = func_arg_1[arith_addi_32][arith_addi_69]; 
                int memref_load_71 = func_arg_1[arith_addi_32][arith_addi_25]; 
                int memref_load_72 = func_arg_1[arith_addi_25][arith_addi_69]; 
                int arith_addi_73 = (memref_load_71 + memref_load_72); 
                int arith_cmpi_74 = (memref_load_70 < arith_addi_73); 
                int arith_select_75 = (arith_cmpi_74 ? memref_load_70 : arith_addi_73); 
                func_arg_1[arith_addi_32][arith_addi_69] = arith_select_75; 
                int arith_addi_76 = (arith_addi_35 + arith_const_8); 
                int memref_load_77 = func_arg_1[arith_addi_32][arith_addi_76]; 
                int memref_load_78 = func_arg_1[arith_addi_32][arith_addi_25]; 
                int memref_load_79 = func_arg_1[arith_addi_25][arith_addi_76]; 
                int arith_addi_80 = (memref_load_78 + memref_load_79); 
                int arith_cmpi_81 = (memref_load_77 < arith_addi_80); 
                int arith_select_82 = (arith_cmpi_81 ? memref_load_77 : arith_addi_80); 
                func_arg_1[arith_addi_32][arith_addi_76] = arith_select_82; 
                int arith_addi_83 = (arith_addi_35 + arith_const_4); 
                int memref_load_84 = func_arg_1[arith_addi_32][arith_addi_83]; 
                int memref_load_85 = func_arg_1[arith_addi_32][arith_addi_25]; 
                int memref_load_86 = func_arg_1[arith_addi_25][arith_addi_83]; 
                int arith_addi_87 = (memref_load_85 + memref_load_86); 
                int arith_cmpi_88 = (memref_load_84 < arith_addi_87); 
                int arith_select_89 = (arith_cmpi_88 ? memref_load_84 : arith_addi_87); 
                func_arg_1[arith_addi_32][arith_addi_83] = arith_select_89; 
                int memref_load_90 = func_arg_1[arith_addi_32][arith_addi_35]; 
                int memref_load_91 = func_arg_1[arith_addi_32][arith_addi_26]; 
                int memref_load_92 = func_arg_1[arith_addi_26][arith_addi_35]; 
                int arith_addi_93 = (memref_load_91 + memref_load_92); 
                int arith_cmpi_94 = (memref_load_90 < arith_addi_93); 
                int arith_select_95 = (arith_cmpi_94 ? memref_load_90 : arith_addi_93); 
                func_arg_1[arith_addi_32][arith_addi_35] = arith_select_95; 
                int arith_addi_96 = (arith_addi_35 + arith_const_11); 
                int memref_load_97 = func_arg_1[arith_addi_32][arith_addi_96]; 
                int memref_load_98 = func_arg_1[arith_addi_32][arith_addi_26]; 
                int memref_load_99 = func_arg_1[arith_addi_26][arith_addi_96]; 
                int arith_addi_100 = (memref_load_98 + memref_load_99); 
                int arith_cmpi_101 = (memref_load_97 < arith_addi_100); 
                int arith_select_102 = (arith_cmpi_101 ? memref_load_97 : arith_addi_100); 
                func_arg_1[arith_addi_32][arith_addi_96] = arith_select_102; 
                int arith_addi_103 = (arith_addi_35 + arith_const_8); 
                int memref_load_104 = func_arg_1[arith_addi_32][arith_addi_103]; 
                int memref_load_105 = func_arg_1[arith_addi_32][arith_addi_26]; 
                int memref_load_106 = func_arg_1[arith_addi_26][arith_addi_103]; 
                int arith_addi_107 = (memref_load_105 + memref_load_106); 
                int arith_cmpi_108 = (memref_load_104 < arith_addi_107); 
                int arith_select_109 = (arith_cmpi_108 ? memref_load_104 : arith_addi_107); 
                func_arg_1[arith_addi_32][arith_addi_103] = arith_select_109; 
                int arith_addi_110 = (arith_addi_35 + arith_const_4); 
                int memref_load_111 = func_arg_1[arith_addi_32][arith_addi_110]; 
                int memref_load_112 = func_arg_1[arith_addi_32][arith_addi_26]; 
                int memref_load_113 = func_arg_1[arith_addi_26][arith_addi_110]; 
                int arith_addi_114 = (memref_load_112 + memref_load_113); 
                int arith_cmpi_115 = (memref_load_111 < arith_addi_114); 
                int arith_select_116 = (arith_cmpi_115 ? memref_load_111 : arith_addi_114); 
                func_arg_1[arith_addi_32][arith_addi_110] = arith_select_116; 
                int memref_load_117 = func_arg_1[arith_addi_32][arith_addi_35]; 
                int memref_load_118 = func_arg_1[arith_addi_32][arith_addi_27]; 
                int memref_load_119 = func_arg_1[arith_addi_27][arith_addi_35]; 
                int arith_addi_120 = (memref_load_118 + memref_load_119); 
                int arith_cmpi_121 = (memref_load_117 < arith_addi_120); 
                int arith_select_122 = (arith_cmpi_121 ? memref_load_117 : arith_addi_120); 
                func_arg_1[arith_addi_32][arith_addi_35] = arith_select_122; 
                int arith_addi_123 = (arith_addi_35 + arith_const_11); 
                int memref_load_124 = func_arg_1[arith_addi_32][arith_addi_123]; 
                int memref_load_125 = func_arg_1[arith_addi_32][arith_addi_27]; 
                int memref_load_126 = func_arg_1[arith_addi_27][arith_addi_123]; 
                int arith_addi_127 = (memref_load_125 + memref_load_126); 
                int arith_cmpi_128 = (memref_load_124 < arith_addi_127); 
                int arith_select_129 = (arith_cmpi_128 ? memref_load_124 : arith_addi_127); 
                func_arg_1[arith_addi_32][arith_addi_123] = arith_select_129; 
                int arith_addi_130 = (arith_addi_35 + arith_const_8); 
                int memref_load_131 = func_arg_1[arith_addi_32][arith_addi_130]; 
                int memref_load_132 = func_arg_1[arith_addi_32][arith_addi_27]; 
                int memref_load_133 = func_arg_1[arith_addi_27][arith_addi_130]; 
                int arith_addi_134 = (memref_load_132 + memref_load_133); 
                int arith_cmpi_135 = (memref_load_131 < arith_addi_134); 
                int arith_select_136 = (arith_cmpi_135 ? memref_load_131 : arith_addi_134); 
                func_arg_1[arith_addi_32][arith_addi_130] = arith_select_136; 
                int arith_addi_137 = (arith_addi_35 + arith_const_4); 
                int memref_load_138 = func_arg_1[arith_addi_32][arith_addi_137]; 
                int memref_load_139 = func_arg_1[arith_addi_32][arith_addi_27]; 
                int memref_load_140 = func_arg_1[arith_addi_27][arith_addi_137]; 
                int arith_addi_141 = (memref_load_139 + memref_load_140); 
                int arith_cmpi_142 = (memref_load_138 < arith_addi_141); 
                int arith_select_143 = (arith_cmpi_142 ? memref_load_138 : arith_addi_141); 
                func_arg_1[arith_addi_32][arith_addi_137] = arith_select_143; 
              }
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_144 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_144; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int* path;

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}

#pragma pocc-region-end
