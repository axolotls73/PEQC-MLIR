#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 3; 
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 19; 
  int arith_const_9 = -1; 
  int arith_const_10 = 30; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_10; for_iter_15 += arith_const_13) {
      int arith_addi_16 = (for_iter_14 + arith_const_13); 
      int arith_muli_17 = (for_iter_14 * arith_const_9); 
      int arith_addi_18 = (arith_muli_17 + arith_const_8); 
      int arith_cmpi_19 = (arith_addi_18 < arith_const_11); 
      int arith_subi_20 = (arith_const_9 - arith_addi_18); 
      int arith_select_21 = (arith_cmpi_19 ? arith_subi_20 : arith_addi_18); 
      int arith_divi_22 = (arith_select_21 / arith_const_7); 
      int arith_subi_23 = (arith_const_9 - arith_divi_22); 
      int arith_select_24 = (arith_cmpi_19 ? arith_subi_23 : arith_divi_22); 
      int arith_muli_25 = (arith_select_24 * arith_const_7); 
      int arith_addi_26 = (for_iter_14 + arith_muli_25); 
      int arith_addi_27 = (arith_addi_26 + arith_const_13); 
      for (int for_iter_28 = arith_addi_16; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_7) {
        double memref_load_29 = func_arg_3[for_iter_28][for_iter_14]; 
        double memref_load_30 = func_arg_4[for_iter_28][for_iter_15]; 
        double arith_mulf_31 = (memref_load_29 * memref_load_30); 
        double memref_load_32 = func_arg_4[for_iter_14][for_iter_15]; 
        double arith_addf_33 = (memref_load_32 + arith_mulf_31); 
        func_arg_4[for_iter_14][for_iter_15] = arith_addf_33; 
        int arith_addi_34 = (for_iter_28 + arith_const_13); 
        double memref_load_35 = func_arg_3[arith_addi_34][for_iter_14]; 
        double memref_load_36 = func_arg_4[arith_addi_34][for_iter_15]; 
        double arith_mulf_37 = (memref_load_35 * memref_load_36); 
        double memref_load_38 = func_arg_4[for_iter_14][for_iter_15]; 
        double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
        func_arg_4[for_iter_14][for_iter_15] = arith_addf_39; 
        int arith_addi_40 = (for_iter_28 + arith_const_6); 
        double memref_load_41 = func_arg_3[arith_addi_40][for_iter_14]; 
        double memref_load_42 = func_arg_4[arith_addi_40][for_iter_15]; 
        double arith_mulf_43 = (memref_load_41 * memref_load_42); 
        double memref_load_44 = func_arg_4[for_iter_14][for_iter_15]; 
        double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
        func_arg_4[for_iter_14][for_iter_15] = arith_addf_45; 
        int arith_addi_46 = (for_iter_28 + arith_const_5); 
        double memref_load_47 = func_arg_3[arith_addi_46][for_iter_14]; 
        double memref_load_48 = func_arg_4[arith_addi_46][for_iter_15]; 
        double arith_mulf_49 = (memref_load_47 * memref_load_48); 
        double memref_load_50 = func_arg_4[for_iter_14][for_iter_15]; 
        double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
        func_arg_4[for_iter_14][for_iter_15] = arith_addf_51; 
      }
      int arith_muli_52 = (for_iter_14 * arith_const_9); 
      int arith_addi_53 = (arith_muli_52 + arith_const_8); 
      int arith_cmpi_54 = (arith_addi_53 < arith_const_11); 
      int arith_subi_55 = (arith_const_9 - arith_addi_53); 
      int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : arith_addi_53); 
      int arith_divi_57 = (arith_select_56 / arith_const_7); 
      int arith_subi_58 = (arith_const_9 - arith_divi_57); 
      int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
      int arith_muli_60 = (arith_select_59 * arith_const_7); 
      int arith_addi_61 = (for_iter_14 + arith_muli_60); 
      int arith_addi_62 = (arith_addi_61 + arith_const_13); 
      for (int for_iter_63 = arith_addi_62; for_iter_63 < arith_const_12; for_iter_63 += arith_const_13) {
        double memref_load_64 = func_arg_3[for_iter_63][for_iter_14]; 
        double memref_load_65 = func_arg_4[for_iter_63][for_iter_15]; 
        double arith_mulf_66 = (memref_load_64 * memref_load_65); 
        double memref_load_67 = func_arg_4[for_iter_14][for_iter_15]; 
        double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
        func_arg_4[for_iter_14][for_iter_15] = arith_addf_68; 
      }
      double memref_load_69 = func_arg_4[for_iter_14][for_iter_15]; 
      double arith_mulf_70 = (func_arg_2 * memref_load_69); 
      func_arg_4[for_iter_14][for_iter_15] = arith_mulf_70; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
