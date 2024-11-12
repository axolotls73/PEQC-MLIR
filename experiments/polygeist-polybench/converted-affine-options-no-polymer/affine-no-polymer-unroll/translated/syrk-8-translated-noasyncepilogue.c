#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 0; 
  int arith_const_12 = 30; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_addi_15 = (for_iter_14 + arith_const_13); 
    int arith_cmpi_16 = (arith_addi_15 < arith_const_11); 
    int arith_subi_17 = (arith_const_9 - arith_addi_15); 
    int arith_select_18 = (arith_cmpi_16 ? arith_subi_17 : arith_addi_15); 
    int arith_divi_19 = (arith_select_18 / arith_const_10); 
    int arith_subi_20 = (arith_const_9 - arith_divi_19); 
    int arith_select_21 = (arith_cmpi_16 ? arith_subi_20 : arith_divi_19); 
    int arith_muli_22 = (arith_select_21 * arith_const_10); 
    for (int for_iter_23 = arith_const_11; for_iter_23 < arith_muli_22; for_iter_23 += arith_const_10) {
      double memref_load_24 = func_arg_4[for_iter_14][for_iter_23]; 
      double arith_mulf_25 = (memref_load_24 * func_arg_3); 
      func_arg_4[for_iter_14][for_iter_23] = arith_mulf_25; 
      int arith_addi_26 = (for_iter_23 + arith_const_13); 
      double memref_load_27 = func_arg_4[for_iter_14][arith_addi_26]; 
      double arith_mulf_28 = (memref_load_27 * func_arg_3); 
      func_arg_4[for_iter_14][arith_addi_26] = arith_mulf_28; 
      int arith_addi_29 = (for_iter_23 + arith_const_8); 
      double memref_load_30 = func_arg_4[for_iter_14][arith_addi_29]; 
      double arith_mulf_31 = (memref_load_30 * func_arg_3); 
      func_arg_4[for_iter_14][arith_addi_29] = arith_mulf_31; 
      int arith_addi_32 = (for_iter_23 + arith_const_7); 
      double memref_load_33 = func_arg_4[for_iter_14][arith_addi_32]; 
      double arith_mulf_34 = (memref_load_33 * func_arg_3); 
      func_arg_4[for_iter_14][arith_addi_32] = arith_mulf_34; 
    }
    int arith_addi_35 = (for_iter_14 + arith_const_13); 
    int arith_cmpi_36 = (arith_addi_35 < arith_const_11); 
    int arith_subi_37 = (arith_const_9 - arith_addi_35); 
    int arith_select_38 = (arith_cmpi_36 ? arith_subi_37 : arith_addi_35); 
    int arith_divi_39 = (arith_select_38 / arith_const_10); 
    int arith_subi_40 = (arith_const_9 - arith_divi_39); 
    int arith_select_41 = (arith_cmpi_36 ? arith_subi_40 : arith_divi_39); 
    int arith_muli_42 = (arith_select_41 * arith_const_10); 
    int arith_addi_43 = (for_iter_14 + arith_const_13); 
    for (int for_iter_44 = arith_muli_42; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_13) {
      double memref_load_45 = func_arg_4[for_iter_14][for_iter_44]; 
      double arith_mulf_46 = (memref_load_45 * func_arg_3); 
      func_arg_4[for_iter_14][for_iter_44] = arith_mulf_46; 
    }
    for (int for_iter_47 = arith_const_11; for_iter_47 < arith_const_6; for_iter_47 += arith_const_13) {
      int arith_addi_48 = (for_iter_14 + arith_const_13); 
      int arith_cmpi_49 = (arith_addi_48 < arith_const_11); 
      int arith_subi_50 = (arith_const_9 - arith_addi_48); 
      int arith_select_51 = (arith_cmpi_49 ? arith_subi_50 : arith_addi_48); 
      int arith_divi_52 = (arith_select_51 / arith_const_10); 
      int arith_subi_53 = (arith_const_9 - arith_divi_52); 
      int arith_select_54 = (arith_cmpi_49 ? arith_subi_53 : arith_divi_52); 
      int arith_muli_55 = (arith_select_54 * arith_const_10); 
      for (int for_iter_56 = arith_const_11; for_iter_56 < arith_muli_55; for_iter_56 += arith_const_10) {
        double memref_load_57 = func_arg_5[for_iter_14][for_iter_47]; 
        double arith_mulf_58 = (func_arg_2 * memref_load_57); 
        double memref_load_59 = func_arg_5[for_iter_56][for_iter_47]; 
        double arith_mulf_60 = (arith_mulf_58 * memref_load_59); 
        double memref_load_61 = func_arg_4[for_iter_14][for_iter_56]; 
        double arith_addf_62 = (memref_load_61 + arith_mulf_60); 
        func_arg_4[for_iter_14][for_iter_56] = arith_addf_62; 
        int arith_addi_63 = (for_iter_56 + arith_const_13); 
        double memref_load_64 = func_arg_5[for_iter_14][for_iter_47]; 
        double arith_mulf_65 = (func_arg_2 * memref_load_64); 
        double memref_load_66 = func_arg_5[arith_addi_63][for_iter_47]; 
        double arith_mulf_67 = (arith_mulf_65 * memref_load_66); 
        double memref_load_68 = func_arg_4[for_iter_14][arith_addi_63]; 
        double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
        func_arg_4[for_iter_14][arith_addi_63] = arith_addf_69; 
        int arith_addi_70 = (for_iter_56 + arith_const_8); 
        double memref_load_71 = func_arg_5[for_iter_14][for_iter_47]; 
        double arith_mulf_72 = (func_arg_2 * memref_load_71); 
        double memref_load_73 = func_arg_5[arith_addi_70][for_iter_47]; 
        double arith_mulf_74 = (arith_mulf_72 * memref_load_73); 
        double memref_load_75 = func_arg_4[for_iter_14][arith_addi_70]; 
        double arith_addf_76 = (memref_load_75 + arith_mulf_74); 
        func_arg_4[for_iter_14][arith_addi_70] = arith_addf_76; 
        int arith_addi_77 = (for_iter_56 + arith_const_7); 
        double memref_load_78 = func_arg_5[for_iter_14][for_iter_47]; 
        double arith_mulf_79 = (func_arg_2 * memref_load_78); 
        double memref_load_80 = func_arg_5[arith_addi_77][for_iter_47]; 
        double arith_mulf_81 = (arith_mulf_79 * memref_load_80); 
        double memref_load_82 = func_arg_4[for_iter_14][arith_addi_77]; 
        double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
        func_arg_4[for_iter_14][arith_addi_77] = arith_addf_83; 
      }
      int arith_addi_84 = (for_iter_14 + arith_const_13); 
      int arith_cmpi_85 = (arith_addi_84 < arith_const_11); 
      int arith_subi_86 = (arith_const_9 - arith_addi_84); 
      int arith_select_87 = (arith_cmpi_85 ? arith_subi_86 : arith_addi_84); 
      int arith_divi_88 = (arith_select_87 / arith_const_10); 
      int arith_subi_89 = (arith_const_9 - arith_divi_88); 
      int arith_select_90 = (arith_cmpi_85 ? arith_subi_89 : arith_divi_88); 
      int arith_muli_91 = (arith_select_90 * arith_const_10); 
      int arith_addi_92 = (for_iter_14 + arith_const_13); 
      for (int for_iter_93 = arith_muli_91; for_iter_93 < arith_addi_92; for_iter_93 += arith_const_13) {
        double memref_load_94 = func_arg_5[for_iter_14][for_iter_47]; 
        double arith_mulf_95 = (func_arg_2 * memref_load_94); 
        double memref_load_96 = func_arg_5[for_iter_93][for_iter_47]; 
        double arith_mulf_97 = (arith_mulf_95 * memref_load_96); 
        double memref_load_98 = func_arg_4[for_iter_14][for_iter_93]; 
        double arith_addf_99 = (memref_load_98 + arith_mulf_97); 
        func_arg_4[for_iter_14][for_iter_93] = arith_addf_99; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;


  kernel_syrk(n, m, alpha, beta, C, A);

}

#pragma pocc-region-end
