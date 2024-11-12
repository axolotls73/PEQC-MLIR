#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 32; 
  int arith_const_13 = 40; 
  int arith_const_14 = -32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 2; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_17) {
      int arith_muli_20 = (for_iter_19 * arith_const_14); 
      int arith_addi_21 = (arith_muli_20 + arith_const_13); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_12); 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_17) {
        int arith_muli_24 = (for_iter_18 * arith_const_14); 
        int arith_addi_25 = (arith_muli_24 + arith_const_13); 
        int arith_minsi_26 = min(arith_addi_25, arith_const_12); 
        for (int for_iter_27 = arith_const_15; for_iter_27 < arith_minsi_26; for_iter_27 += arith_const_17) {
          int arith_muli_28 = (for_iter_19 * arith_const_12); 
          int arith_addi_29 = (arith_muli_28 + for_iter_23); 
          int arith_muli_30 = (for_iter_18 * arith_const_12); 
          int arith_addi_31 = (arith_muli_30 + for_iter_27); 
          double memref_load_32 = func_arg_3[arith_addi_29][arith_addi_31]; 
          int arith_muli_33 = (for_iter_19 * arith_const_12); 
          int arith_addi_34 = (arith_muli_33 + for_iter_23); 
          double memref_load_35 = func_arg_4[arith_addi_34]; 
          int arith_muli_36 = (for_iter_18 * arith_const_12); 
          int arith_addi_37 = (arith_muli_36 + for_iter_27); 
          double memref_load_38 = func_arg_5[arith_addi_37]; 
          double arith_mulf_39 = (memref_load_35 * memref_load_38); 
          double arith_addf_40 = (memref_load_32 + arith_mulf_39); 
          int arith_muli_41 = (for_iter_19 * arith_const_12); 
          int arith_addi_42 = (arith_muli_41 + for_iter_23); 
          double memref_load_43 = func_arg_6[arith_addi_42]; 
          int arith_muli_44 = (for_iter_18 * arith_const_12); 
          int arith_addi_45 = (arith_muli_44 + for_iter_27); 
          double memref_load_46 = func_arg_7[arith_addi_45]; 
          double arith_mulf_47 = (memref_load_43 * memref_load_46); 
          double arith_addf_48 = (arith_addf_40 + arith_mulf_47); 
          int arith_muli_49 = (for_iter_19 * arith_const_12); 
          int arith_addi_50 = (arith_muli_49 + for_iter_23); 
          int arith_muli_51 = (for_iter_18 * arith_const_12); 
          int arith_addi_52 = (arith_muli_51 + for_iter_27); 
          func_arg_3[arith_addi_50][arith_addi_52] = arith_addf_48; 
          int arith_muli_53 = (for_iter_18 * arith_const_12); 
          int arith_addi_54 = (arith_muli_53 + for_iter_27); 
          double memref_load_55 = func_arg_9[arith_addi_54]; 
          int arith_muli_56 = (for_iter_19 * arith_const_12); 
          int arith_addi_57 = (arith_muli_56 + for_iter_23); 
          int arith_muli_58 = (for_iter_18 * arith_const_12); 
          int arith_addi_59 = (arith_muli_58 + for_iter_27); 
          double memref_load_60 = func_arg_3[arith_addi_57][arith_addi_59]; 
          double arith_mulf_61 = (func_arg_2 * memref_load_60); 
          int arith_muli_62 = (for_iter_19 * arith_const_12); 
          int arith_addi_63 = (arith_muli_62 + for_iter_23); 
          double memref_load_64 = func_arg_10[arith_addi_63]; 
          double arith_mulf_65 = (arith_mulf_61 * memref_load_64); 
          double arith_addf_66 = (memref_load_55 + arith_mulf_65); 
          int arith_muli_67 = (for_iter_18 * arith_const_12); 
          int arith_addi_68 = (arith_muli_67 + for_iter_27); 
          func_arg_9[arith_addi_68] = arith_addf_66; 
        }
      }
    }
  }
  for (int for_iter_69 = arith_const_15; for_iter_69 < arith_const_16; for_iter_69 += arith_const_17) {
    int arith_muli_70 = (for_iter_69 * arith_const_14); 
    int arith_addi_71 = (arith_muli_70 + arith_const_13); 
    int arith_minsi_72 = min(arith_addi_71, arith_const_12); 
    for (int for_iter_73 = arith_const_15; for_iter_73 < arith_minsi_72; for_iter_73 += arith_const_17) {
      int arith_muli_74 = (for_iter_69 * arith_const_12); 
      int arith_addi_75 = (arith_muli_74 + for_iter_73); 
      double memref_load_76 = func_arg_9[arith_addi_75]; 
      int arith_muli_77 = (for_iter_69 * arith_const_12); 
      int arith_addi_78 = (arith_muli_77 + for_iter_73); 
      double memref_load_79 = func_arg_11[arith_addi_78]; 
      double arith_addf_80 = (memref_load_76 + memref_load_79); 
      int arith_muli_81 = (for_iter_69 * arith_const_12); 
      int arith_addi_82 = (arith_muli_81 + for_iter_73); 
      func_arg_9[arith_addi_82] = arith_addf_80; 
    }
  }
  for (int for_iter_83 = arith_const_15; for_iter_83 < arith_const_16; for_iter_83 += arith_const_17) {
    for (int for_iter_84 = arith_const_15; for_iter_84 < arith_const_16; for_iter_84 += arith_const_17) {
      int arith_muli_85 = (for_iter_83 * arith_const_14); 
      int arith_addi_86 = (arith_muli_85 + arith_const_13); 
      int arith_minsi_87 = min(arith_addi_86, arith_const_12); 
      for (int for_iter_88 = arith_const_15; for_iter_88 < arith_minsi_87; for_iter_88 += arith_const_17) {
        int arith_muli_89 = (for_iter_84 * arith_const_14); 
        int arith_addi_90 = (arith_muli_89 + arith_const_13); 
        int arith_minsi_91 = min(arith_addi_90, arith_const_12); 
        for (int for_iter_92 = arith_const_15; for_iter_92 < arith_minsi_91; for_iter_92 += arith_const_17) {
          int arith_muli_93 = (for_iter_83 * arith_const_12); 
          int arith_addi_94 = (arith_muli_93 + for_iter_88); 
          double memref_load_95 = func_arg_8[arith_addi_94]; 
          int arith_muli_96 = (for_iter_83 * arith_const_12); 
          int arith_addi_97 = (arith_muli_96 + for_iter_88); 
          int arith_muli_98 = (for_iter_84 * arith_const_12); 
          int arith_addi_99 = (arith_muli_98 + for_iter_92); 
          double memref_load_100 = func_arg_3[arith_addi_97][arith_addi_99]; 
          double arith_mulf_101 = (func_arg_1 * memref_load_100); 
          int arith_muli_102 = (for_iter_84 * arith_const_12); 
          int arith_addi_103 = (arith_muli_102 + for_iter_92); 
          double memref_load_104 = func_arg_9[arith_addi_103]; 
          double arith_mulf_105 = (arith_mulf_101 * memref_load_104); 
          double arith_addf_106 = (memref_load_95 + arith_mulf_105); 
          int arith_muli_107 = (for_iter_83 * arith_const_12); 
          int arith_addi_108 = (arith_muli_107 + for_iter_88); 
          func_arg_8[arith_addi_108] = arith_addf_106; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
