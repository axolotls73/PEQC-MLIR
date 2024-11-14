#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 7; 
  int arith_const_8 = 128; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 8; 
  int arith_const_13 = 28; 
  int arith_const_14 = 32; 
  double arith_const_15 = 1.000000; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_17; for_iter_19 < arith_const_18; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_14); 
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_13; for_iter_21 += arith_const_18) {
      int arith_addi_22 = (arith_muli_20 + for_iter_21); 
      func_arg_5[arith_addi_22] = arith_const_16; 
      for (int for_iter_23 = arith_const_17; for_iter_23 < arith_const_12; for_iter_23 += arith_const_18) {
        int arith_muli_24 = (for_iter_23 * arith_const_11); 
        double memref_load_25 = func_arg_3[arith_muli_24][arith_addi_22]; 
        double memref_load_26 = func_arg_5[arith_addi_22]; 
        double arith_addf_27 = (memref_load_26 + memref_load_25); 
        func_arg_5[arith_addi_22] = arith_addf_27; 
        int arith_addi_28 = (arith_muli_24 + arith_const_18); 
        double memref_load_29 = func_arg_3[arith_addi_28][arith_addi_22]; 
        double memref_load_30 = func_arg_5[arith_addi_22]; 
        double arith_addf_31 = (memref_load_30 + memref_load_29); 
        func_arg_5[arith_addi_22] = arith_addf_31; 
        int arith_addi_32 = (arith_muli_24 + arith_const_10); 
        double memref_load_33 = func_arg_3[arith_addi_32][arith_addi_22]; 
        double memref_load_34 = func_arg_5[arith_addi_22]; 
        double arith_addf_35 = (memref_load_34 + memref_load_33); 
        func_arg_5[arith_addi_22] = arith_addf_35; 
        int arith_addi_36 = (arith_muli_24 + arith_const_9); 
        double memref_load_37 = func_arg_3[arith_addi_36][arith_addi_22]; 
        double memref_load_38 = func_arg_5[arith_addi_22]; 
        double arith_addf_39 = (memref_load_38 + memref_load_37); 
        func_arg_5[arith_addi_22] = arith_addf_39; 
      }
      double memref_load_40 = func_arg_5[arith_addi_22]; 
      double arith_divf_41 = (memref_load_40 / func_arg_2); 
      func_arg_5[arith_addi_22] = arith_divf_41; 
    }
  }
  for (int for_iter_42 = arith_const_17; for_iter_42 < arith_const_18; for_iter_42 += arith_const_18) {
    int arith_muli_43 = (for_iter_42 * arith_const_14); 
    for (int for_iter_44 = arith_const_17; for_iter_44 < arith_const_18; for_iter_44 += arith_const_18) {
      int arith_muli_45 = (for_iter_44 * arith_const_8); 
      for (int for_iter_46 = arith_const_17; for_iter_46 < arith_const_14; for_iter_46 += arith_const_18) {
        int arith_addi_47 = (arith_muli_43 + for_iter_46); 
        for (int for_iter_48 = arith_const_17; for_iter_48 < arith_const_7; for_iter_48 += arith_const_18) {
          int arith_muli_49 = (for_iter_48 * arith_const_11); 
          int arith_addi_50 = (arith_muli_45 + arith_muli_49); 
          double memref_load_51 = func_arg_5[arith_addi_50]; 
          double memref_load_52 = func_arg_3[arith_addi_47][arith_addi_50]; 
          double arith_subf_53 = (memref_load_52 - memref_load_51); 
          func_arg_3[arith_addi_47][arith_addi_50] = arith_subf_53; 
          int arith_addi_54 = (arith_addi_50 + arith_const_18); 
          double memref_load_55 = func_arg_5[arith_addi_54]; 
          double memref_load_56 = func_arg_3[arith_addi_47][arith_addi_54]; 
          double arith_subf_57 = (memref_load_56 - memref_load_55); 
          func_arg_3[arith_addi_47][arith_addi_54] = arith_subf_57; 
          int arith_addi_58 = (arith_addi_50 + arith_const_10); 
          double memref_load_59 = func_arg_5[arith_addi_58]; 
          double memref_load_60 = func_arg_3[arith_addi_47][arith_addi_58]; 
          double arith_subf_61 = (memref_load_60 - memref_load_59); 
          func_arg_3[arith_addi_47][arith_addi_58] = arith_subf_61; 
          int arith_addi_62 = (arith_addi_50 + arith_const_9); 
          double memref_load_63 = func_arg_5[arith_addi_62]; 
          double memref_load_64 = func_arg_3[arith_addi_47][arith_addi_62]; 
          double arith_subf_65 = (memref_load_64 - memref_load_63); 
          func_arg_3[arith_addi_47][arith_addi_62] = arith_subf_65; 
        }
      }
    }
  }
  double arith_subf_66 = (func_arg_2 - arith_const_15); 
  for (int for_iter_67 = arith_const_17; for_iter_67 < arith_const_13; for_iter_67 += arith_const_18) {
    int arith_muli_68 = (for_iter_67 * arith_const_6); 
    int arith_addi_69 = (arith_muli_68 + arith_const_13); 
    for (int for_iter_70 = arith_const_17; for_iter_70 < arith_addi_69; for_iter_70 += arith_const_18) {
      int arith_addi_71 = (for_iter_67 + for_iter_70); 
      func_arg_4[for_iter_67][arith_addi_71] = arith_const_16; 
      for (int for_iter_72 = arith_const_17; for_iter_72 < arith_const_12; for_iter_72 += arith_const_18) {
        int arith_muli_73 = (for_iter_72 * arith_const_11); 
        double memref_load_74 = func_arg_3[arith_muli_73][for_iter_67]; 
        double memref_load_75 = func_arg_3[arith_muli_73][arith_addi_71]; 
        double arith_mulf_76 = (memref_load_74 * memref_load_75); 
        double memref_load_77 = func_arg_4[for_iter_67][arith_addi_71]; 
        double arith_addf_78 = (memref_load_77 + arith_mulf_76); 
        func_arg_4[for_iter_67][arith_addi_71] = arith_addf_78; 
        int arith_addi_79 = (arith_muli_73 + arith_const_18); 
        double memref_load_80 = func_arg_3[arith_addi_79][for_iter_67]; 
        double memref_load_81 = func_arg_3[arith_addi_79][arith_addi_71]; 
        double arith_mulf_82 = (memref_load_80 * memref_load_81); 
        double memref_load_83 = func_arg_4[for_iter_67][arith_addi_71]; 
        double arith_addf_84 = (memref_load_83 + arith_mulf_82); 
        func_arg_4[for_iter_67][arith_addi_71] = arith_addf_84; 
        int arith_addi_85 = (arith_muli_73 + arith_const_10); 
        double memref_load_86 = func_arg_3[arith_addi_85][for_iter_67]; 
        double memref_load_87 = func_arg_3[arith_addi_85][arith_addi_71]; 
        double arith_mulf_88 = (memref_load_86 * memref_load_87); 
        double memref_load_89 = func_arg_4[for_iter_67][arith_addi_71]; 
        double arith_addf_90 = (memref_load_89 + arith_mulf_88); 
        func_arg_4[for_iter_67][arith_addi_71] = arith_addf_90; 
        int arith_addi_91 = (arith_muli_73 + arith_const_9); 
        double memref_load_92 = func_arg_3[arith_addi_91][for_iter_67]; 
        double memref_load_93 = func_arg_3[arith_addi_91][arith_addi_71]; 
        double arith_mulf_94 = (memref_load_92 * memref_load_93); 
        double memref_load_95 = func_arg_4[for_iter_67][arith_addi_71]; 
        double arith_addf_96 = (memref_load_95 + arith_mulf_94); 
        func_arg_4[for_iter_67][arith_addi_71] = arith_addf_96; 
      }
      double memref_load_97 = func_arg_4[for_iter_67][arith_addi_71]; 
      double arith_divf_98 = (memref_load_97 / arith_subf_66); 
      func_arg_4[for_iter_67][arith_addi_71] = arith_divf_98; 
      func_arg_4[arith_addi_71][for_iter_67] = arith_divf_98; 
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
