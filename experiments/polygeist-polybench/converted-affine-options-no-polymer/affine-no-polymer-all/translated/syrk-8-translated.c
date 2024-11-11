#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_14; for_iter_20 += arith_const_14) {
        int arith_addi_21 = (for_iter_17 + for_iter_20); 
        int arith_addi_22 = (for_iter_17 + for_iter_20); 
        int arith_addi_23 = (arith_addi_22 + arith_const_14); 
        int arith_cmpi_24 = (arith_addi_23 < arith_const_12); 
        int arith_subi_25 = (arith_const_10 - arith_addi_23); 
        int arith_select_26 = (arith_cmpi_24 ? arith_subi_25 : arith_addi_23); 
        int arith_divi_27 = (arith_select_26 / arith_const_11); 
        int arith_subi_28 = (arith_const_10 - arith_divi_27); 
        int arith_select_29 = (arith_cmpi_24 ? arith_subi_28 : arith_divi_27); 
        for (int for_iter_30 = arith_const_12; for_iter_30 < arith_select_29; for_iter_30 += arith_const_14) {
          int arith_muli_31 = (for_iter_30 * arith_const_11); 
          double memref_load_32 = func_arg_4[arith_addi_21][arith_muli_31]; 
          double arith_mulf_33 = (memref_load_32 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_muli_31] = arith_mulf_33; 
          int arith_addi_34 = (arith_muli_31 + arith_const_14); 
          double memref_load_35 = func_arg_4[arith_addi_21][arith_addi_34]; 
          double arith_mulf_36 = (memref_load_35 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_34] = arith_mulf_36; 
          int arith_addi_37 = (arith_muli_31 + arith_const_9); 
          double memref_load_38 = func_arg_4[arith_addi_21][arith_addi_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_37] = arith_mulf_39; 
          int arith_addi_40 = (arith_muli_31 + arith_const_8); 
          double memref_load_41 = func_arg_4[arith_addi_21][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_40] = arith_mulf_42; 
        }
        int arith_addi_43 = (for_iter_17 + for_iter_20); 
        int arith_addi_44 = (for_iter_17 + for_iter_20); 
        int arith_addi_45 = (arith_addi_44 + arith_const_14); 
        int arith_cmpi_46 = (arith_addi_45 < arith_const_12); 
        int arith_subi_47 = (arith_const_10 - arith_addi_45); 
        int arith_select_48 = (arith_cmpi_46 ? arith_subi_47 : arith_addi_45); 
        int arith_divi_49 = (arith_select_48 / arith_const_11); 
        int arith_subi_50 = (arith_const_10 - arith_divi_49); 
        int arith_select_51 = (arith_cmpi_46 ? arith_subi_50 : arith_divi_49); 
        int arith_muli_52 = (arith_select_51 * arith_const_7); 
        int arith_addi_53 = (arith_addi_43 + arith_muli_52); 
        int arith_addi_54 = (arith_addi_53 + arith_const_14); 
        for (int for_iter_55 = arith_const_12; for_iter_55 < arith_addi_54; for_iter_55 += arith_const_14) {
          int arith_addi_56 = (arith_addi_21 + arith_const_14); 
          int arith_cmpi_57 = (arith_addi_56 < arith_const_12); 
          int arith_subi_58 = (arith_const_10 - arith_addi_56); 
          int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_addi_56); 
          int arith_divi_60 = (arith_select_59 / arith_const_11); 
          int arith_subi_61 = (arith_const_10 - arith_divi_60); 
          int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
          int arith_muli_63 = (arith_select_62 * arith_const_11); 
          int arith_addi_64 = (for_iter_55 + arith_muli_63); 
          double memref_load_65 = func_arg_4[arith_addi_21][arith_addi_64]; 
          double arith_mulf_66 = (memref_load_65 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_64] = arith_mulf_66; 
        }
        for (int for_iter_67 = arith_const_12; for_iter_67 < arith_const_6; for_iter_67 += arith_const_14) {
          double memref_load_68 = func_arg_5[arith_addi_21][for_iter_67]; 
          double arith_mulf_69 = (func_arg_2 * memref_load_68); 
          double memref_load_70 = func_arg_5[arith_addi_21][for_iter_67]; 
          double arith_mulf_71 = (func_arg_2 * memref_load_70); 
          double memref_load_72 = func_arg_5[arith_addi_21][for_iter_67]; 
          double arith_mulf_73 = (func_arg_2 * memref_load_72); 
          double memref_load_74 = func_arg_5[arith_addi_21][for_iter_67]; 
          double arith_mulf_75 = (func_arg_2 * memref_load_74); 
          int arith_addi_76 = (for_iter_17 + for_iter_20); 
          int arith_addi_77 = (arith_addi_76 + arith_const_14); 
          int arith_cmpi_78 = (arith_addi_77 < arith_const_12); 
          int arith_subi_79 = (arith_const_10 - arith_addi_77); 
          int arith_select_80 = (arith_cmpi_78 ? arith_subi_79 : arith_addi_77); 
          int arith_divi_81 = (arith_select_80 / arith_const_11); 
          int arith_subi_82 = (arith_const_10 - arith_divi_81); 
          int arith_select_83 = (arith_cmpi_78 ? arith_subi_82 : arith_divi_81); 
          for (int for_iter_84 = arith_const_12; for_iter_84 < arith_select_83; for_iter_84 += arith_const_14) {
            int arith_muli_85 = (for_iter_84 * arith_const_11); 
            double memref_load_86 = func_arg_5[arith_muli_85][for_iter_67]; 
            double arith_mulf_87 = (arith_mulf_69 * memref_load_86); 
            double memref_load_88 = func_arg_4[arith_addi_21][arith_muli_85]; 
            double arith_addf_89 = (memref_load_88 + arith_mulf_87); 
            func_arg_4[arith_addi_21][arith_muli_85] = arith_addf_89; 
            int arith_addi_90 = (arith_muli_85 + arith_const_14); 
            double memref_load_91 = func_arg_5[arith_addi_90][for_iter_67]; 
            double arith_mulf_92 = (arith_mulf_71 * memref_load_91); 
            double memref_load_93 = func_arg_4[arith_addi_21][arith_addi_90]; 
            double arith_addf_94 = (memref_load_93 + arith_mulf_92); 
            func_arg_4[arith_addi_21][arith_addi_90] = arith_addf_94; 
            int arith_addi_95 = (arith_muli_85 + arith_const_9); 
            double memref_load_96 = func_arg_5[arith_addi_95][for_iter_67]; 
            double arith_mulf_97 = (arith_mulf_73 * memref_load_96); 
            double memref_load_98 = func_arg_4[arith_addi_21][arith_addi_95]; 
            double arith_addf_99 = (memref_load_98 + arith_mulf_97); 
            func_arg_4[arith_addi_21][arith_addi_95] = arith_addf_99; 
            int arith_addi_100 = (arith_muli_85 + arith_const_8); 
            double memref_load_101 = func_arg_5[arith_addi_100][for_iter_67]; 
            double arith_mulf_102 = (arith_mulf_75 * memref_load_101); 
            double memref_load_103 = func_arg_4[arith_addi_21][arith_addi_100]; 
            double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
            func_arg_4[arith_addi_21][arith_addi_100] = arith_addf_104; 
          }
          double memref_load_105 = func_arg_5[arith_addi_21][for_iter_67]; 
          double arith_mulf_106 = (func_arg_2 * memref_load_105); 
          int arith_addi_107 = (for_iter_17 + for_iter_20); 
          int arith_addi_108 = (for_iter_17 + for_iter_20); 
          int arith_addi_109 = (arith_addi_108 + arith_const_14); 
          int arith_cmpi_110 = (arith_addi_109 < arith_const_12); 
          int arith_subi_111 = (arith_const_10 - arith_addi_109); 
          int arith_select_112 = (arith_cmpi_110 ? arith_subi_111 : arith_addi_109); 
          int arith_divi_113 = (arith_select_112 / arith_const_11); 
          int arith_subi_114 = (arith_const_10 - arith_divi_113); 
          int arith_select_115 = (arith_cmpi_110 ? arith_subi_114 : arith_divi_113); 
          int arith_muli_116 = (arith_select_115 * arith_const_7); 
          int arith_addi_117 = (arith_addi_107 + arith_muli_116); 
          int arith_addi_118 = (arith_addi_117 + arith_const_14); 
          for (int for_iter_119 = arith_const_12; for_iter_119 < arith_addi_118; for_iter_119 += arith_const_14) {
            int arith_addi_120 = (arith_addi_21 + arith_const_14); 
            int arith_cmpi_121 = (arith_addi_120 < arith_const_12); 
            int arith_subi_122 = (arith_const_10 - arith_addi_120); 
            int arith_select_123 = (arith_cmpi_121 ? arith_subi_122 : arith_addi_120); 
            int arith_divi_124 = (arith_select_123 / arith_const_11); 
            int arith_subi_125 = (arith_const_10 - arith_divi_124); 
            int arith_select_126 = (arith_cmpi_121 ? arith_subi_125 : arith_divi_124); 
            int arith_muli_127 = (arith_select_126 * arith_const_11); 
            int arith_addi_128 = (for_iter_119 + arith_muli_127); 
            double memref_load_129 = func_arg_5[arith_addi_128][for_iter_67]; 
            double arith_mulf_130 = (arith_mulf_106 * memref_load_129); 
            double memref_load_131 = func_arg_4[arith_addi_21][arith_addi_128]; 
            double arith_addf_132 = (memref_load_131 + arith_mulf_130); 
            func_arg_4[arith_addi_21][arith_addi_128] = arith_addf_132; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_133 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_133; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}

#pragma pocc-region-end
