#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = 27; 
  int arith_const_9 = 31; 
  int arith_const_10 = 13; 
  int arith_const_11 = -13; 
  int arith_const_12 = 16; 
  int arith_const_13 = 23; 
  int arith_const_14 = 32; 
  int arith_const_15 = -1; 
  int arith_const_16 = 1; 
  int arith_const_17 = 28; 
  int arith_const_18 = 0; 
  double arith_const_19 = 1.000000; 
  double arith_const_20 = 0.000000; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_17; for_iter_23 += arith_const_16) {
    int arith_muli_24 = (for_iter_23 * arith_const_15); 
    int arith_addi_25 = (arith_muli_24 + arith_const_17); 
    for (int for_iter_26 = arith_const_18; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_16) {
      int arith_addi_27 = (for_iter_23 + for_iter_26); 
      func_arg_4[for_iter_23][arith_addi_27] = arith_const_20; 
    }
  }
  double arith_subf_28 = (func_arg_2 - arith_const_19); 
  memref_alloca_22[arith_const_18] = arith_subf_28; 
  for (int for_iter_29 = arith_const_18; for_iter_29 < arith_const_17; for_iter_29 += arith_const_16) {
    func_arg_5[for_iter_29] = arith_const_20; 
  }
  for (int for_iter_30 = arith_const_18; for_iter_30 < arith_const_14; for_iter_30 += arith_const_16) {
    for (int for_iter_31 = arith_const_18; for_iter_31 < arith_const_17; for_iter_31 += arith_const_16) {
      double memref_load_32 = func_arg_5[for_iter_31]; 
      double memref_load_33 = func_arg_3[for_iter_30][for_iter_31]; 
      double arith_addf_34 = (memref_load_32 + memref_load_33); 
      func_arg_5[for_iter_31] = arith_addf_34; 
    }
  }
  for (int for_iter_35 = arith_const_18; for_iter_35 < arith_const_17; for_iter_35 += arith_const_16) {
    double memref_load_36 = func_arg_5[for_iter_35]; 
    double arith_divf_37 = (memref_load_36 / func_arg_2); 
    func_arg_5[for_iter_35] = arith_divf_37; 
  }
  for (int for_iter_38 = arith_const_18; for_iter_38 < arith_const_14; for_iter_38 += arith_const_16) {
    for (int for_iter_39 = arith_const_18; for_iter_39 < arith_const_17; for_iter_39 += arith_const_16) {
      double memref_load_40 = func_arg_3[for_iter_38][for_iter_39]; 
      double memref_load_41 = func_arg_5[for_iter_39]; 
      double arith_subf_42 = (memref_load_40 - memref_load_41); 
      func_arg_3[for_iter_38][for_iter_39] = arith_subf_42; 
    }
  }
  for (int for_iter_43 = arith_const_18; for_iter_43 < arith_const_17; for_iter_43 += arith_const_16) {
    for (int for_iter_44 = arith_const_18; for_iter_44 < arith_const_14; for_iter_44 += arith_const_16) {
      int arith_muli_45 = (for_iter_43 * arith_const_15); 
      int arith_addi_46 = (arith_muli_45 + arith_const_17); 
      for (int for_iter_47 = arith_const_18; for_iter_47 < arith_addi_46; for_iter_47 += arith_const_16) {
        int arith_addi_48 = (for_iter_43 + for_iter_47); 
        double memref_load_49 = func_arg_4[for_iter_43][arith_addi_48]; 
        double memref_load_50 = func_arg_3[for_iter_44][for_iter_43]; 
        double memref_load_51 = func_arg_3[for_iter_44][arith_addi_48]; 
        double arith_mulf_52 = (memref_load_50 * memref_load_51); 
        double arith_addf_53 = (memref_load_49 + arith_mulf_52); 
        func_arg_4[for_iter_43][arith_addi_48] = arith_addf_53; 
      }
    }
  }
  for (int for_iter_54 = arith_const_18; for_iter_54 < arith_const_13; for_iter_54 += arith_const_16) {
    int arith_muli_55 = (for_iter_54 * arith_const_12); 
    int arith_addi_56 = (arith_muli_55 + arith_const_11); 
    int arith_cmpi_57 = (arith_addi_56 <= arith_const_18); 
    int arith_subi_58 = (arith_const_18 - arith_addi_56); 
    int arith_subi_59 = (arith_addi_56 - arith_const_16); 
    int arith_select_60 = (arith_cmpi_57 ? arith_subi_58 : arith_subi_59); 
    int arith_divi_61 = (arith_select_60 / arith_const_10); 
    int arith_subi_62 = (arith_const_18 - arith_divi_61); 
    int arith_addi_63 = (arith_divi_61 + arith_const_16); 
    int arith_select_64 = (arith_cmpi_57 ? arith_subi_62 : arith_addi_63); 
    int arith_maxsi_65 = max(arith_select_64, arith_const_18); 
    int arith_muli_66 = (for_iter_54 * arith_const_14); 
    int arith_addi_67 = (arith_muli_66 + arith_const_9); 
    int arith_cmpi_68 = (arith_addi_67 < arith_const_18); 
    int arith_subi_69 = (arith_const_15 - arith_addi_67); 
    int arith_select_70 = (arith_cmpi_68 ? arith_subi_69 : arith_addi_67); 
    int arith_divi_71 = (arith_select_70 / arith_const_8); 
    int arith_subi_72 = (arith_const_15 - arith_divi_71); 
    int arith_select_73 = (arith_cmpi_68 ? arith_subi_72 : arith_divi_71); 
    int arith_addi_74 = (arith_select_73 + arith_const_16); 
    for (int for_iter_75 = arith_maxsi_65; for_iter_75 < arith_addi_74; for_iter_75 += arith_const_16) {
      int arith_muli_76 = (for_iter_54 * arith_const_14); 
      int arith_muli_77 = (for_iter_75 * arith_const_8); 
      int arith_maxsi_78 = max(arith_muli_76, arith_muli_77); 
      int arith_muli_79 = (for_iter_54 * arith_const_14); 
      int arith_addi_80 = (arith_muli_79 + arith_const_14); 
      int arith_muli_81 = (for_iter_75 * arith_const_7); 
      int arith_addi_82 = (arith_muli_81 + arith_const_17); 
      int arith_minsi_83 = min(arith_addi_80, arith_addi_82); 
      for (int for_iter_84 = arith_maxsi_78; for_iter_84 < arith_minsi_83; for_iter_84 += arith_const_16) {
        int arith_muli_85 = (for_iter_84 * arith_const_6); 
        int arith_addi_86 = (arith_muli_85 + for_iter_75); 
        double memref_load_87 = func_arg_4[for_iter_75][arith_addi_86]; 
        double memref_load_88 = memref_alloca_22[arith_const_18]; 
        double arith_divf_89 = (memref_load_87 / memref_load_88); 
        memref_alloca_21[arith_const_18] = arith_divf_89; 
        int arith_muli_90 = (for_iter_84 * arith_const_6); 
        int arith_addi_91 = (arith_muli_90 + for_iter_75); 
        func_arg_4[for_iter_75][arith_addi_91] = arith_divf_89; 
        double memref_load_92 = memref_alloca_21[arith_const_18]; 
        int arith_muli_93 = (for_iter_84 * arith_const_6); 
        int arith_addi_94 = (arith_muli_93 + for_iter_75); 
        func_arg_4[arith_addi_94][for_iter_75] = memref_load_92; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
