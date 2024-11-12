#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 0; 
  int arith_const_9 = 40; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_10; for_iter_12 += arith_const_10) {
      int arith_addi_13 = (for_iter_11 + for_iter_12); 
      double memref_load_14 = func_arg_3[arith_addi_13]; 
      func_arg_2[arith_addi_13] = memref_load_14; 
      int arith_addi_15 = (for_iter_11 + for_iter_12); 
      int arith_cmpi_16 = (arith_addi_15 < arith_const_8); 
      int arith_subi_17 = (arith_const_6 - arith_addi_15); 
      int arith_select_18 = (arith_cmpi_16 ? arith_subi_17 : arith_addi_15); 
      int arith_divi_19 = (arith_select_18 / arith_const_7); 
      int arith_subi_20 = (arith_const_6 - arith_divi_19); 
      int arith_select_21 = (arith_cmpi_16 ? arith_subi_20 : arith_divi_19); 
      for (int for_iter_22 = arith_const_8; for_iter_22 < arith_select_21; for_iter_22 += arith_const_10) {
        int arith_muli_23 = (for_iter_22 * arith_const_7); 
        double memref_load_24 = func_arg_1[arith_addi_13][arith_muli_23]; 
        double memref_load_25 = func_arg_2[arith_muli_23]; 
        double arith_mulf_26 = (memref_load_24 * memref_load_25); 
        double memref_load_27 = func_arg_2[arith_addi_13]; 
        double arith_subf_28 = (memref_load_27 - arith_mulf_26); 
        func_arg_2[arith_addi_13] = arith_subf_28; 
        int arith_addi_29 = (arith_muli_23 + arith_const_10); 
        double memref_load_30 = func_arg_1[arith_addi_13][arith_addi_29]; 
        double memref_load_31 = func_arg_2[arith_addi_29]; 
        double arith_mulf_32 = (memref_load_30 * memref_load_31); 
        double memref_load_33 = func_arg_2[arith_addi_13]; 
        double arith_subf_34 = (memref_load_33 - arith_mulf_32); 
        func_arg_2[arith_addi_13] = arith_subf_34; 
        int arith_addi_35 = (arith_muli_23 + arith_const_5); 
        double memref_load_36 = func_arg_1[arith_addi_13][arith_addi_35]; 
        double memref_load_37 = func_arg_2[arith_addi_35]; 
        double arith_mulf_38 = (memref_load_36 * memref_load_37); 
        double memref_load_39 = func_arg_2[arith_addi_13]; 
        double arith_subf_40 = (memref_load_39 - arith_mulf_38); 
        func_arg_2[arith_addi_13] = arith_subf_40; 
        int arith_addi_41 = (arith_muli_23 + arith_const_4); 
        double memref_load_42 = func_arg_1[arith_addi_13][arith_addi_41]; 
        double memref_load_43 = func_arg_2[arith_addi_41]; 
        double arith_mulf_44 = (memref_load_42 * memref_load_43); 
        double memref_load_45 = func_arg_2[arith_addi_13]; 
        double arith_subf_46 = (memref_load_45 - arith_mulf_44); 
        func_arg_2[arith_addi_13] = arith_subf_46; 
      }
      int arith_addi_47 = (for_iter_11 + for_iter_12); 
      int arith_remsi_48 = (arith_addi_47 % arith_const_7); 
      int arith_cmpi_49 = (arith_remsi_48 < arith_const_8); 
      int arith_addi_50 = (arith_remsi_48 + arith_const_7); 
      int arith_select_51 = (arith_cmpi_49 ? arith_addi_50 : arith_remsi_48); 
      for (int for_iter_52 = arith_const_8; for_iter_52 < arith_select_51; for_iter_52 += arith_const_10) {
        int arith_cmpi_53 = (arith_addi_13 < arith_const_8); 
        int arith_subi_54 = (arith_const_6 - arith_addi_13); 
        int arith_select_55 = (arith_cmpi_53 ? arith_subi_54 : arith_addi_13); 
        int arith_divi_56 = (arith_select_55 / arith_const_7); 
        int arith_subi_57 = (arith_const_6 - arith_divi_56); 
        int arith_select_58 = (arith_cmpi_53 ? arith_subi_57 : arith_divi_56); 
        int arith_muli_59 = (arith_select_58 * arith_const_7); 
        int arith_addi_60 = (for_iter_52 + arith_muli_59); 
        double memref_load_61 = func_arg_1[arith_addi_13][arith_addi_60]; 
        double memref_load_62 = func_arg_2[arith_addi_60]; 
        double arith_mulf_63 = (memref_load_61 * memref_load_62); 
        double memref_load_64 = func_arg_2[arith_addi_13]; 
        double arith_subf_65 = (memref_load_64 - arith_mulf_63); 
        func_arg_2[arith_addi_13] = arith_subf_65; 
      }
      double memref_load_66 = func_arg_2[arith_addi_13]; 
      double memref_load_67 = func_arg_1[arith_addi_13][arith_addi_13]; 
      double arith_divf_68 = (memref_load_66 / memref_load_67); 
      func_arg_2[arith_addi_13] = arith_divf_68; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;


  kernel_trisolv(n, L, x, b);

}

#pragma pocc-region-end
