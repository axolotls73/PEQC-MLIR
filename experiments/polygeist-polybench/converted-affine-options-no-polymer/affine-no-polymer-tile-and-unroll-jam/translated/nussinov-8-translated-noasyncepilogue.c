#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_nussinov(int func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 61; 
  int arith_const_4 = 59; 
  int arith_const_5 = -1; 
  int arith_const_6 = 3; 
  int arith_const_7 = 0; 
  int arith_const_8 = 60; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_7; for_iter_11 < for_iter_10; for_iter_11 += arith_const_9) {
      int arith_muli_12 = (for_iter_10 * arith_const_5); 
      int arith_addi_13 = (arith_muli_12 + for_iter_11); 
      int arith_addi_14 = (arith_addi_13 + arith_const_4); 
      int arith_cmpi_15 = (arith_addi_14 >= arith_const_7); 
      if (arith_cmpi_15) {
        int arith_muli_16 = (for_iter_10 * arith_const_5); 
        int arith_addi_17 = (arith_muli_16 + arith_const_4); 
        int arith_muli_18 = (for_iter_10 * arith_const_5); 
        int arith_addi_19 = (arith_muli_18 + for_iter_11); 
        int arith_addi_20 = (arith_addi_19 + arith_const_8); 
        int memref_load_21 = func_arg_2[arith_addi_17][arith_addi_20]; 
        int arith_muli_22 = (for_iter_10 * arith_const_5); 
        int arith_addi_23 = (arith_muli_22 + arith_const_4); 
        int arith_muli_24 = (for_iter_10 * arith_const_5); 
        int arith_addi_25 = (arith_muli_24 + for_iter_11); 
        int arith_addi_26 = (arith_addi_25 + arith_const_4); 
        int memref_load_27 = func_arg_2[arith_addi_23][arith_addi_26]; 
        int arith_cmpi_28 = (memref_load_21 >= memref_load_27); 
        int arith_select_29 = (arith_cmpi_28 ? memref_load_21 : memref_load_27); 
        int arith_muli_30 = (for_iter_10 * arith_const_5); 
        int arith_addi_31 = (arith_muli_30 + arith_const_4); 
        int arith_muli_32 = (for_iter_10 * arith_const_5); 
        int arith_addi_33 = (arith_muli_32 + for_iter_11); 
        int arith_addi_34 = (arith_addi_33 + arith_const_8); 
        func_arg_2[arith_addi_31][arith_addi_34] = arith_select_29; 
      }
      int arith_addi_35 = (for_iter_10 + arith_const_5); 
      int arith_cmpi_36 = (arith_addi_35 >= arith_const_7); 
      if (arith_cmpi_36) {
        int arith_muli_37 = (for_iter_10 * arith_const_5); 
        int arith_addi_38 = (arith_muli_37 + arith_const_4); 
        int arith_muli_39 = (for_iter_10 * arith_const_5); 
        int arith_addi_40 = (arith_muli_39 + for_iter_11); 
        int arith_addi_41 = (arith_addi_40 + arith_const_8); 
        int memref_load_42 = func_arg_2[arith_addi_38][arith_addi_41]; 
        int arith_muli_43 = (for_iter_10 * arith_const_5); 
        int arith_addi_44 = (arith_muli_43 + arith_const_8); 
        int arith_muli_45 = (for_iter_10 * arith_const_5); 
        int arith_addi_46 = (arith_muli_45 + for_iter_11); 
        int arith_addi_47 = (arith_addi_46 + arith_const_8); 
        int memref_load_48 = func_arg_2[arith_addi_44][arith_addi_47]; 
        int arith_cmpi_49 = (memref_load_42 >= memref_load_48); 
        int arith_select_50 = (arith_cmpi_49 ? memref_load_42 : memref_load_48); 
        int arith_muli_51 = (for_iter_10 * arith_const_5); 
        int arith_addi_52 = (arith_muli_51 + arith_const_4); 
        int arith_muli_53 = (for_iter_10 * arith_const_5); 
        int arith_addi_54 = (arith_muli_53 + for_iter_11); 
        int arith_addi_55 = (arith_addi_54 + arith_const_8); 
        func_arg_2[arith_addi_52][arith_addi_55] = arith_select_50; 
      }
      int arith_muli_56 = (for_iter_10 * arith_const_5); 
      int arith_addi_57 = (arith_muli_56 + for_iter_11); 
      int arith_addi_58 = (arith_addi_57 + arith_const_4); 
      int arith_cmpi_59 = (arith_addi_58 >= arith_const_7); 
      int arith_addi_60 = (for_iter_10 + arith_const_5); 
      int arith_cmpi_61 = (arith_addi_60 >= arith_const_7); 
      int arith_andi_62 = (arith_cmpi_59 & arith_cmpi_61); 
      if (arith_andi_62) {
        int arith_addi_63 = (for_iter_11 + arith_const_5); 
        int arith_cmpi_64 = (arith_addi_63 >= arith_const_7); 
        if (arith_cmpi_64) {
          int arith_muli_84 = (for_iter_10 * arith_const_5); 
          int arith_addi_85 = (arith_muli_84 + arith_const_4); 
          int arith_muli_86 = (for_iter_10 * arith_const_5); 
          int arith_addi_87 = (arith_muli_86 + for_iter_11); 
          int arith_addi_88 = (arith_addi_87 + arith_const_8); 
          int memref_load_89 = func_arg_2[arith_addi_85][arith_addi_88]; 
          int arith_muli_90 = (for_iter_10 * arith_const_5); 
          int arith_addi_91 = (arith_muli_90 + arith_const_8); 
          int arith_muli_92 = (for_iter_10 * arith_const_5); 
          int arith_addi_93 = (arith_muli_92 + for_iter_11); 
          int arith_addi_94 = (arith_addi_93 + arith_const_4); 
          int memref_load_95 = func_arg_2[arith_addi_91][arith_addi_94]; 
          int arith_muli_96 = (for_iter_10 * arith_const_5); 
          int arith_addi_97 = (arith_muli_96 + arith_const_4); 
          int memref_load_98 = func_arg_1[arith_addi_97]; 
          int arith_muli_99 = (for_iter_10 * arith_const_5); 
          int arith_addi_100 = (arith_muli_99 + for_iter_11); 
          int arith_addi_101 = (arith_addi_100 + arith_const_8); 
          int memref_load_102 = func_arg_1[arith_addi_101]; 
          int arith_addi_103 = (memref_load_98 + memref_load_102); 
          int arith_cmpi_104 = (arith_addi_103 == arith_const_6); 
          int arith_extui_105 = arith_cmpi_104; 
          int arith_addi_106 = (memref_load_95 + arith_extui_105); 
          int arith_cmpi_107 = (memref_load_89 >= arith_addi_106); 
          int arith_select_108 = (arith_cmpi_107 ? memref_load_89 : arith_addi_106); 
          int arith_muli_109 = (for_iter_10 * arith_const_5); 
          int arith_addi_110 = (arith_muli_109 + arith_const_4); 
          int arith_muli_111 = (for_iter_10 * arith_const_5); 
          int arith_addi_112 = (arith_muli_111 + for_iter_11); 
          int arith_addi_113 = (arith_addi_112 + arith_const_8); 
          func_arg_2[arith_addi_110][arith_addi_113] = arith_select_108; 
        }
        else {
          int arith_muli_65 = (for_iter_10 * arith_const_5); 
          int arith_addi_66 = (arith_muli_65 + arith_const_4); 
          int arith_muli_67 = (for_iter_10 * arith_const_5); 
          int arith_addi_68 = (arith_muli_67 + for_iter_11); 
          int arith_addi_69 = (arith_addi_68 + arith_const_8); 
          int memref_load_70 = func_arg_2[arith_addi_66][arith_addi_69]; 
          int arith_muli_71 = (for_iter_10 * arith_const_5); 
          int arith_addi_72 = (arith_muli_71 + arith_const_8); 
          int arith_muli_73 = (for_iter_10 * arith_const_5); 
          int arith_addi_74 = (arith_muli_73 + for_iter_11); 
          int arith_addi_75 = (arith_addi_74 + arith_const_4); 
          int memref_load_76 = func_arg_2[arith_addi_72][arith_addi_75]; 
          int arith_cmpi_77 = (memref_load_70 >= memref_load_76); 
          int arith_select_78 = (arith_cmpi_77 ? memref_load_70 : memref_load_76); 
          int arith_muli_79 = (for_iter_10 * arith_const_5); 
          int arith_addi_80 = (arith_muli_79 + arith_const_4); 
          int arith_muli_81 = (for_iter_10 * arith_const_5); 
          int arith_addi_82 = (arith_muli_81 + for_iter_11); 
          int arith_addi_83 = (arith_addi_82 + arith_const_8); 
          func_arg_2[arith_addi_80][arith_addi_83] = arith_select_78; 
        }
      }
      for (int for_iter_114 = arith_const_7; for_iter_114 < for_iter_11; for_iter_114 += arith_const_9) {
        int arith_muli_115 = (for_iter_10 * arith_const_5); 
        int arith_addi_116 = (arith_muli_115 + arith_const_4); 
        int arith_muli_117 = (for_iter_10 * arith_const_5); 
        int arith_addi_118 = (arith_muli_117 + for_iter_11); 
        int arith_addi_119 = (arith_addi_118 + arith_const_8); 
        int memref_load_120 = func_arg_2[arith_addi_116][arith_addi_119]; 
        int arith_muli_121 = (for_iter_10 * arith_const_5); 
        int arith_addi_122 = (arith_muli_121 + arith_const_4); 
        int arith_muli_123 = (for_iter_10 * arith_const_5); 
        int arith_addi_124 = (arith_muli_123 + for_iter_114); 
        int arith_addi_125 = (arith_addi_124 + arith_const_8); 
        int memref_load_126 = func_arg_2[arith_addi_122][arith_addi_125]; 
        int arith_muli_127 = (for_iter_10 * arith_const_5); 
        int arith_addi_128 = (arith_muli_127 + for_iter_114); 
        int arith_addi_129 = (arith_addi_128 + arith_const_3); 
        int arith_muli_130 = (for_iter_10 * arith_const_5); 
        int arith_addi_131 = (arith_muli_130 + for_iter_11); 
        int arith_addi_132 = (arith_addi_131 + arith_const_8); 
        int memref_load_133 = func_arg_2[arith_addi_129][arith_addi_132]; 
        int arith_addi_134 = (memref_load_126 + memref_load_133); 
        int arith_cmpi_135 = (memref_load_120 >= arith_addi_134); 
        int arith_select_136 = (arith_cmpi_135 ? memref_load_120 : arith_addi_134); 
        int arith_muli_137 = (for_iter_10 * arith_const_5); 
        int arith_addi_138 = (arith_muli_137 + arith_const_4); 
        int arith_muli_139 = (for_iter_10 * arith_const_5); 
        int arith_addi_140 = (arith_muli_139 + for_iter_11); 
        int arith_addi_141 = (arith_addi_140 + arith_const_8); 
        func_arg_2[arith_addi_138][arith_addi_141] = arith_select_136; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int* seq;
  int* table;


  kernel_nussinov(n, seq, table);

}

#pragma pocc-region-end
