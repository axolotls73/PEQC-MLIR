#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 3; 
  int arith_const_13 = 2; 
  int arith_const_14 = 4; 
  int arith_const_15 = 0; 
  int arith_const_16 = 40; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_14) {
      double memref_load_20 = func_arg_3[for_iter_18][for_iter_19]; 
      double memref_load_21 = func_arg_4[for_iter_18]; 
      double memref_load_22 = func_arg_5[for_iter_19]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double arith_addf_24 = (memref_load_20 + arith_mulf_23); 
      double memref_load_25 = func_arg_6[for_iter_18]; 
      double memref_load_26 = func_arg_7[for_iter_19]; 
      double arith_mulf_27 = (memref_load_25 * memref_load_26); 
      double arith_addf_28 = (arith_addf_24 + arith_mulf_27); 
      func_arg_3[for_iter_18][for_iter_19] = arith_addf_28; 
      int arith_addi_29 = (for_iter_19 + arith_const_17); 
      double memref_load_30 = func_arg_3[for_iter_18][arith_addi_29]; 
      double memref_load_31 = func_arg_4[for_iter_18]; 
      double memref_load_32 = func_arg_5[arith_addi_29]; 
      double arith_mulf_33 = (memref_load_31 * memref_load_32); 
      double arith_addf_34 = (memref_load_30 + arith_mulf_33); 
      double memref_load_35 = func_arg_6[for_iter_18]; 
      double memref_load_36 = func_arg_7[arith_addi_29]; 
      double arith_mulf_37 = (memref_load_35 * memref_load_36); 
      double arith_addf_38 = (arith_addf_34 + arith_mulf_37); 
      func_arg_3[for_iter_18][arith_addi_29] = arith_addf_38; 
      int arith_addi_39 = (for_iter_19 + arith_const_13); 
      double memref_load_40 = func_arg_3[for_iter_18][arith_addi_39]; 
      double memref_load_41 = func_arg_4[for_iter_18]; 
      double memref_load_42 = func_arg_5[arith_addi_39]; 
      double arith_mulf_43 = (memref_load_41 * memref_load_42); 
      double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
      double memref_load_45 = func_arg_6[for_iter_18]; 
      double memref_load_46 = func_arg_7[arith_addi_39]; 
      double arith_mulf_47 = (memref_load_45 * memref_load_46); 
      double arith_addf_48 = (arith_addf_44 + arith_mulf_47); 
      func_arg_3[for_iter_18][arith_addi_39] = arith_addf_48; 
      int arith_addi_49 = (for_iter_19 + arith_const_12); 
      double memref_load_50 = func_arg_3[for_iter_18][arith_addi_49]; 
      double memref_load_51 = func_arg_4[for_iter_18]; 
      double memref_load_52 = func_arg_5[arith_addi_49]; 
      double arith_mulf_53 = (memref_load_51 * memref_load_52); 
      double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
      double memref_load_55 = func_arg_6[for_iter_18]; 
      double memref_load_56 = func_arg_7[arith_addi_49]; 
      double arith_mulf_57 = (memref_load_55 * memref_load_56); 
      double arith_addf_58 = (arith_addf_54 + arith_mulf_57); 
      func_arg_3[for_iter_18][arith_addi_49] = arith_addf_58; 
    }
  }
  for (int for_iter_59 = arith_const_15; for_iter_59 < arith_const_16; for_iter_59 += arith_const_17) {
    for (int for_iter_60 = arith_const_15; for_iter_60 < arith_const_16; for_iter_60 += arith_const_14) {
      double memref_load_61 = func_arg_9[for_iter_59]; 
      double memref_load_62 = func_arg_3[for_iter_60][for_iter_59]; 
      double arith_mulf_63 = (func_arg_2 * memref_load_62); 
      double memref_load_64 = func_arg_10[for_iter_60]; 
      double arith_mulf_65 = (arith_mulf_63 * memref_load_64); 
      double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
      func_arg_9[for_iter_59] = arith_addf_66; 
      int arith_addi_67 = (for_iter_60 + arith_const_17); 
      double memref_load_68 = func_arg_9[for_iter_59]; 
      double memref_load_69 = func_arg_3[arith_addi_67][for_iter_59]; 
      double arith_mulf_70 = (func_arg_2 * memref_load_69); 
      double memref_load_71 = func_arg_10[arith_addi_67]; 
      double arith_mulf_72 = (arith_mulf_70 * memref_load_71); 
      double arith_addf_73 = (memref_load_68 + arith_mulf_72); 
      func_arg_9[for_iter_59] = arith_addf_73; 
      int arith_addi_74 = (for_iter_60 + arith_const_13); 
      double memref_load_75 = func_arg_9[for_iter_59]; 
      double memref_load_76 = func_arg_3[arith_addi_74][for_iter_59]; 
      double arith_mulf_77 = (func_arg_2 * memref_load_76); 
      double memref_load_78 = func_arg_10[arith_addi_74]; 
      double arith_mulf_79 = (arith_mulf_77 * memref_load_78); 
      double arith_addf_80 = (memref_load_75 + arith_mulf_79); 
      func_arg_9[for_iter_59] = arith_addf_80; 
      int arith_addi_81 = (for_iter_60 + arith_const_12); 
      double memref_load_82 = func_arg_9[for_iter_59]; 
      double memref_load_83 = func_arg_3[arith_addi_81][for_iter_59]; 
      double arith_mulf_84 = (func_arg_2 * memref_load_83); 
      double memref_load_85 = func_arg_10[arith_addi_81]; 
      double arith_mulf_86 = (arith_mulf_84 * memref_load_85); 
      double arith_addf_87 = (memref_load_82 + arith_mulf_86); 
      func_arg_9[for_iter_59] = arith_addf_87; 
    }
  }
  for (int for_iter_88 = arith_const_15; for_iter_88 < arith_const_16; for_iter_88 += arith_const_14) {
    double memref_load_89 = func_arg_9[for_iter_88]; 
    double memref_load_90 = func_arg_11[for_iter_88]; 
    double arith_addf_91 = (memref_load_89 + memref_load_90); 
    func_arg_9[for_iter_88] = arith_addf_91; 
    int arith_addi_92 = (for_iter_88 + arith_const_17); 
    double memref_load_93 = func_arg_9[arith_addi_92]; 
    double memref_load_94 = func_arg_11[arith_addi_92]; 
    double arith_addf_95 = (memref_load_93 + memref_load_94); 
    func_arg_9[arith_addi_92] = arith_addf_95; 
    int arith_addi_96 = (for_iter_88 + arith_const_13); 
    double memref_load_97 = func_arg_9[arith_addi_96]; 
    double memref_load_98 = func_arg_11[arith_addi_96]; 
    double arith_addf_99 = (memref_load_97 + memref_load_98); 
    func_arg_9[arith_addi_96] = arith_addf_99; 
    int arith_addi_100 = (for_iter_88 + arith_const_12); 
    double memref_load_101 = func_arg_9[arith_addi_100]; 
    double memref_load_102 = func_arg_11[arith_addi_100]; 
    double arith_addf_103 = (memref_load_101 + memref_load_102); 
    func_arg_9[arith_addi_100] = arith_addf_103; 
  }
  for (int for_iter_104 = arith_const_15; for_iter_104 < arith_const_16; for_iter_104 += arith_const_17) {
    for (int for_iter_105 = arith_const_15; for_iter_105 < arith_const_16; for_iter_105 += arith_const_14) {
      double memref_load_106 = func_arg_8[for_iter_104]; 
      double memref_load_107 = func_arg_3[for_iter_104][for_iter_105]; 
      double arith_mulf_108 = (func_arg_1 * memref_load_107); 
      double memref_load_109 = func_arg_9[for_iter_105]; 
      double arith_mulf_110 = (arith_mulf_108 * memref_load_109); 
      double arith_addf_111 = (memref_load_106 + arith_mulf_110); 
      func_arg_8[for_iter_104] = arith_addf_111; 
      int arith_addi_112 = (for_iter_105 + arith_const_17); 
      double memref_load_113 = func_arg_8[for_iter_104]; 
      double memref_load_114 = func_arg_3[for_iter_104][arith_addi_112]; 
      double arith_mulf_115 = (func_arg_1 * memref_load_114); 
      double memref_load_116 = func_arg_9[arith_addi_112]; 
      double arith_mulf_117 = (arith_mulf_115 * memref_load_116); 
      double arith_addf_118 = (memref_load_113 + arith_mulf_117); 
      func_arg_8[for_iter_104] = arith_addf_118; 
      int arith_addi_119 = (for_iter_105 + arith_const_13); 
      double memref_load_120 = func_arg_8[for_iter_104]; 
      double memref_load_121 = func_arg_3[for_iter_104][arith_addi_119]; 
      double arith_mulf_122 = (func_arg_1 * memref_load_121); 
      double memref_load_123 = func_arg_9[arith_addi_119]; 
      double arith_mulf_124 = (arith_mulf_122 * memref_load_123); 
      double arith_addf_125 = (memref_load_120 + arith_mulf_124); 
      func_arg_8[for_iter_104] = arith_addf_125; 
      int arith_addi_126 = (for_iter_105 + arith_const_12); 
      double memref_load_127 = func_arg_8[for_iter_104]; 
      double memref_load_128 = func_arg_3[for_iter_104][arith_addi_126]; 
      double arith_mulf_129 = (func_arg_1 * memref_load_128); 
      double memref_load_130 = func_arg_9[arith_addi_126]; 
      double arith_mulf_131 = (arith_mulf_129 * memref_load_130); 
      double arith_addf_132 = (memref_load_127 + arith_mulf_131); 
      func_arg_8[for_iter_104] = arith_addf_132; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
