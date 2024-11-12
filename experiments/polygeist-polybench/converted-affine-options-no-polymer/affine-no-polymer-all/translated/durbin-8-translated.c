#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -4; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 1; 
  int arith_const_9 = 39; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 1.000000; 
  double* memref_alloca_13; 
  double _14; 
  memref_alloca_13[0] = _14; 
  double* memref_alloca_15; 
  memref_alloca_15[0] = _14; 
  double* memref_alloca_16; 
  memref_alloca_16[0] = _14; 
  double* memref_alloca_17; 
  double memref_load_18 = func_arg_1[arith_const_10]; 
  double arith_negf_19 = -(memref_load_18); 
  func_arg_2[arith_const_10] = arith_negf_19; 
  memref_alloca_15[0] = arith_const_12; 
  double memref_load_20 = func_arg_1[arith_const_10]; 
  double arith_negf_21 = -(memref_load_20); 
  memref_alloca_16[0] = arith_negf_21; 
  for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_9; for_iter_22 += arith_const_8) {
    int arith_addi_23 = (for_iter_22 + arith_const_8); 
    int* async_group_24; 
    int async_group_index_25 = 0; 
    int for_iter_arg_27 = arith_const_10; 
    for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_8; for_iter_26 += arith_const_8) {
      PAST_NEW_SEMAPHORE(execute_token_28); 
      #pragma peqc async_execute
      {
        int arith_addi_29 = (arith_addi_23 + for_iter_26); 
        double memref_load_30 = memref_alloca_16[0]; 
        double arith_mulf_31 = (memref_load_30 * memref_load_30); 
        double arith_subf_32 = (arith_const_12 - arith_mulf_31); 
        double memref_load_33 = memref_alloca_15[0]; 
        double arith_mulf_34 = (arith_subf_32 * memref_load_33); 
        memref_alloca_15[0] = arith_mulf_34; 
        memref_alloca_13[0] = arith_const_11; 
        int arith_addi_35 = (for_iter_26 + for_iter_22); 
        int arith_addi_36 = (arith_addi_35 + arith_const_8); 
        int arith_cmpi_37 = (arith_addi_36 < arith_const_10); 
        int arith_subi_38 = (arith_const_6 - arith_addi_36); 
        int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
        int arith_divi_40 = (arith_select_39 / arith_const_7); 
        int arith_subi_41 = (arith_const_6 - arith_divi_40); 
        int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
        for (int for_iter_43 = arith_const_10; for_iter_43 < arith_select_42; for_iter_43 += arith_const_8) {
          int arith_muli_44 = (for_iter_43 * arith_const_7); 
          int arith_muli_45 = (arith_muli_44 * arith_const_6); 
          int arith_addi_46 = (arith_addi_29 + arith_muli_45); 
          int arith_addi_47 = (arith_addi_46 + arith_const_6); 
          double memref_load_48 = func_arg_1[arith_addi_47]; 
          double memref_load_49 = func_arg_2[arith_muli_44]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double memref_load_51 = memref_alloca_13[0]; 
          double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
          memref_alloca_13[0] = arith_addf_52; 
          int arith_addi_53 = (arith_muli_44 + arith_const_8); 
          int arith_muli_54 = (arith_addi_53 * arith_const_6); 
          int arith_addi_55 = (arith_addi_29 + arith_muli_54); 
          int arith_addi_56 = (arith_addi_55 + arith_const_6); 
          double memref_load_57 = func_arg_1[arith_addi_56]; 
          double memref_load_58 = func_arg_2[arith_addi_53]; 
          double arith_mulf_59 = (memref_load_57 * memref_load_58); 
          double memref_load_60 = memref_alloca_13[0]; 
          double arith_addf_61 = (memref_load_60 + arith_mulf_59); 
          memref_alloca_13[0] = arith_addf_61; 
          int arith_addi_62 = (arith_muli_44 + arith_const_5); 
          int arith_muli_63 = (arith_addi_62 * arith_const_6); 
          int arith_addi_64 = (arith_addi_29 + arith_muli_63); 
          int arith_addi_65 = (arith_addi_64 + arith_const_6); 
          double memref_load_66 = func_arg_1[arith_addi_65]; 
          double memref_load_67 = func_arg_2[arith_addi_62]; 
          double arith_mulf_68 = (memref_load_66 * memref_load_67); 
          double memref_load_69 = memref_alloca_13[0]; 
          double arith_addf_70 = (memref_load_69 + arith_mulf_68); 
          memref_alloca_13[0] = arith_addf_70; 
          int arith_addi_71 = (arith_muli_44 + arith_const_4); 
          int arith_muli_72 = (arith_addi_71 * arith_const_6); 
          int arith_addi_73 = (arith_addi_29 + arith_muli_72); 
          int arith_addi_74 = (arith_addi_73 + arith_const_6); 
          double memref_load_75 = func_arg_1[arith_addi_74]; 
          double memref_load_76 = func_arg_2[arith_addi_71]; 
          double arith_mulf_77 = (memref_load_75 * memref_load_76); 
          double memref_load_78 = memref_alloca_13[0]; 
          double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
          memref_alloca_13[0] = arith_addf_79; 
        }
        int arith_addi_80 = (for_iter_26 + for_iter_22); 
        int arith_addi_81 = (for_iter_26 + for_iter_22); 
        int arith_addi_82 = (arith_addi_81 + arith_const_8); 
        int arith_cmpi_83 = (arith_addi_82 < arith_const_10); 
        int arith_subi_84 = (arith_const_6 - arith_addi_82); 
        int arith_select_85 = (arith_cmpi_83 ? arith_subi_84 : arith_addi_82); 
        int arith_divi_86 = (arith_select_85 / arith_const_7); 
        int arith_subi_87 = (arith_const_6 - arith_divi_86); 
        int arith_select_88 = (arith_cmpi_83 ? arith_subi_87 : arith_divi_86); 
        int arith_muli_89 = (arith_select_88 * arith_const_3); 
        int arith_addi_90 = (arith_addi_80 + arith_muli_89); 
        int arith_addi_91 = (arith_addi_90 + arith_const_8); 
        for (int for_iter_92 = arith_const_10; for_iter_92 < arith_addi_91; for_iter_92 += arith_const_8) {
          int arith_cmpi_93 = (arith_addi_29 < arith_const_10); 
          int arith_subi_94 = (arith_const_6 - arith_addi_29); 
          int arith_select_95 = (arith_cmpi_93 ? arith_subi_94 : arith_addi_29); 
          int arith_divi_96 = (arith_select_95 / arith_const_7); 
          int arith_subi_97 = (arith_const_6 - arith_divi_96); 
          int arith_select_98 = (arith_cmpi_93 ? arith_subi_97 : arith_divi_96); 
          int arith_muli_99 = (arith_select_98 * arith_const_7); 
          int arith_addi_100 = (for_iter_92 + arith_muli_99); 
          int arith_muli_101 = (arith_addi_100 * arith_const_6); 
          int arith_addi_102 = (arith_addi_29 + arith_muli_101); 
          int arith_addi_103 = (arith_addi_102 + arith_const_6); 
          double memref_load_104 = func_arg_1[arith_addi_103]; 
          double memref_load_105 = func_arg_2[arith_addi_100]; 
          double arith_mulf_106 = (memref_load_104 * memref_load_105); 
          double memref_load_107 = memref_alloca_13[0]; 
          double arith_addf_108 = (memref_load_107 + arith_mulf_106); 
          memref_alloca_13[0] = arith_addf_108; 
        }
        double memref_load_109 = func_arg_1[arith_addi_29]; 
        double memref_load_110 = memref_alloca_13[0]; 
        double arith_addf_111 = (memref_load_109 + memref_load_110); 
        double arith_negf_112 = -(arith_addf_111); 
        double arith_divf_113 = (arith_negf_112 / arith_mulf_34); 
        memref_alloca_16[0] = arith_divf_113; 
        int arith_addi_114 = (for_iter_26 + for_iter_22); 
        int arith_addi_115 = (arith_addi_114 + arith_const_8); 
        int arith_cmpi_116 = (arith_addi_115 < arith_const_10); 
        int arith_subi_117 = (arith_const_6 - arith_addi_115); 
        int arith_select_118 = (arith_cmpi_116 ? arith_subi_117 : arith_addi_115); 
        int arith_divi_119 = (arith_select_118 / arith_const_7); 
        int arith_subi_120 = (arith_const_6 - arith_divi_119); 
        int arith_select_121 = (arith_cmpi_116 ? arith_subi_120 : arith_divi_119); 
        for (int for_iter_122 = arith_const_10; for_iter_122 < arith_select_121; for_iter_122 += arith_const_8) {
          int arith_muli_123 = (for_iter_122 * arith_const_7); 
          double memref_load_124 = func_arg_2[arith_muli_123]; 
          int arith_muli_125 = (arith_muli_123 * arith_const_6); 
          int arith_addi_126 = (arith_addi_29 + arith_muli_125); 
          int arith_addi_127 = (arith_addi_126 + arith_const_6); 
          double memref_load_128 = func_arg_2[arith_addi_127]; 
          double arith_mulf_129 = (arith_divf_113 * memref_load_128); 
          double arith_addf_130 = (memref_load_124 + arith_mulf_129); 
          memref_alloca_17[arith_muli_123] = arith_addf_130; 
          int arith_addi_131 = (arith_muli_123 + arith_const_8); 
          double memref_load_132 = func_arg_2[arith_addi_131]; 
          int arith_muli_133 = (arith_addi_131 * arith_const_6); 
          int arith_addi_134 = (arith_addi_29 + arith_muli_133); 
          int arith_addi_135 = (arith_addi_134 + arith_const_6); 
          double memref_load_136 = func_arg_2[arith_addi_135]; 
          double arith_mulf_137 = (arith_divf_113 * memref_load_136); 
          double arith_addf_138 = (memref_load_132 + arith_mulf_137); 
          memref_alloca_17[arith_addi_131] = arith_addf_138; 
          int arith_addi_139 = (arith_muli_123 + arith_const_5); 
          double memref_load_140 = func_arg_2[arith_addi_139]; 
          int arith_muli_141 = (arith_addi_139 * arith_const_6); 
          int arith_addi_142 = (arith_addi_29 + arith_muli_141); 
          int arith_addi_143 = (arith_addi_142 + arith_const_6); 
          double memref_load_144 = func_arg_2[arith_addi_143]; 
          double arith_mulf_145 = (arith_divf_113 * memref_load_144); 
          double arith_addf_146 = (memref_load_140 + arith_mulf_145); 
          memref_alloca_17[arith_addi_139] = arith_addf_146; 
          int arith_addi_147 = (arith_muli_123 + arith_const_4); 
          double memref_load_148 = func_arg_2[arith_addi_147]; 
          int arith_muli_149 = (arith_addi_147 * arith_const_6); 
          int arith_addi_150 = (arith_addi_29 + arith_muli_149); 
          int arith_addi_151 = (arith_addi_150 + arith_const_6); 
          double memref_load_152 = func_arg_2[arith_addi_151]; 
          double arith_mulf_153 = (arith_divf_113 * memref_load_152); 
          double arith_addf_154 = (memref_load_148 + arith_mulf_153); 
          memref_alloca_17[arith_addi_147] = arith_addf_154; 
        }
        int arith_addi_155 = (for_iter_26 + for_iter_22); 
        int arith_addi_156 = (for_iter_26 + for_iter_22); 
        int arith_addi_157 = (arith_addi_156 + arith_const_8); 
        int arith_cmpi_158 = (arith_addi_157 < arith_const_10); 
        int arith_subi_159 = (arith_const_6 - arith_addi_157); 
        int arith_select_160 = (arith_cmpi_158 ? arith_subi_159 : arith_addi_157); 
        int arith_divi_161 = (arith_select_160 / arith_const_7); 
        int arith_subi_162 = (arith_const_6 - arith_divi_161); 
        int arith_select_163 = (arith_cmpi_158 ? arith_subi_162 : arith_divi_161); 
        int arith_muli_164 = (arith_select_163 * arith_const_3); 
        int arith_addi_165 = (arith_addi_155 + arith_muli_164); 
        int arith_addi_166 = (arith_addi_165 + arith_const_8); 
        for (int for_iter_167 = arith_const_10; for_iter_167 < arith_addi_166; for_iter_167 += arith_const_8) {
          int arith_cmpi_168 = (arith_addi_29 < arith_const_10); 
          int arith_subi_169 = (arith_const_6 - arith_addi_29); 
          int arith_select_170 = (arith_cmpi_168 ? arith_subi_169 : arith_addi_29); 
          int arith_divi_171 = (arith_select_170 / arith_const_7); 
          int arith_subi_172 = (arith_const_6 - arith_divi_171); 
          int arith_select_173 = (arith_cmpi_168 ? arith_subi_172 : arith_divi_171); 
          int arith_muli_174 = (arith_select_173 * arith_const_7); 
          int arith_addi_175 = (for_iter_167 + arith_muli_174); 
          double memref_load_176 = func_arg_2[arith_addi_175]; 
          int arith_muli_177 = (arith_addi_175 * arith_const_6); 
          int arith_addi_178 = (arith_addi_29 + arith_muli_177); 
          int arith_addi_179 = (arith_addi_178 + arith_const_6); 
          double memref_load_180 = func_arg_2[arith_addi_179]; 
          double arith_mulf_181 = (arith_divf_113 * memref_load_180); 
          double arith_addf_182 = (memref_load_176 + arith_mulf_181); 
          memref_alloca_17[arith_addi_175] = arith_addf_182; 
        }
        int arith_addi_183 = (for_iter_26 + for_iter_22); 
        int arith_addi_184 = (arith_addi_183 + arith_const_8); 
        int arith_cmpi_185 = (arith_addi_184 < arith_const_10); 
        int arith_subi_186 = (arith_const_6 - arith_addi_184); 
        int arith_select_187 = (arith_cmpi_185 ? arith_subi_186 : arith_addi_184); 
        int arith_divi_188 = (arith_select_187 / arith_const_7); 
        int arith_subi_189 = (arith_const_6 - arith_divi_188); 
        int arith_select_190 = (arith_cmpi_185 ? arith_subi_189 : arith_divi_188); 
        for (int for_iter_191 = arith_const_10; for_iter_191 < arith_select_190; for_iter_191 += arith_const_8) {
          int arith_muli_192 = (for_iter_191 * arith_const_7); 
          double memref_load_193 = memref_alloca_17[arith_muli_192]; 
          func_arg_2[arith_muli_192] = memref_load_193; 
          int arith_addi_194 = (arith_muli_192 + arith_const_8); 
          double memref_load_195 = memref_alloca_17[arith_addi_194]; 
          func_arg_2[arith_addi_194] = memref_load_195; 
          int arith_addi_196 = (arith_muli_192 + arith_const_5); 
          double memref_load_197 = memref_alloca_17[arith_addi_196]; 
          func_arg_2[arith_addi_196] = memref_load_197; 
          int arith_addi_198 = (arith_muli_192 + arith_const_4); 
          double memref_load_199 = memref_alloca_17[arith_addi_198]; 
          func_arg_2[arith_addi_198] = memref_load_199; 
        }
        int arith_addi_200 = (for_iter_26 + for_iter_22); 
        int arith_addi_201 = (for_iter_26 + for_iter_22); 
        int arith_addi_202 = (arith_addi_201 + arith_const_8); 
        int arith_cmpi_203 = (arith_addi_202 < arith_const_10); 
        int arith_subi_204 = (arith_const_6 - arith_addi_202); 
        int arith_select_205 = (arith_cmpi_203 ? arith_subi_204 : arith_addi_202); 
        int arith_divi_206 = (arith_select_205 / arith_const_7); 
        int arith_subi_207 = (arith_const_6 - arith_divi_206); 
        int arith_select_208 = (arith_cmpi_203 ? arith_subi_207 : arith_divi_206); 
        int arith_muli_209 = (arith_select_208 * arith_const_3); 
        int arith_addi_210 = (arith_addi_200 + arith_muli_209); 
        int arith_addi_211 = (arith_addi_210 + arith_const_8); 
        for (int for_iter_212 = arith_const_10; for_iter_212 < arith_addi_211; for_iter_212 += arith_const_8) {
          int arith_cmpi_213 = (arith_addi_29 < arith_const_10); 
          int arith_subi_214 = (arith_const_6 - arith_addi_29); 
          int arith_select_215 = (arith_cmpi_213 ? arith_subi_214 : arith_addi_29); 
          int arith_divi_216 = (arith_select_215 / arith_const_7); 
          int arith_subi_217 = (arith_const_6 - arith_divi_216); 
          int arith_select_218 = (arith_cmpi_213 ? arith_subi_217 : arith_divi_216); 
          int arith_muli_219 = (arith_select_218 * arith_const_7); 
          int arith_addi_220 = (for_iter_212 + arith_muli_219); 
          double memref_load_221 = memref_alloca_17[arith_addi_220]; 
          func_arg_2[arith_addi_220] = memref_load_221; 
        }
        func_arg_2[arith_addi_29] = arith_divf_113; 
        PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
      }
      async_group_24[async_group_index_25] = execute_token_28; 
      async_group_index_25++; 
      int arith_addi_222 = (for_iter_arg_27 + arith_const_8); 
      for_iter_arg_27 = arith_addi_222; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;

#pragma peqc async_execute
{
  kernel_durbin(n, r, y);
}
}

#pragma pocc-region-end
