#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 24; 
  int arith_const_13 = 22; 
  int arith_const_14 = 3; 
  int arith_const_15 = 2; 
  int arith_const_16 = 4; 
  int arith_const_17 = 20; 
  int arith_const_18 = 18; 
  double arith_const_19 = 0.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 16; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_18; for_iter_24 += arith_const_22) {
      func_arg_5[for_iter_23][for_iter_24] = arith_const_19; 
      for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_17; for_iter_25 += arith_const_16) {
        double memref_load_26 = func_arg_6[for_iter_23][for_iter_25]; 
        double memref_load_27 = func_arg_7[for_iter_25][for_iter_24]; 
        double arith_mulf_28 = (memref_load_26 * memref_load_27); 
        double memref_load_29 = func_arg_5[for_iter_23][for_iter_24]; 
        double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
        func_arg_5[for_iter_23][for_iter_24] = arith_addf_30; 
        int arith_addi_31 = (for_iter_25 + arith_const_22); 
        double memref_load_32 = func_arg_6[for_iter_23][arith_addi_31]; 
        double memref_load_33 = func_arg_7[arith_addi_31][for_iter_24]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = func_arg_5[for_iter_23][for_iter_24]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        func_arg_5[for_iter_23][for_iter_24] = arith_addf_36; 
        int arith_addi_37 = (for_iter_25 + arith_const_15); 
        double memref_load_38 = func_arg_6[for_iter_23][arith_addi_37]; 
        double memref_load_39 = func_arg_7[arith_addi_37][for_iter_24]; 
        double arith_mulf_40 = (memref_load_38 * memref_load_39); 
        double memref_load_41 = func_arg_5[for_iter_23][for_iter_24]; 
        double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
        func_arg_5[for_iter_23][for_iter_24] = arith_addf_42; 
        int arith_addi_43 = (for_iter_25 + arith_const_14); 
        double memref_load_44 = func_arg_6[for_iter_23][arith_addi_43]; 
        double memref_load_45 = func_arg_7[arith_addi_43][for_iter_24]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = func_arg_5[for_iter_23][for_iter_24]; 
        double arith_addf_48 = (memref_load_47 + arith_mulf_46); 
        func_arg_5[for_iter_23][for_iter_24] = arith_addf_48; 
      }
    }
  }
  for (int for_iter_49 = arith_const_20; for_iter_49 < arith_const_18; for_iter_49 += arith_const_22) {
    for (int for_iter_50 = arith_const_20; for_iter_50 < arith_const_13; for_iter_50 += arith_const_22) {
      func_arg_8[for_iter_49][for_iter_50] = arith_const_19; 
      for (int for_iter_51 = arith_const_20; for_iter_51 < arith_const_12; for_iter_51 += arith_const_16) {
        double memref_load_52 = func_arg_9[for_iter_49][for_iter_51]; 
        double memref_load_53 = func_arg_10[for_iter_51][for_iter_50]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double memref_load_55 = func_arg_8[for_iter_49][for_iter_50]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        func_arg_8[for_iter_49][for_iter_50] = arith_addf_56; 
        int arith_addi_57 = (for_iter_51 + arith_const_22); 
        double memref_load_58 = func_arg_9[for_iter_49][arith_addi_57]; 
        double memref_load_59 = func_arg_10[arith_addi_57][for_iter_50]; 
        double arith_mulf_60 = (memref_load_58 * memref_load_59); 
        double memref_load_61 = func_arg_8[for_iter_49][for_iter_50]; 
        double arith_addf_62 = (memref_load_61 + arith_mulf_60); 
        func_arg_8[for_iter_49][for_iter_50] = arith_addf_62; 
        int arith_addi_63 = (for_iter_51 + arith_const_15); 
        double memref_load_64 = func_arg_9[for_iter_49][arith_addi_63]; 
        double memref_load_65 = func_arg_10[arith_addi_63][for_iter_50]; 
        double arith_mulf_66 = (memref_load_64 * memref_load_65); 
        double memref_load_67 = func_arg_8[for_iter_49][for_iter_50]; 
        double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
        func_arg_8[for_iter_49][for_iter_50] = arith_addf_68; 
        int arith_addi_69 = (for_iter_51 + arith_const_14); 
        double memref_load_70 = func_arg_9[for_iter_49][arith_addi_69]; 
        double memref_load_71 = func_arg_10[arith_addi_69][for_iter_50]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double memref_load_73 = func_arg_8[for_iter_49][for_iter_50]; 
        double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
        func_arg_8[for_iter_49][for_iter_50] = arith_addf_74; 
      }
    }
  }
  for (int for_iter_75 = arith_const_20; for_iter_75 < arith_const_21; for_iter_75 += arith_const_22) {
    for (int for_iter_76 = arith_const_20; for_iter_76 < arith_const_13; for_iter_76 += arith_const_22) {
      func_arg_11[for_iter_75][for_iter_76] = arith_const_19; 
      for (int for_iter_77 = arith_const_20; for_iter_77 < arith_const_21; for_iter_77 += arith_const_16) {
        double memref_load_78 = func_arg_5[for_iter_75][for_iter_77]; 
        double memref_load_79 = func_arg_8[for_iter_77][for_iter_76]; 
        double arith_mulf_80 = (memref_load_78 * memref_load_79); 
        double memref_load_81 = func_arg_11[for_iter_75][for_iter_76]; 
        double arith_addf_82 = (memref_load_81 + arith_mulf_80); 
        func_arg_11[for_iter_75][for_iter_76] = arith_addf_82; 
        int arith_addi_83 = (for_iter_77 + arith_const_22); 
        double memref_load_84 = func_arg_5[for_iter_75][arith_addi_83]; 
        double memref_load_85 = func_arg_8[arith_addi_83][for_iter_76]; 
        double arith_mulf_86 = (memref_load_84 * memref_load_85); 
        double memref_load_87 = func_arg_11[for_iter_75][for_iter_76]; 
        double arith_addf_88 = (memref_load_87 + arith_mulf_86); 
        func_arg_11[for_iter_75][for_iter_76] = arith_addf_88; 
        int arith_addi_89 = (for_iter_77 + arith_const_15); 
        double memref_load_90 = func_arg_5[for_iter_75][arith_addi_89]; 
        double memref_load_91 = func_arg_8[arith_addi_89][for_iter_76]; 
        double arith_mulf_92 = (memref_load_90 * memref_load_91); 
        double memref_load_93 = func_arg_11[for_iter_75][for_iter_76]; 
        double arith_addf_94 = (memref_load_93 + arith_mulf_92); 
        func_arg_11[for_iter_75][for_iter_76] = arith_addf_94; 
        int arith_addi_95 = (for_iter_77 + arith_const_14); 
        double memref_load_96 = func_arg_5[for_iter_75][arith_addi_95]; 
        double memref_load_97 = func_arg_8[arith_addi_95][for_iter_76]; 
        double arith_mulf_98 = (memref_load_96 * memref_load_97); 
        double memref_load_99 = func_arg_11[for_iter_75][for_iter_76]; 
        double arith_addf_100 = (memref_load_99 + arith_mulf_98); 
        func_arg_11[for_iter_75][for_iter_76] = arith_addf_100; 
      }
      for (int for_iter_101 = arith_const_21; for_iter_101 < arith_const_18; for_iter_101 += arith_const_22) {
        double memref_load_102 = func_arg_5[for_iter_75][for_iter_101]; 
        double memref_load_103 = func_arg_8[for_iter_101][for_iter_76]; 
        double arith_mulf_104 = (memref_load_102 * memref_load_103); 
        double memref_load_105 = func_arg_11[for_iter_75][for_iter_76]; 
        double arith_addf_106 = (memref_load_105 + arith_mulf_104); 
        func_arg_11[for_iter_75][for_iter_76] = arith_addf_106; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;


  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);

}

#pragma pocc-region-end
