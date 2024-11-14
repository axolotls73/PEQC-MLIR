#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_cholesky(int func_arg_0, double* func_arg_1)
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
          double memref_load_31 = func_arg_1[for_iter_21][arith_muli_29]; 
          double arith_mulf_32 = (memref_load_30 * memref_load_31); 
          double memref_load_33 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_34 = (memref_load_33 - arith_mulf_32); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_34; 
          int arith_addi_35 = (arith_muli_29 + arith_const_11); 
          double memref_load_36 = func_arg_1[arith_addi_18][arith_addi_35]; 
          double memref_load_37 = func_arg_1[for_iter_21][arith_addi_35]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double memref_load_39 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_40 = (memref_load_39 - arith_mulf_38); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_40; 
          int arith_addi_41 = (arith_muli_29 + arith_const_10); 
          double memref_load_42 = func_arg_1[arith_addi_18][arith_addi_41]; 
          double memref_load_43 = func_arg_1[for_iter_21][arith_addi_41]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double memref_load_45 = func_arg_1[arith_addi_18][for_iter_21]; 
          double arith_subf_46 = (memref_load_45 - arith_mulf_44); 
          func_arg_1[arith_addi_18][for_iter_21] = arith_subf_46; 
          int arith_addi_47 = (arith_muli_29 + arith_const_3); 
          double memref_load_48 = func_arg_1[arith_addi_18][arith_addi_47]; 
          double memref_load_49 = func_arg_1[for_iter_21][arith_addi_47]; 
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
          double memref_load_67 = func_arg_1[for_iter_21][arith_addi_65]; 
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
      int arith_muli_74 = (for_iter_12 * arith_const_2); 
      int arith_cmpi_75 = (for_iter_17 < arith_const_9); 
      int arith_subi_76 = (arith_const_4 - for_iter_17); 
      int arith_select_77 = (arith_cmpi_75 ? arith_subi_76 : for_iter_17); 
      int arith_divi_78 = (arith_select_77 / arith_const_5); 
      int arith_subi_79 = (arith_const_4 - arith_divi_78); 
      int arith_select_80 = (arith_cmpi_75 ? arith_subi_79 : arith_divi_78); 
      int arith_addi_81 = (arith_muli_74 + arith_select_80); 
      for (int for_iter_82 = arith_const_9; for_iter_82 < arith_addi_81; for_iter_82 += arith_const_11) {
        int arith_muli_83 = (for_iter_82 * arith_const_5); 
        double memref_load_84 = func_arg_1[arith_addi_18][arith_muli_83]; 
        double arith_mulf_85 = (memref_load_84 * memref_load_84); 
        double memref_load_86 = func_arg_1[arith_addi_18][arith_addi_18]; 
        double arith_subf_87 = (memref_load_86 - arith_mulf_85); 
        func_arg_1[arith_addi_18][arith_addi_18] = arith_subf_87; 
        int arith_addi_88 = (arith_muli_83 + arith_const_11); 
        double memref_load_89 = func_arg_1[arith_addi_18][arith_addi_88]; 
        double arith_mulf_90 = (memref_load_89 * memref_load_89); 
        double memref_load_91 = func_arg_1[arith_addi_18][arith_addi_18]; 
        double arith_subf_92 = (memref_load_91 - arith_mulf_90); 
        func_arg_1[arith_addi_18][arith_addi_18] = arith_subf_92; 
        int arith_addi_93 = (arith_muli_83 + arith_const_10); 
        double memref_load_94 = func_arg_1[arith_addi_18][arith_addi_93]; 
        double arith_mulf_95 = (memref_load_94 * memref_load_94); 
        double memref_load_96 = func_arg_1[arith_addi_18][arith_addi_18]; 
        double arith_subf_97 = (memref_load_96 - arith_mulf_95); 
        func_arg_1[arith_addi_18][arith_addi_18] = arith_subf_97; 
        int arith_addi_98 = (arith_muli_83 + arith_const_3); 
        double memref_load_99 = func_arg_1[arith_addi_18][arith_addi_98]; 
        double arith_mulf_100 = (memref_load_99 * memref_load_99); 
        double memref_load_101 = func_arg_1[arith_addi_18][arith_addi_18]; 
        double arith_subf_102 = (memref_load_101 - arith_mulf_100); 
        func_arg_1[arith_addi_18][arith_addi_18] = arith_subf_102; 
      }
      int arith_remsi_103 = (arith_addi_18 % arith_const_5); 
      int arith_cmpi_104 = (arith_remsi_103 < arith_const_9); 
      int arith_addi_105 = (arith_remsi_103 + arith_const_5); 
      int arith_select_106 = (arith_cmpi_104 ? arith_addi_105 : arith_remsi_103); 
      for (int for_iter_107 = arith_const_9; for_iter_107 < arith_select_106; for_iter_107 += arith_const_11) {
        int arith_cmpi_108 = (arith_addi_18 < arith_const_9); 
        int arith_subi_109 = (arith_const_4 - arith_addi_18); 
        int arith_select_110 = (arith_cmpi_108 ? arith_subi_109 : arith_addi_18); 
        int arith_divi_111 = (arith_select_110 / arith_const_5); 
        int arith_subi_112 = (arith_const_4 - arith_divi_111); 
        int arith_select_113 = (arith_cmpi_108 ? arith_subi_112 : arith_divi_111); 
        int arith_muli_114 = (arith_select_113 * arith_const_5); 
        int arith_addi_115 = (for_iter_107 + arith_muli_114); 
        double memref_load_116 = func_arg_1[arith_addi_18][arith_addi_115]; 
        double arith_mulf_117 = (memref_load_116 * memref_load_116); 
        double memref_load_118 = func_arg_1[arith_addi_18][arith_addi_18]; 
        double arith_subf_119 = (memref_load_118 - arith_mulf_117); 
        func_arg_1[arith_addi_18][arith_addi_18] = arith_subf_119; 
      }
      double memref_load_120 = func_arg_1[arith_addi_18][arith_addi_18]; 
      double math_sqrt_121 = sqrt(memref_load_120); 
      func_arg_1[arith_addi_18][arith_addi_18] = math_sqrt_121; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;


  kernel_cholesky(n, A);

}

#pragma pocc-region-end
