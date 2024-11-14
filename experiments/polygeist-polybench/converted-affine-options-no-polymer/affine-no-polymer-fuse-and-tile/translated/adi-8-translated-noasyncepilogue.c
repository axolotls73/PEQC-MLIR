#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 17; 
  int arith_const_7 = -1; 
  int arith_const_8 = 19; 
  int arith_const_9 = 2; 
  int arith_const_10 = 18; 
  int arith_const_11 = 1; 
  double arith_const_12 = 10.000000; 
  double arith_const_13 = -19.000000; 
  double arith_const_14 = -39.000000; 
  double arith_const_15 = -10.000000; 
  double arith_const_16 = -20.000000; 
  double arith_const_17 = 21.000000; 
  double arith_const_18 = 41.000000; 
  double arith_const_19 = 20.000000; 
  double arith_const_20 = 0.000000; 
  double arith_const_21 = 1.000000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 20; 
  int arith_const_24 = 32; 
  for (int for_iter_25 = arith_const_22; for_iter_25 < arith_const_23; for_iter_25 += arith_const_24) {
    int arith_addi_26 = (for_iter_25 + arith_const_23); 
    for (int for_iter_27 = for_iter_25; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_11) {
      for (int for_iter_28 = arith_const_22; for_iter_28 < arith_const_10; for_iter_28 += arith_const_11) {
        int arith_addi_29 = (for_iter_28 + arith_const_11); 
        func_arg_3[arith_const_22][arith_addi_29] = arith_const_21; 
        int arith_addi_30 = (for_iter_28 + arith_const_11); 
        func_arg_4[arith_addi_30][arith_const_22] = arith_const_20; 
        int arith_addi_31 = (for_iter_28 + arith_const_11); 
        double memref_load_32 = func_arg_3[arith_const_22][arith_addi_31]; 
        int arith_addi_33 = (for_iter_28 + arith_const_11); 
        func_arg_5[arith_addi_33][arith_const_22] = memref_load_32; 
        for (int for_iter_34 = arith_const_22; for_iter_34 < arith_const_10; for_iter_34 += arith_const_11) {
          int arith_addi_35 = (for_iter_28 + arith_const_11); 
          double memref_load_36 = func_arg_4[arith_addi_35][for_iter_34]; 
          double arith_mulf_37 = (memref_load_36 * arith_const_16); 
          double arith_addf_38 = (arith_mulf_37 + arith_const_18); 
          double arith_divf_39 = (arith_const_19 / arith_addf_38); 
          int arith_addi_40 = (for_iter_28 + arith_const_11); 
          int arith_addi_41 = (for_iter_34 + arith_const_11); 
          func_arg_4[arith_addi_40][arith_addi_41] = arith_divf_39; 
          int arith_addi_42 = (for_iter_34 + arith_const_11); 
          double memref_load_43 = func_arg_2[arith_addi_42][for_iter_28]; 
          double arith_mulf_44 = (memref_load_43 * arith_const_12); 
          int arith_addi_45 = (for_iter_34 + arith_const_11); 
          int arith_addi_46 = (for_iter_28 + arith_const_11); 
          double memref_load_47 = func_arg_2[arith_addi_45][arith_addi_46]; 
          double arith_mulf_48 = (memref_load_47 * arith_const_13); 
          double arith_addf_49 = (arith_mulf_44 + arith_mulf_48); 
          int arith_addi_50 = (for_iter_34 + arith_const_11); 
          int arith_addi_51 = (for_iter_28 + arith_const_9); 
          double memref_load_52 = func_arg_2[arith_addi_50][arith_addi_51]; 
          double arith_mulf_53 = (memref_load_52 * arith_const_15); 
          double arith_subf_54 = (arith_addf_49 - arith_mulf_53); 
          int arith_addi_55 = (for_iter_28 + arith_const_11); 
          double memref_load_56 = func_arg_5[arith_addi_55][for_iter_34]; 
          double arith_mulf_57 = (memref_load_56 * arith_const_16); 
          double arith_subf_58 = (arith_subf_54 - arith_mulf_57); 
          double arith_divf_59 = (arith_subf_58 / arith_addf_38); 
          int arith_addi_60 = (for_iter_28 + arith_const_11); 
          int arith_addi_61 = (for_iter_34 + arith_const_11); 
          func_arg_5[arith_addi_60][arith_addi_61] = arith_divf_59; 
        }
        int arith_addi_62 = (for_iter_28 + arith_const_11); 
        func_arg_3[arith_const_8][arith_addi_62] = arith_const_21; 
        for (int for_iter_63 = arith_const_22; for_iter_63 < arith_const_10; for_iter_63 += arith_const_11) {
          int arith_muli_64 = (for_iter_63 * arith_const_7); 
          int arith_addi_65 = (arith_muli_64 + arith_const_6); 
          int arith_addi_66 = (for_iter_28 + arith_const_11); 
          double memref_load_67 = func_arg_4[arith_addi_66][arith_addi_65]; 
          double arith_mulf_68 = (memref_load_67 * arith_const_16); 
          double arith_addf_69 = (arith_mulf_68 + arith_const_18); 
          double arith_divf_70 = (arith_const_19 / arith_addf_69); 
          int arith_addi_71 = (for_iter_28 + arith_const_11); 
          int arith_addi_72 = (arith_addi_65 + arith_const_11); 
          func_arg_4[arith_addi_71][arith_addi_72] = arith_divf_70; 
          int arith_addi_73 = (arith_addi_65 + arith_const_11); 
          double memref_load_74 = func_arg_2[arith_addi_73][for_iter_28]; 
          double arith_mulf_75 = (memref_load_74 * arith_const_12); 
          int arith_addi_76 = (arith_addi_65 + arith_const_11); 
          int arith_addi_77 = (for_iter_28 + arith_const_11); 
          double memref_load_78 = func_arg_2[arith_addi_76][arith_addi_77]; 
          double arith_mulf_79 = (memref_load_78 * arith_const_13); 
          double arith_addf_80 = (arith_mulf_75 + arith_mulf_79); 
          int arith_addi_81 = (arith_addi_65 + arith_const_11); 
          int arith_addi_82 = (for_iter_28 + arith_const_9); 
          double memref_load_83 = func_arg_2[arith_addi_81][arith_addi_82]; 
          double arith_mulf_84 = (memref_load_83 * arith_const_15); 
          double arith_subf_85 = (arith_addf_80 - arith_mulf_84); 
          int arith_addi_86 = (for_iter_28 + arith_const_11); 
          double memref_load_87 = func_arg_5[arith_addi_86][arith_addi_65]; 
          double arith_mulf_88 = (memref_load_87 * arith_const_16); 
          double arith_subf_89 = (arith_subf_85 - arith_mulf_88); 
          double arith_divf_90 = (arith_subf_89 / arith_addf_69); 
          int arith_addi_91 = (for_iter_28 + arith_const_11); 
          int arith_addi_92 = (arith_addi_65 + arith_const_11); 
          func_arg_5[arith_addi_91][arith_addi_92] = arith_divf_90; 
          int arith_addi_93 = (for_iter_28 + arith_const_11); 
          int arith_muli_94 = (for_iter_63 * arith_const_7); 
          int arith_addi_95 = (arith_muli_94 + arith_const_10); 
          double memref_load_96 = func_arg_4[arith_addi_93][arith_addi_95]; 
          int arith_muli_97 = (for_iter_63 * arith_const_7); 
          int arith_addi_98 = (arith_muli_97 + arith_const_8); 
          int arith_addi_99 = (for_iter_28 + arith_const_11); 
          double memref_load_100 = func_arg_3[arith_addi_98][arith_addi_99]; 
          double arith_mulf_101 = (memref_load_96 * memref_load_100); 
          int arith_addi_102 = (for_iter_28 + arith_const_11); 
          int arith_muli_103 = (for_iter_63 * arith_const_7); 
          int arith_addi_104 = (arith_muli_103 + arith_const_10); 
          double memref_load_105 = func_arg_5[arith_addi_102][arith_addi_104]; 
          double arith_addf_106 = (arith_mulf_101 + memref_load_105); 
          int arith_muli_107 = (for_iter_63 * arith_const_7); 
          int arith_addi_108 = (arith_muli_107 + arith_const_10); 
          int arith_addi_109 = (for_iter_28 + arith_const_11); 
          func_arg_3[arith_addi_108][arith_addi_109] = arith_addf_106; 
        }
      }
      for (int for_iter_110 = arith_const_22; for_iter_110 < arith_const_10; for_iter_110 += arith_const_11) {
        int arith_addi_111 = (for_iter_110 + arith_const_11); 
        func_arg_2[arith_addi_111][arith_const_22] = arith_const_21; 
        int arith_addi_112 = (for_iter_110 + arith_const_11); 
        func_arg_4[arith_addi_112][arith_const_22] = arith_const_20; 
        int arith_addi_113 = (for_iter_110 + arith_const_11); 
        double memref_load_114 = func_arg_2[arith_addi_113][arith_const_22]; 
        int arith_addi_115 = (for_iter_110 + arith_const_11); 
        func_arg_5[arith_addi_115][arith_const_22] = memref_load_114; 
        for (int for_iter_116 = arith_const_22; for_iter_116 < arith_const_10; for_iter_116 += arith_const_11) {
          int arith_addi_117 = (for_iter_110 + arith_const_11); 
          double memref_load_118 = func_arg_4[arith_addi_117][for_iter_116]; 
          double arith_mulf_119 = (memref_load_118 * arith_const_15); 
          double arith_addf_120 = (arith_mulf_119 + arith_const_17); 
          double arith_divf_121 = (arith_const_12 / arith_addf_120); 
          int arith_addi_122 = (for_iter_110 + arith_const_11); 
          int arith_addi_123 = (for_iter_116 + arith_const_11); 
          func_arg_4[arith_addi_122][arith_addi_123] = arith_divf_121; 
          int arith_addi_124 = (for_iter_116 + arith_const_11); 
          double memref_load_125 = func_arg_3[for_iter_110][arith_addi_124]; 
          double arith_mulf_126 = (memref_load_125 * arith_const_19); 
          int arith_addi_127 = (for_iter_110 + arith_const_11); 
          int arith_addi_128 = (for_iter_116 + arith_const_11); 
          double memref_load_129 = func_arg_3[arith_addi_127][arith_addi_128]; 
          double arith_mulf_130 = (memref_load_129 * arith_const_14); 
          double arith_addf_131 = (arith_mulf_126 + arith_mulf_130); 
          int arith_addi_132 = (for_iter_110 + arith_const_9); 
          int arith_addi_133 = (for_iter_116 + arith_const_11); 
          double memref_load_134 = func_arg_3[arith_addi_132][arith_addi_133]; 
          double arith_mulf_135 = (memref_load_134 * arith_const_16); 
          double arith_subf_136 = (arith_addf_131 - arith_mulf_135); 
          int arith_addi_137 = (for_iter_110 + arith_const_11); 
          double memref_load_138 = func_arg_5[arith_addi_137][for_iter_116]; 
          double arith_mulf_139 = (memref_load_138 * arith_const_15); 
          double arith_subf_140 = (arith_subf_136 - arith_mulf_139); 
          double arith_divf_141 = (arith_subf_140 / arith_addf_120); 
          int arith_addi_142 = (for_iter_110 + arith_const_11); 
          int arith_addi_143 = (for_iter_116 + arith_const_11); 
          func_arg_5[arith_addi_142][arith_addi_143] = arith_divf_141; 
        }
        int arith_addi_144 = (for_iter_110 + arith_const_11); 
        func_arg_2[arith_addi_144][arith_const_8] = arith_const_21; 
        for (int for_iter_145 = arith_const_22; for_iter_145 < arith_const_10; for_iter_145 += arith_const_11) {
          int arith_muli_146 = (for_iter_145 * arith_const_7); 
          int arith_addi_147 = (arith_muli_146 + arith_const_6); 
          int arith_addi_148 = (for_iter_110 + arith_const_11); 
          double memref_load_149 = func_arg_4[arith_addi_148][arith_addi_147]; 
          double arith_mulf_150 = (memref_load_149 * arith_const_15); 
          double arith_addf_151 = (arith_mulf_150 + arith_const_17); 
          double arith_divf_152 = (arith_const_12 / arith_addf_151); 
          int arith_addi_153 = (for_iter_110 + arith_const_11); 
          int arith_addi_154 = (arith_addi_147 + arith_const_11); 
          func_arg_4[arith_addi_153][arith_addi_154] = arith_divf_152; 
          int arith_addi_155 = (arith_addi_147 + arith_const_11); 
          double memref_load_156 = func_arg_3[for_iter_110][arith_addi_155]; 
          double arith_mulf_157 = (memref_load_156 * arith_const_19); 
          int arith_addi_158 = (for_iter_110 + arith_const_11); 
          int arith_addi_159 = (arith_addi_147 + arith_const_11); 
          double memref_load_160 = func_arg_3[arith_addi_158][arith_addi_159]; 
          double arith_mulf_161 = (memref_load_160 * arith_const_14); 
          double arith_addf_162 = (arith_mulf_157 + arith_mulf_161); 
          int arith_addi_163 = (for_iter_110 + arith_const_9); 
          int arith_addi_164 = (arith_addi_147 + arith_const_11); 
          double memref_load_165 = func_arg_3[arith_addi_163][arith_addi_164]; 
          double arith_mulf_166 = (memref_load_165 * arith_const_16); 
          double arith_subf_167 = (arith_addf_162 - arith_mulf_166); 
          int arith_addi_168 = (for_iter_110 + arith_const_11); 
          double memref_load_169 = func_arg_5[arith_addi_168][arith_addi_147]; 
          double arith_mulf_170 = (memref_load_169 * arith_const_15); 
          double arith_subf_171 = (arith_subf_167 - arith_mulf_170); 
          double arith_divf_172 = (arith_subf_171 / arith_addf_151); 
          int arith_addi_173 = (for_iter_110 + arith_const_11); 
          int arith_addi_174 = (arith_addi_147 + arith_const_11); 
          func_arg_5[arith_addi_173][arith_addi_174] = arith_divf_172; 
          int arith_addi_175 = (for_iter_110 + arith_const_11); 
          int arith_muli_176 = (for_iter_145 * arith_const_7); 
          int arith_addi_177 = (arith_muli_176 + arith_const_10); 
          double memref_load_178 = func_arg_4[arith_addi_175][arith_addi_177]; 
          int arith_addi_179 = (for_iter_110 + arith_const_11); 
          int arith_muli_180 = (for_iter_145 * arith_const_7); 
          int arith_addi_181 = (arith_muli_180 + arith_const_8); 
          double memref_load_182 = func_arg_2[arith_addi_179][arith_addi_181]; 
          double arith_mulf_183 = (memref_load_178 * memref_load_182); 
          int arith_addi_184 = (for_iter_110 + arith_const_11); 
          int arith_muli_185 = (for_iter_145 * arith_const_7); 
          int arith_addi_186 = (arith_muli_185 + arith_const_10); 
          double memref_load_187 = func_arg_5[arith_addi_184][arith_addi_186]; 
          double arith_addf_188 = (arith_mulf_183 + memref_load_187); 
          int arith_addi_189 = (for_iter_110 + arith_const_11); 
          int arith_muli_190 = (for_iter_145 * arith_const_7); 
          int arith_addi_191 = (arith_muli_190 + arith_const_10); 
          func_arg_2[arith_addi_189][arith_addi_191] = arith_addf_188; 
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
  double* u;
  double* v;
  double* p;
  double* q;


  kernel_adi(tsteps, n, u, v, p, q);

}

#pragma pocc-region-end
