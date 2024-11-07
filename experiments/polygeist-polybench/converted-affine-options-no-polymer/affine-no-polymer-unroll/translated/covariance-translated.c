#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 32; 
  double arith_const_10 = 1.000000; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 28; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    func_arg_5[for_iter_15] = arith_const_11; 
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_9; for_iter_16 += arith_const_8) {
      double memref_load_17 = func_arg_3[for_iter_16][for_iter_15]; 
      double memref_load_18 = func_arg_5[for_iter_15]; 
      double arith_addf_19 = (memref_load_18 + memref_load_17); 
      func_arg_5[for_iter_15] = arith_addf_19; 
      int arith_addi_20 = (for_iter_16 + arith_const_14); 
      double memref_load_21 = func_arg_3[arith_addi_20][for_iter_15]; 
      double memref_load_22 = func_arg_5[for_iter_15]; 
      double arith_addf_23 = (memref_load_22 + memref_load_21); 
      func_arg_5[for_iter_15] = arith_addf_23; 
      int arith_addi_24 = (for_iter_16 + arith_const_7); 
      double memref_load_25 = func_arg_3[arith_addi_24][for_iter_15]; 
      double memref_load_26 = func_arg_5[for_iter_15]; 
      double arith_addf_27 = (memref_load_26 + memref_load_25); 
      func_arg_5[for_iter_15] = arith_addf_27; 
      int arith_addi_28 = (for_iter_16 + arith_const_6); 
      double memref_load_29 = func_arg_3[arith_addi_28][for_iter_15]; 
      double memref_load_30 = func_arg_5[for_iter_15]; 
      double arith_addf_31 = (memref_load_30 + memref_load_29); 
      func_arg_5[for_iter_15] = arith_addf_31; 
    }
    double memref_load_32 = func_arg_5[for_iter_15]; 
    double arith_divf_33 = (memref_load_32 / func_arg_2); 
    func_arg_5[for_iter_15] = arith_divf_33; 
  }
  for (int for_iter_34 = arith_const_12; for_iter_34 < arith_const_9; for_iter_34 += arith_const_14) {
    for (int for_iter_35 = arith_const_12; for_iter_35 < arith_const_13; for_iter_35 += arith_const_8) {
      double memref_load_36 = func_arg_5[for_iter_35]; 
      double memref_load_37 = func_arg_3[for_iter_34][for_iter_35]; 
      double arith_subf_38 = (memref_load_37 - memref_load_36); 
      func_arg_3[for_iter_34][for_iter_35] = arith_subf_38; 
      int arith_addi_39 = (for_iter_35 + arith_const_14); 
      double memref_load_40 = func_arg_5[arith_addi_39]; 
      double memref_load_41 = func_arg_3[for_iter_34][arith_addi_39]; 
      double arith_subf_42 = (memref_load_41 - memref_load_40); 
      func_arg_3[for_iter_34][arith_addi_39] = arith_subf_42; 
      int arith_addi_43 = (for_iter_35 + arith_const_7); 
      double memref_load_44 = func_arg_5[arith_addi_43]; 
      double memref_load_45 = func_arg_3[for_iter_34][arith_addi_43]; 
      double arith_subf_46 = (memref_load_45 - memref_load_44); 
      func_arg_3[for_iter_34][arith_addi_43] = arith_subf_46; 
      int arith_addi_47 = (for_iter_35 + arith_const_6); 
      double memref_load_48 = func_arg_5[arith_addi_47]; 
      double memref_load_49 = func_arg_3[for_iter_34][arith_addi_47]; 
      double arith_subf_50 = (memref_load_49 - memref_load_48); 
      func_arg_3[for_iter_34][arith_addi_47] = arith_subf_50; 
    }
  }
  double arith_subf_51 = (func_arg_2 - arith_const_10); 
  for (int for_iter_52 = arith_const_12; for_iter_52 < arith_const_13; for_iter_52 += arith_const_14) {
    for (int for_iter_53 = for_iter_52; for_iter_53 < arith_const_13; for_iter_53 += arith_const_14) {
      func_arg_4[for_iter_52][for_iter_53] = arith_const_11; 
      for (int for_iter_54 = arith_const_12; for_iter_54 < arith_const_9; for_iter_54 += arith_const_8) {
        double memref_load_55 = func_arg_3[for_iter_54][for_iter_52]; 
        double memref_load_56 = func_arg_3[for_iter_54][for_iter_53]; 
        double arith_mulf_57 = (memref_load_55 * memref_load_56); 
        double memref_load_58 = func_arg_4[for_iter_52][for_iter_53]; 
        double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
        func_arg_4[for_iter_52][for_iter_53] = arith_addf_59; 
        int arith_addi_60 = (for_iter_54 + arith_const_14); 
        double memref_load_61 = func_arg_3[arith_addi_60][for_iter_52]; 
        double memref_load_62 = func_arg_3[arith_addi_60][for_iter_53]; 
        double arith_mulf_63 = (memref_load_61 * memref_load_62); 
        double memref_load_64 = func_arg_4[for_iter_52][for_iter_53]; 
        double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
        func_arg_4[for_iter_52][for_iter_53] = arith_addf_65; 
        int arith_addi_66 = (for_iter_54 + arith_const_7); 
        double memref_load_67 = func_arg_3[arith_addi_66][for_iter_52]; 
        double memref_load_68 = func_arg_3[arith_addi_66][for_iter_53]; 
        double arith_mulf_69 = (memref_load_67 * memref_load_68); 
        double memref_load_70 = func_arg_4[for_iter_52][for_iter_53]; 
        double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
        func_arg_4[for_iter_52][for_iter_53] = arith_addf_71; 
        int arith_addi_72 = (for_iter_54 + arith_const_6); 
        double memref_load_73 = func_arg_3[arith_addi_72][for_iter_52]; 
        double memref_load_74 = func_arg_3[arith_addi_72][for_iter_53]; 
        double arith_mulf_75 = (memref_load_73 * memref_load_74); 
        double memref_load_76 = func_arg_4[for_iter_52][for_iter_53]; 
        double arith_addf_77 = (memref_load_76 + arith_mulf_75); 
        func_arg_4[for_iter_52][for_iter_53] = arith_addf_77; 
      }
      double memref_load_78 = func_arg_4[for_iter_52][for_iter_53]; 
      double arith_divf_79 = (memref_load_78 / arith_subf_51); 
      func_arg_4[for_iter_52][for_iter_53] = arith_divf_79; 
      func_arg_4[for_iter_53][for_iter_52] = arith_divf_79; 
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
