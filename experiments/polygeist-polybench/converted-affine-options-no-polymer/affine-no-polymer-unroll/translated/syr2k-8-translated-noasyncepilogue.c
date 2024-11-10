#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_addi_16 = (for_iter_15 + arith_const_14); 
    int arith_cmpi_17 = (arith_addi_16 < arith_const_12); 
    int arith_subi_18 = (arith_const_10 - arith_addi_16); 
    int arith_select_19 = (arith_cmpi_17 ? arith_subi_18 : arith_addi_16); 
    int arith_divi_20 = (arith_select_19 / arith_const_11); 
    int arith_subi_21 = (arith_const_10 - arith_divi_20); 
    int arith_select_22 = (arith_cmpi_17 ? arith_subi_21 : arith_divi_20); 
    int arith_muli_23 = (arith_select_22 * arith_const_11); 
    for (int for_iter_24 = arith_const_12; for_iter_24 < arith_muli_23; for_iter_24 += arith_const_11) {
      double memref_load_25 = func_arg_4[for_iter_15][for_iter_24]; 
      double arith_mulf_26 = (memref_load_25 * func_arg_3); 
      func_arg_4[for_iter_15][for_iter_24] = arith_mulf_26; 
      int arith_addi_27 = (for_iter_24 + arith_const_14); 
      double memref_load_28 = func_arg_4[for_iter_15][arith_addi_27]; 
      double arith_mulf_29 = (memref_load_28 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_27] = arith_mulf_29; 
      int arith_addi_30 = (for_iter_24 + arith_const_9); 
      double memref_load_31 = func_arg_4[for_iter_15][arith_addi_30]; 
      double arith_mulf_32 = (memref_load_31 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_30] = arith_mulf_32; 
      int arith_addi_33 = (for_iter_24 + arith_const_8); 
      double memref_load_34 = func_arg_4[for_iter_15][arith_addi_33]; 
      double arith_mulf_35 = (memref_load_34 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_33] = arith_mulf_35; 
    }
    int arith_addi_36 = (for_iter_15 + arith_const_14); 
    int arith_cmpi_37 = (arith_addi_36 < arith_const_12); 
    int arith_subi_38 = (arith_const_10 - arith_addi_36); 
    int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
    int arith_divi_40 = (arith_select_39 / arith_const_11); 
    int arith_subi_41 = (arith_const_10 - arith_divi_40); 
    int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
    int arith_muli_43 = (arith_select_42 * arith_const_11); 
    int arith_addi_44 = (for_iter_15 + arith_const_14); 
    for (int for_iter_45 = arith_muli_43; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_14) {
      double memref_load_46 = func_arg_4[for_iter_15][for_iter_45]; 
      double arith_mulf_47 = (memref_load_46 * func_arg_3); 
      func_arg_4[for_iter_15][for_iter_45] = arith_mulf_47; 
    }
    for (int for_iter_48 = arith_const_12; for_iter_48 < arith_const_7; for_iter_48 += arith_const_14) {
      int arith_addi_49 = (for_iter_15 + arith_const_14); 
      int arith_cmpi_50 = (arith_addi_49 < arith_const_12); 
      int arith_subi_51 = (arith_const_10 - arith_addi_49); 
      int arith_select_52 = (arith_cmpi_50 ? arith_subi_51 : arith_addi_49); 
      int arith_divi_53 = (arith_select_52 / arith_const_11); 
      int arith_subi_54 = (arith_const_10 - arith_divi_53); 
      int arith_select_55 = (arith_cmpi_50 ? arith_subi_54 : arith_divi_53); 
      int arith_muli_56 = (arith_select_55 * arith_const_11); 
      for (int for_iter_57 = arith_const_12; for_iter_57 < arith_muli_56; for_iter_57 += arith_const_11) {
        double memref_load_58 = func_arg_5[for_iter_57][for_iter_48]; 
        double arith_mulf_59 = (memref_load_58 * func_arg_2); 
        double memref_load_60 = func_arg_6[for_iter_15][for_iter_48]; 
        double arith_mulf_61 = (arith_mulf_59 * memref_load_60); 
        double memref_load_62 = func_arg_6[for_iter_57][for_iter_48]; 
        double arith_mulf_63 = (memref_load_62 * func_arg_2); 
        double memref_load_64 = func_arg_5[for_iter_15][for_iter_48]; 
        double arith_mulf_65 = (arith_mulf_63 * memref_load_64); 
        double arith_addf_66 = (arith_mulf_61 + arith_mulf_65); 
        double memref_load_67 = func_arg_4[for_iter_15][for_iter_57]; 
        double arith_addf_68 = (memref_load_67 + arith_addf_66); 
        func_arg_4[for_iter_15][for_iter_57] = arith_addf_68; 
        int arith_addi_69 = (for_iter_57 + arith_const_14); 
        double memref_load_70 = func_arg_5[arith_addi_69][for_iter_48]; 
        double arith_mulf_71 = (memref_load_70 * func_arg_2); 
        double memref_load_72 = func_arg_6[for_iter_15][for_iter_48]; 
        double arith_mulf_73 = (arith_mulf_71 * memref_load_72); 
        double memref_load_74 = func_arg_6[arith_addi_69][for_iter_48]; 
        double arith_mulf_75 = (memref_load_74 * func_arg_2); 
        double memref_load_76 = func_arg_5[for_iter_15][for_iter_48]; 
        double arith_mulf_77 = (arith_mulf_75 * memref_load_76); 
        double arith_addf_78 = (arith_mulf_73 + arith_mulf_77); 
        double memref_load_79 = func_arg_4[for_iter_15][arith_addi_69]; 
        double arith_addf_80 = (memref_load_79 + arith_addf_78); 
        func_arg_4[for_iter_15][arith_addi_69] = arith_addf_80; 
        int arith_addi_81 = (for_iter_57 + arith_const_9); 
        double memref_load_82 = func_arg_5[arith_addi_81][for_iter_48]; 
        double arith_mulf_83 = (memref_load_82 * func_arg_2); 
        double memref_load_84 = func_arg_6[for_iter_15][for_iter_48]; 
        double arith_mulf_85 = (arith_mulf_83 * memref_load_84); 
        double memref_load_86 = func_arg_6[arith_addi_81][for_iter_48]; 
        double arith_mulf_87 = (memref_load_86 * func_arg_2); 
        double memref_load_88 = func_arg_5[for_iter_15][for_iter_48]; 
        double arith_mulf_89 = (arith_mulf_87 * memref_load_88); 
        double arith_addf_90 = (arith_mulf_85 + arith_mulf_89); 
        double memref_load_91 = func_arg_4[for_iter_15][arith_addi_81]; 
        double arith_addf_92 = (memref_load_91 + arith_addf_90); 
        func_arg_4[for_iter_15][arith_addi_81] = arith_addf_92; 
        int arith_addi_93 = (for_iter_57 + arith_const_8); 
        double memref_load_94 = func_arg_5[arith_addi_93][for_iter_48]; 
        double arith_mulf_95 = (memref_load_94 * func_arg_2); 
        double memref_load_96 = func_arg_6[for_iter_15][for_iter_48]; 
        double arith_mulf_97 = (arith_mulf_95 * memref_load_96); 
        double memref_load_98 = func_arg_6[arith_addi_93][for_iter_48]; 
        double arith_mulf_99 = (memref_load_98 * func_arg_2); 
        double memref_load_100 = func_arg_5[for_iter_15][for_iter_48]; 
        double arith_mulf_101 = (arith_mulf_99 * memref_load_100); 
        double arith_addf_102 = (arith_mulf_97 + arith_mulf_101); 
        double memref_load_103 = func_arg_4[for_iter_15][arith_addi_93]; 
        double arith_addf_104 = (memref_load_103 + arith_addf_102); 
        func_arg_4[for_iter_15][arith_addi_93] = arith_addf_104; 
      }
      int arith_addi_105 = (for_iter_15 + arith_const_14); 
      int arith_cmpi_106 = (arith_addi_105 < arith_const_12); 
      int arith_subi_107 = (arith_const_10 - arith_addi_105); 
      int arith_select_108 = (arith_cmpi_106 ? arith_subi_107 : arith_addi_105); 
      int arith_divi_109 = (arith_select_108 / arith_const_11); 
      int arith_subi_110 = (arith_const_10 - arith_divi_109); 
      int arith_select_111 = (arith_cmpi_106 ? arith_subi_110 : arith_divi_109); 
      int arith_muli_112 = (arith_select_111 * arith_const_11); 
      int arith_addi_113 = (for_iter_15 + arith_const_14); 
      for (int for_iter_114 = arith_muli_112; for_iter_114 < arith_addi_113; for_iter_114 += arith_const_14) {
        double memref_load_115 = func_arg_5[for_iter_114][for_iter_48]; 
        double arith_mulf_116 = (memref_load_115 * func_arg_2); 
        double memref_load_117 = func_arg_6[for_iter_15][for_iter_48]; 
        double arith_mulf_118 = (arith_mulf_116 * memref_load_117); 
        double memref_load_119 = func_arg_6[for_iter_114][for_iter_48]; 
        double arith_mulf_120 = (memref_load_119 * func_arg_2); 
        double memref_load_121 = func_arg_5[for_iter_15][for_iter_48]; 
        double arith_mulf_122 = (arith_mulf_120 * memref_load_121); 
        double arith_addf_123 = (arith_mulf_118 + arith_mulf_122); 
        double memref_load_124 = func_arg_4[for_iter_15][for_iter_114]; 
        double arith_addf_125 = (memref_load_124 + arith_addf_123); 
        func_arg_4[for_iter_15][for_iter_114] = arith_addf_125; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_syr2k(n, m, alpha, beta, C, A, B);

}

#pragma pocc-region-end
