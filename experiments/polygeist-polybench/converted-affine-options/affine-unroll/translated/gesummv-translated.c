#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  double arith_const_12 = 0.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 28; 
  int arith_const_15 = 4; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    func_arg_7[for_iter_16] = arith_const_12; 
    int arith_addi_17 = (for_iter_16 + arith_const_11); 
    func_arg_7[arith_addi_17] = arith_const_12; 
    int arith_addi_18 = (for_iter_16 + arith_const_10); 
    func_arg_7[arith_addi_18] = arith_const_12; 
    int arith_addi_19 = (for_iter_16 + arith_const_9); 
    func_arg_7[arith_addi_19] = arith_const_12; 
  }
  for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_8; for_iter_20 += arith_const_11) {
    func_arg_7[for_iter_20] = arith_const_12; 
  }
  for (int for_iter_21 = arith_const_13; for_iter_21 < arith_const_8; for_iter_21 += arith_const_11) {
    for (int for_iter_22 = arith_const_13; for_iter_22 < arith_const_14; for_iter_22 += arith_const_15) {
      double memref_load_23 = func_arg_4[for_iter_21][for_iter_22]; 
      double memref_load_24 = func_arg_6[for_iter_22]; 
      double arith_mulf_25 = (memref_load_23 * memref_load_24); 
      double memref_load_26 = func_arg_7[for_iter_21]; 
      double arith_addf_27 = (arith_mulf_25 + memref_load_26); 
      func_arg_7[for_iter_21] = arith_addf_27; 
      int arith_addi_28 = (for_iter_22 + arith_const_11); 
      double memref_load_29 = func_arg_4[for_iter_21][arith_addi_28]; 
      double memref_load_30 = func_arg_6[arith_addi_28]; 
      double arith_mulf_31 = (memref_load_29 * memref_load_30); 
      double memref_load_32 = func_arg_7[for_iter_21]; 
      double arith_addf_33 = (arith_mulf_31 + memref_load_32); 
      func_arg_7[for_iter_21] = arith_addf_33; 
      int arith_addi_34 = (for_iter_22 + arith_const_10); 
      double memref_load_35 = func_arg_4[for_iter_21][arith_addi_34]; 
      double memref_load_36 = func_arg_6[arith_addi_34]; 
      double arith_mulf_37 = (memref_load_35 * memref_load_36); 
      double memref_load_38 = func_arg_7[for_iter_21]; 
      double arith_addf_39 = (arith_mulf_37 + memref_load_38); 
      func_arg_7[for_iter_21] = arith_addf_39; 
      int arith_addi_40 = (for_iter_22 + arith_const_9); 
      double memref_load_41 = func_arg_4[for_iter_21][arith_addi_40]; 
      double memref_load_42 = func_arg_6[arith_addi_40]; 
      double arith_mulf_43 = (memref_load_41 * memref_load_42); 
      double memref_load_44 = func_arg_7[for_iter_21]; 
      double arith_addf_45 = (arith_mulf_43 + memref_load_44); 
      func_arg_7[for_iter_21] = arith_addf_45; 
    }
    for (int for_iter_46 = arith_const_14; for_iter_46 < arith_const_8; for_iter_46 += arith_const_11) {
      double memref_load_47 = func_arg_4[for_iter_21][for_iter_46]; 
      double memref_load_48 = func_arg_6[for_iter_46]; 
      double arith_mulf_49 = (memref_load_47 * memref_load_48); 
      double memref_load_50 = func_arg_7[for_iter_21]; 
      double arith_addf_51 = (arith_mulf_49 + memref_load_50); 
      func_arg_7[for_iter_21] = arith_addf_51; 
    }
  }
  for (int for_iter_52 = arith_const_13; for_iter_52 < arith_const_14; for_iter_52 += arith_const_15) {
    func_arg_5[for_iter_52] = arith_const_12; 
    int arith_addi_53 = (for_iter_52 + arith_const_11); 
    func_arg_5[arith_addi_53] = arith_const_12; 
    int arith_addi_54 = (for_iter_52 + arith_const_10); 
    func_arg_5[arith_addi_54] = arith_const_12; 
    int arith_addi_55 = (for_iter_52 + arith_const_9); 
    func_arg_5[arith_addi_55] = arith_const_12; 
  }
  for (int for_iter_56 = arith_const_14; for_iter_56 < arith_const_8; for_iter_56 += arith_const_11) {
    func_arg_5[for_iter_56] = arith_const_12; 
  }
  for (int for_iter_57 = arith_const_13; for_iter_57 < arith_const_8; for_iter_57 += arith_const_11) {
    for (int for_iter_58 = arith_const_13; for_iter_58 < arith_const_14; for_iter_58 += arith_const_15) {
      double memref_load_59 = func_arg_3[for_iter_57][for_iter_58]; 
      double memref_load_60 = func_arg_6[for_iter_58]; 
      double arith_mulf_61 = (memref_load_59 * memref_load_60); 
      double memref_load_62 = func_arg_5[for_iter_57]; 
      double arith_addf_63 = (arith_mulf_61 + memref_load_62); 
      func_arg_5[for_iter_57] = arith_addf_63; 
      int arith_addi_64 = (for_iter_58 + arith_const_11); 
      double memref_load_65 = func_arg_3[for_iter_57][arith_addi_64]; 
      double memref_load_66 = func_arg_6[arith_addi_64]; 
      double arith_mulf_67 = (memref_load_65 * memref_load_66); 
      double memref_load_68 = func_arg_5[for_iter_57]; 
      double arith_addf_69 = (arith_mulf_67 + memref_load_68); 
      func_arg_5[for_iter_57] = arith_addf_69; 
      int arith_addi_70 = (for_iter_58 + arith_const_10); 
      double memref_load_71 = func_arg_3[for_iter_57][arith_addi_70]; 
      double memref_load_72 = func_arg_6[arith_addi_70]; 
      double arith_mulf_73 = (memref_load_71 * memref_load_72); 
      double memref_load_74 = func_arg_5[for_iter_57]; 
      double arith_addf_75 = (arith_mulf_73 + memref_load_74); 
      func_arg_5[for_iter_57] = arith_addf_75; 
      int arith_addi_76 = (for_iter_58 + arith_const_9); 
      double memref_load_77 = func_arg_3[for_iter_57][arith_addi_76]; 
      double memref_load_78 = func_arg_6[arith_addi_76]; 
      double arith_mulf_79 = (memref_load_77 * memref_load_78); 
      double memref_load_80 = func_arg_5[for_iter_57]; 
      double arith_addf_81 = (arith_mulf_79 + memref_load_80); 
      func_arg_5[for_iter_57] = arith_addf_81; 
    }
    for (int for_iter_82 = arith_const_14; for_iter_82 < arith_const_8; for_iter_82 += arith_const_11) {
      double memref_load_83 = func_arg_3[for_iter_57][for_iter_82]; 
      double memref_load_84 = func_arg_6[for_iter_82]; 
      double arith_mulf_85 = (memref_load_83 * memref_load_84); 
      double memref_load_86 = func_arg_5[for_iter_57]; 
      double arith_addf_87 = (arith_mulf_85 + memref_load_86); 
      func_arg_5[for_iter_57] = arith_addf_87; 
    }
  }
  for (int for_iter_88 = arith_const_13; for_iter_88 < arith_const_14; for_iter_88 += arith_const_15) {
    double memref_load_89 = func_arg_5[for_iter_88]; 
    double arith_mulf_90 = (func_arg_1 * memref_load_89); 
    double memref_load_91 = func_arg_7[for_iter_88]; 
    double arith_mulf_92 = (func_arg_2 * memref_load_91); 
    double arith_addf_93 = (arith_mulf_90 + arith_mulf_92); 
    func_arg_7[for_iter_88] = arith_addf_93; 
    int arith_addi_94 = (for_iter_88 + arith_const_11); 
    double memref_load_95 = func_arg_5[arith_addi_94]; 
    double arith_mulf_96 = (func_arg_1 * memref_load_95); 
    double memref_load_97 = func_arg_7[arith_addi_94]; 
    double arith_mulf_98 = (func_arg_2 * memref_load_97); 
    double arith_addf_99 = (arith_mulf_96 + arith_mulf_98); 
    func_arg_7[arith_addi_94] = arith_addf_99; 
    int arith_addi_100 = (for_iter_88 + arith_const_10); 
    double memref_load_101 = func_arg_5[arith_addi_100]; 
    double arith_mulf_102 = (func_arg_1 * memref_load_101); 
    double memref_load_103 = func_arg_7[arith_addi_100]; 
    double arith_mulf_104 = (func_arg_2 * memref_load_103); 
    double arith_addf_105 = (arith_mulf_102 + arith_mulf_104); 
    func_arg_7[arith_addi_100] = arith_addf_105; 
    int arith_addi_106 = (for_iter_88 + arith_const_9); 
    double memref_load_107 = func_arg_5[arith_addi_106]; 
    double arith_mulf_108 = (func_arg_1 * memref_load_107); 
    double memref_load_109 = func_arg_7[arith_addi_106]; 
    double arith_mulf_110 = (func_arg_2 * memref_load_109); 
    double arith_addf_111 = (arith_mulf_108 + arith_mulf_110); 
    func_arg_7[arith_addi_106] = arith_addf_111; 
  }
  for (int for_iter_112 = arith_const_14; for_iter_112 < arith_const_8; for_iter_112 += arith_const_11) {
    double memref_load_113 = func_arg_5[for_iter_112]; 
    double arith_mulf_114 = (func_arg_1 * memref_load_113); 
    double memref_load_115 = func_arg_7[for_iter_112]; 
    double arith_mulf_116 = (func_arg_2 * memref_load_115); 
    double arith_addf_117 = (arith_mulf_114 + arith_mulf_116); 
    func_arg_7[for_iter_112] = arith_addf_117; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
