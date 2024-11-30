#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 397; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 99; 
  int arith_const_8 = 398; 
  int arith_const_9 = 100; 
  int arith_const_10 = -32; 
  int arith_const_11 = 13; 
  int arith_const_12 = 32; 
  double arith_const_13 = 9.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 4; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_11; for_iter_18 += arith_const_16) {
      int arith_muli_19 = (for_iter_18 * arith_const_12); 
      int arith_addi_20 = (arith_muli_19 + arith_const_16); 
      int arith_muli_21 = (for_iter_17 * arith_const_10); 
      int arith_addi_22 = (arith_muli_21 + arith_const_9); 
      int arith_minsi_23 = min(arith_addi_22, arith_const_12); 
      for (int for_iter_24 = arith_const_14; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_16) {
        int arith_muli_25 = (for_iter_18 * arith_const_10); 
        int arith_addi_26 = (arith_muli_25 + arith_const_8); 
        int arith_minsi_27 = min(arith_addi_26, arith_const_12); 
        for (int for_iter_28 = arith_const_14; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_16) {
          int arith_addi_29 = (arith_addi_20 + for_iter_28); 
          for (int for_iter_30 = arith_const_14; for_iter_30 < arith_const_7; for_iter_30 += arith_const_16) {
            int arith_muli_31 = (for_iter_30 * arith_const_15); 
            int arith_addi_32 = (arith_muli_31 + arith_const_16); 
            int arith_addi_33 = (arith_addi_29 + arith_const_6); 
            int arith_addi_34 = (arith_addi_32 + arith_const_6); 
            double memref_load_35 = func_arg_2[arith_addi_33][arith_addi_34]; 
            int arith_addi_36 = (arith_addi_29 + arith_const_6); 
            double memref_load_37 = func_arg_2[arith_addi_36][arith_addi_32]; 
            double arith_addf_38 = (memref_load_35 + memref_load_37); 
            int arith_addi_39 = (arith_addi_29 + arith_const_6); 
            int arith_addi_40 = (arith_addi_32 + arith_const_16); 
            double memref_load_41 = func_arg_2[arith_addi_39][arith_addi_40]; 
            double arith_addf_42 = (arith_addf_38 + memref_load_41); 
            int arith_addi_43 = (arith_addi_32 + arith_const_6); 
            double memref_load_44 = func_arg_2[arith_addi_29][arith_addi_43]; 
            double arith_addf_45 = (arith_addf_42 + memref_load_44); 
            double memref_load_46 = func_arg_2[arith_addi_29][arith_addi_32]; 
            double arith_addf_47 = (arith_addf_45 + memref_load_46); 
            int arith_addi_48 = (arith_addi_32 + arith_const_16); 
            double memref_load_49 = func_arg_2[arith_addi_29][arith_addi_48]; 
            double arith_addf_50 = (arith_addf_47 + memref_load_49); 
            int arith_addi_51 = (arith_addi_29 + arith_const_16); 
            int arith_addi_52 = (arith_addi_32 + arith_const_6); 
            double memref_load_53 = func_arg_2[arith_addi_51][arith_addi_52]; 
            double arith_addf_54 = (arith_addf_50 + memref_load_53); 
            int arith_addi_55 = (arith_addi_29 + arith_const_16); 
            double memref_load_56 = func_arg_2[arith_addi_55][arith_addi_32]; 
            double arith_addf_57 = (arith_addf_54 + memref_load_56); 
            int arith_addi_58 = (arith_addi_29 + arith_const_16); 
            int arith_addi_59 = (arith_addi_32 + arith_const_16); 
            double memref_load_60 = func_arg_2[arith_addi_58][arith_addi_59]; 
            double arith_addf_61 = (arith_addf_57 + memref_load_60); 
            double arith_divf_62 = (arith_addf_61 / arith_const_13); 
            func_arg_2[arith_addi_29][arith_addi_32] = arith_divf_62; 
            int arith_addi_63 = (arith_addi_32 + arith_const_16); 
            int arith_addi_64 = (arith_addi_29 + arith_const_6); 
            int arith_addi_65 = (arith_addi_63 + arith_const_6); 
            double memref_load_66 = func_arg_2[arith_addi_64][arith_addi_65]; 
            int arith_addi_67 = (arith_addi_29 + arith_const_6); 
            double memref_load_68 = func_arg_2[arith_addi_67][arith_addi_63]; 
            double arith_addf_69 = (memref_load_66 + memref_load_68); 
            int arith_addi_70 = (arith_addi_29 + arith_const_6); 
            int arith_addi_71 = (arith_addi_63 + arith_const_16); 
            double memref_load_72 = func_arg_2[arith_addi_70][arith_addi_71]; 
            double arith_addf_73 = (arith_addf_69 + memref_load_72); 
            int arith_addi_74 = (arith_addi_63 + arith_const_6); 
            double memref_load_75 = func_arg_2[arith_addi_29][arith_addi_74]; 
            double arith_addf_76 = (arith_addf_73 + memref_load_75); 
            double memref_load_77 = func_arg_2[arith_addi_29][arith_addi_63]; 
            double arith_addf_78 = (arith_addf_76 + memref_load_77); 
            int arith_addi_79 = (arith_addi_63 + arith_const_16); 
            double memref_load_80 = func_arg_2[arith_addi_29][arith_addi_79]; 
            double arith_addf_81 = (arith_addf_78 + memref_load_80); 
            int arith_addi_82 = (arith_addi_29 + arith_const_16); 
            int arith_addi_83 = (arith_addi_63 + arith_const_6); 
            double memref_load_84 = func_arg_2[arith_addi_82][arith_addi_83]; 
            double arith_addf_85 = (arith_addf_81 + memref_load_84); 
            int arith_addi_86 = (arith_addi_29 + arith_const_16); 
            double memref_load_87 = func_arg_2[arith_addi_86][arith_addi_63]; 
            double arith_addf_88 = (arith_addf_85 + memref_load_87); 
            int arith_addi_89 = (arith_addi_29 + arith_const_16); 
            int arith_addi_90 = (arith_addi_63 + arith_const_16); 
            double memref_load_91 = func_arg_2[arith_addi_89][arith_addi_90]; 
            double arith_addf_92 = (arith_addf_88 + memref_load_91); 
            double arith_divf_93 = (arith_addf_92 / arith_const_13); 
            func_arg_2[arith_addi_29][arith_addi_63] = arith_divf_93; 
            int arith_addi_94 = (arith_addi_32 + arith_const_5); 
            int arith_addi_95 = (arith_addi_29 + arith_const_6); 
            int arith_addi_96 = (arith_addi_94 + arith_const_6); 
            double memref_load_97 = func_arg_2[arith_addi_95][arith_addi_96]; 
            int arith_addi_98 = (arith_addi_29 + arith_const_6); 
            double memref_load_99 = func_arg_2[arith_addi_98][arith_addi_94]; 
            double arith_addf_100 = (memref_load_97 + memref_load_99); 
            int arith_addi_101 = (arith_addi_29 + arith_const_6); 
            int arith_addi_102 = (arith_addi_94 + arith_const_16); 
            double memref_load_103 = func_arg_2[arith_addi_101][arith_addi_102]; 
            double arith_addf_104 = (arith_addf_100 + memref_load_103); 
            int arith_addi_105 = (arith_addi_94 + arith_const_6); 
            double memref_load_106 = func_arg_2[arith_addi_29][arith_addi_105]; 
            double arith_addf_107 = (arith_addf_104 + memref_load_106); 
            double memref_load_108 = func_arg_2[arith_addi_29][arith_addi_94]; 
            double arith_addf_109 = (arith_addf_107 + memref_load_108); 
            int arith_addi_110 = (arith_addi_94 + arith_const_16); 
            double memref_load_111 = func_arg_2[arith_addi_29][arith_addi_110]; 
            double arith_addf_112 = (arith_addf_109 + memref_load_111); 
            int arith_addi_113 = (arith_addi_29 + arith_const_16); 
            int arith_addi_114 = (arith_addi_94 + arith_const_6); 
            double memref_load_115 = func_arg_2[arith_addi_113][arith_addi_114]; 
            double arith_addf_116 = (arith_addf_112 + memref_load_115); 
            int arith_addi_117 = (arith_addi_29 + arith_const_16); 
            double memref_load_118 = func_arg_2[arith_addi_117][arith_addi_94]; 
            double arith_addf_119 = (arith_addf_116 + memref_load_118); 
            int arith_addi_120 = (arith_addi_29 + arith_const_16); 
            int arith_addi_121 = (arith_addi_94 + arith_const_16); 
            double memref_load_122 = func_arg_2[arith_addi_120][arith_addi_121]; 
            double arith_addf_123 = (arith_addf_119 + memref_load_122); 
            double arith_divf_124 = (arith_addf_123 / arith_const_13); 
            func_arg_2[arith_addi_29][arith_addi_94] = arith_divf_124; 
            int arith_addi_125 = (arith_addi_32 + arith_const_4); 
            int arith_addi_126 = (arith_addi_29 + arith_const_6); 
            int arith_addi_127 = (arith_addi_125 + arith_const_6); 
            double memref_load_128 = func_arg_2[arith_addi_126][arith_addi_127]; 
            int arith_addi_129 = (arith_addi_29 + arith_const_6); 
            double memref_load_130 = func_arg_2[arith_addi_129][arith_addi_125]; 
            double arith_addf_131 = (memref_load_128 + memref_load_130); 
            int arith_addi_132 = (arith_addi_29 + arith_const_6); 
            int arith_addi_133 = (arith_addi_125 + arith_const_16); 
            double memref_load_134 = func_arg_2[arith_addi_132][arith_addi_133]; 
            double arith_addf_135 = (arith_addf_131 + memref_load_134); 
            int arith_addi_136 = (arith_addi_125 + arith_const_6); 
            double memref_load_137 = func_arg_2[arith_addi_29][arith_addi_136]; 
            double arith_addf_138 = (arith_addf_135 + memref_load_137); 
            double memref_load_139 = func_arg_2[arith_addi_29][arith_addi_125]; 
            double arith_addf_140 = (arith_addf_138 + memref_load_139); 
            int arith_addi_141 = (arith_addi_125 + arith_const_16); 
            double memref_load_142 = func_arg_2[arith_addi_29][arith_addi_141]; 
            double arith_addf_143 = (arith_addf_140 + memref_load_142); 
            int arith_addi_144 = (arith_addi_29 + arith_const_16); 
            int arith_addi_145 = (arith_addi_125 + arith_const_6); 
            double memref_load_146 = func_arg_2[arith_addi_144][arith_addi_145]; 
            double arith_addf_147 = (arith_addf_143 + memref_load_146); 
            int arith_addi_148 = (arith_addi_29 + arith_const_16); 
            double memref_load_149 = func_arg_2[arith_addi_148][arith_addi_125]; 
            double arith_addf_150 = (arith_addf_147 + memref_load_149); 
            int arith_addi_151 = (arith_addi_29 + arith_const_16); 
            int arith_addi_152 = (arith_addi_125 + arith_const_16); 
            double memref_load_153 = func_arg_2[arith_addi_151][arith_addi_152]; 
            double arith_addf_154 = (arith_addf_150 + memref_load_153); 
            double arith_divf_155 = (arith_addf_154 / arith_const_13); 
            func_arg_2[arith_addi_29][arith_addi_125] = arith_divf_155; 
          }
          for (int for_iter_156 = arith_const_14; for_iter_156 < arith_const_5; for_iter_156 += arith_const_16) {
            int arith_addi_157 = (for_iter_156 + arith_const_3); 
            int arith_addi_158 = (arith_addi_29 + arith_const_6); 
            int arith_addi_159 = (arith_addi_157 + arith_const_6); 
            double memref_load_160 = func_arg_2[arith_addi_158][arith_addi_159]; 
            int arith_addi_161 = (arith_addi_29 + arith_const_6); 
            double memref_load_162 = func_arg_2[arith_addi_161][arith_addi_157]; 
            double arith_addf_163 = (memref_load_160 + memref_load_162); 
            int arith_addi_164 = (arith_addi_29 + arith_const_6); 
            int arith_addi_165 = (arith_addi_157 + arith_const_16); 
            double memref_load_166 = func_arg_2[arith_addi_164][arith_addi_165]; 
            double arith_addf_167 = (arith_addf_163 + memref_load_166); 
            int arith_addi_168 = (arith_addi_157 + arith_const_6); 
            double memref_load_169 = func_arg_2[arith_addi_29][arith_addi_168]; 
            double arith_addf_170 = (arith_addf_167 + memref_load_169); 
            double memref_load_171 = func_arg_2[arith_addi_29][arith_addi_157]; 
            double arith_addf_172 = (arith_addf_170 + memref_load_171); 
            int arith_addi_173 = (arith_addi_157 + arith_const_16); 
            double memref_load_174 = func_arg_2[arith_addi_29][arith_addi_173]; 
            double arith_addf_175 = (arith_addf_172 + memref_load_174); 
            int arith_addi_176 = (arith_addi_29 + arith_const_16); 
            int arith_addi_177 = (arith_addi_157 + arith_const_6); 
            double memref_load_178 = func_arg_2[arith_addi_176][arith_addi_177]; 
            double arith_addf_179 = (arith_addf_175 + memref_load_178); 
            int arith_addi_180 = (arith_addi_29 + arith_const_16); 
            double memref_load_181 = func_arg_2[arith_addi_180][arith_addi_157]; 
            double arith_addf_182 = (arith_addf_179 + memref_load_181); 
            int arith_addi_183 = (arith_addi_29 + arith_const_16); 
            int arith_addi_184 = (arith_addi_157 + arith_const_16); 
            double memref_load_185 = func_arg_2[arith_addi_183][arith_addi_184]; 
            double arith_addf_186 = (arith_addf_182 + memref_load_185); 
            double arith_divf_187 = (arith_addf_186 / arith_const_13); 
            func_arg_2[arith_addi_29][arith_addi_157] = arith_divf_187; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
