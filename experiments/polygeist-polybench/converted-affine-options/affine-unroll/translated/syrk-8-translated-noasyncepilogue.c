#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
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
    int arith_cmpi_16 = ((arith_addi_15 < arith_const_11) ? 1 : 0); 
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
    int arith_cmpi_36 = ((arith_addi_35 < arith_const_11) ? 1 : 0); 
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
  }
  for (int for_iter_47 = arith_const_11; for_iter_47 < arith_const_12; for_iter_47 += arith_const_13) {
    int arith_addi_48 = (for_iter_47 + arith_const_13); 
    for (int for_iter_49 = arith_const_11; for_iter_49 < arith_addi_48; for_iter_49 += arith_const_13) {
      for (int for_iter_50 = arith_const_11; for_iter_50 < arith_const_6; for_iter_50 += arith_const_10) {
        double memref_load_51 = func_arg_4[for_iter_47][for_iter_49]; 
        double memref_load_52 = func_arg_5[for_iter_47][for_iter_50]; 
        double arith_mulf_53 = (func_arg_2 * memref_load_52); 
        double memref_load_54 = func_arg_5[for_iter_49][for_iter_50]; 
        double arith_mulf_55 = (arith_mulf_53 * memref_load_54); 
        double arith_addf_56 = (memref_load_51 + arith_mulf_55); 
        func_arg_4[for_iter_47][for_iter_49] = arith_addf_56; 
        int arith_addi_57 = (for_iter_50 + arith_const_13); 
        double memref_load_58 = func_arg_4[for_iter_47][for_iter_49]; 
        double memref_load_59 = func_arg_5[for_iter_47][arith_addi_57]; 
        double arith_mulf_60 = (func_arg_2 * memref_load_59); 
        double memref_load_61 = func_arg_5[for_iter_49][arith_addi_57]; 
        double arith_mulf_62 = (arith_mulf_60 * memref_load_61); 
        double arith_addf_63 = (memref_load_58 + arith_mulf_62); 
        func_arg_4[for_iter_47][for_iter_49] = arith_addf_63; 
        int arith_addi_64 = (for_iter_50 + arith_const_8); 
        double memref_load_65 = func_arg_4[for_iter_47][for_iter_49]; 
        double memref_load_66 = func_arg_5[for_iter_47][arith_addi_64]; 
        double arith_mulf_67 = (func_arg_2 * memref_load_66); 
        double memref_load_68 = func_arg_5[for_iter_49][arith_addi_64]; 
        double arith_mulf_69 = (arith_mulf_67 * memref_load_68); 
        double arith_addf_70 = (memref_load_65 + arith_mulf_69); 
        func_arg_4[for_iter_47][for_iter_49] = arith_addf_70; 
        int arith_addi_71 = (for_iter_50 + arith_const_7); 
        double memref_load_72 = func_arg_4[for_iter_47][for_iter_49]; 
        double memref_load_73 = func_arg_5[for_iter_47][arith_addi_71]; 
        double arith_mulf_74 = (func_arg_2 * memref_load_73); 
        double memref_load_75 = func_arg_5[for_iter_49][arith_addi_71]; 
        double arith_mulf_76 = (arith_mulf_74 * memref_load_75); 
        double arith_addf_77 = (memref_load_72 + arith_mulf_76); 
        func_arg_4[for_iter_47][for_iter_49] = arith_addf_77; 
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
