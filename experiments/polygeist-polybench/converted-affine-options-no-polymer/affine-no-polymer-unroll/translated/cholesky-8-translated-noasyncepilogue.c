#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
    for (int for_iter_10 = arith_const_6; for_iter_10 < for_iter_9; for_iter_10 += arith_const_8) {
      int arith_cmpi_11 = ((for_iter_10 < arith_const_6) ? 1 : 0); 
      int arith_subi_12 = (arith_const_4 - for_iter_10); 
      int arith_select_13 = (arith_cmpi_11 ? arith_subi_12 : for_iter_10); 
      int arith_divi_14 = (arith_select_13 / arith_const_5); 
      int arith_subi_15 = (arith_const_4 - arith_divi_14); 
      int arith_select_16 = (arith_cmpi_11 ? arith_subi_15 : arith_divi_14); 
      int arith_muli_17 = (arith_select_16 * arith_const_5); 
      for (int for_iter_18 = arith_const_6; for_iter_18 < arith_muli_17; for_iter_18 += arith_const_5) {
        double memref_load_19 = func_arg_1[for_iter_9][for_iter_18]; 
        double memref_load_20 = func_arg_1[for_iter_10][for_iter_18]; 
        double arith_mulf_21 = (memref_load_19 * memref_load_20); 
        double memref_load_22 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_23 = (memref_load_22 - arith_mulf_21); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_23; 
        int arith_addi_24 = (for_iter_18 + arith_const_8); 
        double memref_load_25 = func_arg_1[for_iter_9][arith_addi_24]; 
        double memref_load_26 = func_arg_1[for_iter_10][arith_addi_24]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double memref_load_28 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_29 = (memref_load_28 - arith_mulf_27); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_29; 
        int arith_addi_30 = (for_iter_18 + arith_const_3); 
        double memref_load_31 = func_arg_1[for_iter_9][arith_addi_30]; 
        double memref_load_32 = func_arg_1[for_iter_10][arith_addi_30]; 
        double arith_mulf_33 = (memref_load_31 * memref_load_32); 
        double memref_load_34 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_35 = (memref_load_34 - arith_mulf_33); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_35; 
        int arith_addi_36 = (for_iter_18 + arith_const_2); 
        double memref_load_37 = func_arg_1[for_iter_9][arith_addi_36]; 
        double memref_load_38 = func_arg_1[for_iter_10][arith_addi_36]; 
        double arith_mulf_39 = (memref_load_37 * memref_load_38); 
        double memref_load_40 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_41 = (memref_load_40 - arith_mulf_39); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_41; 
      }
      int arith_cmpi_42 = ((for_iter_10 < arith_const_6) ? 1 : 0); 
      int arith_subi_43 = (arith_const_4 - for_iter_10); 
      int arith_select_44 = (arith_cmpi_42 ? arith_subi_43 : for_iter_10); 
      int arith_divi_45 = (arith_select_44 / arith_const_5); 
      int arith_subi_46 = (arith_const_4 - arith_divi_45); 
      int arith_select_47 = (arith_cmpi_42 ? arith_subi_46 : arith_divi_45); 
      int arith_muli_48 = (arith_select_47 * arith_const_5); 
      for (int for_iter_49 = arith_muli_48; for_iter_49 < for_iter_10; for_iter_49 += arith_const_8) {
        double memref_load_50 = func_arg_1[for_iter_9][for_iter_49]; 
        double memref_load_51 = func_arg_1[for_iter_10][for_iter_49]; 
        double arith_mulf_52 = (memref_load_50 * memref_load_51); 
        double memref_load_53 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_54 = (memref_load_53 - arith_mulf_52); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_54; 
      }
      double memref_load_55 = func_arg_1[for_iter_10][for_iter_10]; 
      double memref_load_56 = func_arg_1[for_iter_9][for_iter_10]; 
      double arith_divf_57 = (memref_load_56 / memref_load_55); 
      func_arg_1[for_iter_9][for_iter_10] = arith_divf_57; 
    }
    int arith_cmpi_58 = ((for_iter_9 < arith_const_6) ? 1 : 0); 
    int arith_subi_59 = (arith_const_4 - for_iter_9); 
    int arith_select_60 = (arith_cmpi_58 ? arith_subi_59 : for_iter_9); 
    int arith_divi_61 = (arith_select_60 / arith_const_5); 
    int arith_subi_62 = (arith_const_4 - arith_divi_61); 
    int arith_select_63 = (arith_cmpi_58 ? arith_subi_62 : arith_divi_61); 
    int arith_muli_64 = (arith_select_63 * arith_const_5); 
    for (int for_iter_65 = arith_const_6; for_iter_65 < arith_muli_64; for_iter_65 += arith_const_5) {
      double memref_load_66 = func_arg_1[for_iter_9][for_iter_65]; 
      double arith_mulf_67 = (memref_load_66 * memref_load_66); 
      double memref_load_68 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_subf_69 = (memref_load_68 - arith_mulf_67); 
      func_arg_1[for_iter_9][for_iter_9] = arith_subf_69; 
      int arith_addi_70 = (for_iter_65 + arith_const_8); 
      double memref_load_71 = func_arg_1[for_iter_9][arith_addi_70]; 
      double arith_mulf_72 = (memref_load_71 * memref_load_71); 
      double memref_load_73 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_subf_74 = (memref_load_73 - arith_mulf_72); 
      func_arg_1[for_iter_9][for_iter_9] = arith_subf_74; 
      int arith_addi_75 = (for_iter_65 + arith_const_3); 
      double memref_load_76 = func_arg_1[for_iter_9][arith_addi_75]; 
      double arith_mulf_77 = (memref_load_76 * memref_load_76); 
      double memref_load_78 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_subf_79 = (memref_load_78 - arith_mulf_77); 
      func_arg_1[for_iter_9][for_iter_9] = arith_subf_79; 
      int arith_addi_80 = (for_iter_65 + arith_const_2); 
      double memref_load_81 = func_arg_1[for_iter_9][arith_addi_80]; 
      double arith_mulf_82 = (memref_load_81 * memref_load_81); 
      double memref_load_83 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_subf_84 = (memref_load_83 - arith_mulf_82); 
      func_arg_1[for_iter_9][for_iter_9] = arith_subf_84; 
    }
    int arith_cmpi_85 = ((for_iter_9 < arith_const_6) ? 1 : 0); 
    int arith_subi_86 = (arith_const_4 - for_iter_9); 
    int arith_select_87 = (arith_cmpi_85 ? arith_subi_86 : for_iter_9); 
    int arith_divi_88 = (arith_select_87 / arith_const_5); 
    int arith_subi_89 = (arith_const_4 - arith_divi_88); 
    int arith_select_90 = (arith_cmpi_85 ? arith_subi_89 : arith_divi_88); 
    int arith_muli_91 = (arith_select_90 * arith_const_5); 
    for (int for_iter_92 = arith_muli_91; for_iter_92 < for_iter_9; for_iter_92 += arith_const_8) {
      double memref_load_93 = func_arg_1[for_iter_9][for_iter_92]; 
      double arith_mulf_94 = (memref_load_93 * memref_load_93); 
      double memref_load_95 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_subf_96 = (memref_load_95 - arith_mulf_94); 
      func_arg_1[for_iter_9][for_iter_9] = arith_subf_96; 
    }
    double memref_load_97 = func_arg_1[for_iter_9][for_iter_9]; 
    double math_sqrt_98 = sqrt(memref_load_97); 
    func_arg_1[for_iter_9][for_iter_9] = math_sqrt_98; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* A;


  kernel_cholesky(n, A);

}

#pragma pocc-region-end
