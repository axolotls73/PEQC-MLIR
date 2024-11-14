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
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double memref_load_23 = func_arg_1[arith_const_14]; 
  double arith_negf_24 = -(memref_load_23); 
  func_arg_2[arith_const_14] = arith_negf_24; 
  double _25; 
  memref_alloca_21[0] = _25; 
  double memref_load_26 = func_arg_1[arith_const_14]; 
  double arith_negf_27 = -(memref_load_26); 
  memref_alloca_21[0] = arith_negf_27; 
  double _28; 
  memref_alloca_20[0] = _28; 
  memref_alloca_20[0] = arith_const_16; 
  double _29; 
  memref_alloca_18[0] = _29; 
  for (int for_iter_30 = arith_const_13; for_iter_30 < arith_const_12; for_iter_30 += arith_const_11) {
    int arith_addi_31 = (for_iter_30 + arith_const_11); 
    int arith_minsi_32 = min(arith_addi_31, arith_const_12); 
    for (int for_iter_33 = for_iter_30; for_iter_33 < arith_minsi_32; for_iter_33 += arith_const_13) {
      memref_alloca_18[0] = arith_const_15; 
      double memref_load_34 = memref_alloca_18[0]; 
      int arith_addi_35 = (for_iter_33 + arith_const_10); 
      double memref_load_36 = func_arg_1[arith_addi_35]; 
      double memref_load_37 = func_arg_2[arith_const_14]; 
      double arith_mulf_38 = (memref_load_36 * memref_load_37); 
      double arith_addf_39 = (memref_load_34 + arith_mulf_38); 
      memref_alloca_18[0] = arith_addf_39; 
      double memref_load_40 = memref_alloca_20[0]; 
      double memref_load_41 = memref_alloca_21[0]; 
      double arith_mulf_42 = (memref_load_41 * memref_load_41); 
      double arith_subf_43 = (memref_load_40 - arith_mulf_42); 
      double memref_load_44 = memref_alloca_20[0]; 
      double arith_mulf_45 = (arith_subf_43 * memref_load_44); 
      memref_alloca_20[0] = arith_mulf_45; 
      for (int for_iter_46 = arith_const_13; for_iter_46 < for_iter_33; for_iter_46 += arith_const_13) {
        double memref_load_47 = memref_alloca_18[0]; 
        int arith_muli_48 = (for_iter_46 * arith_const_10); 
        int arith_addi_49 = (for_iter_33 + arith_muli_48); 
        int arith_addi_50 = (arith_addi_49 + arith_const_10); 
        double memref_load_51 = func_arg_1[arith_addi_50]; 
        double memref_load_52 = func_arg_2[for_iter_46]; 
        double arith_mulf_53 = (memref_load_51 * memref_load_52); 
        double arith_addf_54 = (memref_load_47 + arith_mulf_53); 
        memref_alloca_18[0] = arith_addf_54; 
      }
      int arith_addi_55 = (for_iter_33 + arith_const_10); 
      int arith_cmpi_56 = (arith_addi_55 == arith_const_14); 
      if (arith_cmpi_56) {
        double memref_load_57 = func_arg_1[arith_const_13]; 
        double memref_load_58 = memref_alloca_18[0]; 
        double arith_addf_59 = (memref_load_57 + memref_load_58); 
        double arith_negf_60 = -(arith_addf_59); 
        double memref_load_61 = memref_alloca_20[0]; 
        double arith_divf_62 = (arith_negf_60 / memref_load_61); 
        memref_alloca_17[arith_const_14] = arith_divf_62; 
        double memref_load_63 = func_arg_2[arith_const_14]; 
        double memref_load_64 = memref_alloca_17[arith_const_14]; 
        double memref_load_65 = func_arg_2[arith_const_14]; 
        double arith_mulf_66 = (memref_load_64 * memref_load_65); 
        double arith_addf_67 = (memref_load_63 + arith_mulf_66); 
        memref_alloca_19[arith_const_14] = arith_addf_67; 
        double memref_load_68 = memref_alloca_19[arith_const_14]; 
        func_arg_2[arith_const_14] = memref_load_68; 
        double memref_load_69 = memref_alloca_17[arith_const_14]; 
        memref_alloca_22[arith_const_14] = memref_load_69; 
        memref_alloca_21[0] = memref_load_69; 
        double memref_load_70 = memref_alloca_22[arith_const_14]; 
        func_arg_2[arith_const_13] = memref_load_70; 
      }
      int arith_addi_71 = (for_iter_33 + arith_const_9); 
      int arith_cmpi_72 = (arith_addi_71 >= arith_const_14); 
      if (arith_cmpi_72) {
        double memref_load_73 = func_arg_1[for_iter_33]; 
        double memref_load_74 = memref_alloca_18[0]; 
        double arith_addf_75 = (memref_load_73 + memref_load_74); 
        double arith_negf_76 = -(arith_addf_75); 
        double memref_load_77 = memref_alloca_20[0]; 
        double arith_divf_78 = (arith_negf_76 / memref_load_77); 
        memref_alloca_17[arith_const_14] = arith_divf_78; 
        double memref_load_79 = func_arg_2[arith_const_14]; 
        double memref_load_80 = memref_alloca_17[arith_const_14]; 
        int arith_addi_81 = (for_iter_33 + arith_const_10); 
        double memref_load_82 = func_arg_2[arith_addi_81]; 
        double arith_mulf_83 = (memref_load_80 * memref_load_82); 
        double arith_addf_84 = (memref_load_79 + arith_mulf_83); 
        memref_alloca_19[arith_const_14] = arith_addf_84; 
        double memref_load_85 = memref_alloca_17[arith_const_14]; 
        memref_alloca_22[arith_const_14] = memref_load_85; 
        memref_alloca_21[0] = memref_load_85; 
        double memref_load_86 = memref_alloca_22[arith_const_14]; 
        func_arg_2[for_iter_33] = memref_load_86; 
      }
      int arith_addi_87 = (for_iter_33 + arith_const_7); 
      for (int for_iter_88 = arith_const_8; for_iter_88 < arith_addi_87; for_iter_88 += arith_const_13) {
        int arith_addi_89 = (for_iter_88 + arith_const_6); 
        double memref_load_90 = func_arg_2[arith_addi_89]; 
        double memref_load_91 = memref_alloca_17[arith_const_14]; 
        int arith_muli_92 = (for_iter_88 * arith_const_10); 
        int arith_addi_93 = (arith_muli_92 + for_iter_33); 
        int arith_addi_94 = (arith_addi_93 + arith_const_7); 
        double memref_load_95 = func_arg_2[arith_addi_94]; 
        double arith_mulf_96 = (memref_load_91 * memref_load_95); 
        double arith_addf_97 = (memref_load_90 + arith_mulf_96); 
        int arith_addi_98 = (for_iter_88 + arith_const_6); 
        memref_alloca_19[arith_addi_98] = arith_addf_97; 
      }
      int arith_addi_99 = (for_iter_33 + arith_const_9); 
      int arith_cmpi_100 = (arith_addi_99 >= arith_const_14); 
      if (arith_cmpi_100) {
        int arith_addi_101 = (for_iter_33 + arith_const_10); 
        double memref_load_102 = func_arg_2[arith_addi_101]; 
        double memref_load_103 = memref_alloca_17[arith_const_14]; 
        double memref_load_104 = func_arg_2[arith_const_14]; 
        double arith_mulf_105 = (memref_load_103 * memref_load_104); 
        double arith_addf_106 = (memref_load_102 + arith_mulf_105); 
        int arith_addi_107 = (for_iter_33 + arith_const_10); 
        memref_alloca_19[arith_addi_107] = arith_addf_106; 
        double memref_load_108 = memref_alloca_19[arith_const_14]; 
        func_arg_2[arith_const_14] = memref_load_108; 
      }
      int arith_addi_109 = (for_iter_33 + arith_const_5); 
      int arith_muli_110 = (for_iter_33 * arith_const_4); 
      int arith_addi_111 = (arith_muli_110 + arith_const_7); 
      for (int for_iter_112 = arith_addi_109; for_iter_112 < arith_addi_111; for_iter_112 += arith_const_13) {
        int arith_muli_113 = (for_iter_33 * arith_const_10); 
        int arith_addi_114 = (arith_muli_113 + for_iter_112); 
        int arith_addi_115 = (arith_addi_114 + arith_const_3); 
        double memref_load_116 = memref_alloca_19[arith_addi_115]; 
        int arith_muli_117 = (for_iter_33 * arith_const_10); 
        int arith_addi_118 = (arith_muli_117 + for_iter_112); 
        int arith_addi_119 = (arith_addi_118 + arith_const_3); 
        func_arg_2[arith_addi_119] = memref_load_116; 
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
