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
    int arith_addi_27 = (for_iter_26 + arith_const_16); 
    for (int for_iter_28 = for_iter_26; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_16) {
      func_arg_5[for_iter_28] = arith_const_20; 
    }
  }
  for (int for_iter_29 = arith_const_18; for_iter_29 < arith_const_15; for_iter_29 += arith_const_16) {
    for (int for_iter_30 = arith_const_18; for_iter_30 < arith_const_17; for_iter_30 += arith_const_16) {
      int arith_addi_31 = (for_iter_29 + arith_const_16); 
      for (int for_iter_32 = for_iter_29; for_iter_32 < arith_addi_31; for_iter_32 += arith_const_16) {
        int arith_addi_33 = (for_iter_30 + arith_const_16); 
        for (int for_iter_34 = for_iter_30; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_16) {
          double memref_load_35 = func_arg_5[for_iter_34]; 
          double memref_load_36 = func_arg_3[for_iter_32][for_iter_34]; 
          double arith_addf_37 = (memref_load_35 + memref_load_36); 
          func_arg_5[for_iter_34] = arith_addf_37; 
        }
      }
    }
  }
  for (int for_iter_38 = arith_const_18; for_iter_38 < arith_const_17; for_iter_38 += arith_const_16) {
    int arith_addi_39 = (for_iter_38 + arith_const_16); 
    for (int for_iter_40 = for_iter_38; for_iter_40 < arith_addi_39; for_iter_40 += arith_const_16) {
      double memref_load_41 = func_arg_5[for_iter_40]; 
      double arith_divf_42 = (memref_load_41 / func_arg_2); 
      func_arg_5[for_iter_40] = arith_divf_42; 
    }
  }
  for (int for_iter_43 = arith_const_18; for_iter_43 < arith_const_15; for_iter_43 += arith_const_16) {
    for (int for_iter_44 = arith_const_18; for_iter_44 < arith_const_17; for_iter_44 += arith_const_16) {
      int arith_addi_45 = (for_iter_43 + arith_const_16); 
      for (int for_iter_46 = for_iter_43; for_iter_46 < arith_addi_45; for_iter_46 += arith_const_16) {
        int arith_addi_47 = (for_iter_44 + arith_const_16); 
        for (int for_iter_48 = for_iter_44; for_iter_48 < arith_addi_47; for_iter_48 += arith_const_16) {
          double memref_load_49 = func_arg_3[for_iter_46][for_iter_48]; 
          double memref_load_50 = func_arg_5[for_iter_48]; 
          double arith_subf_51 = (memref_load_49 - memref_load_50); 
          func_arg_3[for_iter_46][for_iter_48] = arith_subf_51; 
        }
      }
    }
  }
  for (int for_iter_52 = arith_const_18; for_iter_52 < arith_const_17; for_iter_52 += arith_const_16) {
    for (int for_iter_53 = arith_const_18; for_iter_53 < arith_const_15; for_iter_53 += arith_const_16) {
      for (int for_iter_54 = for_iter_52; for_iter_54 < arith_const_17; for_iter_54 += arith_const_16) {
        double memref_load_55 = func_arg_4[for_iter_52][for_iter_54]; 
        double memref_load_56 = func_arg_3[for_iter_53][for_iter_52]; 
        double memref_load_57 = func_arg_3[for_iter_53][for_iter_54]; 
        double arith_mulf_58 = (memref_load_56 * memref_load_57); 
        double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
        func_arg_4[for_iter_52][for_iter_54] = arith_addf_59; 
      }
    }
  }
  for (int for_iter_60 = arith_const_18; for_iter_60 < arith_const_14; for_iter_60 += arith_const_16) {
    int arith_muli_61 = (for_iter_60 * arith_const_13); 
    int arith_addi_62 = (arith_muli_61 + arith_const_12); 
    int arith_cmpi_63 = ((arith_addi_62 <= arith_const_18) ? 1 : 0); 
    int arith_subi_64 = (arith_const_18 - arith_addi_62); 
    int arith_subi_65 = (arith_addi_62 - arith_const_16); 
    int arith_select_66 = (arith_cmpi_63 ? arith_subi_64 : arith_subi_65); 
    int arith_divi_67 = (arith_select_66 / arith_const_11); 
    int arith_subi_68 = (arith_const_18 - arith_divi_67); 
    int arith_addi_69 = (arith_divi_67 + arith_const_16); 
    int arith_select_70 = (arith_cmpi_63 ? arith_subi_68 : arith_addi_69); 
    int arith_maxsi_71 = max(arith_select_70, arith_const_18); 
    int arith_muli_72 = (for_iter_60 * arith_const_15); 
    int arith_addi_73 = (arith_muli_72 + arith_const_10); 
    int arith_cmpi_74 = ((arith_addi_73 < arith_const_18) ? 1 : 0); 
    int arith_subi_75 = (arith_const_8 - arith_addi_73); 
    int arith_select_76 = (arith_cmpi_74 ? arith_subi_75 : arith_addi_73); 
    int arith_divi_77 = (arith_select_76 / arith_const_9); 
    int arith_subi_78 = (arith_const_8 - arith_divi_77); 
    int arith_select_79 = (arith_cmpi_74 ? arith_subi_78 : arith_divi_77); 
    int arith_addi_80 = (arith_select_79 + arith_const_16); 
    for (int for_iter_81 = arith_maxsi_71; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_16) {
      int arith_muli_82 = (for_iter_60 * arith_const_15); 
      int arith_muli_83 = (for_iter_81 * arith_const_9); 
      int arith_maxsi_84 = max(arith_muli_82, arith_muli_83); 
      int arith_muli_85 = (for_iter_60 * arith_const_15); 
      int arith_addi_86 = (arith_muli_85 + arith_const_15); 
      int arith_muli_87 = (for_iter_81 * arith_const_7); 
      int arith_addi_88 = (arith_muli_87 + arith_const_17); 
      int arith_minsi_89 = min(arith_addi_86, arith_addi_88); 
      for (int for_iter_90 = arith_maxsi_84; for_iter_90 < arith_minsi_89; for_iter_90 += arith_const_16) {
        int arith_muli_91 = (for_iter_90 * arith_const_6); 
        int arith_addi_92 = (arith_muli_91 + for_iter_81); 
        double memref_load_93 = func_arg_4[for_iter_81][arith_addi_92]; 
        double memref_load_94 = memref_alloca_22[arith_const_18]; 
        double arith_divf_95 = (memref_load_93 / memref_load_94); 
        memref_alloca_21[arith_const_18] = arith_divf_95; 
        int arith_muli_96 = (for_iter_90 * arith_const_6); 
        int arith_addi_97 = (arith_muli_96 + for_iter_81); 
        func_arg_4[for_iter_81][arith_addi_97] = arith_divf_95; 
        double memref_load_98 = memref_alloca_21[arith_const_18]; 
        int arith_muli_99 = (for_iter_90 * arith_const_6); 
        int arith_addi_100 = (arith_muli_99 + for_iter_81); 
        func_arg_4[arith_addi_100][for_iter_81] = memref_load_98; 
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
