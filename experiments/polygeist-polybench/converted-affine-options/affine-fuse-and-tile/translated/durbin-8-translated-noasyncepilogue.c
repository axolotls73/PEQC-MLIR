#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 1; 
  int arith_const_5 = 32; 
  int arith_const_6 = 39; 
  int arith_const_7 = 0; 
  double arith_const_8 = 0.000000; 
  double arith_const_9 = 1.000000; 
  double _10; 
  double* memref_alloca_11; 
  double* memref_alloca_12; 
  double* memref_alloca_13; 
  double* memref_alloca_14; 
  double* memref_alloca_15; 
  double* memref_alloca_16; 
  double memref_load_17 = func_arg_1[arith_const_7]; 
  double arith_negf_18 = -(memref_load_17); 
  func_arg_2[arith_const_7] = arith_negf_18; 
  memref_alloca_15[0] = _10; 
  double memref_load_19 = func_arg_1[arith_const_7]; 
  double arith_negf_20 = -(memref_load_19); 
  memref_alloca_15[0] = arith_negf_20; 
  memref_alloca_14[0] = _10; 
  memref_alloca_14[0] = arith_const_9; 
  memref_alloca_12[0] = _10; 
  for (int for_iter_21 = arith_const_7; for_iter_21 < arith_const_6; for_iter_21 += arith_const_5) {
    int arith_addi_22 = (for_iter_21 + arith_const_5); 
    int arith_minsi_23 = min(arith_addi_22, arith_const_6); 
    for (int for_iter_24 = for_iter_21; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_4) {
      memref_alloca_12[0] = arith_const_8; 
      double memref_load_25 = memref_alloca_12[0]; 
      double memref_load_26 = func_arg_1[for_iter_24]; 
      double memref_load_27 = func_arg_2[arith_const_7]; 
      double arith_mulf_28 = (memref_load_26 * memref_load_27); 
      double arith_addf_29 = (memref_load_25 + arith_mulf_28); 
      memref_alloca_12[0] = arith_addf_29; 
      double memref_load_30 = memref_alloca_14[0]; 
      double memref_load_31 = memref_alloca_15[0]; 
      double arith_mulf_32 = (memref_load_31 * memref_load_31); 
      double arith_subf_33 = (memref_load_30 - arith_mulf_32); 
      double memref_load_34 = memref_alloca_14[0]; 
      double arith_mulf_35 = (arith_subf_33 * memref_load_34); 
      memref_alloca_14[0] = arith_mulf_35; 
      for (int for_iter_36 = arith_const_7; for_iter_36 < for_iter_24; for_iter_36 += arith_const_4) {
        double memref_load_37 = memref_alloca_12[0]; 
        int arith_muli_38 = (for_iter_36 * arith_const_3); 
        int arith_addi_39 = (for_iter_24 + arith_muli_38); 
        int arith_addi_40 = (arith_addi_39 + arith_const_3); 
        double memref_load_41 = func_arg_1[arith_addi_40]; 
        int arith_addi_42 = (for_iter_36 + arith_const_4); 
        double memref_load_43 = func_arg_2[arith_addi_42]; 
        double arith_mulf_44 = (memref_load_41 * memref_load_43); 
        double arith_addf_45 = (memref_load_37 + arith_mulf_44); 
        memref_alloca_12[0] = arith_addf_45; 
      }
      int arith_cmpi_46 = (for_iter_24 == arith_const_7); 
      if (arith_cmpi_46) {
        double memref_load_47 = func_arg_1[arith_const_4]; 
        double memref_load_48 = memref_alloca_12[0]; 
        double arith_addf_49 = (memref_load_47 + memref_load_48); 
        double arith_negf_50 = -(arith_addf_49); 
        double memref_load_51 = memref_alloca_14[0]; 
        double arith_divf_52 = (arith_negf_50 / memref_load_51); 
        memref_alloca_11[arith_const_7] = arith_divf_52; 
        double memref_load_53 = func_arg_2[arith_const_7]; 
        double memref_load_54 = memref_alloca_11[arith_const_7]; 
        double memref_load_55 = func_arg_2[arith_const_7]; 
        double arith_mulf_56 = (memref_load_54 * memref_load_55); 
        double arith_addf_57 = (memref_load_53 + arith_mulf_56); 
        memref_alloca_13[arith_const_7] = arith_addf_57; 
        double memref_load_58 = memref_alloca_13[arith_const_7]; 
        func_arg_2[arith_const_7] = memref_load_58; 
        double memref_load_59 = memref_alloca_11[arith_const_7]; 
        memref_alloca_16[arith_const_7] = memref_load_59; 
        memref_alloca_15[0] = memref_load_59; 
        double memref_load_60 = memref_alloca_16[arith_const_7]; 
        func_arg_2[arith_const_4] = memref_load_60; 
      }
      int arith_addi_61 = (for_iter_24 + arith_const_3); 
      int arith_cmpi_62 = (arith_addi_61 >= arith_const_7); 
      if (arith_cmpi_62) {
        int arith_addi_63 = (for_iter_24 + arith_const_4); 
        double memref_load_64 = func_arg_1[arith_addi_63]; 
        double memref_load_65 = memref_alloca_12[0]; 
        double arith_addf_66 = (memref_load_64 + memref_load_65); 
        double arith_negf_67 = -(arith_addf_66); 
        double memref_load_68 = memref_alloca_14[0]; 
        double arith_divf_69 = (arith_negf_67 / memref_load_68); 
        memref_alloca_11[arith_const_7] = arith_divf_69; 
        double memref_load_70 = func_arg_2[arith_const_7]; 
        double memref_load_71 = memref_alloca_11[arith_const_7]; 
        double memref_load_72 = func_arg_2[for_iter_24]; 
        double arith_mulf_73 = (memref_load_71 * memref_load_72); 
        double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
        memref_alloca_13[arith_const_7] = arith_addf_74; 
        double memref_load_75 = memref_alloca_11[arith_const_7]; 
        memref_alloca_16[arith_const_7] = memref_load_75; 
        memref_alloca_15[0] = memref_load_75; 
        double memref_load_76 = memref_alloca_16[arith_const_7]; 
        int arith_addi_77 = (for_iter_24 + arith_const_4); 
        func_arg_2[arith_addi_77] = memref_load_76; 
      }
      int arith_addi_78 = (for_iter_24 + arith_const_3); 
      for (int for_iter_79 = arith_const_7; for_iter_79 < arith_addi_78; for_iter_79 += arith_const_4) {
        int arith_addi_80 = (for_iter_79 + arith_const_4); 
        double memref_load_81 = func_arg_2[arith_addi_80]; 
        double memref_load_82 = memref_alloca_11[arith_const_7]; 
        int arith_muli_83 = (for_iter_79 * arith_const_3); 
        int arith_addi_84 = (arith_muli_83 + for_iter_24); 
        int arith_addi_85 = (arith_addi_84 + arith_const_3); 
        double memref_load_86 = func_arg_2[arith_addi_85]; 
        double arith_mulf_87 = (memref_load_82 * memref_load_86); 
        double arith_addf_88 = (memref_load_81 + arith_mulf_87); 
        int arith_addi_89 = (for_iter_79 + arith_const_4); 
        memref_alloca_13[arith_addi_89] = arith_addf_88; 
      }
      int arith_addi_90 = (for_iter_24 + arith_const_3); 
      int arith_cmpi_91 = (arith_addi_90 >= arith_const_7); 
      if (arith_cmpi_91) {
        double memref_load_92 = func_arg_2[for_iter_24]; 
        double memref_load_93 = memref_alloca_11[arith_const_7]; 
        double memref_load_94 = func_arg_2[arith_const_7]; 
        double arith_mulf_95 = (memref_load_93 * memref_load_94); 
        double arith_addf_96 = (memref_load_92 + arith_mulf_95); 
        memref_alloca_13[for_iter_24] = arith_addf_96; 
        double memref_load_97 = memref_alloca_13[arith_const_7]; 
        func_arg_2[arith_const_7] = memref_load_97; 
      }
      for (int for_iter_98 = arith_const_7; for_iter_98 < for_iter_24; for_iter_98 += arith_const_4) {
        int arith_addi_99 = (for_iter_98 + arith_const_4); 
        double memref_load_100 = memref_alloca_13[arith_addi_99]; 
        int arith_addi_101 = (for_iter_98 + arith_const_4); 
        func_arg_2[arith_addi_101] = memref_load_100; 
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
