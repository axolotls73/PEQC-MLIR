#pragma pocc-region-start
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 1; 
  int arith_const_10 = 64; 
  int arith_const_11 = 0; 
  float arith_const_12 = 0.000000; 
  float arith_const_13 = -2.000000; 
  float arith_const_14 = 2.000000; 
  float arith_const_15 = 1.000000; 
  float _16; 
  float* memref_alloca_17; 
  memref_alloca_17[0] = _16; 
  float* memref_alloca_18; 
  memref_alloca_18[0] = _16; 
  float* memref_alloca_19; 
  memref_alloca_19[0] = _16; 
  float* memref_alloca_20; 
  memref_alloca_20[0] = _16; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _16; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _16; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _16; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _16; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _16; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _16; 
  float arith_negf_27 = -(func_arg_2); 
  float math_exp_28 = exp(arith_negf_27); 
  float arith_subf_29 = (arith_const_15 - math_exp_28); 
  float arith_mulf_30 = (arith_subf_29 * arith_subf_29); 
  float arith_mulf_31 = (func_arg_2 * math_exp_28); 
  float arith_mulf_32 = (arith_mulf_31 * arith_const_14); 
  float arith_addf_33 = (arith_mulf_32 + arith_const_15); 
  float arith_mulf_34 = (func_arg_2 * arith_const_14); 
  float math_exp_35 = exp(arith_mulf_34); 
  float arith_subf_36 = (arith_addf_33 - math_exp_35); 
  float arith_divf_37 = (arith_mulf_30 / arith_subf_36); 
  float arith_mulf_38 = (arith_divf_37 * math_exp_28); 
  float arith_subf_39 = (func_arg_2 - arith_const_15); 
  float arith_mulf_40 = (arith_mulf_38 * arith_subf_39); 
  float arith_addf_41 = (func_arg_2 + arith_const_15); 
  float arith_mulf_42 = (arith_mulf_38 * arith_addf_41); 
  float arith_negf_43 = -(arith_divf_37); 
  float arith_mulf_44 = (func_arg_2 * arith_const_13); 
  float math_exp_45 = exp(arith_mulf_44); 
  float arith_mulf_46 = (arith_negf_43 * math_exp_45); 
  float math_powf_47 = pow(arith_const_14, arith_negf_27); 
  float arith_negf_48 = -(math_exp_45); 
  for (int for_iter_49 = arith_const_11; for_iter_49 < arith_const_10; for_iter_49 += arith_const_9) {
    memref_alloca_24[0] = arith_const_12; 
    memref_alloca_23[0] = arith_const_12; 
    memref_alloca_26[0] = arith_const_12; 
    for (int for_iter_50 = arith_const_11; for_iter_50 < arith_const_10; for_iter_50 += arith_const_9) {
      float memref_load_51 = func_arg_3[for_iter_49][for_iter_50]; 
      float arith_mulf_52 = (arith_divf_37 * memref_load_51); 
      float memref_load_53 = memref_alloca_26[0]; 
      float arith_mulf_54 = (arith_mulf_40 * memref_load_53); 
      float arith_addf_55 = (arith_mulf_52 + arith_mulf_54); 
      float memref_load_56 = memref_alloca_24[0]; 
      float arith_mulf_57 = (math_powf_47 * memref_load_56); 
      float arith_addf_58 = (arith_addf_55 + arith_mulf_57); 
      float memref_load_59 = memref_alloca_23[0]; 
      float arith_mulf_60 = (arith_negf_48 * memref_load_59); 
      float arith_addf_61 = (arith_addf_58 + arith_mulf_60); 
      func_arg_5[for_iter_49][for_iter_50] = arith_addf_61; 
      float memref_load_62 = func_arg_3[for_iter_49][for_iter_50]; 
      memref_alloca_26[0] = memref_load_62; 
      memref_alloca_23[0] = memref_load_56; 
      float memref_load_63 = func_arg_5[for_iter_49][for_iter_50]; 
      memref_alloca_24[0] = memref_load_63; 
    }
  }
  for (int for_iter_64 = arith_const_11; for_iter_64 < arith_const_10; for_iter_64 += arith_const_9) {
    memref_alloca_18[0] = arith_const_12; 
    memref_alloca_17[0] = arith_const_12; 
    memref_alloca_22[0] = arith_const_12; 
    memref_alloca_21[0] = arith_const_12; 
    for (int for_iter_65 = arith_const_11; for_iter_65 < arith_const_10; for_iter_65 += arith_const_9) {
      float memref_load_66 = memref_alloca_22[0]; 
      float arith_mulf_67 = (arith_mulf_42 * memref_load_66); 
      float memref_load_68 = memref_alloca_21[0]; 
      float arith_mulf_69 = (arith_mulf_46 * memref_load_68); 
      float arith_addf_70 = (arith_mulf_67 + arith_mulf_69); 
      float memref_load_71 = memref_alloca_18[0]; 
      float arith_mulf_72 = (math_powf_47 * memref_load_71); 
      float arith_addf_73 = (arith_addf_70 + arith_mulf_72); 
      float memref_load_74 = memref_alloca_17[0]; 
      float arith_mulf_75 = (arith_negf_48 * memref_load_74); 
      float arith_addf_76 = (arith_addf_73 + arith_mulf_75); 
      int arith_muli_77 = (for_iter_65 * arith_const_8); 
      int arith_addi_78 = (arith_muli_77 + arith_const_7); 
      func_arg_6[for_iter_64][arith_addi_78] = arith_addf_76; 
      memref_alloca_21[0] = memref_load_66; 
      int arith_muli_79 = (for_iter_65 * arith_const_8); 
      int arith_addi_80 = (arith_muli_79 + arith_const_7); 
      float memref_load_81 = func_arg_3[for_iter_64][arith_addi_80]; 
      memref_alloca_22[0] = memref_load_81; 
      memref_alloca_17[0] = memref_load_71; 
      int arith_muli_82 = (for_iter_65 * arith_const_8); 
      int arith_addi_83 = (arith_muli_82 + arith_const_7); 
      float memref_load_84 = func_arg_6[for_iter_64][arith_addi_83]; 
      memref_alloca_18[0] = memref_load_84; 
    }
  }
  for (int for_iter_85 = arith_const_11; for_iter_85 < arith_const_10; for_iter_85 += arith_const_9) {
    for (int for_iter_86 = arith_const_11; for_iter_86 < arith_const_10; for_iter_86 += arith_const_9) {
      float memref_load_87 = func_arg_5[for_iter_85][for_iter_86]; 
      float memref_load_88 = func_arg_6[for_iter_85][for_iter_86]; 
      float arith_addf_89 = (memref_load_87 + memref_load_88); 
      func_arg_4[for_iter_85][for_iter_86] = arith_addf_89; 
    }
  }
  for (int for_iter_90 = arith_const_11; for_iter_90 < arith_const_10; for_iter_90 += arith_const_9) {
    memref_alloca_25[0] = arith_const_12; 
    memref_alloca_24[0] = arith_const_12; 
    memref_alloca_23[0] = arith_const_12; 
    for (int for_iter_91 = arith_const_11; for_iter_91 < arith_const_10; for_iter_91 += arith_const_9) {
      float memref_load_92 = func_arg_4[for_iter_91][for_iter_90]; 
      float arith_mulf_93 = (arith_divf_37 * memref_load_92); 
      float memref_load_94 = memref_alloca_25[0]; 
      float arith_mulf_95 = (arith_mulf_40 * memref_load_94); 
      float arith_addf_96 = (arith_mulf_93 + arith_mulf_95); 
      float memref_load_97 = memref_alloca_24[0]; 
      float arith_mulf_98 = (math_powf_47 * memref_load_97); 
      float arith_addf_99 = (arith_addf_96 + arith_mulf_98); 
      float memref_load_100 = memref_alloca_23[0]; 
      float arith_mulf_101 = (arith_negf_48 * memref_load_100); 
      float arith_addf_102 = (arith_addf_99 + arith_mulf_101); 
      func_arg_5[for_iter_91][for_iter_90] = arith_addf_102; 
      float memref_load_103 = func_arg_4[for_iter_91][for_iter_90]; 
      memref_alloca_25[0] = memref_load_103; 
      memref_alloca_23[0] = memref_load_97; 
      float memref_load_104 = func_arg_5[for_iter_91][for_iter_90]; 
      memref_alloca_24[0] = memref_load_104; 
    }
  }
  for (int for_iter_105 = arith_const_11; for_iter_105 < arith_const_10; for_iter_105 += arith_const_9) {
    memref_alloca_20[0] = arith_const_12; 
    memref_alloca_19[0] = arith_const_12; 
    memref_alloca_18[0] = arith_const_12; 
    memref_alloca_17[0] = arith_const_12; 
    for (int for_iter_106 = arith_const_11; for_iter_106 < arith_const_10; for_iter_106 += arith_const_9) {
      float memref_load_107 = memref_alloca_20[0]; 
      float arith_mulf_108 = (arith_mulf_42 * memref_load_107); 
      float memref_load_109 = memref_alloca_19[0]; 
      float arith_mulf_110 = (arith_mulf_46 * memref_load_109); 
      float arith_addf_111 = (arith_mulf_108 + arith_mulf_110); 
      float memref_load_112 = memref_alloca_18[0]; 
      float arith_mulf_113 = (math_powf_47 * memref_load_112); 
      float arith_addf_114 = (arith_addf_111 + arith_mulf_113); 
      float memref_load_115 = memref_alloca_17[0]; 
      float arith_mulf_116 = (arith_negf_48 * memref_load_115); 
      float arith_addf_117 = (arith_addf_114 + arith_mulf_116); 
      int arith_muli_118 = (for_iter_106 * arith_const_8); 
      int arith_addi_119 = (arith_muli_118 + arith_const_7); 
      func_arg_6[arith_addi_119][for_iter_105] = arith_addf_117; 
      memref_alloca_19[0] = memref_load_107; 
      int arith_muli_120 = (for_iter_106 * arith_const_8); 
      int arith_addi_121 = (arith_muli_120 + arith_const_7); 
      float memref_load_122 = func_arg_4[arith_addi_121][for_iter_105]; 
      memref_alloca_20[0] = memref_load_122; 
      memref_alloca_17[0] = memref_load_112; 
      int arith_muli_123 = (for_iter_106 * arith_const_8); 
      int arith_addi_124 = (arith_muli_123 + arith_const_7); 
      float memref_load_125 = func_arg_6[arith_addi_124][for_iter_105]; 
      memref_alloca_18[0] = memref_load_125; 
    }
  }
  for (int for_iter_126 = arith_const_11; for_iter_126 < arith_const_10; for_iter_126 += arith_const_9) {
    for (int for_iter_127 = arith_const_11; for_iter_127 < arith_const_10; for_iter_127 += arith_const_9) {
      float memref_load_128 = func_arg_5[for_iter_126][for_iter_127]; 
      float memref_load_129 = func_arg_6[for_iter_126][for_iter_127]; 
      float arith_addf_130 = (memref_load_128 + memref_load_129); 
      func_arg_4[for_iter_126][for_iter_127] = arith_addf_130; 
    }
  }
  return; 

}
#pragma pocc-region-end
