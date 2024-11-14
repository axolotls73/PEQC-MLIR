#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 8; 
  int arith_const_3 = 3; 
  int arith_const_4 = -1; 
  int arith_const_5 = 4; 
  int arith_const_6 = 40; 
  int arith_const_7 = -32; 
  int arith_const_8 = 32; 
  int arith_const_9 = 0; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_muli_13 = (for_iter_12 * arith_const_8); 
    int arith_muli_14 = (for_iter_12 * arith_const_7); 
    int arith_addi_15 = (arith_muli_14 + arith_const_6); 
    int arith_minsi_16 = min(arith_addi_15, arith_const_8); 
    for (int for_iter_17 = arith_const_9; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_11) {
      int arith_addi_18 = (arith_muli_13 + for_iter_17); 
      int arith_muli_19 = (for_iter_12 * arith_const_8); 
      int arith_addi_20 = (for_iter_17 + arith_muli_19); 
      for (int for_iter_21 = arith_const_9; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_11) {
        int arith_cmpi_22 = (for_iter_21 < arith_const_9); 
        int arith_subi_23 = (arith_const_4 - for_iter_21); 
        int arith_select_24 = (arith_cmpi_22 ? arith_subi_23 : for_iter_21); 
        int arith_divi_25 = (arith_select_24 / arith_const_5); 
        int arith_subi_26 = (arith_const_4 - arith_divi_25); 
        int arith_select_27 = (arith_cmpi_22 ? arith_subi_26 : arith_divi_25); 
        for (int for_iter_28 = arith_const_9; for_iter_28 < arith_select_27; for_iter_28 += arith_const_11) {
          int arith_muli_29 = (for_iter_28 * arith_const_5); 
          double memref_load_30 = func_arg_1[arith_addi_18][arith_muli_29]; 
          double memref_load_31 = func_arg_1[arith_muli_29][for_iter_21]; 
          double arith_mulf_32 = (memref_load_30 * memref_load_31); 
          double memref_load_33 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_34 = (memref_load_33 - arith_mulf_32); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_34; 
          int arith_addi_35 = (arith_muli_29 + arith_const_11); 
          double memref_load_36 = func_arg_1[arith_addi_18][arith_addi_35]; 
          double memref_load_37 = func_arg_1[arith_addi_35][for_iter_21]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double memref_load_39 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_40 = (memref_load_39 - arith_mulf_38); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_40; 
          int arith_addi_41 = (arith_muli_29 + arith_const_10); 
          double memref_load_42 = func_arg_1[arith_addi_18][arith_addi_41]; 
          double memref_load_43 = func_arg_1[arith_addi_41][for_iter_21]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double memref_load_45 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_46 = (memref_load_45 - arith_mulf_44); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_46; 
          int arith_addi_47 = (arith_muli_29 + arith_const_3); 
          double memref_load_48 = func_arg_1[arith_addi_18][arith_addi_47]; 
          double memref_load_49 = func_arg_1[arith_addi_47][for_iter_21]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double memref_load_51 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_52 = (memref_load_51 - arith_mulf_50); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_52; 
        }
        int arith_remsi_53 = (for_iter_21 % arith_const_5); 
        int arith_cmpi_54 = (arith_remsi_53 < arith_const_9); 
        int arith_addi_55 = (arith_remsi_53 + arith_const_5); 
        int arith_select_56 = (arith_cmpi_54 ? arith_addi_55 : arith_remsi_53); 
        for (int for_iter_57 = arith_const_9; for_iter_57 < arith_select_56; for_iter_57 += arith_const_11) {
          int arith_cmpi_58 = (for_iter_21 < arith_const_9); 
          int arith_subi_59 = (arith_const_4 - for_iter_21); 
          int arith_select_60 = (arith_cmpi_58 ? arith_subi_59 : for_iter_21); 
          int arith_divi_61 = (arith_select_60 / arith_const_5); 
          int arith_subi_62 = (arith_const_4 - arith_divi_61); 
          int arith_select_63 = (arith_cmpi_58 ? arith_subi_62 : arith_divi_61); 
          int arith_muli_64 = (arith_select_63 * arith_const_5); 
          int arith_addi_65 = (for_iter_57 + arith_muli_64); 
          double memref_load_66 = func_arg_1[arith_addi_18][arith_addi_65]; 
          double memref_load_67 = func_arg_1[arith_addi_65][for_iter_21]; 
          double arith_mulf_68 = (memref_load_66 * memref_load_67); 
          double memref_load_69 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_70 = (memref_load_69 - arith_mulf_68); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_70; 
        }
        double memref_load_71 = func_arg_1[for_iter_21][for_iter_21]; 
        double memref_load_72 = func_arg_1[arith_addi_18][for_iter_21]; 
        double arith_divf_73 = (memref_load_72 / memref_load_71); 
        func_arg_1[arith_addi_18][for_iter_21] = arith_divf_73; 
      }
      int arith_muli_74 = (for_iter_17 * arith_const_4); 
      int arith_muli_75 = (for_iter_12 * arith_const_7); 
      int arith_addi_76 = (arith_muli_74 + arith_muli_75); 
      int arith_addi_77 = (arith_addi_76 + arith_const_6); 
      for (int for_iter_78 = arith_const_9; for_iter_78 < arith_addi_77; for_iter_78 += arith_const_11) {
        int arith_addi_79 = (arith_addi_18 + for_iter_78); 
        int arith_muli_80 = (for_iter_12 * arith_const_2); 
        int arith_cmpi_81 = (for_iter_17 < arith_const_9); 
        int arith_subi_82 = (arith_const_4 - for_iter_17); 
        int arith_select_83 = (arith_cmpi_81 ? arith_subi_82 : for_iter_17); 
        int arith_divi_84 = (arith_select_83 / arith_const_5); 
        int arith_subi_85 = (arith_const_4 - arith_divi_84); 
        int arith_select_86 = (arith_cmpi_81 ? arith_subi_85 : arith_divi_84); 
        int arith_addi_87 = (arith_muli_80 + arith_select_86); 
        for (int for_iter_88 = arith_const_9; for_iter_88 < arith_addi_87; for_iter_88 += arith_const_11) {
          int arith_muli_89 = (for_iter_88 * arith_const_5); 
          double memref_load_90 = func_arg_1[arith_addi_18][arith_muli_89]; 
          double memref_load_91 = func_arg_1[arith_muli_89][arith_addi_79]; 
          double arith_mulf_92 = (memref_load_90 * memref_load_91); 
          double memref_load_93 = func_arg_1[arith_addi_18][arith_addi_79]; 
          double arith_subf_94 = (memref_load_93 - arith_mulf_92); 
          func_arg_1[arith_addi_18][arith_addi_79] = arith_subf_94; 
          int arith_addi_95 = (arith_muli_89 + arith_const_11); 
          double memref_load_96 = func_arg_1[arith_addi_18][arith_addi_95]; 
          double memref_load_97 = func_arg_1[arith_addi_95][arith_addi_79]; 
          double arith_mulf_98 = (memref_load_96 * memref_load_97); 
          double memref_load_99 = func_arg_1[arith_addi_18][arith_addi_79]; 
          double arith_subf_100 = (memref_load_99 - arith_mulf_98); 
          func_arg_1[arith_addi_18][arith_addi_79] = arith_subf_100; 
          int arith_addi_101 = (arith_muli_89 + arith_const_10); 
          double memref_load_102 = func_arg_1[arith_addi_18][arith_addi_101]; 
          double memref_load_103 = func_arg_1[arith_addi_101][arith_addi_79]; 
          double arith_mulf_104 = (memref_load_102 * memref_load_103); 
          double memref_load_105 = func_arg_1[arith_addi_18][arith_addi_79]; 
          double arith_subf_106 = (memref_load_105 - arith_mulf_104); 
          func_arg_1[arith_addi_18][arith_addi_79] = arith_subf_106; 
          int arith_addi_107 = (arith_muli_89 + arith_const_3); 
          double memref_load_108 = func_arg_1[arith_addi_18][arith_addi_107]; 
          double memref_load_109 = func_arg_1[arith_addi_107][arith_addi_79]; 
          double arith_mulf_110 = (memref_load_108 * memref_load_109); 
          double memref_load_111 = func_arg_1[arith_addi_18][arith_addi_79]; 
          double arith_subf_112 = (memref_load_111 - arith_mulf_110); 
          func_arg_1[arith_addi_18][arith_addi_79] = arith_subf_112; 
        }
        int arith_remsi_113 = (arith_addi_18 % arith_const_5); 
        int arith_cmpi_114 = (arith_remsi_113 < arith_const_9); 
        int arith_addi_115 = (arith_remsi_113 + arith_const_5); 
        int arith_select_116 = (arith_cmpi_114 ? arith_addi_115 : arith_remsi_113); 
        for (int for_iter_117 = arith_const_9; for_iter_117 < arith_select_116; for_iter_117 += arith_const_11) {
          int arith_cmpi_118 = (arith_addi_18 < arith_const_9); 
          int arith_subi_119 = (arith_const_4 - arith_addi_18); 
          int arith_select_120 = (arith_cmpi_118 ? arith_subi_119 : arith_addi_18); 
          int arith_divi_121 = (arith_select_120 / arith_const_5); 
          int arith_subi_122 = (arith_const_4 - arith_divi_121); 
          int arith_select_123 = (arith_cmpi_118 ? arith_subi_122 : arith_divi_121); 
          int arith_muli_124 = (arith_select_123 * arith_const_5); 
          int arith_addi_125 = (for_iter_117 + arith_muli_124); 
          double memref_load_126 = func_arg_1[arith_addi_18][arith_addi_125]; 
          double memref_load_127 = func_arg_1[arith_addi_125][arith_addi_79]; 
          double arith_mulf_128 = (memref_load_126 * memref_load_127); 
          double memref_load_129 = func_arg_1[arith_addi_18][arith_addi_79]; 
          double arith_subf_130 = (memref_load_129 - arith_mulf_128); 
          func_arg_1[arith_addi_18][arith_addi_79] = arith_subf_130; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;


  kernel_lu(n, A);

}

#pragma pocc-region-end
