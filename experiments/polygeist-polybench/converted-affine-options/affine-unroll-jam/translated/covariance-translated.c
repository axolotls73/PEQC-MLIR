#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = -1; 
  int arith_const_9 = 27; 
  int arith_const_10 = 31; 
  int arith_const_11 = 13; 
  int arith_const_12 = -13; 
  int arith_const_13 = 16; 
  int arith_const_14 = 23; 
  int arith_const_15 = 32; 
  int arith_const_16 = 1; 
  int arith_const_17 = 28; 
  int arith_const_18 = 0; 
  double arith_const_19 = 1.000000; 
  double arith_const_20 = 0.000000; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_17; for_iter_23 += arith_const_16) {
    for (int for_iter_24 = for_iter_23; for_iter_24 < arith_const_17; for_iter_24 += arith_const_16) {
      func_arg_4[for_iter_23][for_iter_24] = arith_const_20; 
    }
  }
  double arith_subf_25 = (func_arg_2 - arith_const_19); 
  memref_alloca_22[arith_const_18] = arith_subf_25; 
  for (int for_iter_26 = arith_const_18; for_iter_26 < arith_const_17; for_iter_26 += arith_const_16) {
    func_arg_5[for_iter_26] = arith_const_20; 
  }
  for (int for_iter_27 = arith_const_18; for_iter_27 < arith_const_15; for_iter_27 += arith_const_16) {
    for (int for_iter_28 = arith_const_18; for_iter_28 < arith_const_17; for_iter_28 += arith_const_16) {
      double memref_load_29 = func_arg_5[for_iter_28]; 
      double memref_load_30 = func_arg_3[for_iter_27][for_iter_28]; 
      double arith_addf_31 = (memref_load_29 + memref_load_30); 
      func_arg_5[for_iter_28] = arith_addf_31; 
    }
  }
  for (int for_iter_32 = arith_const_18; for_iter_32 < arith_const_17; for_iter_32 += arith_const_16) {
    double memref_load_33 = func_arg_5[for_iter_32]; 
    double arith_divf_34 = (memref_load_33 / func_arg_2); 
    func_arg_5[for_iter_32] = arith_divf_34; 
  }
  for (int for_iter_35 = arith_const_18; for_iter_35 < arith_const_15; for_iter_35 += arith_const_16) {
    for (int for_iter_36 = arith_const_18; for_iter_36 < arith_const_17; for_iter_36 += arith_const_16) {
      double memref_load_37 = func_arg_3[for_iter_35][for_iter_36]; 
      double memref_load_38 = func_arg_5[for_iter_36]; 
      double arith_subf_39 = (memref_load_37 - memref_load_38); 
      func_arg_3[for_iter_35][for_iter_36] = arith_subf_39; 
    }
  }
  for (int for_iter_40 = arith_const_18; for_iter_40 < arith_const_17; for_iter_40 += arith_const_16) {
    for (int for_iter_41 = arith_const_18; for_iter_41 < arith_const_15; for_iter_41 += arith_const_16) {
      for (int for_iter_42 = for_iter_40; for_iter_42 < arith_const_17; for_iter_42 += arith_const_16) {
        double memref_load_43 = func_arg_4[for_iter_40][for_iter_42]; 
        double memref_load_44 = func_arg_3[for_iter_41][for_iter_40]; 
        double memref_load_45 = func_arg_3[for_iter_41][for_iter_42]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double arith_addf_47 = (memref_load_43 + arith_mulf_46); 
        func_arg_4[for_iter_40][for_iter_42] = arith_addf_47; 
      }
    }
  }
  for (int for_iter_48 = arith_const_18; for_iter_48 < arith_const_14; for_iter_48 += arith_const_16) {
    int arith_muli_49 = (for_iter_48 * arith_const_13); 
    int arith_addi_50 = (arith_muli_49 + arith_const_12); 
    int arith_cmpi_51 = ((arith_addi_50 <= arith_const_18) ? 1 : 0); 
    int arith_subi_52 = (arith_const_18 - arith_addi_50); 
    int arith_subi_53 = (arith_addi_50 - arith_const_16); 
    int arith_select_54 = (arith_cmpi_51 ? arith_subi_52 : arith_subi_53); 
    int arith_divi_55 = (arith_select_54 / arith_const_11); 
    int arith_subi_56 = (arith_const_18 - arith_divi_55); 
    int arith_addi_57 = (arith_divi_55 + arith_const_16); 
    int arith_select_58 = (arith_cmpi_51 ? arith_subi_56 : arith_addi_57); 
    int arith_maxsi_59 = max(arith_select_58, arith_const_18); 
    int arith_muli_60 = (for_iter_48 * arith_const_15); 
    int arith_addi_61 = (arith_muli_60 + arith_const_10); 
    int arith_cmpi_62 = ((arith_addi_61 < arith_const_18) ? 1 : 0); 
    int arith_subi_63 = (arith_const_8 - arith_addi_61); 
    int arith_select_64 = (arith_cmpi_62 ? arith_subi_63 : arith_addi_61); 
    int arith_divi_65 = (arith_select_64 / arith_const_9); 
    int arith_subi_66 = (arith_const_8 - arith_divi_65); 
    int arith_select_67 = (arith_cmpi_62 ? arith_subi_66 : arith_divi_65); 
    int arith_addi_68 = (arith_select_67 + arith_const_16); 
    for (int for_iter_69 = arith_maxsi_59; for_iter_69 < arith_addi_68; for_iter_69 += arith_const_16) {
      int arith_muli_70 = (for_iter_48 * arith_const_15); 
      int arith_muli_71 = (for_iter_69 * arith_const_9); 
      int arith_maxsi_72 = max(arith_muli_70, arith_muli_71); 
      int arith_muli_73 = (for_iter_48 * arith_const_15); 
      int arith_addi_74 = (arith_muli_73 + arith_const_15); 
      int arith_muli_75 = (for_iter_69 * arith_const_7); 
      int arith_addi_76 = (arith_muli_75 + arith_const_17); 
      int arith_minsi_77 = min(arith_addi_74, arith_addi_76); 
      for (int for_iter_78 = arith_maxsi_72; for_iter_78 < arith_minsi_77; for_iter_78 += arith_const_16) {
        int arith_muli_79 = (for_iter_78 * arith_const_6); 
        int arith_addi_80 = (arith_muli_79 + for_iter_69); 
        double memref_load_81 = func_arg_4[for_iter_69][arith_addi_80]; 
        double memref_load_82 = memref_alloca_22[arith_const_18]; 
        double arith_divf_83 = (memref_load_81 / memref_load_82); 
        memref_alloca_21[arith_const_18] = arith_divf_83; 
        int arith_muli_84 = (for_iter_78 * arith_const_6); 
        int arith_addi_85 = (arith_muli_84 + for_iter_69); 
        func_arg_4[for_iter_69][arith_addi_85] = arith_divf_83; 
        double memref_load_86 = memref_alloca_21[arith_const_18]; 
        int arith_muli_87 = (for_iter_78 * arith_const_6); 
        int arith_addi_88 = (arith_muli_87 + for_iter_69); 
        func_arg_4[arith_addi_88][for_iter_69] = memref_load_86; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;

#pragma peqc async_execute
{
  kernel_covariance(m, n, float_n, data, cov, mean);
}
}

#pragma pocc-region-end
