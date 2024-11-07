#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 3; 
  int arith_const_4 = 2; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 37; 
  int arith_const_8 = 39; 
  double arith_const_9 = 9.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_12; for_iter_14 < arith_const_8; for_iter_14 += arith_const_12) {
      for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_7; for_iter_15 += arith_const_6) {
        int arith_addi_16 = (for_iter_14 + arith_const_5); 
        int arith_addi_17 = (for_iter_15 + arith_const_5); 
        double memref_load_18 = func_arg_2[arith_addi_16][arith_addi_17]; 
        int arith_addi_19 = (for_iter_14 + arith_const_5); 
        double memref_load_20 = func_arg_2[arith_addi_19][for_iter_15]; 
        double arith_addf_21 = (memref_load_18 + memref_load_20); 
        int arith_addi_22 = (for_iter_14 + arith_const_5); 
        int arith_addi_23 = (for_iter_15 + arith_const_12); 
        double memref_load_24 = func_arg_2[arith_addi_22][arith_addi_23]; 
        double arith_addf_25 = (arith_addf_21 + memref_load_24); 
        int arith_addi_26 = (for_iter_15 + arith_const_5); 
        double memref_load_27 = func_arg_2[for_iter_14][arith_addi_26]; 
        double arith_addf_28 = (arith_addf_25 + memref_load_27); 
        double memref_load_29 = func_arg_2[for_iter_14][for_iter_15]; 
        double arith_addf_30 = (arith_addf_28 + memref_load_29); 
        int arith_addi_31 = (for_iter_15 + arith_const_12); 
        double memref_load_32 = func_arg_2[for_iter_14][arith_addi_31]; 
        double arith_addf_33 = (arith_addf_30 + memref_load_32); 
        int arith_addi_34 = (for_iter_14 + arith_const_12); 
        int arith_addi_35 = (for_iter_15 + arith_const_5); 
        double memref_load_36 = func_arg_2[arith_addi_34][arith_addi_35]; 
        double arith_addf_37 = (arith_addf_33 + memref_load_36); 
        int arith_addi_38 = (for_iter_14 + arith_const_12); 
        double memref_load_39 = func_arg_2[arith_addi_38][for_iter_15]; 
        double arith_addf_40 = (arith_addf_37 + memref_load_39); 
        int arith_addi_41 = (for_iter_14 + arith_const_12); 
        int arith_addi_42 = (for_iter_15 + arith_const_12); 
        double memref_load_43 = func_arg_2[arith_addi_41][arith_addi_42]; 
        double arith_addf_44 = (arith_addf_40 + memref_load_43); 
        double arith_divf_45 = (arith_addf_44 / arith_const_9); 
        func_arg_2[for_iter_14][for_iter_15] = arith_divf_45; 
        int arith_addi_46 = (for_iter_15 + arith_const_12); 
        int arith_addi_47 = (for_iter_14 + arith_const_5); 
        int arith_addi_48 = (arith_addi_46 + arith_const_5); 
        double memref_load_49 = func_arg_2[arith_addi_47][arith_addi_48]; 
        int arith_addi_50 = (for_iter_14 + arith_const_5); 
        double memref_load_51 = func_arg_2[arith_addi_50][arith_addi_46]; 
        double arith_addf_52 = (memref_load_49 + memref_load_51); 
        int arith_addi_53 = (for_iter_14 + arith_const_5); 
        int arith_addi_54 = (arith_addi_46 + arith_const_12); 
        double memref_load_55 = func_arg_2[arith_addi_53][arith_addi_54]; 
        double arith_addf_56 = (arith_addf_52 + memref_load_55); 
        int arith_addi_57 = (arith_addi_46 + arith_const_5); 
        double memref_load_58 = func_arg_2[for_iter_14][arith_addi_57]; 
        double arith_addf_59 = (arith_addf_56 + memref_load_58); 
        double memref_load_60 = func_arg_2[for_iter_14][arith_addi_46]; 
        double arith_addf_61 = (arith_addf_59 + memref_load_60); 
        int arith_addi_62 = (arith_addi_46 + arith_const_12); 
        double memref_load_63 = func_arg_2[for_iter_14][arith_addi_62]; 
        double arith_addf_64 = (arith_addf_61 + memref_load_63); 
        int arith_addi_65 = (for_iter_14 + arith_const_12); 
        int arith_addi_66 = (arith_addi_46 + arith_const_5); 
        double memref_load_67 = func_arg_2[arith_addi_65][arith_addi_66]; 
        double arith_addf_68 = (arith_addf_64 + memref_load_67); 
        int arith_addi_69 = (for_iter_14 + arith_const_12); 
        double memref_load_70 = func_arg_2[arith_addi_69][arith_addi_46]; 
        double arith_addf_71 = (arith_addf_68 + memref_load_70); 
        int arith_addi_72 = (for_iter_14 + arith_const_12); 
        int arith_addi_73 = (arith_addi_46 + arith_const_12); 
        double memref_load_74 = func_arg_2[arith_addi_72][arith_addi_73]; 
        double arith_addf_75 = (arith_addf_71 + memref_load_74); 
        double arith_divf_76 = (arith_addf_75 / arith_const_9); 
        func_arg_2[for_iter_14][arith_addi_46] = arith_divf_76; 
        int arith_addi_77 = (for_iter_15 + arith_const_4); 
        int arith_addi_78 = (for_iter_14 + arith_const_5); 
        int arith_addi_79 = (arith_addi_77 + arith_const_5); 
        double memref_load_80 = func_arg_2[arith_addi_78][arith_addi_79]; 
        int arith_addi_81 = (for_iter_14 + arith_const_5); 
        double memref_load_82 = func_arg_2[arith_addi_81][arith_addi_77]; 
        double arith_addf_83 = (memref_load_80 + memref_load_82); 
        int arith_addi_84 = (for_iter_14 + arith_const_5); 
        int arith_addi_85 = (arith_addi_77 + arith_const_12); 
        double memref_load_86 = func_arg_2[arith_addi_84][arith_addi_85]; 
        double arith_addf_87 = (arith_addf_83 + memref_load_86); 
        int arith_addi_88 = (arith_addi_77 + arith_const_5); 
        double memref_load_89 = func_arg_2[for_iter_14][arith_addi_88]; 
        double arith_addf_90 = (arith_addf_87 + memref_load_89); 
        double memref_load_91 = func_arg_2[for_iter_14][arith_addi_77]; 
        double arith_addf_92 = (arith_addf_90 + memref_load_91); 
        int arith_addi_93 = (arith_addi_77 + arith_const_12); 
        double memref_load_94 = func_arg_2[for_iter_14][arith_addi_93]; 
        double arith_addf_95 = (arith_addf_92 + memref_load_94); 
        int arith_addi_96 = (for_iter_14 + arith_const_12); 
        int arith_addi_97 = (arith_addi_77 + arith_const_5); 
        double memref_load_98 = func_arg_2[arith_addi_96][arith_addi_97]; 
        double arith_addf_99 = (arith_addf_95 + memref_load_98); 
        int arith_addi_100 = (for_iter_14 + arith_const_12); 
        double memref_load_101 = func_arg_2[arith_addi_100][arith_addi_77]; 
        double arith_addf_102 = (arith_addf_99 + memref_load_101); 
        int arith_addi_103 = (for_iter_14 + arith_const_12); 
        int arith_addi_104 = (arith_addi_77 + arith_const_12); 
        double memref_load_105 = func_arg_2[arith_addi_103][arith_addi_104]; 
        double arith_addf_106 = (arith_addf_102 + memref_load_105); 
        double arith_divf_107 = (arith_addf_106 / arith_const_9); 
        func_arg_2[for_iter_14][arith_addi_77] = arith_divf_107; 
        int arith_addi_108 = (for_iter_15 + arith_const_3); 
        int arith_addi_109 = (for_iter_14 + arith_const_5); 
        int arith_addi_110 = (arith_addi_108 + arith_const_5); 
        double memref_load_111 = func_arg_2[arith_addi_109][arith_addi_110]; 
        int arith_addi_112 = (for_iter_14 + arith_const_5); 
        double memref_load_113 = func_arg_2[arith_addi_112][arith_addi_108]; 
        double arith_addf_114 = (memref_load_111 + memref_load_113); 
        int arith_addi_115 = (for_iter_14 + arith_const_5); 
        int arith_addi_116 = (arith_addi_108 + arith_const_12); 
        double memref_load_117 = func_arg_2[arith_addi_115][arith_addi_116]; 
        double arith_addf_118 = (arith_addf_114 + memref_load_117); 
        int arith_addi_119 = (arith_addi_108 + arith_const_5); 
        double memref_load_120 = func_arg_2[for_iter_14][arith_addi_119]; 
        double arith_addf_121 = (arith_addf_118 + memref_load_120); 
        double memref_load_122 = func_arg_2[for_iter_14][arith_addi_108]; 
        double arith_addf_123 = (arith_addf_121 + memref_load_122); 
        int arith_addi_124 = (arith_addi_108 + arith_const_12); 
        double memref_load_125 = func_arg_2[for_iter_14][arith_addi_124]; 
        double arith_addf_126 = (arith_addf_123 + memref_load_125); 
        int arith_addi_127 = (for_iter_14 + arith_const_12); 
        int arith_addi_128 = (arith_addi_108 + arith_const_5); 
        double memref_load_129 = func_arg_2[arith_addi_127][arith_addi_128]; 
        double arith_addf_130 = (arith_addf_126 + memref_load_129); 
        int arith_addi_131 = (for_iter_14 + arith_const_12); 
        double memref_load_132 = func_arg_2[arith_addi_131][arith_addi_108]; 
        double arith_addf_133 = (arith_addf_130 + memref_load_132); 
        int arith_addi_134 = (for_iter_14 + arith_const_12); 
        int arith_addi_135 = (arith_addi_108 + arith_const_12); 
        double memref_load_136 = func_arg_2[arith_addi_134][arith_addi_135]; 
        double arith_addf_137 = (arith_addf_133 + memref_load_136); 
        double arith_divf_138 = (arith_addf_137 / arith_const_9); 
        func_arg_2[for_iter_14][arith_addi_108] = arith_divf_138; 
      }
      for (int for_iter_139 = arith_const_7; for_iter_139 < arith_const_8; for_iter_139 += arith_const_12) {
        int arith_addi_140 = (for_iter_14 + arith_const_5); 
        int arith_addi_141 = (for_iter_139 + arith_const_5); 
        double memref_load_142 = func_arg_2[arith_addi_140][arith_addi_141]; 
        int arith_addi_143 = (for_iter_14 + arith_const_5); 
        double memref_load_144 = func_arg_2[arith_addi_143][for_iter_139]; 
        double arith_addf_145 = (memref_load_142 + memref_load_144); 
        int arith_addi_146 = (for_iter_14 + arith_const_5); 
        int arith_addi_147 = (for_iter_139 + arith_const_12); 
        double memref_load_148 = func_arg_2[arith_addi_146][arith_addi_147]; 
        double arith_addf_149 = (arith_addf_145 + memref_load_148); 
        int arith_addi_150 = (for_iter_139 + arith_const_5); 
        double memref_load_151 = func_arg_2[for_iter_14][arith_addi_150]; 
        double arith_addf_152 = (arith_addf_149 + memref_load_151); 
        double memref_load_153 = func_arg_2[for_iter_14][for_iter_139]; 
        double arith_addf_154 = (arith_addf_152 + memref_load_153); 
        int arith_addi_155 = (for_iter_139 + arith_const_12); 
        double memref_load_156 = func_arg_2[for_iter_14][arith_addi_155]; 
        double arith_addf_157 = (arith_addf_154 + memref_load_156); 
        int arith_addi_158 = (for_iter_14 + arith_const_12); 
        int arith_addi_159 = (for_iter_139 + arith_const_5); 
        double memref_load_160 = func_arg_2[arith_addi_158][arith_addi_159]; 
        double arith_addf_161 = (arith_addf_157 + memref_load_160); 
        int arith_addi_162 = (for_iter_14 + arith_const_12); 
        double memref_load_163 = func_arg_2[arith_addi_162][for_iter_139]; 
        double arith_addf_164 = (arith_addf_161 + memref_load_163); 
        int arith_addi_165 = (for_iter_14 + arith_const_12); 
        int arith_addi_166 = (for_iter_139 + arith_const_12); 
        double memref_load_167 = func_arg_2[arith_addi_165][arith_addi_166]; 
        double arith_addf_168 = (arith_addf_164 + memref_load_167); 
        double arith_divf_169 = (arith_addf_168 / arith_const_9); 
        func_arg_2[for_iter_14][for_iter_139] = arith_divf_169; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
