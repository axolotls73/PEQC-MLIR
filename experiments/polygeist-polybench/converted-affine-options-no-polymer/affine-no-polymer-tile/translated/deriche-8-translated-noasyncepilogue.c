#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 1; 
  int arith_const_10 = 32; 
  int arith_const_11 = 64; 
  int arith_const_12 = 0; 
  float arith_const_13 = 0.000000; 
  float arith_const_14 = -2.000000; 
  float arith_const_15 = 2.000000; 
  float arith_const_16 = 1.000000; 
  float _17; 
  float* memref_alloca_18; 
  memref_alloca_18[0] = _17; 
  float* memref_alloca_19; 
  memref_alloca_19[0] = _17; 
  float* memref_alloca_20; 
  memref_alloca_20[0] = _17; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _17; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _17; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _17; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _17; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _17; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _17; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _17; 
  float arith_negf_28 = -(func_arg_2); 
  float math_exp_29 = exp(arith_negf_28); 
  float arith_subf_30 = (arith_const_16 - math_exp_29); 
  float arith_mulf_31 = (arith_subf_30 * arith_subf_30); 
  float arith_mulf_32 = (func_arg_2 * math_exp_29); 
  float arith_mulf_33 = (arith_mulf_32 * arith_const_15); 
  float arith_addf_34 = (arith_mulf_33 + arith_const_16); 
  float arith_mulf_35 = (func_arg_2 * arith_const_15); 
  float math_exp_36 = exp(arith_mulf_35); 
  float arith_subf_37 = (arith_addf_34 - math_exp_36); 
  float arith_divf_38 = (arith_mulf_31 / arith_subf_37); 
  float arith_mulf_39 = (arith_divf_38 * math_exp_29); 
  float arith_subf_40 = (func_arg_2 - arith_const_16); 
  float arith_mulf_41 = (arith_mulf_39 * arith_subf_40); 
  float arith_addf_42 = (func_arg_2 + arith_const_16); 
  float arith_mulf_43 = (arith_mulf_39 * arith_addf_42); 
  float arith_negf_44 = -(arith_divf_38); 
  float arith_mulf_45 = (func_arg_2 * arith_const_14); 
  float math_exp_46 = exp(arith_mulf_45); 
  float arith_mulf_47 = (arith_negf_44 * math_exp_46); 
  float math_powf_48 = pow(arith_const_15, arith_negf_28); 
  float arith_negf_49 = -(math_exp_46); 
  for (int for_iter_50 = arith_const_12; for_iter_50 < arith_const_11; for_iter_50 += arith_const_10) {
    int arith_addi_51 = (for_iter_50 + arith_const_10); 
    for (int for_iter_52 = for_iter_50; for_iter_52 < arith_addi_51; for_iter_52 += arith_const_9) {
      memref_alloca_25[0] = arith_const_13; 
      memref_alloca_24[0] = arith_const_13; 
      memref_alloca_27[0] = arith_const_13; 
      for (int for_iter_53 = arith_const_12; for_iter_53 < arith_const_11; for_iter_53 += arith_const_9) {
        float memref_load_54 = func_arg_3[for_iter_52][for_iter_53]; 
        float arith_mulf_55 = (arith_divf_38 * memref_load_54); 
        float memref_load_56 = memref_alloca_27[0]; 
        float arith_mulf_57 = (arith_mulf_41 * memref_load_56); 
        float arith_addf_58 = (arith_mulf_55 + arith_mulf_57); 
        float memref_load_59 = memref_alloca_25[0]; 
        float arith_mulf_60 = (math_powf_48 * memref_load_59); 
        float arith_addf_61 = (arith_addf_58 + arith_mulf_60); 
        float memref_load_62 = memref_alloca_24[0]; 
        float arith_mulf_63 = (arith_negf_49 * memref_load_62); 
        float arith_addf_64 = (arith_addf_61 + arith_mulf_63); 
        func_arg_5[for_iter_52][for_iter_53] = arith_addf_64; 
        float memref_load_65 = func_arg_3[for_iter_52][for_iter_53]; 
        memref_alloca_27[0] = memref_load_65; 
        memref_alloca_24[0] = memref_load_59; 
        float memref_load_66 = func_arg_5[for_iter_52][for_iter_53]; 
        memref_alloca_25[0] = memref_load_66; 
      }
    }
  }
  for (int for_iter_67 = arith_const_12; for_iter_67 < arith_const_11; for_iter_67 += arith_const_10) {
    int arith_addi_68 = (for_iter_67 + arith_const_10); 
    for (int for_iter_69 = for_iter_67; for_iter_69 < arith_addi_68; for_iter_69 += arith_const_9) {
      memref_alloca_19[0] = arith_const_13; 
      memref_alloca_18[0] = arith_const_13; 
      memref_alloca_23[0] = arith_const_13; 
      memref_alloca_22[0] = arith_const_13; 
      for (int for_iter_70 = arith_const_12; for_iter_70 < arith_const_11; for_iter_70 += arith_const_9) {
        float memref_load_71 = memref_alloca_23[0]; 
        float arith_mulf_72 = (arith_mulf_43 * memref_load_71); 
        float memref_load_73 = memref_alloca_22[0]; 
        float arith_mulf_74 = (arith_mulf_47 * memref_load_73); 
        float arith_addf_75 = (arith_mulf_72 + arith_mulf_74); 
        float memref_load_76 = memref_alloca_19[0]; 
        float arith_mulf_77 = (math_powf_48 * memref_load_76); 
        float arith_addf_78 = (arith_addf_75 + arith_mulf_77); 
        float memref_load_79 = memref_alloca_18[0]; 
        float arith_mulf_80 = (arith_negf_49 * memref_load_79); 
        float arith_addf_81 = (arith_addf_78 + arith_mulf_80); 
        int arith_muli_82 = (for_iter_70 * arith_const_8); 
        int arith_addi_83 = (arith_muli_82 + arith_const_7); 
        func_arg_6[for_iter_69][arith_addi_83] = arith_addf_81; 
        memref_alloca_22[0] = memref_load_71; 
        int arith_muli_84 = (for_iter_70 * arith_const_8); 
        int arith_addi_85 = (arith_muli_84 + arith_const_7); 
        float memref_load_86 = func_arg_3[for_iter_69][arith_addi_85]; 
        memref_alloca_23[0] = memref_load_86; 
        memref_alloca_18[0] = memref_load_76; 
        int arith_muli_87 = (for_iter_70 * arith_const_8); 
        int arith_addi_88 = (arith_muli_87 + arith_const_7); 
        float memref_load_89 = func_arg_6[for_iter_69][arith_addi_88]; 
        memref_alloca_19[0] = memref_load_89; 
      }
    }
  }
  for (int for_iter_90 = arith_const_12; for_iter_90 < arith_const_11; for_iter_90 += arith_const_10) {
    for (int for_iter_91 = arith_const_12; for_iter_91 < arith_const_11; for_iter_91 += arith_const_10) {
      int arith_addi_92 = (for_iter_90 + arith_const_10); 
      for (int for_iter_93 = for_iter_90; for_iter_93 < arith_addi_92; for_iter_93 += arith_const_9) {
        int arith_addi_94 = (for_iter_91 + arith_const_10); 
        for (int for_iter_95 = for_iter_91; for_iter_95 < arith_addi_94; for_iter_95 += arith_const_9) {
          float memref_load_96 = func_arg_5[for_iter_93][for_iter_95]; 
          float memref_load_97 = func_arg_6[for_iter_93][for_iter_95]; 
          float arith_addf_98 = (memref_load_96 + memref_load_97); 
          func_arg_4[for_iter_93][for_iter_95] = arith_addf_98; 
        }
      }
    }
  }
  for (int for_iter_99 = arith_const_12; for_iter_99 < arith_const_11; for_iter_99 += arith_const_10) {
    int arith_addi_100 = (for_iter_99 + arith_const_10); 
    for (int for_iter_101 = for_iter_99; for_iter_101 < arith_addi_100; for_iter_101 += arith_const_9) {
      memref_alloca_26[0] = arith_const_13; 
      memref_alloca_25[0] = arith_const_13; 
      memref_alloca_24[0] = arith_const_13; 
      for (int for_iter_102 = arith_const_12; for_iter_102 < arith_const_11; for_iter_102 += arith_const_9) {
        float memref_load_103 = func_arg_4[for_iter_102][for_iter_101]; 
        float arith_mulf_104 = (arith_divf_38 * memref_load_103); 
        float memref_load_105 = memref_alloca_26[0]; 
        float arith_mulf_106 = (arith_mulf_41 * memref_load_105); 
        float arith_addf_107 = (arith_mulf_104 + arith_mulf_106); 
        float memref_load_108 = memref_alloca_25[0]; 
        float arith_mulf_109 = (math_powf_48 * memref_load_108); 
        float arith_addf_110 = (arith_addf_107 + arith_mulf_109); 
        float memref_load_111 = memref_alloca_24[0]; 
        float arith_mulf_112 = (arith_negf_49 * memref_load_111); 
        float arith_addf_113 = (arith_addf_110 + arith_mulf_112); 
        func_arg_5[for_iter_102][for_iter_101] = arith_addf_113; 
        float memref_load_114 = func_arg_4[for_iter_102][for_iter_101]; 
        memref_alloca_26[0] = memref_load_114; 
        memref_alloca_24[0] = memref_load_108; 
        float memref_load_115 = func_arg_5[for_iter_102][for_iter_101]; 
        memref_alloca_25[0] = memref_load_115; 
      }
    }
  }
  for (int for_iter_116 = arith_const_12; for_iter_116 < arith_const_11; for_iter_116 += arith_const_10) {
    int arith_addi_117 = (for_iter_116 + arith_const_10); 
    for (int for_iter_118 = for_iter_116; for_iter_118 < arith_addi_117; for_iter_118 += arith_const_9) {
      memref_alloca_21[0] = arith_const_13; 
      memref_alloca_20[0] = arith_const_13; 
      memref_alloca_19[0] = arith_const_13; 
      memref_alloca_18[0] = arith_const_13; 
      for (int for_iter_119 = arith_const_12; for_iter_119 < arith_const_11; for_iter_119 += arith_const_9) {
        float memref_load_120 = memref_alloca_21[0]; 
        float arith_mulf_121 = (arith_mulf_43 * memref_load_120); 
        float memref_load_122 = memref_alloca_20[0]; 
        float arith_mulf_123 = (arith_mulf_47 * memref_load_122); 
        float arith_addf_124 = (arith_mulf_121 + arith_mulf_123); 
        float memref_load_125 = memref_alloca_19[0]; 
        float arith_mulf_126 = (math_powf_48 * memref_load_125); 
        float arith_addf_127 = (arith_addf_124 + arith_mulf_126); 
        float memref_load_128 = memref_alloca_18[0]; 
        float arith_mulf_129 = (arith_negf_49 * memref_load_128); 
        float arith_addf_130 = (arith_addf_127 + arith_mulf_129); 
        int arith_muli_131 = (for_iter_119 * arith_const_8); 
        int arith_addi_132 = (arith_muli_131 + arith_const_7); 
        func_arg_6[arith_addi_132][for_iter_118] = arith_addf_130; 
        memref_alloca_20[0] = memref_load_120; 
        int arith_muli_133 = (for_iter_119 * arith_const_8); 
        int arith_addi_134 = (arith_muli_133 + arith_const_7); 
        float memref_load_135 = func_arg_4[arith_addi_134][for_iter_118]; 
        memref_alloca_21[0] = memref_load_135; 
        memref_alloca_18[0] = memref_load_125; 
        int arith_muli_136 = (for_iter_119 * arith_const_8); 
        int arith_addi_137 = (arith_muli_136 + arith_const_7); 
        float memref_load_138 = func_arg_6[arith_addi_137][for_iter_118]; 
        memref_alloca_19[0] = memref_load_138; 
      }
    }
  }
  for (int for_iter_139 = arith_const_12; for_iter_139 < arith_const_11; for_iter_139 += arith_const_10) {
    for (int for_iter_140 = arith_const_12; for_iter_140 < arith_const_11; for_iter_140 += arith_const_10) {
      int arith_addi_141 = (for_iter_139 + arith_const_10); 
      for (int for_iter_142 = for_iter_139; for_iter_142 < arith_addi_141; for_iter_142 += arith_const_9) {
        int arith_addi_143 = (for_iter_140 + arith_const_10); 
        for (int for_iter_144 = for_iter_140; for_iter_144 < arith_addi_143; for_iter_144 += arith_const_9) {
          float memref_load_145 = func_arg_5[for_iter_142][for_iter_144]; 
          float memref_load_146 = func_arg_6[for_iter_142][for_iter_144]; 
          float arith_addf_147 = (memref_load_145 + memref_load_146); 
          func_arg_4[for_iter_142][for_iter_144] = arith_addf_147; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int w;
  int h;
  float alpha;
  float* imgIn;
  float* imgOut;
  float* y1;
  float* y2;


  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);

}

#pragma pocc-region-end
