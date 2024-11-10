#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_14; for_iter_16 += arith_const_14) {
      int arith_addi_17 = (for_iter_15 + for_iter_16); 
      int arith_addi_18 = (for_iter_15 + for_iter_16); 
      int arith_addi_19 = (arith_addi_18 + arith_const_14); 
      int arith_cmpi_20 = (arith_addi_19 < arith_const_12); 
      int arith_subi_21 = (arith_const_10 - arith_addi_19); 
      int arith_select_22 = (arith_cmpi_20 ? arith_subi_21 : arith_addi_19); 
      int arith_divi_23 = (arith_select_22 / arith_const_11); 
      int arith_subi_24 = (arith_const_10 - arith_divi_23); 
      int arith_select_25 = (arith_cmpi_20 ? arith_subi_24 : arith_divi_23); 
      for (int for_iter_26 = arith_const_12; for_iter_26 < arith_select_25; for_iter_26 += arith_const_14) {
        int arith_muli_27 = (for_iter_26 * arith_const_11); 
        double memref_load_28 = func_arg_4[arith_addi_17][arith_muli_27]; 
        double arith_mulf_29 = (memref_load_28 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_muli_27] = arith_mulf_29; 
        int arith_addi_30 = (arith_muli_27 + arith_const_14); 
        double memref_load_31 = func_arg_4[arith_addi_17][arith_addi_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_30] = arith_mulf_32; 
        int arith_addi_33 = (arith_muli_27 + arith_const_9); 
        double memref_load_34 = func_arg_4[arith_addi_17][arith_addi_33]; 
        double arith_mulf_35 = (memref_load_34 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_33] = arith_mulf_35; 
        int arith_addi_36 = (arith_muli_27 + arith_const_8); 
        double memref_load_37 = func_arg_4[arith_addi_17][arith_addi_36]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_36] = arith_mulf_38; 
      }
      int arith_addi_39 = (for_iter_15 + for_iter_16); 
      int arith_addi_40 = (for_iter_15 + for_iter_16); 
      int arith_addi_41 = (arith_addi_40 + arith_const_14); 
      int arith_cmpi_42 = (arith_addi_41 < arith_const_12); 
      int arith_subi_43 = (arith_const_10 - arith_addi_41); 
      int arith_select_44 = (arith_cmpi_42 ? arith_subi_43 : arith_addi_41); 
      int arith_divi_45 = (arith_select_44 / arith_const_11); 
      int arith_subi_46 = (arith_const_10 - arith_divi_45); 
      int arith_select_47 = (arith_cmpi_42 ? arith_subi_46 : arith_divi_45); 
      int arith_muli_48 = (arith_select_47 * arith_const_7); 
      int arith_addi_49 = (arith_addi_39 + arith_muli_48); 
      int arith_addi_50 = (arith_addi_49 + arith_const_14); 
      for (int for_iter_51 = arith_const_12; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_14) {
        int arith_addi_52 = (arith_addi_17 + arith_const_14); 
        int arith_cmpi_53 = (arith_addi_52 < arith_const_12); 
        int arith_subi_54 = (arith_const_10 - arith_addi_52); 
        int arith_select_55 = (arith_cmpi_53 ? arith_subi_54 : arith_addi_52); 
        int arith_divi_56 = (arith_select_55 / arith_const_11); 
        int arith_subi_57 = (arith_const_10 - arith_divi_56); 
        int arith_select_58 = (arith_cmpi_53 ? arith_subi_57 : arith_divi_56); 
        int arith_muli_59 = (arith_select_58 * arith_const_11); 
        int arith_addi_60 = (for_iter_51 + arith_muli_59); 
        double memref_load_61 = func_arg_4[arith_addi_17][arith_addi_60]; 
        double arith_mulf_62 = (memref_load_61 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_60] = arith_mulf_62; 
      }
      for (int for_iter_63 = arith_const_12; for_iter_63 < arith_const_6; for_iter_63 += arith_const_14) {
        double memref_load_64 = func_arg_5[arith_addi_17][for_iter_63]; 
        double arith_mulf_65 = (func_arg_2 * memref_load_64); 
        double memref_load_66 = func_arg_5[arith_addi_17][for_iter_63]; 
        double arith_mulf_67 = (func_arg_2 * memref_load_66); 
        double memref_load_68 = func_arg_5[arith_addi_17][for_iter_63]; 
        double arith_mulf_69 = (func_arg_2 * memref_load_68); 
        double memref_load_70 = func_arg_5[arith_addi_17][for_iter_63]; 
        double arith_mulf_71 = (func_arg_2 * memref_load_70); 
        int arith_addi_72 = (for_iter_15 + for_iter_16); 
        int arith_addi_73 = (arith_addi_72 + arith_const_14); 
        int arith_cmpi_74 = (arith_addi_73 < arith_const_12); 
        int arith_subi_75 = (arith_const_10 - arith_addi_73); 
        int arith_select_76 = (arith_cmpi_74 ? arith_subi_75 : arith_addi_73); 
        int arith_divi_77 = (arith_select_76 / arith_const_11); 
        int arith_subi_78 = (arith_const_10 - arith_divi_77); 
        int arith_select_79 = (arith_cmpi_74 ? arith_subi_78 : arith_divi_77); 
        for (int for_iter_80 = arith_const_12; for_iter_80 < arith_select_79; for_iter_80 += arith_const_14) {
          int arith_muli_81 = (for_iter_80 * arith_const_11); 
          double memref_load_82 = func_arg_5[arith_muli_81][for_iter_63]; 
          double arith_mulf_83 = (arith_mulf_65 * memref_load_82); 
          double memref_load_84 = func_arg_4[arith_addi_17][arith_muli_81]; 
          double arith_addf_85 = (memref_load_84 + arith_mulf_83); 
          func_arg_4[arith_addi_17][arith_muli_81] = arith_addf_85; 
          int arith_addi_86 = (arith_muli_81 + arith_const_14); 
          double memref_load_87 = func_arg_5[arith_addi_86][for_iter_63]; 
          double arith_mulf_88 = (arith_mulf_67 * memref_load_87); 
          double memref_load_89 = func_arg_4[arith_addi_17][arith_addi_86]; 
          double arith_addf_90 = (memref_load_89 + arith_mulf_88); 
          func_arg_4[arith_addi_17][arith_addi_86] = arith_addf_90; 
          int arith_addi_91 = (arith_muli_81 + arith_const_9); 
          double memref_load_92 = func_arg_5[arith_addi_91][for_iter_63]; 
          double arith_mulf_93 = (arith_mulf_69 * memref_load_92); 
          double memref_load_94 = func_arg_4[arith_addi_17][arith_addi_91]; 
          double arith_addf_95 = (memref_load_94 + arith_mulf_93); 
          func_arg_4[arith_addi_17][arith_addi_91] = arith_addf_95; 
          int arith_addi_96 = (arith_muli_81 + arith_const_8); 
          double memref_load_97 = func_arg_5[arith_addi_96][for_iter_63]; 
          double arith_mulf_98 = (arith_mulf_71 * memref_load_97); 
          double memref_load_99 = func_arg_4[arith_addi_17][arith_addi_96]; 
          double arith_addf_100 = (memref_load_99 + arith_mulf_98); 
          func_arg_4[arith_addi_17][arith_addi_96] = arith_addf_100; 
        }
        double memref_load_101 = func_arg_5[arith_addi_17][for_iter_63]; 
        double arith_mulf_102 = (func_arg_2 * memref_load_101); 
        int arith_addi_103 = (for_iter_15 + for_iter_16); 
        int arith_addi_104 = (for_iter_15 + for_iter_16); 
        int arith_addi_105 = (arith_addi_104 + arith_const_14); 
        int arith_cmpi_106 = (arith_addi_105 < arith_const_12); 
        int arith_subi_107 = (arith_const_10 - arith_addi_105); 
        int arith_select_108 = (arith_cmpi_106 ? arith_subi_107 : arith_addi_105); 
        int arith_divi_109 = (arith_select_108 / arith_const_11); 
        int arith_subi_110 = (arith_const_10 - arith_divi_109); 
        int arith_select_111 = (arith_cmpi_106 ? arith_subi_110 : arith_divi_109); 
        int arith_muli_112 = (arith_select_111 * arith_const_7); 
        int arith_addi_113 = (arith_addi_103 + arith_muli_112); 
        int arith_addi_114 = (arith_addi_113 + arith_const_14); 
        for (int for_iter_115 = arith_const_12; for_iter_115 < arith_addi_114; for_iter_115 += arith_const_14) {
          int arith_addi_116 = (arith_addi_17 + arith_const_14); 
          int arith_cmpi_117 = (arith_addi_116 < arith_const_12); 
          int arith_subi_118 = (arith_const_10 - arith_addi_116); 
          int arith_select_119 = (arith_cmpi_117 ? arith_subi_118 : arith_addi_116); 
          int arith_divi_120 = (arith_select_119 / arith_const_11); 
          int arith_subi_121 = (arith_const_10 - arith_divi_120); 
          int arith_select_122 = (arith_cmpi_117 ? arith_subi_121 : arith_divi_120); 
          int arith_muli_123 = (arith_select_122 * arith_const_11); 
          int arith_addi_124 = (for_iter_115 + arith_muli_123); 
          double memref_load_125 = func_arg_5[arith_addi_124][for_iter_63]; 
          double arith_mulf_126 = (arith_mulf_102 * memref_load_125); 
          double memref_load_127 = func_arg_4[arith_addi_17][arith_addi_124]; 
          double arith_addf_128 = (memref_load_127 + arith_mulf_126); 
          func_arg_4[arith_addi_17][arith_addi_124] = arith_addf_128; 
        }
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


  kernel_syrk(n, m, alpha, beta, C, A);

}

#pragma pocc-region-end
