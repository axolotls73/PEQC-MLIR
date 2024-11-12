#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_cholesky(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 3; 
  int arith_const_3 = 2; 
  int arith_const_4 = -1; 
  int arith_const_5 = 4; 
  int arith_const_6 = 0; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_8; for_iter_10 += arith_const_8) {
      int arith_addi_11 = (for_iter_9 + for_iter_10); 
      int arith_addi_12 = (for_iter_9 + for_iter_10); 
      for (int for_iter_13 = arith_const_6; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_8) {
        int arith_cmpi_14 = (for_iter_13 < arith_const_6); 
        int arith_subi_15 = (arith_const_4 - for_iter_13); 
        int arith_select_16 = (arith_cmpi_14 ? arith_subi_15 : for_iter_13); 
        int arith_divi_17 = (arith_select_16 / arith_const_5); 
        int arith_subi_18 = (arith_const_4 - arith_divi_17); 
        int arith_select_19 = (arith_cmpi_14 ? arith_subi_18 : arith_divi_17); 
        for (int for_iter_20 = arith_const_6; for_iter_20 < arith_select_19; for_iter_20 += arith_const_8) {
          int arith_muli_21 = (for_iter_20 * arith_const_5); 
          double memref_load_22 = func_arg_1[arith_addi_11][arith_muli_21]; 
          double memref_load_23 = func_arg_1[for_iter_13][arith_muli_21]; 
          double arith_mulf_24 = (memref_load_22 * memref_load_23); 
          double memref_load_25 = func_arg_1[arith_addi_11][for_iter_13]; 
          double arith_subf_26 = (memref_load_25 - arith_mulf_24); 
          func_arg_1[arith_addi_11][for_iter_13] = arith_subf_26; 
          int arith_addi_27 = (arith_muli_21 + arith_const_8); 
          double memref_load_28 = func_arg_1[arith_addi_11][arith_addi_27]; 
          double memref_load_29 = func_arg_1[for_iter_13][arith_addi_27]; 
          double arith_mulf_30 = (memref_load_28 * memref_load_29); 
          double memref_load_31 = func_arg_1[arith_addi_11][for_iter_13]; 
          double arith_subf_32 = (memref_load_31 - arith_mulf_30); 
          func_arg_1[arith_addi_11][for_iter_13] = arith_subf_32; 
          int arith_addi_33 = (arith_muli_21 + arith_const_3); 
          double memref_load_34 = func_arg_1[arith_addi_11][arith_addi_33]; 
          double memref_load_35 = func_arg_1[for_iter_13][arith_addi_33]; 
          double arith_mulf_36 = (memref_load_34 * memref_load_35); 
          double memref_load_37 = func_arg_1[arith_addi_11][for_iter_13]; 
          double arith_subf_38 = (memref_load_37 - arith_mulf_36); 
          func_arg_1[arith_addi_11][for_iter_13] = arith_subf_38; 
          int arith_addi_39 = (arith_muli_21 + arith_const_2); 
          double memref_load_40 = func_arg_1[arith_addi_11][arith_addi_39]; 
          double memref_load_41 = func_arg_1[for_iter_13][arith_addi_39]; 
          double arith_mulf_42 = (memref_load_40 * memref_load_41); 
          double memref_load_43 = func_arg_1[arith_addi_11][for_iter_13]; 
          double arith_subf_44 = (memref_load_43 - arith_mulf_42); 
          func_arg_1[arith_addi_11][for_iter_13] = arith_subf_44; 
        }
        int arith_remsi_45 = (for_iter_13 % arith_const_5); 
        int arith_cmpi_46 = (arith_remsi_45 < arith_const_6); 
        int arith_addi_47 = (arith_remsi_45 + arith_const_5); 
        int arith_select_48 = (arith_cmpi_46 ? arith_addi_47 : arith_remsi_45); 
        for (int for_iter_49 = arith_const_6; for_iter_49 < arith_select_48; for_iter_49 += arith_const_8) {
          int arith_cmpi_50 = (for_iter_13 < arith_const_6); 
          int arith_subi_51 = (arith_const_4 - for_iter_13); 
          int arith_select_52 = (arith_cmpi_50 ? arith_subi_51 : for_iter_13); 
          int arith_divi_53 = (arith_select_52 / arith_const_5); 
          int arith_subi_54 = (arith_const_4 - arith_divi_53); 
          int arith_select_55 = (arith_cmpi_50 ? arith_subi_54 : arith_divi_53); 
          int arith_muli_56 = (arith_select_55 * arith_const_5); 
          int arith_addi_57 = (for_iter_49 + arith_muli_56); 
          double memref_load_58 = func_arg_1[arith_addi_11][arith_addi_57]; 
          double memref_load_59 = func_arg_1[for_iter_13][arith_addi_57]; 
          double arith_mulf_60 = (memref_load_58 * memref_load_59); 
          double memref_load_61 = func_arg_1[arith_addi_11][for_iter_13]; 
          double arith_subf_62 = (memref_load_61 - arith_mulf_60); 
          func_arg_1[arith_addi_11][for_iter_13] = arith_subf_62; 
        }
        double memref_load_63 = func_arg_1[for_iter_13][for_iter_13]; 
        double memref_load_64 = func_arg_1[arith_addi_11][for_iter_13]; 
        double arith_divf_65 = (memref_load_64 / memref_load_63); 
        func_arg_1[arith_addi_11][for_iter_13] = arith_divf_65; 
      }
      int arith_addi_66 = (for_iter_9 + for_iter_10); 
      int arith_cmpi_67 = (arith_addi_66 < arith_const_6); 
      int arith_subi_68 = (arith_const_4 - arith_addi_66); 
      int arith_select_69 = (arith_cmpi_67 ? arith_subi_68 : arith_addi_66); 
      int arith_divi_70 = (arith_select_69 / arith_const_5); 
      int arith_subi_71 = (arith_const_4 - arith_divi_70); 
      int arith_select_72 = (arith_cmpi_67 ? arith_subi_71 : arith_divi_70); 
      for (int for_iter_73 = arith_const_6; for_iter_73 < arith_select_72; for_iter_73 += arith_const_8) {
        int arith_muli_74 = (for_iter_73 * arith_const_5); 
        double memref_load_75 = func_arg_1[arith_addi_11][arith_muli_74]; 
        double arith_mulf_76 = (memref_load_75 * memref_load_75); 
        double memref_load_77 = func_arg_1[arith_addi_11][arith_addi_11]; 
        double arith_subf_78 = (memref_load_77 - arith_mulf_76); 
        func_arg_1[arith_addi_11][arith_addi_11] = arith_subf_78; 
        int arith_addi_79 = (arith_muli_74 + arith_const_8); 
        double memref_load_80 = func_arg_1[arith_addi_11][arith_addi_79]; 
        double arith_mulf_81 = (memref_load_80 * memref_load_80); 
        double memref_load_82 = func_arg_1[arith_addi_11][arith_addi_11]; 
        double arith_subf_83 = (memref_load_82 - arith_mulf_81); 
        func_arg_1[arith_addi_11][arith_addi_11] = arith_subf_83; 
        int arith_addi_84 = (arith_muli_74 + arith_const_3); 
        double memref_load_85 = func_arg_1[arith_addi_11][arith_addi_84]; 
        double arith_mulf_86 = (memref_load_85 * memref_load_85); 
        double memref_load_87 = func_arg_1[arith_addi_11][arith_addi_11]; 
        double arith_subf_88 = (memref_load_87 - arith_mulf_86); 
        func_arg_1[arith_addi_11][arith_addi_11] = arith_subf_88; 
        int arith_addi_89 = (arith_muli_74 + arith_const_2); 
        double memref_load_90 = func_arg_1[arith_addi_11][arith_addi_89]; 
        double arith_mulf_91 = (memref_load_90 * memref_load_90); 
        double memref_load_92 = func_arg_1[arith_addi_11][arith_addi_11]; 
        double arith_subf_93 = (memref_load_92 - arith_mulf_91); 
        func_arg_1[arith_addi_11][arith_addi_11] = arith_subf_93; 
      }
      int arith_addi_94 = (for_iter_9 + for_iter_10); 
      int arith_remsi_95 = (arith_addi_94 % arith_const_5); 
      int arith_cmpi_96 = (arith_remsi_95 < arith_const_6); 
      int arith_addi_97 = (arith_remsi_95 + arith_const_5); 
      int arith_select_98 = (arith_cmpi_96 ? arith_addi_97 : arith_remsi_95); 
      for (int for_iter_99 = arith_const_6; for_iter_99 < arith_select_98; for_iter_99 += arith_const_8) {
        int arith_cmpi_100 = (arith_addi_11 < arith_const_6); 
        int arith_subi_101 = (arith_const_4 - arith_addi_11); 
        int arith_select_102 = (arith_cmpi_100 ? arith_subi_101 : arith_addi_11); 
        int arith_divi_103 = (arith_select_102 / arith_const_5); 
        int arith_subi_104 = (arith_const_4 - arith_divi_103); 
        int arith_select_105 = (arith_cmpi_100 ? arith_subi_104 : arith_divi_103); 
        int arith_muli_106 = (arith_select_105 * arith_const_5); 
        int arith_addi_107 = (for_iter_99 + arith_muli_106); 
        double memref_load_108 = func_arg_1[arith_addi_11][arith_addi_107]; 
        double arith_mulf_109 = (memref_load_108 * memref_load_108); 
        double memref_load_110 = func_arg_1[arith_addi_11][arith_addi_11]; 
        double arith_subf_111 = (memref_load_110 - arith_mulf_109); 
        func_arg_1[arith_addi_11][arith_addi_11] = arith_subf_111; 
      }
      double memref_load_112 = func_arg_1[arith_addi_11][arith_addi_11]; 
      double math_sqrt_113 = sqrt(memref_load_112); 
      func_arg_1[arith_addi_11][arith_addi_11] = math_sqrt_113; 
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
