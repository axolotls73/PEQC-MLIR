#pragma pocc-region-start
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 1; 
  int arith_const_5 = 32; 
  int arith_const_6 = 39; 
  int arith_const_7 = 0; 
  double arith_const_8 = 0.000000; 
  double arith_const_9 = 1.000000; 
  double* memref_alloca_10; 
  double* memref_alloca_11; 
  double* memref_alloca_12; 
  double* memref_alloca_13; 
  double* memref_alloca_14; 
  double* memref_alloca_15; 
  double memref_load_16 = func_arg_1[arith_const_7]; 
  double arith_negf_17 = -(memref_load_16); 
  func_arg_2[arith_const_7] = arith_negf_17; 
  double _18; 
  memref_alloca_14[0] = _18; 
  double memref_load_19 = func_arg_1[arith_const_7]; 
  double arith_negf_20 = -(memref_load_19); 
  memref_alloca_14[0] = arith_negf_20; 
  double _21; 
  memref_alloca_13[0] = _21; 
  memref_alloca_13[0] = arith_const_9; 
  double _22; 
  memref_alloca_10[0] = _22; 
  for (int for_iter_23 = arith_const_7; for_iter_23 < arith_const_6; for_iter_23 += arith_const_5) {
    int arith_addi_24 = (for_iter_23 + arith_const_5); 
    int arith_minsi_25 = min(arith_addi_24, arith_const_6); 
    for (int for_iter_26 = for_iter_23; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_4) {
      memref_alloca_10[0] = arith_const_8; 
      double memref_load_27 = memref_alloca_10[0]; 
      double memref_load_28 = func_arg_1[for_iter_26]; 
      double memref_load_29 = func_arg_2[arith_const_7]; 
      double arith_mulf_30 = (memref_load_28 * memref_load_29); 
      double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
      memref_alloca_10[0] = arith_addf_31; 
      double memref_load_32 = memref_alloca_13[0]; 
      double memref_load_33 = memref_alloca_14[0]; 
      double arith_mulf_34 = (memref_load_33 * memref_load_33); 
      double arith_subf_35 = (memref_load_32 - arith_mulf_34); 
      double memref_load_36 = memref_alloca_13[0]; 
      double arith_mulf_37 = (arith_subf_35 * memref_load_36); 
      memref_alloca_13[0] = arith_mulf_37; 
      for (int for_iter_38 = arith_const_7; for_iter_38 < for_iter_26; for_iter_38 += arith_const_4) {
        double memref_load_39 = memref_alloca_10[0]; 
        int arith_muli_40 = (for_iter_38 * arith_const_3); 
        int arith_addi_41 = (for_iter_26 + arith_muli_40); 
        int arith_addi_42 = (arith_addi_41 + arith_const_3); 
        double memref_load_43 = func_arg_1[arith_addi_42]; 
        int arith_addi_44 = (for_iter_38 + arith_const_4); 
        double memref_load_45 = func_arg_2[arith_addi_44]; 
        double arith_mulf_46 = (memref_load_43 * memref_load_45); 
        double arith_addf_47 = (memref_load_39 + arith_mulf_46); 
        memref_alloca_10[0] = arith_addf_47; 
      }
      int arith_cmpi_48 = (for_iter_26 == arith_const_7); 
      if (arith_cmpi_48) {
        double memref_load_49 = func_arg_1[arith_const_4]; 
        double memref_load_50 = memref_alloca_10[0]; 
        double arith_addf_51 = (memref_load_49 + memref_load_50); 
        double arith_negf_52 = -(arith_addf_51); 
        double memref_load_53 = memref_alloca_13[0]; 
        double arith_divf_54 = (arith_negf_52 / memref_load_53); 
        memref_alloca_11[arith_const_7] = arith_divf_54; 
        double memref_load_55 = func_arg_2[arith_const_7]; 
        double memref_load_56 = memref_alloca_11[arith_const_7]; 
        double memref_load_57 = func_arg_2[arith_const_7]; 
        double arith_mulf_58 = (memref_load_56 * memref_load_57); 
        double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
        memref_alloca_12[arith_const_7] = arith_addf_59; 
        double memref_load_60 = memref_alloca_12[arith_const_7]; 
        func_arg_2[arith_const_7] = memref_load_60; 
        double memref_load_61 = memref_alloca_11[arith_const_7]; 
        memref_alloca_15[arith_const_7] = memref_load_61; 
        memref_alloca_14[0] = memref_load_61; 
        double memref_load_62 = memref_alloca_15[arith_const_7]; 
        func_arg_2[arith_const_4] = memref_load_62; 
      }
      int arith_addi_63 = (for_iter_26 + arith_const_3); 
      int arith_cmpi_64 = (arith_addi_63 >= arith_const_7); 
      if (arith_cmpi_64) {
        int arith_addi_65 = (for_iter_26 + arith_const_4); 
        double memref_load_66 = func_arg_1[arith_addi_65]; 
        double memref_load_67 = memref_alloca_10[0]; 
        double arith_addf_68 = (memref_load_66 + memref_load_67); 
        double arith_negf_69 = -(arith_addf_68); 
        double memref_load_70 = memref_alloca_13[0]; 
        double arith_divf_71 = (arith_negf_69 / memref_load_70); 
        memref_alloca_11[arith_const_7] = arith_divf_71; 
        double memref_load_72 = func_arg_2[arith_const_7]; 
        double memref_load_73 = memref_alloca_11[arith_const_7]; 
        double memref_load_74 = func_arg_2[for_iter_26]; 
        double arith_mulf_75 = (memref_load_73 * memref_load_74); 
        double arith_addf_76 = (memref_load_72 + arith_mulf_75); 
        memref_alloca_12[arith_const_7] = arith_addf_76; 
        double memref_load_77 = memref_alloca_11[arith_const_7]; 
        memref_alloca_15[arith_const_7] = memref_load_77; 
        memref_alloca_14[0] = memref_load_77; 
        double memref_load_78 = memref_alloca_15[arith_const_7]; 
        int arith_addi_79 = (for_iter_26 + arith_const_4); 
        func_arg_2[arith_addi_79] = memref_load_78; 
      }
      int arith_addi_80 = (for_iter_26 + arith_const_3); 
      for (int for_iter_81 = arith_const_7; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_4) {
        int arith_addi_82 = (for_iter_81 + arith_const_4); 
        double memref_load_83 = func_arg_2[arith_addi_82]; 
        double memref_load_84 = memref_alloca_11[arith_const_7]; 
        int arith_muli_85 = (for_iter_81 * arith_const_3); 
        int arith_addi_86 = (arith_muli_85 + for_iter_26); 
        int arith_addi_87 = (arith_addi_86 + arith_const_3); 
        double memref_load_88 = func_arg_2[arith_addi_87]; 
        double arith_mulf_89 = (memref_load_84 * memref_load_88); 
        double arith_addf_90 = (memref_load_83 + arith_mulf_89); 
        int arith_addi_91 = (for_iter_81 + arith_const_4); 
        memref_alloca_12[arith_addi_91] = arith_addf_90; 
      }
      int arith_addi_92 = (for_iter_26 + arith_const_3); 
      int arith_cmpi_93 = (arith_addi_92 >= arith_const_7); 
      if (arith_cmpi_93) {
        double memref_load_94 = func_arg_2[for_iter_26]; 
        double memref_load_95 = memref_alloca_11[arith_const_7]; 
        double memref_load_96 = func_arg_2[arith_const_7]; 
        double arith_mulf_97 = (memref_load_95 * memref_load_96); 
        double arith_addf_98 = (memref_load_94 + arith_mulf_97); 
        memref_alloca_12[for_iter_26] = arith_addf_98; 
        double memref_load_99 = memref_alloca_12[arith_const_7]; 
        func_arg_2[arith_const_7] = memref_load_99; 
      }
      for (int for_iter_100 = arith_const_7; for_iter_100 < for_iter_26; for_iter_100 += arith_const_4) {
        int arith_addi_101 = (for_iter_100 + arith_const_4); 
        double memref_load_102 = memref_alloca_12[arith_addi_101]; 
        int arith_addi_103 = (for_iter_100 + arith_const_4); 
        func_arg_2[arith_addi_103] = memref_load_102; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
