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
  int arith_const_11 = 32; 
  int arith_const_12 = 40; 
  int arith_const_13 = 1; 
  int arith_const_14 = 0; 
  double arith_const_15 = 0.000000; 
  double arith_const_16 = 1.000000; 
  double _17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  double memref_load_24 = func_arg_1[arith_const_14]; 
  double arith_negf_25 = -(memref_load_24); 
  func_arg_2[arith_const_14] = arith_negf_25; 
  memref_alloca_22[0] = _17; 
  double memref_load_26 = func_arg_1[arith_const_14]; 
  double arith_negf_27 = -(memref_load_26); 
  memref_alloca_22[0] = arith_negf_27; 
  memref_alloca_21[0] = _17; 
  memref_alloca_21[0] = arith_const_16; 
  memref_alloca_19[0] = _17; 
  for (int for_iter_28 = arith_const_13; for_iter_28 < arith_const_12; for_iter_28 += arith_const_11) {
    int arith_addi_29 = (for_iter_28 + arith_const_11); 
    int arith_minsi_30 = min(arith_addi_29, arith_const_12); 
    for (int for_iter_31 = for_iter_28; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_13) {
      memref_alloca_19[0] = arith_const_15; 
      double memref_load_32 = memref_alloca_19[0]; 
      int arith_addi_33 = (for_iter_31 + arith_const_10); 
      double memref_load_34 = func_arg_1[arith_addi_33]; 
      double memref_load_35 = func_arg_2[arith_const_14]; 
      double arith_mulf_36 = (memref_load_34 * memref_load_35); 
      double arith_addf_37 = (memref_load_32 + arith_mulf_36); 
      memref_alloca_19[0] = arith_addf_37; 
      double memref_load_38 = memref_alloca_21[0]; 
      double memref_load_39 = memref_alloca_22[0]; 
      double arith_mulf_40 = (memref_load_39 * memref_load_39); 
      double arith_subf_41 = (memref_load_38 - arith_mulf_40); 
      double memref_load_42 = memref_alloca_21[0]; 
      double arith_mulf_43 = (arith_subf_41 * memref_load_42); 
      memref_alloca_21[0] = arith_mulf_43; 
      for (int for_iter_44 = arith_const_13; for_iter_44 < for_iter_31; for_iter_44 += arith_const_13) {
        double memref_load_45 = memref_alloca_19[0]; 
        int arith_muli_46 = (for_iter_44 * arith_const_10); 
        int arith_addi_47 = (for_iter_31 + arith_muli_46); 
        int arith_addi_48 = (arith_addi_47 + arith_const_10); 
        double memref_load_49 = func_arg_1[arith_addi_48]; 
        double memref_load_50 = func_arg_2[for_iter_44]; 
        double arith_mulf_51 = (memref_load_49 * memref_load_50); 
        double arith_addf_52 = (memref_load_45 + arith_mulf_51); 
        memref_alloca_19[0] = arith_addf_52; 
      }
      int arith_addi_53 = (for_iter_31 + arith_const_10); 
      int arith_cmpi_54 = (arith_addi_53 == arith_const_14); 
      if (arith_cmpi_54) {
        double memref_load_55 = func_arg_1[arith_const_13]; 
        double memref_load_56 = memref_alloca_19[0]; 
        double arith_addf_57 = (memref_load_55 + memref_load_56); 
        double arith_negf_58 = -(arith_addf_57); 
        double memref_load_59 = memref_alloca_21[0]; 
        double arith_divf_60 = (arith_negf_58 / memref_load_59); 
        memref_alloca_18[arith_const_14] = arith_divf_60; 
        double memref_load_61 = func_arg_2[arith_const_14]; 
        double memref_load_62 = memref_alloca_18[arith_const_14]; 
        double memref_load_63 = func_arg_2[arith_const_14]; 
        double arith_mulf_64 = (memref_load_62 * memref_load_63); 
        double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
        memref_alloca_20[arith_const_14] = arith_addf_65; 
        double memref_load_66 = memref_alloca_20[arith_const_14]; 
        func_arg_2[arith_const_14] = memref_load_66; 
        double memref_load_67 = memref_alloca_18[arith_const_14]; 
        memref_alloca_23[arith_const_14] = memref_load_67; 
        memref_alloca_22[0] = memref_load_67; 
        double memref_load_68 = memref_alloca_23[arith_const_14]; 
        func_arg_2[arith_const_13] = memref_load_68; 
      }
      int arith_addi_69 = (for_iter_31 + arith_const_9); 
      int arith_cmpi_70 = (arith_addi_69 >= arith_const_14); 
      if (arith_cmpi_70) {
        double memref_load_71 = func_arg_1[for_iter_31]; 
        double memref_load_72 = memref_alloca_19[0]; 
        double arith_addf_73 = (memref_load_71 + memref_load_72); 
        double arith_negf_74 = -(arith_addf_73); 
        double memref_load_75 = memref_alloca_21[0]; 
        double arith_divf_76 = (arith_negf_74 / memref_load_75); 
        memref_alloca_18[arith_const_14] = arith_divf_76; 
        double memref_load_77 = func_arg_2[arith_const_14]; 
        double memref_load_78 = memref_alloca_18[arith_const_14]; 
        int arith_addi_79 = (for_iter_31 + arith_const_10); 
        double memref_load_80 = func_arg_2[arith_addi_79]; 
        double arith_mulf_81 = (memref_load_78 * memref_load_80); 
        double arith_addf_82 = (memref_load_77 + arith_mulf_81); 
        memref_alloca_20[arith_const_14] = arith_addf_82; 
        double memref_load_83 = memref_alloca_18[arith_const_14]; 
        memref_alloca_23[arith_const_14] = memref_load_83; 
        memref_alloca_22[0] = memref_load_83; 
        double memref_load_84 = memref_alloca_23[arith_const_14]; 
        func_arg_2[for_iter_31] = memref_load_84; 
      }
      int arith_addi_85 = (for_iter_31 + arith_const_7); 
      for (int for_iter_86 = arith_const_8; for_iter_86 < arith_addi_85; for_iter_86 += arith_const_13) {
        int arith_addi_87 = (for_iter_86 + arith_const_6); 
        double memref_load_88 = func_arg_2[arith_addi_87]; 
        double memref_load_89 = memref_alloca_18[arith_const_14]; 
        int arith_muli_90 = (for_iter_86 * arith_const_10); 
        int arith_addi_91 = (arith_muli_90 + for_iter_31); 
        int arith_addi_92 = (arith_addi_91 + arith_const_7); 
        double memref_load_93 = func_arg_2[arith_addi_92]; 
        double arith_mulf_94 = (memref_load_89 * memref_load_93); 
        double arith_addf_95 = (memref_load_88 + arith_mulf_94); 
        int arith_addi_96 = (for_iter_86 + arith_const_6); 
        memref_alloca_20[arith_addi_96] = arith_addf_95; 
      }
      int arith_addi_97 = (for_iter_31 + arith_const_9); 
      int arith_cmpi_98 = (arith_addi_97 >= arith_const_14); 
      if (arith_cmpi_98) {
        int arith_addi_99 = (for_iter_31 + arith_const_10); 
        double memref_load_100 = func_arg_2[arith_addi_99]; 
        double memref_load_101 = memref_alloca_18[arith_const_14]; 
        double memref_load_102 = func_arg_2[arith_const_14]; 
        double arith_mulf_103 = (memref_load_101 * memref_load_102); 
        double arith_addf_104 = (memref_load_100 + arith_mulf_103); 
        int arith_addi_105 = (for_iter_31 + arith_const_10); 
        memref_alloca_20[arith_addi_105] = arith_addf_104; 
        double memref_load_106 = memref_alloca_20[arith_const_14]; 
        func_arg_2[arith_const_14] = memref_load_106; 
      }
      int arith_addi_107 = (for_iter_31 + arith_const_5); 
      int arith_muli_108 = (for_iter_31 * arith_const_4); 
      int arith_addi_109 = (arith_muli_108 + arith_const_7); 
      for (int for_iter_110 = arith_addi_107; for_iter_110 < arith_addi_109; for_iter_110 += arith_const_13) {
        int arith_muli_111 = (for_iter_31 * arith_const_10); 
        int arith_addi_112 = (arith_muli_111 + for_iter_110); 
        int arith_addi_113 = (arith_addi_112 + arith_const_3); 
        double memref_load_114 = memref_alloca_20[arith_addi_113]; 
        int arith_muli_115 = (for_iter_31 * arith_const_10); 
        int arith_addi_116 = (arith_muli_115 + for_iter_110); 
        int arith_addi_117 = (arith_addi_116 + arith_const_3); 
        func_arg_2[arith_addi_117] = memref_load_114; 
      }
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
