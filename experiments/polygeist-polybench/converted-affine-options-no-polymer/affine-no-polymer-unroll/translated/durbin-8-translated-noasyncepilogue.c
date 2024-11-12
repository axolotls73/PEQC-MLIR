#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 3; 
  int arith_const_4 = 2; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  int arith_const_9 = 0; 
  double arith_const_10 = 0.000000; 
  double arith_const_11 = 1.000000; 
  double* memref_alloca_12; 
  double _13; 
  memref_alloca_12[0] = _13; 
  double* memref_alloca_14; 
  memref_alloca_14[0] = _13; 
  double* memref_alloca_15; 
  memref_alloca_15[0] = _13; 
  double* memref_alloca_16; 
  double memref_load_17 = func_arg_1[arith_const_9]; 
  double arith_negf_18 = -(memref_load_17); 
  func_arg_2[arith_const_9] = arith_negf_18; 
  memref_alloca_14[0] = arith_const_11; 
  double memref_load_19 = func_arg_1[arith_const_9]; 
  double arith_negf_20 = -(memref_load_19); 
  memref_alloca_15[0] = arith_negf_20; 
  for (int for_iter_21 = arith_const_8; for_iter_21 < arith_const_7; for_iter_21 += arith_const_8) {
    double memref_load_22 = memref_alloca_15[0]; 
    double arith_mulf_23 = (memref_load_22 * memref_load_22); 
    double arith_subf_24 = (arith_const_11 - arith_mulf_23); 
    double memref_load_25 = memref_alloca_14[0]; 
    double arith_mulf_26 = (arith_subf_24 * memref_load_25); 
    memref_alloca_14[0] = arith_mulf_26; 
    memref_alloca_12[0] = arith_const_10; 
    int arith_cmpi_27 = (for_iter_21 < arith_const_9); 
    int arith_subi_28 = (arith_const_5 - for_iter_21); 
    int arith_select_29 = (arith_cmpi_27 ? arith_subi_28 : for_iter_21); 
    int arith_divi_30 = (arith_select_29 / arith_const_6); 
    int arith_subi_31 = (arith_const_5 - arith_divi_30); 
    int arith_select_32 = (arith_cmpi_27 ? arith_subi_31 : arith_divi_30); 
    int arith_muli_33 = (arith_select_32 * arith_const_6); 
    for (int for_iter_34 = arith_const_9; for_iter_34 < arith_muli_33; for_iter_34 += arith_const_6) {
      int arith_muli_35 = (for_iter_34 * arith_const_5); 
      int arith_addi_36 = (for_iter_21 + arith_muli_35); 
      int arith_addi_37 = (arith_addi_36 + arith_const_5); 
      double memref_load_38 = func_arg_1[arith_addi_37]; 
      double memref_load_39 = func_arg_2[for_iter_34]; 
      double arith_mulf_40 = (memref_load_38 * memref_load_39); 
      double memref_load_41 = memref_alloca_12[0]; 
      double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
      memref_alloca_12[0] = arith_addf_42; 
      int arith_addi_43 = (for_iter_34 + arith_const_8); 
      int arith_muli_44 = (arith_addi_43 * arith_const_5); 
      int arith_addi_45 = (for_iter_21 + arith_muli_44); 
      int arith_addi_46 = (arith_addi_45 + arith_const_5); 
      double memref_load_47 = func_arg_1[arith_addi_46]; 
      double memref_load_48 = func_arg_2[arith_addi_43]; 
      double arith_mulf_49 = (memref_load_47 * memref_load_48); 
      double memref_load_50 = memref_alloca_12[0]; 
      double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
      memref_alloca_12[0] = arith_addf_51; 
      int arith_addi_52 = (for_iter_34 + arith_const_4); 
      int arith_muli_53 = (arith_addi_52 * arith_const_5); 
      int arith_addi_54 = (for_iter_21 + arith_muli_53); 
      int arith_addi_55 = (arith_addi_54 + arith_const_5); 
      double memref_load_56 = func_arg_1[arith_addi_55]; 
      double memref_load_57 = func_arg_2[arith_addi_52]; 
      double arith_mulf_58 = (memref_load_56 * memref_load_57); 
      double memref_load_59 = memref_alloca_12[0]; 
      double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
      memref_alloca_12[0] = arith_addf_60; 
      int arith_addi_61 = (for_iter_34 + arith_const_3); 
      int arith_muli_62 = (arith_addi_61 * arith_const_5); 
      int arith_addi_63 = (for_iter_21 + arith_muli_62); 
      int arith_addi_64 = (arith_addi_63 + arith_const_5); 
      double memref_load_65 = func_arg_1[arith_addi_64]; 
      double memref_load_66 = func_arg_2[arith_addi_61]; 
      double arith_mulf_67 = (memref_load_65 * memref_load_66); 
      double memref_load_68 = memref_alloca_12[0]; 
      double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
      memref_alloca_12[0] = arith_addf_69; 
    }
    int arith_cmpi_70 = (for_iter_21 < arith_const_9); 
    int arith_subi_71 = (arith_const_5 - for_iter_21); 
    int arith_select_72 = (arith_cmpi_70 ? arith_subi_71 : for_iter_21); 
    int arith_divi_73 = (arith_select_72 / arith_const_6); 
    int arith_subi_74 = (arith_const_5 - arith_divi_73); 
    int arith_select_75 = (arith_cmpi_70 ? arith_subi_74 : arith_divi_73); 
    int arith_muli_76 = (arith_select_75 * arith_const_6); 
    for (int for_iter_77 = arith_muli_76; for_iter_77 < for_iter_21; for_iter_77 += arith_const_8) {
      int arith_muli_78 = (for_iter_77 * arith_const_5); 
      int arith_addi_79 = (for_iter_21 + arith_muli_78); 
      int arith_addi_80 = (arith_addi_79 + arith_const_5); 
      double memref_load_81 = func_arg_1[arith_addi_80]; 
      double memref_load_82 = func_arg_2[for_iter_77]; 
      double arith_mulf_83 = (memref_load_81 * memref_load_82); 
      double memref_load_84 = memref_alloca_12[0]; 
      double arith_addf_85 = (memref_load_84 + arith_mulf_83); 
      memref_alloca_12[0] = arith_addf_85; 
    }
    double memref_load_86 = func_arg_1[for_iter_21]; 
    double memref_load_87 = memref_alloca_12[0]; 
    double arith_addf_88 = (memref_load_86 + memref_load_87); 
    double arith_negf_89 = -(arith_addf_88); 
    double arith_divf_90 = (arith_negf_89 / arith_mulf_26); 
    memref_alloca_15[0] = arith_divf_90; 
    int arith_cmpi_91 = (for_iter_21 < arith_const_9); 
    int arith_subi_92 = (arith_const_5 - for_iter_21); 
    int arith_select_93 = (arith_cmpi_91 ? arith_subi_92 : for_iter_21); 
    int arith_divi_94 = (arith_select_93 / arith_const_6); 
    int arith_subi_95 = (arith_const_5 - arith_divi_94); 
    int arith_select_96 = (arith_cmpi_91 ? arith_subi_95 : arith_divi_94); 
    int arith_muli_97 = (arith_select_96 * arith_const_6); 
    for (int for_iter_98 = arith_const_9; for_iter_98 < arith_muli_97; for_iter_98 += arith_const_6) {
      double memref_load_99 = func_arg_2[for_iter_98]; 
      int arith_muli_100 = (for_iter_98 * arith_const_5); 
      int arith_addi_101 = (for_iter_21 + arith_muli_100); 
      int arith_addi_102 = (arith_addi_101 + arith_const_5); 
      double memref_load_103 = func_arg_2[arith_addi_102]; 
      double arith_mulf_104 = (arith_divf_90 * memref_load_103); 
      double arith_addf_105 = (memref_load_99 + arith_mulf_104); 
      memref_alloca_16[for_iter_98] = arith_addf_105; 
      int arith_addi_106 = (for_iter_98 + arith_const_8); 
      double memref_load_107 = func_arg_2[arith_addi_106]; 
      int arith_muli_108 = (arith_addi_106 * arith_const_5); 
      int arith_addi_109 = (for_iter_21 + arith_muli_108); 
      int arith_addi_110 = (arith_addi_109 + arith_const_5); 
      double memref_load_111 = func_arg_2[arith_addi_110]; 
      double arith_mulf_112 = (arith_divf_90 * memref_load_111); 
      double arith_addf_113 = (memref_load_107 + arith_mulf_112); 
      memref_alloca_16[arith_addi_106] = arith_addf_113; 
      int arith_addi_114 = (for_iter_98 + arith_const_4); 
      double memref_load_115 = func_arg_2[arith_addi_114]; 
      int arith_muli_116 = (arith_addi_114 * arith_const_5); 
      int arith_addi_117 = (for_iter_21 + arith_muli_116); 
      int arith_addi_118 = (arith_addi_117 + arith_const_5); 
      double memref_load_119 = func_arg_2[arith_addi_118]; 
      double arith_mulf_120 = (arith_divf_90 * memref_load_119); 
      double arith_addf_121 = (memref_load_115 + arith_mulf_120); 
      memref_alloca_16[arith_addi_114] = arith_addf_121; 
      int arith_addi_122 = (for_iter_98 + arith_const_3); 
      double memref_load_123 = func_arg_2[arith_addi_122]; 
      int arith_muli_124 = (arith_addi_122 * arith_const_5); 
      int arith_addi_125 = (for_iter_21 + arith_muli_124); 
      int arith_addi_126 = (arith_addi_125 + arith_const_5); 
      double memref_load_127 = func_arg_2[arith_addi_126]; 
      double arith_mulf_128 = (arith_divf_90 * memref_load_127); 
      double arith_addf_129 = (memref_load_123 + arith_mulf_128); 
      memref_alloca_16[arith_addi_122] = arith_addf_129; 
    }
    int arith_cmpi_130 = (for_iter_21 < arith_const_9); 
    int arith_subi_131 = (arith_const_5 - for_iter_21); 
    int arith_select_132 = (arith_cmpi_130 ? arith_subi_131 : for_iter_21); 
    int arith_divi_133 = (arith_select_132 / arith_const_6); 
    int arith_subi_134 = (arith_const_5 - arith_divi_133); 
    int arith_select_135 = (arith_cmpi_130 ? arith_subi_134 : arith_divi_133); 
    int arith_muli_136 = (arith_select_135 * arith_const_6); 
    for (int for_iter_137 = arith_muli_136; for_iter_137 < for_iter_21; for_iter_137 += arith_const_8) {
      double memref_load_138 = func_arg_2[for_iter_137]; 
      int arith_muli_139 = (for_iter_137 * arith_const_5); 
      int arith_addi_140 = (for_iter_21 + arith_muli_139); 
      int arith_addi_141 = (arith_addi_140 + arith_const_5); 
      double memref_load_142 = func_arg_2[arith_addi_141]; 
      double arith_mulf_143 = (arith_divf_90 * memref_load_142); 
      double arith_addf_144 = (memref_load_138 + arith_mulf_143); 
      memref_alloca_16[for_iter_137] = arith_addf_144; 
    }
    int arith_cmpi_145 = (for_iter_21 < arith_const_9); 
    int arith_subi_146 = (arith_const_5 - for_iter_21); 
    int arith_select_147 = (arith_cmpi_145 ? arith_subi_146 : for_iter_21); 
    int arith_divi_148 = (arith_select_147 / arith_const_6); 
    int arith_subi_149 = (arith_const_5 - arith_divi_148); 
    int arith_select_150 = (arith_cmpi_145 ? arith_subi_149 : arith_divi_148); 
    int arith_muli_151 = (arith_select_150 * arith_const_6); 
    for (int for_iter_152 = arith_const_9; for_iter_152 < arith_muli_151; for_iter_152 += arith_const_6) {
      double memref_load_153 = memref_alloca_16[for_iter_152]; 
      func_arg_2[for_iter_152] = memref_load_153; 
      int arith_addi_154 = (for_iter_152 + arith_const_8); 
      double memref_load_155 = memref_alloca_16[arith_addi_154]; 
      func_arg_2[arith_addi_154] = memref_load_155; 
      int arith_addi_156 = (for_iter_152 + arith_const_4); 
      double memref_load_157 = memref_alloca_16[arith_addi_156]; 
      func_arg_2[arith_addi_156] = memref_load_157; 
      int arith_addi_158 = (for_iter_152 + arith_const_3); 
      double memref_load_159 = memref_alloca_16[arith_addi_158]; 
      func_arg_2[arith_addi_158] = memref_load_159; 
    }
    int arith_cmpi_160 = (for_iter_21 < arith_const_9); 
    int arith_subi_161 = (arith_const_5 - for_iter_21); 
    int arith_select_162 = (arith_cmpi_160 ? arith_subi_161 : for_iter_21); 
    int arith_divi_163 = (arith_select_162 / arith_const_6); 
    int arith_subi_164 = (arith_const_5 - arith_divi_163); 
    int arith_select_165 = (arith_cmpi_160 ? arith_subi_164 : arith_divi_163); 
    int arith_muli_166 = (arith_select_165 * arith_const_6); 
    for (int for_iter_167 = arith_muli_166; for_iter_167 < for_iter_21; for_iter_167 += arith_const_8) {
      double memref_load_168 = memref_alloca_16[for_iter_167]; 
      func_arg_2[for_iter_167] = memref_load_168; 
    }
    func_arg_2[for_iter_21] = arith_divf_90; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}

#pragma pocc-region-end
