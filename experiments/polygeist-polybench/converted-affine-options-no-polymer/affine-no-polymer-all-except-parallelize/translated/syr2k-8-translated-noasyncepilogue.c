#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = -4; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 4; 
  int arith_const_13 = 0; 
  int arith_const_14 = 30; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_15; for_iter_17 += arith_const_15) {
      int arith_addi_18 = (for_iter_16 + for_iter_17); 
      int arith_addi_19 = (for_iter_16 + for_iter_17); 
      int arith_addi_20 = (arith_addi_19 + arith_const_15); 
      int arith_cmpi_21 = (arith_addi_20 < arith_const_13); 
      int arith_subi_22 = (arith_const_11 - arith_addi_20); 
      int arith_select_23 = (arith_cmpi_21 ? arith_subi_22 : arith_addi_20); 
      int arith_divi_24 = (arith_select_23 / arith_const_12); 
      int arith_subi_25 = (arith_const_11 - arith_divi_24); 
      int arith_select_26 = (arith_cmpi_21 ? arith_subi_25 : arith_divi_24); 
      for (int for_iter_27 = arith_const_13; for_iter_27 < arith_select_26; for_iter_27 += arith_const_15) {
        int arith_muli_28 = (for_iter_27 * arith_const_12); 
        double memref_load_29 = func_arg_4[arith_addi_18][arith_muli_28]; 
        double arith_mulf_30 = (memref_load_29 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_muli_28] = arith_mulf_30; 
        int arith_addi_31 = (arith_muli_28 + arith_const_15); 
        double memref_load_32 = func_arg_4[arith_addi_18][arith_addi_31]; 
        double arith_mulf_33 = (memref_load_32 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_31] = arith_mulf_33; 
        int arith_addi_34 = (arith_muli_28 + arith_const_10); 
        double memref_load_35 = func_arg_4[arith_addi_18][arith_addi_34]; 
        double arith_mulf_36 = (memref_load_35 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_34] = arith_mulf_36; 
        int arith_addi_37 = (arith_muli_28 + arith_const_9); 
        double memref_load_38 = func_arg_4[arith_addi_18][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_37] = arith_mulf_39; 
      }
      int arith_addi_40 = (for_iter_16 + for_iter_17); 
      int arith_addi_41 = (for_iter_16 + for_iter_17); 
      int arith_addi_42 = (arith_addi_41 + arith_const_15); 
      int arith_cmpi_43 = (arith_addi_42 < arith_const_13); 
      int arith_subi_44 = (arith_const_11 - arith_addi_42); 
      int arith_select_45 = (arith_cmpi_43 ? arith_subi_44 : arith_addi_42); 
      int arith_divi_46 = (arith_select_45 / arith_const_12); 
      int arith_subi_47 = (arith_const_11 - arith_divi_46); 
      int arith_select_48 = (arith_cmpi_43 ? arith_subi_47 : arith_divi_46); 
      int arith_muli_49 = (arith_select_48 * arith_const_8); 
      int arith_addi_50 = (arith_addi_40 + arith_muli_49); 
      int arith_addi_51 = (arith_addi_50 + arith_const_15); 
      for (int for_iter_52 = arith_const_13; for_iter_52 < arith_addi_51; for_iter_52 += arith_const_15) {
        int arith_addi_53 = (arith_addi_18 + arith_const_15); 
        int arith_cmpi_54 = (arith_addi_53 < arith_const_13); 
        int arith_subi_55 = (arith_const_11 - arith_addi_53); 
        int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : arith_addi_53); 
        int arith_divi_57 = (arith_select_56 / arith_const_12); 
        int arith_subi_58 = (arith_const_11 - arith_divi_57); 
        int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
        int arith_muli_60 = (arith_select_59 * arith_const_12); 
        int arith_addi_61 = (for_iter_52 + arith_muli_60); 
        double memref_load_62 = func_arg_4[arith_addi_18][arith_addi_61]; 
        double arith_mulf_63 = (memref_load_62 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_61] = arith_mulf_63; 
      }
      for (int for_iter_64 = arith_const_13; for_iter_64 < arith_const_7; for_iter_64 += arith_const_15) {
        double memref_load_65 = func_arg_6[arith_addi_18][for_iter_64]; 
        double memref_load_66 = func_arg_5[arith_addi_18][for_iter_64]; 
        double memref_load_67 = func_arg_6[arith_addi_18][for_iter_64]; 
        double memref_load_68 = func_arg_5[arith_addi_18][for_iter_64]; 
        double memref_load_69 = func_arg_6[arith_addi_18][for_iter_64]; 
        double memref_load_70 = func_arg_5[arith_addi_18][for_iter_64]; 
        double memref_load_71 = func_arg_6[arith_addi_18][for_iter_64]; 
        double memref_load_72 = func_arg_5[arith_addi_18][for_iter_64]; 
        int arith_addi_73 = (for_iter_16 + for_iter_17); 
        int arith_addi_74 = (arith_addi_73 + arith_const_15); 
        int arith_cmpi_75 = (arith_addi_74 < arith_const_13); 
        int arith_subi_76 = (arith_const_11 - arith_addi_74); 
        int arith_select_77 = (arith_cmpi_75 ? arith_subi_76 : arith_addi_74); 
        int arith_divi_78 = (arith_select_77 / arith_const_12); 
        int arith_subi_79 = (arith_const_11 - arith_divi_78); 
        int arith_select_80 = (arith_cmpi_75 ? arith_subi_79 : arith_divi_78); 
        for (int for_iter_81 = arith_const_13; for_iter_81 < arith_select_80; for_iter_81 += arith_const_15) {
          int arith_muli_82 = (for_iter_81 * arith_const_12); 
          double memref_load_83 = func_arg_5[arith_muli_82][for_iter_64]; 
          double arith_mulf_84 = (memref_load_83 * func_arg_2); 
          double arith_mulf_85 = (arith_mulf_84 * memref_load_65); 
          double memref_load_86 = func_arg_6[arith_muli_82][for_iter_64]; 
          double arith_mulf_87 = (memref_load_86 * func_arg_2); 
          double arith_mulf_88 = (arith_mulf_87 * memref_load_66); 
          double arith_addf_89 = (arith_mulf_85 + arith_mulf_88); 
          double memref_load_90 = func_arg_4[arith_addi_18][arith_muli_82]; 
          double arith_addf_91 = (memref_load_90 + arith_addf_89); 
          func_arg_4[arith_addi_18][arith_muli_82] = arith_addf_91; 
          int arith_addi_92 = (arith_muli_82 + arith_const_15); 
          double memref_load_93 = func_arg_5[arith_addi_92][for_iter_64]; 
          double arith_mulf_94 = (memref_load_93 * func_arg_2); 
          double arith_mulf_95 = (arith_mulf_94 * memref_load_67); 
          double memref_load_96 = func_arg_6[arith_addi_92][for_iter_64]; 
          double arith_mulf_97 = (memref_load_96 * func_arg_2); 
          double arith_mulf_98 = (arith_mulf_97 * memref_load_68); 
          double arith_addf_99 = (arith_mulf_95 + arith_mulf_98); 
          double memref_load_100 = func_arg_4[arith_addi_18][arith_addi_92]; 
          double arith_addf_101 = (memref_load_100 + arith_addf_99); 
          func_arg_4[arith_addi_18][arith_addi_92] = arith_addf_101; 
          int arith_addi_102 = (arith_muli_82 + arith_const_10); 
          double memref_load_103 = func_arg_5[arith_addi_102][for_iter_64]; 
          double arith_mulf_104 = (memref_load_103 * func_arg_2); 
          double arith_mulf_105 = (arith_mulf_104 * memref_load_69); 
          double memref_load_106 = func_arg_6[arith_addi_102][for_iter_64]; 
          double arith_mulf_107 = (memref_load_106 * func_arg_2); 
          double arith_mulf_108 = (arith_mulf_107 * memref_load_70); 
          double arith_addf_109 = (arith_mulf_105 + arith_mulf_108); 
          double memref_load_110 = func_arg_4[arith_addi_18][arith_addi_102]; 
          double arith_addf_111 = (memref_load_110 + arith_addf_109); 
          func_arg_4[arith_addi_18][arith_addi_102] = arith_addf_111; 
          int arith_addi_112 = (arith_muli_82 + arith_const_9); 
          double memref_load_113 = func_arg_5[arith_addi_112][for_iter_64]; 
          double arith_mulf_114 = (memref_load_113 * func_arg_2); 
          double arith_mulf_115 = (arith_mulf_114 * memref_load_71); 
          double memref_load_116 = func_arg_6[arith_addi_112][for_iter_64]; 
          double arith_mulf_117 = (memref_load_116 * func_arg_2); 
          double arith_mulf_118 = (arith_mulf_117 * memref_load_72); 
          double arith_addf_119 = (arith_mulf_115 + arith_mulf_118); 
          double memref_load_120 = func_arg_4[arith_addi_18][arith_addi_112]; 
          double arith_addf_121 = (memref_load_120 + arith_addf_119); 
          func_arg_4[arith_addi_18][arith_addi_112] = arith_addf_121; 
        }
        double memref_load_122 = func_arg_6[arith_addi_18][for_iter_64]; 
        double memref_load_123 = func_arg_5[arith_addi_18][for_iter_64]; 
        int arith_addi_124 = (for_iter_16 + for_iter_17); 
        int arith_addi_125 = (for_iter_16 + for_iter_17); 
        int arith_addi_126 = (arith_addi_125 + arith_const_15); 
        int arith_cmpi_127 = (arith_addi_126 < arith_const_13); 
        int arith_subi_128 = (arith_const_11 - arith_addi_126); 
        int arith_select_129 = (arith_cmpi_127 ? arith_subi_128 : arith_addi_126); 
        int arith_divi_130 = (arith_select_129 / arith_const_12); 
        int arith_subi_131 = (arith_const_11 - arith_divi_130); 
        int arith_select_132 = (arith_cmpi_127 ? arith_subi_131 : arith_divi_130); 
        int arith_muli_133 = (arith_select_132 * arith_const_8); 
        int arith_addi_134 = (arith_addi_124 + arith_muli_133); 
        int arith_addi_135 = (arith_addi_134 + arith_const_15); 
        for (int for_iter_136 = arith_const_13; for_iter_136 < arith_addi_135; for_iter_136 += arith_const_15) {
          int arith_addi_137 = (arith_addi_18 + arith_const_15); 
          int arith_cmpi_138 = (arith_addi_137 < arith_const_13); 
          int arith_subi_139 = (arith_const_11 - arith_addi_137); 
          int arith_select_140 = (arith_cmpi_138 ? arith_subi_139 : arith_addi_137); 
          int arith_divi_141 = (arith_select_140 / arith_const_12); 
          int arith_subi_142 = (arith_const_11 - arith_divi_141); 
          int arith_select_143 = (arith_cmpi_138 ? arith_subi_142 : arith_divi_141); 
          int arith_muli_144 = (arith_select_143 * arith_const_12); 
          int arith_addi_145 = (for_iter_136 + arith_muli_144); 
          double memref_load_146 = func_arg_5[arith_addi_145][for_iter_64]; 
          double arith_mulf_147 = (memref_load_146 * func_arg_2); 
          double arith_mulf_148 = (arith_mulf_147 * memref_load_122); 
          double memref_load_149 = func_arg_6[arith_addi_145][for_iter_64]; 
          double arith_mulf_150 = (memref_load_149 * func_arg_2); 
          double arith_mulf_151 = (arith_mulf_150 * memref_load_123); 
          double arith_addf_152 = (arith_mulf_148 + arith_mulf_151); 
          double memref_load_153 = func_arg_4[arith_addi_18][arith_addi_145]; 
          double arith_addf_154 = (memref_load_153 + arith_addf_152); 
          func_arg_4[arith_addi_18][arith_addi_145] = arith_addf_154; 
        }
      }
    }
  }
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
  double* B;


  kernel_syr2k(n, m, alpha, beta, C, A, B);

}

#pragma pocc-region-end
