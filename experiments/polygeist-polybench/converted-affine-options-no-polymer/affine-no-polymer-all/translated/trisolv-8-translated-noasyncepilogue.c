#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 8; 
  int arith_const_8 = 40; 
  int arith_const_9 = -32; 
  int arith_const_10 = 32; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_muli_15 = (for_iter_14 * arith_const_10); 
    int arith_muli_16 = (for_iter_14 * arith_const_9); 
    int arith_addi_17 = (arith_muli_16 + arith_const_8); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_10); 
    for (int for_iter_19 = arith_const_11; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_13) {
      int arith_addi_20 = (arith_muli_15 + for_iter_19); 
      double memref_load_21 = func_arg_3[arith_addi_20]; 
      func_arg_2[arith_addi_20] = memref_load_21; 
      int arith_muli_22 = (for_iter_14 * arith_const_7); 
      int arith_cmpi_23 = (for_iter_19 < arith_const_11); 
      int arith_subi_24 = (arith_const_5 - for_iter_19); 
      int arith_select_25 = (arith_cmpi_23 ? arith_subi_24 : for_iter_19); 
      int arith_divi_26 = (arith_select_25 / arith_const_6); 
      int arith_subi_27 = (arith_const_5 - arith_divi_26); 
      int arith_select_28 = (arith_cmpi_23 ? arith_subi_27 : arith_divi_26); 
      int arith_addi_29 = (arith_muli_22 + arith_select_28); 
      for (int for_iter_30 = arith_const_11; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_13) {
        int arith_muli_31 = (for_iter_30 * arith_const_6); 
        double memref_load_32 = func_arg_1[arith_addi_20][arith_muli_31]; 
        double memref_load_33 = func_arg_2[arith_muli_31]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = func_arg_2[arith_addi_20]; 
        double arith_subf_36 = (memref_load_35 - arith_mulf_34); 
        func_arg_2[arith_addi_20] = arith_subf_36; 
        int arith_addi_37 = (arith_muli_31 + arith_const_13); 
        double memref_load_38 = func_arg_1[arith_addi_20][arith_addi_37]; 
        double memref_load_39 = func_arg_2[arith_addi_37]; 
        double arith_mulf_40 = (memref_load_38 * memref_load_39); 
        double memref_load_41 = func_arg_2[arith_addi_20]; 
        double arith_subf_42 = (memref_load_41 - arith_mulf_40); 
        func_arg_2[arith_addi_20] = arith_subf_42; 
        int arith_addi_43 = (arith_muli_31 + arith_const_12); 
        double memref_load_44 = func_arg_1[arith_addi_20][arith_addi_43]; 
        double memref_load_45 = func_arg_2[arith_addi_43]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = func_arg_2[arith_addi_20]; 
        double arith_subf_48 = (memref_load_47 - arith_mulf_46); 
        func_arg_2[arith_addi_20] = arith_subf_48; 
        int arith_addi_49 = (arith_muli_31 + arith_const_4); 
        double memref_load_50 = func_arg_1[arith_addi_20][arith_addi_49]; 
        double memref_load_51 = func_arg_2[arith_addi_49]; 
        double arith_mulf_52 = (memref_load_50 * memref_load_51); 
        double memref_load_53 = func_arg_2[arith_addi_20]; 
        double arith_subf_54 = (memref_load_53 - arith_mulf_52); 
        func_arg_2[arith_addi_20] = arith_subf_54; 
      }
      int arith_remsi_55 = (arith_addi_20 % arith_const_6); 
      int arith_cmpi_56 = (arith_remsi_55 < arith_const_11); 
      int arith_addi_57 = (arith_remsi_55 + arith_const_6); 
      int arith_select_58 = (arith_cmpi_56 ? arith_addi_57 : arith_remsi_55); 
      for (int for_iter_59 = arith_const_11; for_iter_59 < arith_select_58; for_iter_59 += arith_const_13) {
        int arith_cmpi_60 = (arith_addi_20 < arith_const_11); 
        int arith_subi_61 = (arith_const_5 - arith_addi_20); 
        int arith_select_62 = (arith_cmpi_60 ? arith_subi_61 : arith_addi_20); 
        int arith_divi_63 = (arith_select_62 / arith_const_6); 
        int arith_subi_64 = (arith_const_5 - arith_divi_63); 
        int arith_select_65 = (arith_cmpi_60 ? arith_subi_64 : arith_divi_63); 
        int arith_muli_66 = (arith_select_65 * arith_const_6); 
        int arith_addi_67 = (for_iter_59 + arith_muli_66); 
        double memref_load_68 = func_arg_1[arith_addi_20][arith_addi_67]; 
        double memref_load_69 = func_arg_2[arith_addi_67]; 
        double arith_mulf_70 = (memref_load_68 * memref_load_69); 
        double memref_load_71 = func_arg_2[arith_addi_20]; 
        double arith_subf_72 = (memref_load_71 - arith_mulf_70); 
        func_arg_2[arith_addi_20] = arith_subf_72; 
      }
      double memref_load_73 = func_arg_2[arith_addi_20]; 
      double memref_load_74 = func_arg_1[arith_addi_20][arith_addi_20]; 
      double arith_divf_75 = (memref_load_73 / memref_load_74); 
      func_arg_2[arith_addi_20] = arith_divf_75; 
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
