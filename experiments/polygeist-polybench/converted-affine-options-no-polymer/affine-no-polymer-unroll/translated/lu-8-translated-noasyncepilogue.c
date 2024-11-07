#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
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
        double memref_load_20 = func_arg_1[for_iter_18][for_iter_10]; 
        double arith_mulf_21 = (memref_load_19 * memref_load_20); 
        double memref_load_22 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_23 = (memref_load_22 - arith_mulf_21); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_23; 
        int arith_addi_24 = (for_iter_18 + arith_const_8); 
        double memref_load_25 = func_arg_1[for_iter_9][arith_addi_24]; 
        double memref_load_26 = func_arg_1[arith_addi_24][for_iter_10]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double memref_load_28 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_29 = (memref_load_28 - arith_mulf_27); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_29; 
        int arith_addi_30 = (for_iter_18 + arith_const_3); 
        double memref_load_31 = func_arg_1[for_iter_9][arith_addi_30]; 
        double memref_load_32 = func_arg_1[arith_addi_30][for_iter_10]; 
        double arith_mulf_33 = (memref_load_31 * memref_load_32); 
        double memref_load_34 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_subf_35 = (memref_load_34 - arith_mulf_33); 
        func_arg_1[for_iter_9][for_iter_10] = arith_subf_35; 
        int arith_addi_36 = (for_iter_18 + arith_const_2); 
        double memref_load_37 = func_arg_1[for_iter_9][arith_addi_36]; 
        double memref_load_38 = func_arg_1[arith_addi_36][for_iter_10]; 
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
        double memref_load_51 = func_arg_1[for_iter_49][for_iter_10]; 
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
    for (int for_iter_58 = for_iter_9; for_iter_58 < arith_const_7; for_iter_58 += arith_const_8) {
      int arith_cmpi_59 = ((for_iter_9 < arith_const_6) ? 1 : 0); 
      int arith_subi_60 = (arith_const_4 - for_iter_9); 
      int arith_select_61 = (arith_cmpi_59 ? arith_subi_60 : for_iter_9); 
      int arith_divi_62 = (arith_select_61 / arith_const_5); 
      int arith_subi_63 = (arith_const_4 - arith_divi_62); 
      int arith_select_64 = (arith_cmpi_59 ? arith_subi_63 : arith_divi_62); 
      int arith_muli_65 = (arith_select_64 * arith_const_5); 
      for (int for_iter_66 = arith_const_6; for_iter_66 < arith_muli_65; for_iter_66 += arith_const_5) {
        double memref_load_67 = func_arg_1[for_iter_9][for_iter_66]; 
        double memref_load_68 = func_arg_1[for_iter_66][for_iter_58]; 
        double arith_mulf_69 = (memref_load_67 * memref_load_68); 
        double memref_load_70 = func_arg_1[for_iter_9][for_iter_58]; 
        double arith_subf_71 = (memref_load_70 - arith_mulf_69); 
        func_arg_1[for_iter_9][for_iter_58] = arith_subf_71; 
        int arith_addi_72 = (for_iter_66 + arith_const_8); 
        double memref_load_73 = func_arg_1[for_iter_9][arith_addi_72]; 
        double memref_load_74 = func_arg_1[arith_addi_72][for_iter_58]; 
        double arith_mulf_75 = (memref_load_73 * memref_load_74); 
        double memref_load_76 = func_arg_1[for_iter_9][for_iter_58]; 
        double arith_subf_77 = (memref_load_76 - arith_mulf_75); 
        func_arg_1[for_iter_9][for_iter_58] = arith_subf_77; 
        int arith_addi_78 = (for_iter_66 + arith_const_3); 
        double memref_load_79 = func_arg_1[for_iter_9][arith_addi_78]; 
        double memref_load_80 = func_arg_1[arith_addi_78][for_iter_58]; 
        double arith_mulf_81 = (memref_load_79 * memref_load_80); 
        double memref_load_82 = func_arg_1[for_iter_9][for_iter_58]; 
        double arith_subf_83 = (memref_load_82 - arith_mulf_81); 
        func_arg_1[for_iter_9][for_iter_58] = arith_subf_83; 
        int arith_addi_84 = (for_iter_66 + arith_const_2); 
        double memref_load_85 = func_arg_1[for_iter_9][arith_addi_84]; 
        double memref_load_86 = func_arg_1[arith_addi_84][for_iter_58]; 
        double arith_mulf_87 = (memref_load_85 * memref_load_86); 
        double memref_load_88 = func_arg_1[for_iter_9][for_iter_58]; 
        double arith_subf_89 = (memref_load_88 - arith_mulf_87); 
        func_arg_1[for_iter_9][for_iter_58] = arith_subf_89; 
      }
      int arith_cmpi_90 = ((for_iter_9 < arith_const_6) ? 1 : 0); 
      int arith_subi_91 = (arith_const_4 - for_iter_9); 
      int arith_select_92 = (arith_cmpi_90 ? arith_subi_91 : for_iter_9); 
      int arith_divi_93 = (arith_select_92 / arith_const_5); 
      int arith_subi_94 = (arith_const_4 - arith_divi_93); 
      int arith_select_95 = (arith_cmpi_90 ? arith_subi_94 : arith_divi_93); 
      int arith_muli_96 = (arith_select_95 * arith_const_5); 
      for (int for_iter_97 = arith_muli_96; for_iter_97 < for_iter_9; for_iter_97 += arith_const_8) {
        double memref_load_98 = func_arg_1[for_iter_9][for_iter_97]; 
        double memref_load_99 = func_arg_1[for_iter_97][for_iter_58]; 
        double arith_mulf_100 = (memref_load_98 * memref_load_99); 
        double memref_load_101 = func_arg_1[for_iter_9][for_iter_58]; 
        double arith_subf_102 = (memref_load_101 - arith_mulf_100); 
        func_arg_1[for_iter_9][for_iter_58] = arith_subf_102; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* A;


  kernel_lu(n, A);

}

#pragma pocc-region-end
