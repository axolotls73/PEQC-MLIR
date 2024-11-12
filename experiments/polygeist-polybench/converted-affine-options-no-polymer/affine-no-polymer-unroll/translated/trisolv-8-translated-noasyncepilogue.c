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
    double memref_load_12 = func_arg_3[for_iter_11]; 
    func_arg_2[for_iter_11] = memref_load_12; 
    int arith_cmpi_13 = (for_iter_11 < arith_const_8); 
    int arith_subi_14 = (arith_const_6 - for_iter_11); 
    int arith_select_15 = (arith_cmpi_13 ? arith_subi_14 : for_iter_11); 
    int arith_divi_16 = (arith_select_15 / arith_const_7); 
    int arith_subi_17 = (arith_const_6 - arith_divi_16); 
    int arith_select_18 = (arith_cmpi_13 ? arith_subi_17 : arith_divi_16); 
    int arith_muli_19 = (arith_select_18 * arith_const_7); 
    for (int for_iter_20 = arith_const_8; for_iter_20 < arith_muli_19; for_iter_20 += arith_const_7) {
      double memref_load_21 = func_arg_1[for_iter_11][for_iter_20]; 
      double memref_load_22 = func_arg_2[for_iter_20]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double memref_load_24 = func_arg_2[for_iter_11]; 
      double arith_subf_25 = (memref_load_24 - arith_mulf_23); 
      func_arg_2[for_iter_11] = arith_subf_25; 
      int arith_addi_26 = (for_iter_20 + arith_const_10); 
      double memref_load_27 = func_arg_1[for_iter_11][arith_addi_26]; 
      double memref_load_28 = func_arg_2[arith_addi_26]; 
      double arith_mulf_29 = (memref_load_27 * memref_load_28); 
      double memref_load_30 = func_arg_2[for_iter_11]; 
      double arith_subf_31 = (memref_load_30 - arith_mulf_29); 
      func_arg_2[for_iter_11] = arith_subf_31; 
      int arith_addi_32 = (for_iter_20 + arith_const_5); 
      double memref_load_33 = func_arg_1[for_iter_11][arith_addi_32]; 
      double memref_load_34 = func_arg_2[arith_addi_32]; 
      double arith_mulf_35 = (memref_load_33 * memref_load_34); 
      double memref_load_36 = func_arg_2[for_iter_11]; 
      double arith_subf_37 = (memref_load_36 - arith_mulf_35); 
      func_arg_2[for_iter_11] = arith_subf_37; 
      int arith_addi_38 = (for_iter_20 + arith_const_4); 
      double memref_load_39 = func_arg_1[for_iter_11][arith_addi_38]; 
      double memref_load_40 = func_arg_2[arith_addi_38]; 
      double arith_mulf_41 = (memref_load_39 * memref_load_40); 
      double memref_load_42 = func_arg_2[for_iter_11]; 
      double arith_subf_43 = (memref_load_42 - arith_mulf_41); 
      func_arg_2[for_iter_11] = arith_subf_43; 
    }
    int arith_cmpi_44 = (for_iter_11 < arith_const_8); 
    int arith_subi_45 = (arith_const_6 - for_iter_11); 
    int arith_select_46 = (arith_cmpi_44 ? arith_subi_45 : for_iter_11); 
    int arith_divi_47 = (arith_select_46 / arith_const_7); 
    int arith_subi_48 = (arith_const_6 - arith_divi_47); 
    int arith_select_49 = (arith_cmpi_44 ? arith_subi_48 : arith_divi_47); 
    int arith_muli_50 = (arith_select_49 * arith_const_7); 
    for (int for_iter_51 = arith_muli_50; for_iter_51 < for_iter_11; for_iter_51 += arith_const_10) {
      double memref_load_52 = func_arg_1[for_iter_11][for_iter_51]; 
      double memref_load_53 = func_arg_2[for_iter_51]; 
      double arith_mulf_54 = (memref_load_52 * memref_load_53); 
      double memref_load_55 = func_arg_2[for_iter_11]; 
      double arith_subf_56 = (memref_load_55 - arith_mulf_54); 
      func_arg_2[for_iter_11] = arith_subf_56; 
    }
    double memref_load_57 = func_arg_2[for_iter_11]; 
    double memref_load_58 = func_arg_1[for_iter_11][for_iter_11]; 
    double arith_divf_59 = (memref_load_57 / memref_load_58); 
    func_arg_2[for_iter_11] = arith_divf_59; 
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
