#pragma pocc-region-start
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_63_7 = 63; 
  int arith_const_neg_1_8 = -1; 
  int arith_const_1_9 = 1; 
  int arith_const_64_10 = 64; 
  int arith_const_0_11 = 0; 
  float arith_const_0_12 = 0.000000; 
  float arith_const_0_13 = -2.000000; 
  float arith_const_0_14 = 2.000000; 
  float arith_const_0_15 = 1.000000; 
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
  float arith_subf_29 = (arith_const_0_15 - math_exp_28); 
  float arith_mulf_30 = (arith_subf_29 * arith_subf_29); 
  float arith_mulf_31 = (func_arg_2 * math_exp_28); 
  float arith_mulf_32 = (arith_mulf_31 * arith_const_0_14); 
  float arith_addf_33 = (arith_mulf_32 + arith_const_0_15); 
  float arith_mulf_34 = (func_arg_2 * arith_const_0_14); 
  float math_exp_35 = exp(arith_mulf_34); 
  float arith_subf_36 = (arith_addf_33 - math_exp_35); 
  float arith_divf_37 = (arith_mulf_30 / arith_subf_36); 
  float arith_mulf_38 = (arith_divf_37 * math_exp_28); 
  float arith_subf_39 = (func_arg_2 - arith_const_0_15); 
  float arith_mulf_40 = (arith_mulf_38 * arith_subf_39); 
  float arith_addf_41 = (func_arg_2 + arith_const_0_15); 
  float arith_mulf_42 = (arith_mulf_38 * arith_addf_41); 
  float arith_negf_43 = -(arith_divf_37); 
  float arith_mulf_44 = (func_arg_2 * arith_const_0_13); 
  float math_exp_45 = exp(arith_mulf_44); 
  float arith_mulf_46 = (arith_negf_43 * math_exp_45); 
  float math_powf_47 = pow(arith_const_0_14, arith_negf_27); 
  float arith_negf_48 = -(math_exp_45); 
  for (int for_iter_49 = arith_const_0_11; for_iter_49 < arith_const_64_10; for_iter_49 += arith_const_1_9) {
    memref_alloca_24[0] = arith_const_0_12; 
    memref_alloca_23[0] = arith_const_0_12; 
    memref_alloca_26[0] = arith_const_0_12; 
    for (int for_iter_50 = arith_const_0_11; for_iter_50 < arith_const_64_10; for_iter_50 += arith_const_1_9) {
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
    memref_alloca_18[0] = arith_const_0_12; 
    memref_alloca_17[0] = arith_const_0_12; 
    memref_alloca_22[0] = arith_const_0_12; 
    memref_alloca_21[0] = arith_const_0_12; 
    for (int for_iter_64 = arith_const_0_11; for_iter_64 < arith_const_64_10; for_iter_64 += arith_const_1_9) {
      float memref_load_65 = memref_alloca_22[0]; 
      float arith_mulf_66 = (arith_mulf_42 * memref_load_65); 
      float memref_load_67 = memref_alloca_21[0]; 
      float arith_mulf_68 = (arith_mulf_46 * memref_load_67); 
      float arith_addf_69 = (arith_mulf_66 + arith_mulf_68); 
      float memref_load_70 = memref_alloca_18[0]; 
      float arith_mulf_71 = (math_powf_47 * memref_load_70); 
      float arith_addf_72 = (arith_addf_69 + arith_mulf_71); 
      float memref_load_73 = memref_alloca_17[0]; 
      float arith_mulf_74 = (arith_negf_48 * memref_load_73); 
      float arith_addf_75 = (arith_addf_72 + arith_mulf_74); 
      int arith_muli_76 = (for_iter_64 * arith_const_neg_1_8); 
      int arith_addi_77 = (arith_muli_76 + arith_const_63_7); 
      func_arg_6[for_iter_49][arith_addi_77] = arith_addf_75; 
      memref_alloca_21[0] = memref_load_65; 
      int arith_muli_78 = (for_iter_64 * arith_const_neg_1_8); 
      int arith_addi_79 = (arith_muli_78 + arith_const_63_7); 
      float memref_load_80 = func_arg_3[for_iter_49][arith_addi_79]; 
      memref_alloca_22[0] = memref_load_80; 
      memref_alloca_17[0] = memref_load_70; 
      int arith_muli_81 = (for_iter_64 * arith_const_neg_1_8); 
      int arith_addi_82 = (arith_muli_81 + arith_const_63_7); 
      float memref_load_83 = func_arg_6[for_iter_49][arith_addi_82]; 
      memref_alloca_18[0] = memref_load_83; 
    }
    for (int for_iter_84 = arith_const_0_11; for_iter_84 < arith_const_64_10; for_iter_84 += arith_const_1_9) {
      float memref_load_85 = func_arg_5[for_iter_49][for_iter_84]; 
      float memref_load_86 = func_arg_6[for_iter_49][for_iter_84]; 
      float arith_addf_87 = (memref_load_85 + memref_load_86); 
      func_arg_4[for_iter_49][for_iter_84] = arith_addf_87; 
    }
  }
  for (int for_iter_88 = arith_const_0_11; for_iter_88 < arith_const_64_10; for_iter_88 += arith_const_1_9) {
    memref_alloca_20[0] = arith_const_0_12; 
    memref_alloca_19[0] = arith_const_0_12; 
    memref_alloca_18[0] = arith_const_0_12; 
    memref_alloca_17[0] = arith_const_0_12; 
    for (int for_iter_89 = arith_const_0_11; for_iter_89 < arith_const_64_10; for_iter_89 += arith_const_1_9) {
      int arith_muli_90 = (for_iter_89 * arith_const_neg_1_8); 
      int arith_addi_91 = (arith_muli_90 + arith_const_63_7); 
      float memref_load_92 = func_arg_5[arith_addi_91][for_iter_88]; 
      float memref_load_93 = func_arg_6[arith_addi_91][for_iter_88]; 
      float arith_addf_94 = (memref_load_92 + memref_load_93); 
      func_arg_4[arith_addi_91][for_iter_88] = arith_addf_94; 
      float memref_load_95 = memref_alloca_20[0]; 
      float arith_mulf_96 = (arith_mulf_42 * memref_load_95); 
      float memref_load_97 = memref_alloca_19[0]; 
      float arith_mulf_98 = (arith_mulf_46 * memref_load_97); 
      float arith_addf_99 = (arith_mulf_96 + arith_mulf_98); 
      float memref_load_100 = memref_alloca_18[0]; 
      float arith_mulf_101 = (math_powf_47 * memref_load_100); 
      float arith_addf_102 = (arith_addf_99 + arith_mulf_101); 
      float memref_load_103 = memref_alloca_17[0]; 
      float arith_mulf_104 = (arith_negf_48 * memref_load_103); 
      float arith_addf_105 = (arith_addf_102 + arith_mulf_104); 
      int arith_muli_106 = (for_iter_89 * arith_const_neg_1_8); 
      int arith_addi_107 = (arith_muli_106 + arith_const_63_7); 
      func_arg_6[arith_addi_107][for_iter_88] = arith_addf_105; 
      memref_alloca_19[0] = memref_load_95; 
      int arith_muli_108 = (for_iter_89 * arith_const_neg_1_8); 
      int arith_addi_109 = (arith_muli_108 + arith_const_63_7); 
      float memref_load_110 = func_arg_4[arith_addi_109][for_iter_88]; 
      memref_alloca_20[0] = memref_load_110; 
      memref_alloca_17[0] = memref_load_100; 
      int arith_muli_111 = (for_iter_89 * arith_const_neg_1_8); 
      int arith_addi_112 = (arith_muli_111 + arith_const_63_7); 
      float memref_load_113 = func_arg_6[arith_addi_112][for_iter_88]; 
      memref_alloca_18[0] = memref_load_113; 
    }
  }
  for (int for_iter_114 = arith_const_0_11; for_iter_114 < arith_const_64_10; for_iter_114 += arith_const_1_9) {
    memref_alloca_25[0] = arith_const_0_12; 
    memref_alloca_24[0] = arith_const_0_12; 
    memref_alloca_23[0] = arith_const_0_12; 
    for (int for_iter_115 = arith_const_0_11; for_iter_115 < arith_const_64_10; for_iter_115 += arith_const_1_9) {
      float memref_load_116 = func_arg_4[for_iter_115][for_iter_114]; 
      float arith_mulf_117 = (arith_divf_37 * memref_load_116); 
      float memref_load_118 = memref_alloca_25[0]; 
      float arith_mulf_119 = (arith_mulf_40 * memref_load_118); 
      float arith_addf_120 = (arith_mulf_117 + arith_mulf_119); 
      float memref_load_121 = memref_alloca_24[0]; 
      float arith_mulf_122 = (math_powf_47 * memref_load_121); 
      float arith_addf_123 = (arith_addf_120 + arith_mulf_122); 
      float memref_load_124 = memref_alloca_23[0]; 
      float arith_mulf_125 = (arith_negf_48 * memref_load_124); 
      float arith_addf_126 = (arith_addf_123 + arith_mulf_125); 
      func_arg_5[for_iter_115][for_iter_114] = arith_addf_126; 
      float memref_load_127 = func_arg_4[for_iter_115][for_iter_114]; 
      memref_alloca_25[0] = memref_load_127; 
      memref_alloca_23[0] = memref_load_121; 
      float memref_load_128 = func_arg_5[for_iter_115][for_iter_114]; 
      memref_alloca_24[0] = memref_load_128; 
    }
  }
  for (int for_iter_129 = arith_const_0_11; for_iter_129 < arith_const_64_10; for_iter_129 += arith_const_1_9) {
    for (int for_iter_130 = arith_const_0_11; for_iter_130 < arith_const_64_10; for_iter_130 += arith_const_1_9) {
      float memref_load_131 = func_arg_5[for_iter_129][for_iter_130]; 
      float memref_load_132 = func_arg_6[for_iter_129][for_iter_130]; 
      float arith_addf_133 = (memref_load_131 + memref_load_132); 
      func_arg_4[for_iter_129][for_iter_130] = arith_addf_133; 
    }
  }
  return; 

}
#pragma pocc-region-end
