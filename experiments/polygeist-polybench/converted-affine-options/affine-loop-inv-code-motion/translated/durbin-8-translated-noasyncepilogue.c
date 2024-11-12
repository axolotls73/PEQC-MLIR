#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -37; 
  int arith_const_4 = 2; 
  int arith_const_5 = 38; 
  int arith_const_6 = -38; 
  int arith_const_7 = 37; 
  int arith_const_8 = 39; 
  int arith_const_9 = -2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 40; 
  int arith_const_12 = 1; 
  int arith_const_13 = 0; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloca_16; 
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double memref_load_22 = func_arg_1[arith_const_13]; 
  double arith_negf_23 = -(memref_load_22); 
  func_arg_2[arith_const_13] = arith_negf_23; 
  double _24; 
  memref_alloca_20[0] = _24; 
  double memref_load_25 = func_arg_1[arith_const_13]; 
  double arith_negf_26 = -(memref_load_25); 
  memref_alloca_20[0] = arith_negf_26; 
  double _27; 
  memref_alloca_19[0] = _27; 
  memref_alloca_19[0] = arith_const_15; 
  double _28; 
  memref_alloca_17[0] = _28; 
  for (int for_iter_29 = arith_const_12; for_iter_29 < arith_const_11; for_iter_29 += arith_const_12) {
    memref_alloca_17[0] = arith_const_14; 
    double memref_load_30 = memref_alloca_17[0]; 
    int arith_addi_31 = (for_iter_29 + arith_const_10); 
    double memref_load_32 = func_arg_1[arith_addi_31]; 
    double memref_load_33 = func_arg_2[arith_const_13]; 
    double arith_mulf_34 = (memref_load_32 * memref_load_33); 
    double arith_addf_35 = (memref_load_30 + arith_mulf_34); 
    memref_alloca_17[0] = arith_addf_35; 
    double memref_load_36 = memref_alloca_19[0]; 
    double memref_load_37 = memref_alloca_20[0]; 
    double arith_mulf_38 = (memref_load_37 * memref_load_37); 
    double arith_subf_39 = (memref_load_36 - arith_mulf_38); 
    double memref_load_40 = memref_alloca_19[0]; 
    double arith_mulf_41 = (arith_subf_39 * memref_load_40); 
    memref_alloca_19[0] = arith_mulf_41; 
    for (int for_iter_42 = arith_const_12; for_iter_42 < for_iter_29; for_iter_42 += arith_const_12) {
      double memref_load_43 = memref_alloca_17[0]; 
      int arith_muli_44 = (for_iter_42 * arith_const_10); 
      int arith_addi_45 = (for_iter_29 + arith_muli_44); 
      int arith_addi_46 = (arith_addi_45 + arith_const_10); 
      double memref_load_47 = func_arg_1[arith_addi_46]; 
      double memref_load_48 = func_arg_2[for_iter_42]; 
      double arith_mulf_49 = (memref_load_47 * memref_load_48); 
      double arith_addf_50 = (memref_load_43 + arith_mulf_49); 
      memref_alloca_17[0] = arith_addf_50; 
    }
    int arith_addi_51 = (for_iter_29 + arith_const_10); 
    int arith_cmpi_52 = (arith_addi_51 == arith_const_13); 
    if (arith_cmpi_52) {
      double memref_load_53 = func_arg_1[arith_const_12]; 
      double memref_load_54 = memref_alloca_17[0]; 
      double arith_addf_55 = (memref_load_53 + memref_load_54); 
      double arith_negf_56 = -(arith_addf_55); 
      double memref_load_57 = memref_alloca_19[0]; 
      double arith_divf_58 = (arith_negf_56 / memref_load_57); 
      memref_alloca_16[arith_const_13] = arith_divf_58; 
      double memref_load_59 = func_arg_2[arith_const_13]; 
      double memref_load_60 = memref_alloca_16[arith_const_13]; 
      double memref_load_61 = func_arg_2[arith_const_13]; 
      double arith_mulf_62 = (memref_load_60 * memref_load_61); 
      double arith_addf_63 = (memref_load_59 + arith_mulf_62); 
      memref_alloca_18[arith_const_13] = arith_addf_63; 
      double memref_load_64 = memref_alloca_18[arith_const_13]; 
      func_arg_2[arith_const_13] = memref_load_64; 
      double memref_load_65 = memref_alloca_16[arith_const_13]; 
      memref_alloca_21[arith_const_13] = memref_load_65; 
      memref_alloca_20[0] = memref_load_65; 
      double memref_load_66 = memref_alloca_21[arith_const_13]; 
      func_arg_2[arith_const_12] = memref_load_66; 
    }
    int arith_addi_67 = (for_iter_29 + arith_const_9); 
    int arith_cmpi_68 = (arith_addi_67 >= arith_const_13); 
    if (arith_cmpi_68) {
      double memref_load_69 = func_arg_1[for_iter_29]; 
      double memref_load_70 = memref_alloca_17[0]; 
      double arith_addf_71 = (memref_load_69 + memref_load_70); 
      double arith_negf_72 = -(arith_addf_71); 
      double memref_load_73 = memref_alloca_19[0]; 
      double arith_divf_74 = (arith_negf_72 / memref_load_73); 
      memref_alloca_16[arith_const_13] = arith_divf_74; 
      double memref_load_75 = func_arg_2[arith_const_13]; 
      double memref_load_76 = memref_alloca_16[arith_const_13]; 
      int arith_addi_77 = (for_iter_29 + arith_const_10); 
      double memref_load_78 = func_arg_2[arith_addi_77]; 
      double arith_mulf_79 = (memref_load_76 * memref_load_78); 
      double arith_addf_80 = (memref_load_75 + arith_mulf_79); 
      memref_alloca_18[arith_const_13] = arith_addf_80; 
      double memref_load_81 = memref_alloca_16[arith_const_13]; 
      memref_alloca_21[arith_const_13] = memref_load_81; 
      memref_alloca_20[0] = memref_load_81; 
      double memref_load_82 = memref_alloca_21[arith_const_13]; 
      func_arg_2[for_iter_29] = memref_load_82; 
    }
    double memref_load_83 = memref_alloca_16[arith_const_13]; 
    int arith_addi_84 = (for_iter_29 + arith_const_7); 
    for (int for_iter_85 = arith_const_8; for_iter_85 < arith_addi_84; for_iter_85 += arith_const_12) {
      int arith_addi_86 = (for_iter_85 + arith_const_6); 
      double memref_load_87 = func_arg_2[arith_addi_86]; 
      int arith_muli_88 = (for_iter_85 * arith_const_10); 
      int arith_addi_89 = (arith_muli_88 + for_iter_29); 
      int arith_addi_90 = (arith_addi_89 + arith_const_7); 
      double memref_load_91 = func_arg_2[arith_addi_90]; 
      double arith_mulf_92 = (memref_load_83 * memref_load_91); 
      double arith_addf_93 = (memref_load_87 + arith_mulf_92); 
      int arith_addi_94 = (for_iter_85 + arith_const_6); 
      memref_alloca_18[arith_addi_94] = arith_addf_93; 
    }
    int arith_addi_95 = (for_iter_29 + arith_const_9); 
    int arith_cmpi_96 = (arith_addi_95 >= arith_const_13); 
    if (arith_cmpi_96) {
      int arith_addi_97 = (for_iter_29 + arith_const_10); 
      double memref_load_98 = func_arg_2[arith_addi_97]; 
      double memref_load_99 = memref_alloca_16[arith_const_13]; 
      double memref_load_100 = func_arg_2[arith_const_13]; 
      double arith_mulf_101 = (memref_load_99 * memref_load_100); 
      double arith_addf_102 = (memref_load_98 + arith_mulf_101); 
      int arith_addi_103 = (for_iter_29 + arith_const_10); 
      memref_alloca_18[arith_addi_103] = arith_addf_102; 
      double memref_load_104 = memref_alloca_18[arith_const_13]; 
      func_arg_2[arith_const_13] = memref_load_104; 
    }
    int arith_addi_105 = (for_iter_29 + arith_const_5); 
    int arith_muli_106 = (for_iter_29 * arith_const_4); 
    int arith_addi_107 = (arith_muli_106 + arith_const_7); 
    for (int for_iter_108 = arith_addi_105; for_iter_108 < arith_addi_107; for_iter_108 += arith_const_12) {
      int arith_muli_109 = (for_iter_29 * arith_const_10); 
      int arith_addi_110 = (arith_muli_109 + for_iter_108); 
      int arith_addi_111 = (arith_addi_110 + arith_const_3); 
      double memref_load_112 = memref_alloca_18[arith_addi_111]; 
      int arith_muli_113 = (for_iter_29 * arith_const_10); 
      int arith_addi_114 = (arith_muli_113 + for_iter_108); 
      int arith_addi_115 = (arith_addi_114 + arith_const_3); 
      func_arg_2[arith_addi_115] = memref_load_112; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}

#pragma pocc-region-end
