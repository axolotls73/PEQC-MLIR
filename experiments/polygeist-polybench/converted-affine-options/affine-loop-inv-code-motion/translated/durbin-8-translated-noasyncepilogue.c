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
  double _16; 
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double memref_load_23 = func_arg_1[arith_const_13]; 
  double arith_negf_24 = -(memref_load_23); 
  func_arg_2[arith_const_13] = arith_negf_24; 
  memref_alloca_21[0] = _16; 
  double memref_load_25 = func_arg_1[arith_const_13]; 
  double arith_negf_26 = -(memref_load_25); 
  memref_alloca_21[0] = arith_negf_26; 
  memref_alloca_20[0] = _16; 
  memref_alloca_20[0] = arith_const_15; 
  memref_alloca_18[0] = _16; 
  for (int for_iter_27 = arith_const_12; for_iter_27 < arith_const_11; for_iter_27 += arith_const_12) {
    memref_alloca_18[0] = arith_const_14; 
    double memref_load_28 = memref_alloca_18[0]; 
    int arith_addi_29 = (for_iter_27 + arith_const_10); 
    double memref_load_30 = func_arg_1[arith_addi_29]; 
    double memref_load_31 = func_arg_2[arith_const_13]; 
    double arith_mulf_32 = (memref_load_30 * memref_load_31); 
    double arith_addf_33 = (memref_load_28 + arith_mulf_32); 
    memref_alloca_18[0] = arith_addf_33; 
    double memref_load_34 = memref_alloca_20[0]; 
    double memref_load_35 = memref_alloca_21[0]; 
    double arith_mulf_36 = (memref_load_35 * memref_load_35); 
    double arith_subf_37 = (memref_load_34 - arith_mulf_36); 
    double memref_load_38 = memref_alloca_20[0]; 
    double arith_mulf_39 = (arith_subf_37 * memref_load_38); 
    memref_alloca_20[0] = arith_mulf_39; 
    for (int for_iter_40 = arith_const_12; for_iter_40 < for_iter_27; for_iter_40 += arith_const_12) {
      double memref_load_41 = memref_alloca_18[0]; 
      int arith_muli_42 = (for_iter_40 * arith_const_10); 
      int arith_addi_43 = (for_iter_27 + arith_muli_42); 
      int arith_addi_44 = (arith_addi_43 + arith_const_10); 
      double memref_load_45 = func_arg_1[arith_addi_44]; 
      double memref_load_46 = func_arg_2[for_iter_40]; 
      double arith_mulf_47 = (memref_load_45 * memref_load_46); 
      double arith_addf_48 = (memref_load_41 + arith_mulf_47); 
      memref_alloca_18[0] = arith_addf_48; 
    }
    int arith_addi_49 = (for_iter_27 + arith_const_10); 
    int arith_cmpi_50 = (arith_addi_49 == arith_const_13); 
    if (arith_cmpi_50) {
      double memref_load_51 = func_arg_1[arith_const_12]; 
      double memref_load_52 = memref_alloca_18[0]; 
      double arith_addf_53 = (memref_load_51 + memref_load_52); 
      double arith_negf_54 = -(arith_addf_53); 
      double memref_load_55 = memref_alloca_20[0]; 
      double arith_divf_56 = (arith_negf_54 / memref_load_55); 
      memref_alloca_17[arith_const_13] = arith_divf_56; 
      double memref_load_57 = func_arg_2[arith_const_13]; 
      double memref_load_58 = memref_alloca_17[arith_const_13]; 
      double memref_load_59 = func_arg_2[arith_const_13]; 
      double arith_mulf_60 = (memref_load_58 * memref_load_59); 
      double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
      memref_alloca_19[arith_const_13] = arith_addf_61; 
      double memref_load_62 = memref_alloca_19[arith_const_13]; 
      func_arg_2[arith_const_13] = memref_load_62; 
      double memref_load_63 = memref_alloca_17[arith_const_13]; 
      memref_alloca_22[arith_const_13] = memref_load_63; 
      memref_alloca_21[0] = memref_load_63; 
      double memref_load_64 = memref_alloca_22[arith_const_13]; 
      func_arg_2[arith_const_12] = memref_load_64; 
    }
    int arith_addi_65 = (for_iter_27 + arith_const_9); 
    int arith_cmpi_66 = (arith_addi_65 >= arith_const_13); 
    if (arith_cmpi_66) {
      double memref_load_67 = func_arg_1[for_iter_27]; 
      double memref_load_68 = memref_alloca_18[0]; 
      double arith_addf_69 = (memref_load_67 + memref_load_68); 
      double arith_negf_70 = -(arith_addf_69); 
      double memref_load_71 = memref_alloca_20[0]; 
      double arith_divf_72 = (arith_negf_70 / memref_load_71); 
      memref_alloca_17[arith_const_13] = arith_divf_72; 
      double memref_load_73 = func_arg_2[arith_const_13]; 
      double memref_load_74 = memref_alloca_17[arith_const_13]; 
      int arith_addi_75 = (for_iter_27 + arith_const_10); 
      double memref_load_76 = func_arg_2[arith_addi_75]; 
      double arith_mulf_77 = (memref_load_74 * memref_load_76); 
      double arith_addf_78 = (memref_load_73 + arith_mulf_77); 
      memref_alloca_19[arith_const_13] = arith_addf_78; 
      double memref_load_79 = memref_alloca_17[arith_const_13]; 
      memref_alloca_22[arith_const_13] = memref_load_79; 
      memref_alloca_21[0] = memref_load_79; 
      double memref_load_80 = memref_alloca_22[arith_const_13]; 
      func_arg_2[for_iter_27] = memref_load_80; 
    }
    double memref_load_81 = memref_alloca_17[arith_const_13]; 
    int arith_addi_82 = (for_iter_27 + arith_const_7); 
    for (int for_iter_83 = arith_const_8; for_iter_83 < arith_addi_82; for_iter_83 += arith_const_12) {
      int arith_addi_84 = (for_iter_83 + arith_const_6); 
      double memref_load_85 = func_arg_2[arith_addi_84]; 
      int arith_muli_86 = (for_iter_83 * arith_const_10); 
      int arith_addi_87 = (arith_muli_86 + for_iter_27); 
      int arith_addi_88 = (arith_addi_87 + arith_const_7); 
      double memref_load_89 = func_arg_2[arith_addi_88]; 
      double arith_mulf_90 = (memref_load_81 * memref_load_89); 
      double arith_addf_91 = (memref_load_85 + arith_mulf_90); 
      int arith_addi_92 = (for_iter_83 + arith_const_6); 
      memref_alloca_19[arith_addi_92] = arith_addf_91; 
    }
    int arith_addi_93 = (for_iter_27 + arith_const_9); 
    int arith_cmpi_94 = (arith_addi_93 >= arith_const_13); 
    if (arith_cmpi_94) {
      int arith_addi_95 = (for_iter_27 + arith_const_10); 
      double memref_load_96 = func_arg_2[arith_addi_95]; 
      double memref_load_97 = memref_alloca_17[arith_const_13]; 
      double memref_load_98 = func_arg_2[arith_const_13]; 
      double arith_mulf_99 = (memref_load_97 * memref_load_98); 
      double arith_addf_100 = (memref_load_96 + arith_mulf_99); 
      int arith_addi_101 = (for_iter_27 + arith_const_10); 
      memref_alloca_19[arith_addi_101] = arith_addf_100; 
      double memref_load_102 = memref_alloca_19[arith_const_13]; 
      func_arg_2[arith_const_13] = memref_load_102; 
    }
    int arith_addi_103 = (for_iter_27 + arith_const_5); 
    int arith_muli_104 = (for_iter_27 * arith_const_4); 
    int arith_addi_105 = (arith_muli_104 + arith_const_7); 
    for (int for_iter_106 = arith_addi_103; for_iter_106 < arith_addi_105; for_iter_106 += arith_const_12) {
      int arith_muli_107 = (for_iter_27 * arith_const_10); 
      int arith_addi_108 = (arith_muli_107 + for_iter_106); 
      int arith_addi_109 = (arith_addi_108 + arith_const_3); 
      double memref_load_110 = memref_alloca_19[arith_addi_109]; 
      int arith_muli_111 = (for_iter_27 * arith_const_10); 
      int arith_addi_112 = (arith_muli_111 + for_iter_106); 
      int arith_addi_113 = (arith_addi_112 + arith_const_3); 
      func_arg_2[arith_addi_113] = memref_load_110; 
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
