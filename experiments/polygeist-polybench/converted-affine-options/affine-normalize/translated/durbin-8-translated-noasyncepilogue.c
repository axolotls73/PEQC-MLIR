#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -37; 
  int arith_const_4 = 38; 
  int arith_const_5 = 37; 
  int arith_const_6 = -38; 
  int arith_const_7 = -1; 
  int arith_const_8 = 1; 
  int arith_const_9 = 39; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 1.000000; 
  double _13; 
  double* memref_alloca_14; 
  double* memref_alloca_15; 
  double* memref_alloca_16; 
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double memref_load_20 = func_arg_1[arith_const_10]; 
  double arith_negf_21 = -(memref_load_20); 
  func_arg_2[arith_const_10] = arith_negf_21; 
  memref_alloca_18[0] = _13; 
  double memref_load_22 = func_arg_1[arith_const_10]; 
  double arith_negf_23 = -(memref_load_22); 
  memref_alloca_18[0] = arith_negf_23; 
  memref_alloca_17[0] = _13; 
  memref_alloca_17[0] = arith_const_12; 
  memref_alloca_15[0] = _13; 
  for (int for_iter_24 = arith_const_10; for_iter_24 < arith_const_9; for_iter_24 += arith_const_8) {
    int arith_addi_25 = (for_iter_24 + arith_const_8); 
    memref_alloca_15[0] = arith_const_11; 
    double memref_load_26 = memref_alloca_15[0]; 
    int arith_addi_27 = (arith_addi_25 + arith_const_7); 
    double memref_load_28 = func_arg_1[arith_addi_27]; 
    double memref_load_29 = func_arg_2[arith_const_10]; 
    double arith_mulf_30 = (memref_load_28 * memref_load_29); 
    double arith_addf_31 = (memref_load_26 + arith_mulf_30); 
    memref_alloca_15[0] = arith_addf_31; 
    double memref_load_32 = memref_alloca_17[0]; 
    double memref_load_33 = memref_alloca_18[0]; 
    double arith_mulf_34 = (memref_load_33 * memref_load_33); 
    double arith_subf_35 = (memref_load_32 - arith_mulf_34); 
    double memref_load_36 = memref_alloca_17[0]; 
    double arith_mulf_37 = (arith_subf_35 * memref_load_36); 
    memref_alloca_17[0] = arith_mulf_37; 
    for (int for_iter_38 = arith_const_10; for_iter_38 < for_iter_24; for_iter_38 += arith_const_8) {
      int arith_addi_39 = (for_iter_38 + arith_const_8); 
      double memref_load_40 = memref_alloca_15[0]; 
      int arith_muli_41 = (arith_addi_39 * arith_const_7); 
      int arith_addi_42 = (arith_addi_25 + arith_muli_41); 
      int arith_addi_43 = (arith_addi_42 + arith_const_7); 
      double memref_load_44 = func_arg_1[arith_addi_43]; 
      double memref_load_45 = func_arg_2[arith_addi_39]; 
      double arith_mulf_46 = (memref_load_44 * memref_load_45); 
      double arith_addf_47 = (memref_load_40 + arith_mulf_46); 
      memref_alloca_15[0] = arith_addf_47; 
    }
    int arith_cmpi_48 = (for_iter_24 == arith_const_10); 
    if (arith_cmpi_48) {
      double memref_load_49 = func_arg_1[arith_const_8]; 
      double memref_load_50 = memref_alloca_15[0]; 
      double arith_addf_51 = (memref_load_49 + memref_load_50); 
      double arith_negf_52 = -(arith_addf_51); 
      double memref_load_53 = memref_alloca_17[0]; 
      double arith_divf_54 = (arith_negf_52 / memref_load_53); 
      memref_alloca_14[arith_const_10] = arith_divf_54; 
      double memref_load_55 = func_arg_2[arith_const_10]; 
      double memref_load_56 = memref_alloca_14[arith_const_10]; 
      double memref_load_57 = func_arg_2[arith_const_10]; 
      double arith_mulf_58 = (memref_load_56 * memref_load_57); 
      double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
      memref_alloca_16[arith_const_10] = arith_addf_59; 
      double memref_load_60 = memref_alloca_16[arith_const_10]; 
      func_arg_2[arith_const_10] = memref_load_60; 
      double memref_load_61 = memref_alloca_14[arith_const_10]; 
      memref_alloca_19[arith_const_10] = memref_load_61; 
      memref_alloca_18[0] = memref_load_61; 
      double memref_load_62 = memref_alloca_19[arith_const_10]; 
      func_arg_2[arith_const_8] = memref_load_62; 
    }
    int arith_addi_63 = (for_iter_24 + arith_const_7); 
    int arith_cmpi_64 = (arith_addi_63 >= arith_const_10); 
    if (arith_cmpi_64) {
      double memref_load_65 = func_arg_1[arith_addi_25]; 
      double memref_load_66 = memref_alloca_15[0]; 
      double arith_addf_67 = (memref_load_65 + memref_load_66); 
      double arith_negf_68 = -(arith_addf_67); 
      double memref_load_69 = memref_alloca_17[0]; 
      double arith_divf_70 = (arith_negf_68 / memref_load_69); 
      memref_alloca_14[arith_const_10] = arith_divf_70; 
      double memref_load_71 = func_arg_2[arith_const_10]; 
      double memref_load_72 = memref_alloca_14[arith_const_10]; 
      int arith_addi_73 = (arith_addi_25 + arith_const_7); 
      double memref_load_74 = func_arg_2[arith_addi_73]; 
      double arith_mulf_75 = (memref_load_72 * memref_load_74); 
      double arith_addf_76 = (memref_load_71 + arith_mulf_75); 
      memref_alloca_16[arith_const_10] = arith_addf_76; 
      double memref_load_77 = memref_alloca_14[arith_const_10]; 
      memref_alloca_19[arith_const_10] = memref_load_77; 
      memref_alloca_18[0] = memref_load_77; 
      double memref_load_78 = memref_alloca_19[arith_const_10]; 
      func_arg_2[arith_addi_25] = memref_load_78; 
    }
    int arith_addi_79 = (for_iter_24 + arith_const_7); 
    for (int for_iter_80 = arith_const_10; for_iter_80 < arith_addi_79; for_iter_80 += arith_const_8) {
      int arith_addi_81 = (for_iter_80 + arith_const_9); 
      int arith_addi_82 = (arith_addi_81 + arith_const_6); 
      double memref_load_83 = func_arg_2[arith_addi_82]; 
      double memref_load_84 = memref_alloca_14[arith_const_10]; 
      int arith_muli_85 = (arith_addi_81 * arith_const_7); 
      int arith_addi_86 = (arith_muli_85 + arith_addi_25); 
      int arith_addi_87 = (arith_addi_86 + arith_const_5); 
      double memref_load_88 = func_arg_2[arith_addi_87]; 
      double arith_mulf_89 = (memref_load_84 * memref_load_88); 
      double arith_addf_90 = (memref_load_83 + arith_mulf_89); 
      int arith_addi_91 = (arith_addi_81 + arith_const_6); 
      memref_alloca_16[arith_addi_91] = arith_addf_90; 
    }
    int arith_addi_92 = (for_iter_24 + arith_const_7); 
    int arith_cmpi_93 = (arith_addi_92 >= arith_const_10); 
    if (arith_cmpi_93) {
      int arith_addi_94 = (arith_addi_25 + arith_const_7); 
      double memref_load_95 = func_arg_2[arith_addi_94]; 
      double memref_load_96 = memref_alloca_14[arith_const_10]; 
      double memref_load_97 = func_arg_2[arith_const_10]; 
      double arith_mulf_98 = (memref_load_96 * memref_load_97); 
      double arith_addf_99 = (memref_load_95 + arith_mulf_98); 
      int arith_addi_100 = (arith_addi_25 + arith_const_7); 
      memref_alloca_16[arith_addi_100] = arith_addf_99; 
      double memref_load_101 = memref_alloca_16[arith_const_10]; 
      func_arg_2[arith_const_10] = memref_load_101; 
    }
    for (int for_iter_102 = arith_const_10; for_iter_102 < for_iter_24; for_iter_102 += arith_const_8) {
      int arith_addi_103 = (arith_addi_25 + for_iter_102); 
      int arith_addi_104 = (arith_addi_103 + arith_const_4); 
      int arith_muli_105 = (arith_addi_25 * arith_const_7); 
      int arith_addi_106 = (arith_muli_105 + arith_addi_104); 
      int arith_addi_107 = (arith_addi_106 + arith_const_3); 
      double memref_load_108 = memref_alloca_16[arith_addi_107]; 
      int arith_muli_109 = (arith_addi_25 * arith_const_7); 
      int arith_addi_110 = (arith_muli_109 + arith_addi_104); 
      int arith_addi_111 = (arith_addi_110 + arith_const_3); 
      func_arg_2[arith_addi_111] = memref_load_108; 
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
