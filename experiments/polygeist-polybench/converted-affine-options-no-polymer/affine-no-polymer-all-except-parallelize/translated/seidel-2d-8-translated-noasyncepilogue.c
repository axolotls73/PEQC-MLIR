#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 37; 
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 9; 
  int arith_const_8 = 38; 
  int arith_const_9 = -32; 
  int arith_const_10 = 20; 
  int arith_const_11 = 2; 
  int arith_const_12 = 32; 
  double arith_const_13 = 9.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_14; for_iter_16 < arith_const_15; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_11; for_iter_17 += arith_const_15) {
      int arith_muli_18 = (for_iter_17 * arith_const_12); 
      int arith_addi_19 = (arith_muli_18 + arith_const_15); 
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_10; for_iter_20 += arith_const_15) {
        int arith_muli_21 = (for_iter_17 * arith_const_9); 
        int arith_addi_22 = (arith_muli_21 + arith_const_8); 
        int arith_minsi_23 = min(arith_addi_22, arith_const_12); 
        for (int for_iter_24 = arith_const_14; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_15) {
          int arith_addi_25 = (arith_addi_19 + for_iter_24); 
          for (int for_iter_26 = arith_const_14; for_iter_26 < arith_const_7; for_iter_26 += arith_const_15) {
            int arith_muli_27 = (for_iter_26 * arith_const_6); 
            int arith_addi_28 = (arith_muli_27 + arith_const_15); 
            int arith_addi_29 = (arith_addi_25 + arith_const_5); 
            int arith_addi_30 = (arith_addi_28 + arith_const_5); 
            double memref_load_31 = func_arg_2[arith_addi_29][arith_addi_30]; 
            int arith_addi_32 = (arith_addi_25 + arith_const_5); 
            double memref_load_33 = func_arg_2[arith_addi_32][arith_addi_28]; 
            double arith_addf_34 = (memref_load_31 + memref_load_33); 
            int arith_addi_35 = (arith_addi_25 + arith_const_5); 
            int arith_addi_36 = (arith_addi_28 + arith_const_15); 
            double memref_load_37 = func_arg_2[arith_addi_35][arith_addi_36]; 
            double arith_addf_38 = (arith_addf_34 + memref_load_37); 
            int arith_addi_39 = (arith_addi_28 + arith_const_5); 
            double memref_load_40 = func_arg_2[arith_addi_25][arith_addi_39]; 
            double arith_addf_41 = (arith_addf_38 + memref_load_40); 
            double memref_load_42 = func_arg_2[arith_addi_25][arith_addi_28]; 
            double arith_addf_43 = (arith_addf_41 + memref_load_42); 
            int arith_addi_44 = (arith_addi_28 + arith_const_15); 
            double memref_load_45 = func_arg_2[arith_addi_25][arith_addi_44]; 
            double arith_addf_46 = (arith_addf_43 + memref_load_45); 
            int arith_addi_47 = (arith_addi_25 + arith_const_15); 
            int arith_addi_48 = (arith_addi_28 + arith_const_5); 
            double memref_load_49 = func_arg_2[arith_addi_47][arith_addi_48]; 
            double arith_addf_50 = (arith_addf_46 + memref_load_49); 
            int arith_addi_51 = (arith_addi_25 + arith_const_15); 
            double memref_load_52 = func_arg_2[arith_addi_51][arith_addi_28]; 
            double arith_addf_53 = (arith_addf_50 + memref_load_52); 
            int arith_addi_54 = (arith_addi_25 + arith_const_15); 
            int arith_addi_55 = (arith_addi_28 + arith_const_15); 
            double memref_load_56 = func_arg_2[arith_addi_54][arith_addi_55]; 
            double arith_addf_57 = (arith_addf_53 + memref_load_56); 
            double arith_divf_58 = (arith_addf_57 / arith_const_13); 
            func_arg_2[arith_addi_25][arith_addi_28] = arith_divf_58; 
            int arith_addi_59 = (arith_addi_28 + arith_const_15); 
            int arith_addi_60 = (arith_addi_25 + arith_const_5); 
            int arith_addi_61 = (arith_addi_59 + arith_const_5); 
            double memref_load_62 = func_arg_2[arith_addi_60][arith_addi_61]; 
            int arith_addi_63 = (arith_addi_25 + arith_const_5); 
            double memref_load_64 = func_arg_2[arith_addi_63][arith_addi_59]; 
            double arith_addf_65 = (memref_load_62 + memref_load_64); 
            int arith_addi_66 = (arith_addi_25 + arith_const_5); 
            int arith_addi_67 = (arith_addi_59 + arith_const_15); 
            double memref_load_68 = func_arg_2[arith_addi_66][arith_addi_67]; 
            double arith_addf_69 = (arith_addf_65 + memref_load_68); 
            int arith_addi_70 = (arith_addi_59 + arith_const_5); 
            double memref_load_71 = func_arg_2[arith_addi_25][arith_addi_70]; 
            double arith_addf_72 = (arith_addf_69 + memref_load_71); 
            double memref_load_73 = func_arg_2[arith_addi_25][arith_addi_59]; 
            double arith_addf_74 = (arith_addf_72 + memref_load_73); 
            int arith_addi_75 = (arith_addi_59 + arith_const_15); 
            double memref_load_76 = func_arg_2[arith_addi_25][arith_addi_75]; 
            double arith_addf_77 = (arith_addf_74 + memref_load_76); 
            int arith_addi_78 = (arith_addi_25 + arith_const_15); 
            int arith_addi_79 = (arith_addi_59 + arith_const_5); 
            double memref_load_80 = func_arg_2[arith_addi_78][arith_addi_79]; 
            double arith_addf_81 = (arith_addf_77 + memref_load_80); 
            int arith_addi_82 = (arith_addi_25 + arith_const_15); 
            double memref_load_83 = func_arg_2[arith_addi_82][arith_addi_59]; 
            double arith_addf_84 = (arith_addf_81 + memref_load_83); 
            int arith_addi_85 = (arith_addi_25 + arith_const_15); 
            int arith_addi_86 = (arith_addi_59 + arith_const_15); 
            double memref_load_87 = func_arg_2[arith_addi_85][arith_addi_86]; 
            double arith_addf_88 = (arith_addf_84 + memref_load_87); 
            double arith_divf_89 = (arith_addf_88 / arith_const_13); 
            func_arg_2[arith_addi_25][arith_addi_59] = arith_divf_89; 
            int arith_addi_90 = (arith_addi_28 + arith_const_11); 
            int arith_addi_91 = (arith_addi_25 + arith_const_5); 
            int arith_addi_92 = (arith_addi_90 + arith_const_5); 
            double memref_load_93 = func_arg_2[arith_addi_91][arith_addi_92]; 
            int arith_addi_94 = (arith_addi_25 + arith_const_5); 
            double memref_load_95 = func_arg_2[arith_addi_94][arith_addi_90]; 
            double arith_addf_96 = (memref_load_93 + memref_load_95); 
            int arith_addi_97 = (arith_addi_25 + arith_const_5); 
            int arith_addi_98 = (arith_addi_90 + arith_const_15); 
            double memref_load_99 = func_arg_2[arith_addi_97][arith_addi_98]; 
            double arith_addf_100 = (arith_addf_96 + memref_load_99); 
            int arith_addi_101 = (arith_addi_90 + arith_const_5); 
            double memref_load_102 = func_arg_2[arith_addi_25][arith_addi_101]; 
            double arith_addf_103 = (arith_addf_100 + memref_load_102); 
            double memref_load_104 = func_arg_2[arith_addi_25][arith_addi_90]; 
            double arith_addf_105 = (arith_addf_103 + memref_load_104); 
            int arith_addi_106 = (arith_addi_90 + arith_const_15); 
            double memref_load_107 = func_arg_2[arith_addi_25][arith_addi_106]; 
            double arith_addf_108 = (arith_addf_105 + memref_load_107); 
            int arith_addi_109 = (arith_addi_25 + arith_const_15); 
            int arith_addi_110 = (arith_addi_90 + arith_const_5); 
            double memref_load_111 = func_arg_2[arith_addi_109][arith_addi_110]; 
            double arith_addf_112 = (arith_addf_108 + memref_load_111); 
            int arith_addi_113 = (arith_addi_25 + arith_const_15); 
            double memref_load_114 = func_arg_2[arith_addi_113][arith_addi_90]; 
            double arith_addf_115 = (arith_addf_112 + memref_load_114); 
            int arith_addi_116 = (arith_addi_25 + arith_const_15); 
            int arith_addi_117 = (arith_addi_90 + arith_const_15); 
            double memref_load_118 = func_arg_2[arith_addi_116][arith_addi_117]; 
            double arith_addf_119 = (arith_addf_115 + memref_load_118); 
            double arith_divf_120 = (arith_addf_119 / arith_const_13); 
            func_arg_2[arith_addi_25][arith_addi_90] = arith_divf_120; 
            int arith_addi_121 = (arith_addi_28 + arith_const_4); 
            int arith_addi_122 = (arith_addi_25 + arith_const_5); 
            int arith_addi_123 = (arith_addi_121 + arith_const_5); 
            double memref_load_124 = func_arg_2[arith_addi_122][arith_addi_123]; 
            int arith_addi_125 = (arith_addi_25 + arith_const_5); 
            double memref_load_126 = func_arg_2[arith_addi_125][arith_addi_121]; 
            double arith_addf_127 = (memref_load_124 + memref_load_126); 
            int arith_addi_128 = (arith_addi_25 + arith_const_5); 
            int arith_addi_129 = (arith_addi_121 + arith_const_15); 
            double memref_load_130 = func_arg_2[arith_addi_128][arith_addi_129]; 
            double arith_addf_131 = (arith_addf_127 + memref_load_130); 
            int arith_addi_132 = (arith_addi_121 + arith_const_5); 
            double memref_load_133 = func_arg_2[arith_addi_25][arith_addi_132]; 
            double arith_addf_134 = (arith_addf_131 + memref_load_133); 
            double memref_load_135 = func_arg_2[arith_addi_25][arith_addi_121]; 
            double arith_addf_136 = (arith_addf_134 + memref_load_135); 
            int arith_addi_137 = (arith_addi_121 + arith_const_15); 
            double memref_load_138 = func_arg_2[arith_addi_25][arith_addi_137]; 
            double arith_addf_139 = (arith_addf_136 + memref_load_138); 
            int arith_addi_140 = (arith_addi_25 + arith_const_15); 
            int arith_addi_141 = (arith_addi_121 + arith_const_5); 
            double memref_load_142 = func_arg_2[arith_addi_140][arith_addi_141]; 
            double arith_addf_143 = (arith_addf_139 + memref_load_142); 
            int arith_addi_144 = (arith_addi_25 + arith_const_15); 
            double memref_load_145 = func_arg_2[arith_addi_144][arith_addi_121]; 
            double arith_addf_146 = (arith_addf_143 + memref_load_145); 
            int arith_addi_147 = (arith_addi_25 + arith_const_15); 
            int arith_addi_148 = (arith_addi_121 + arith_const_15); 
            double memref_load_149 = func_arg_2[arith_addi_147][arith_addi_148]; 
            double arith_addf_150 = (arith_addf_146 + memref_load_149); 
            double arith_divf_151 = (arith_addf_150 / arith_const_13); 
            func_arg_2[arith_addi_25][arith_addi_121] = arith_divf_151; 
          }
          for (int for_iter_152 = arith_const_14; for_iter_152 < arith_const_11; for_iter_152 += arith_const_15) {
            int arith_addi_153 = (for_iter_152 + arith_const_3); 
            int arith_addi_154 = (arith_addi_25 + arith_const_5); 
            int arith_addi_155 = (arith_addi_153 + arith_const_5); 
            double memref_load_156 = func_arg_2[arith_addi_154][arith_addi_155]; 
            int arith_addi_157 = (arith_addi_25 + arith_const_5); 
            double memref_load_158 = func_arg_2[arith_addi_157][arith_addi_153]; 
            double arith_addf_159 = (memref_load_156 + memref_load_158); 
            int arith_addi_160 = (arith_addi_25 + arith_const_5); 
            int arith_addi_161 = (arith_addi_153 + arith_const_15); 
            double memref_load_162 = func_arg_2[arith_addi_160][arith_addi_161]; 
            double arith_addf_163 = (arith_addf_159 + memref_load_162); 
            int arith_addi_164 = (arith_addi_153 + arith_const_5); 
            double memref_load_165 = func_arg_2[arith_addi_25][arith_addi_164]; 
            double arith_addf_166 = (arith_addf_163 + memref_load_165); 
            double memref_load_167 = func_arg_2[arith_addi_25][arith_addi_153]; 
            double arith_addf_168 = (arith_addf_166 + memref_load_167); 
            int arith_addi_169 = (arith_addi_153 + arith_const_15); 
            double memref_load_170 = func_arg_2[arith_addi_25][arith_addi_169]; 
            double arith_addf_171 = (arith_addf_168 + memref_load_170); 
            int arith_addi_172 = (arith_addi_25 + arith_const_15); 
            int arith_addi_173 = (arith_addi_153 + arith_const_5); 
            double memref_load_174 = func_arg_2[arith_addi_172][arith_addi_173]; 
            double arith_addf_175 = (arith_addf_171 + memref_load_174); 
            int arith_addi_176 = (arith_addi_25 + arith_const_15); 
            double memref_load_177 = func_arg_2[arith_addi_176][arith_addi_153]; 
            double arith_addf_178 = (arith_addf_175 + memref_load_177); 
            int arith_addi_179 = (arith_addi_25 + arith_const_15); 
            int arith_addi_180 = (arith_addi_153 + arith_const_15); 
            double memref_load_181 = func_arg_2[arith_addi_179][arith_addi_180]; 
            double arith_addf_182 = (arith_addf_178 + memref_load_181); 
            double arith_divf_183 = (arith_addf_182 / arith_const_13); 
            func_arg_2[arith_addi_25][arith_addi_153] = arith_divf_183; 
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
