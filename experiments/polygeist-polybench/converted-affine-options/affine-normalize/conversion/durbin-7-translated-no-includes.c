#pragma pocc-region-start
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
  double* memref_alloca_13; 
  double* memref_alloca_14; 
  double* memref_alloca_15; 
  double* memref_alloca_16; 
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double memref_load_19 = func_arg_1[arith_const_10]; 
  double arith_negf_20 = -(memref_load_19); 
  func_arg_2[arith_const_10] = arith_negf_20; 
  double _21; 
  memref_alloca_17[0] = _21; 
  double memref_load_22 = func_arg_1[arith_const_10]; 
  double arith_negf_23 = -(memref_load_22); 
  memref_alloca_17[0] = arith_negf_23; 
  double _24; 
  memref_alloca_16[0] = _24; 
  memref_alloca_16[0] = arith_const_12; 
  double _25; 
  memref_alloca_14[0] = _25; 
  for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_9; for_iter_26 += arith_const_8) {
    int arith_addi_27 = (for_iter_26 + arith_const_8); 
    memref_alloca_14[0] = arith_const_11; 
    double memref_load_28 = memref_alloca_14[0]; 
    int arith_addi_29 = (arith_addi_27 + arith_const_7); 
    double memref_load_30 = func_arg_1[arith_addi_29]; 
    double memref_load_31 = func_arg_2[arith_const_10]; 
    double arith_mulf_32 = (memref_load_30 * memref_load_31); 
    double arith_addf_33 = (memref_load_28 + arith_mulf_32); 
    memref_alloca_14[0] = arith_addf_33; 
    double memref_load_34 = memref_alloca_16[0]; 
    double memref_load_35 = memref_alloca_17[0]; 
    double arith_mulf_36 = (memref_load_35 * memref_load_35); 
    double arith_subf_37 = (memref_load_34 - arith_mulf_36); 
    double memref_load_38 = memref_alloca_16[0]; 
    double arith_mulf_39 = (arith_subf_37 * memref_load_38); 
    memref_alloca_16[0] = arith_mulf_39; 
    for (int for_iter_40 = arith_const_10; for_iter_40 < for_iter_26; for_iter_40 += arith_const_8) {
      int arith_addi_41 = (for_iter_40 + arith_const_8); 
      double memref_load_42 = memref_alloca_14[0]; 
      int arith_muli_43 = (arith_addi_41 * arith_const_7); 
      int arith_addi_44 = (arith_addi_27 + arith_muli_43); 
      int arith_addi_45 = (arith_addi_44 + arith_const_7); 
      double memref_load_46 = func_arg_1[arith_addi_45]; 
      double memref_load_47 = func_arg_2[arith_addi_41]; 
      double arith_mulf_48 = (memref_load_46 * memref_load_47); 
      double arith_addf_49 = (memref_load_42 + arith_mulf_48); 
      memref_alloca_14[0] = arith_addf_49; 
    }
    int arith_cmpi_50 = (for_iter_26 == arith_const_10); 
    if (arith_cmpi_50) {
      double memref_load_51 = func_arg_1[arith_const_8]; 
      double memref_load_52 = memref_alloca_14[0]; 
      double arith_addf_53 = (memref_load_51 + memref_load_52); 
      double arith_negf_54 = -(arith_addf_53); 
      double memref_load_55 = memref_alloca_16[0]; 
      double arith_divf_56 = (arith_negf_54 / memref_load_55); 
      memref_alloca_13[arith_const_10] = arith_divf_56; 
      double memref_load_57 = func_arg_2[arith_const_10]; 
      double memref_load_58 = memref_alloca_13[arith_const_10]; 
      double memref_load_59 = func_arg_2[arith_const_10]; 
      double arith_mulf_60 = (memref_load_58 * memref_load_59); 
      double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
      memref_alloca_15[arith_const_10] = arith_addf_61; 
      double memref_load_62 = memref_alloca_15[arith_const_10]; 
      func_arg_2[arith_const_10] = memref_load_62; 
      double memref_load_63 = memref_alloca_13[arith_const_10]; 
      memref_alloca_18[arith_const_10] = memref_load_63; 
      memref_alloca_17[0] = memref_load_63; 
      double memref_load_64 = memref_alloca_18[arith_const_10]; 
      func_arg_2[arith_const_8] = memref_load_64; 
    }
    int arith_addi_65 = (for_iter_26 + arith_const_7); 
    int arith_cmpi_66 = (arith_addi_65 >= arith_const_10); 
    if (arith_cmpi_66) {
      double memref_load_67 = func_arg_1[arith_addi_27]; 
      double memref_load_68 = memref_alloca_14[0]; 
      double arith_addf_69 = (memref_load_67 + memref_load_68); 
      double arith_negf_70 = -(arith_addf_69); 
      double memref_load_71 = memref_alloca_16[0]; 
      double arith_divf_72 = (arith_negf_70 / memref_load_71); 
      memref_alloca_13[arith_const_10] = arith_divf_72; 
      double memref_load_73 = func_arg_2[arith_const_10]; 
      double memref_load_74 = memref_alloca_13[arith_const_10]; 
      int arith_addi_75 = (arith_addi_27 + arith_const_7); 
      double memref_load_76 = func_arg_2[arith_addi_75]; 
      double arith_mulf_77 = (memref_load_74 * memref_load_76); 
      double arith_addf_78 = (memref_load_73 + arith_mulf_77); 
      memref_alloca_15[arith_const_10] = arith_addf_78; 
      double memref_load_79 = memref_alloca_13[arith_const_10]; 
      memref_alloca_18[arith_const_10] = memref_load_79; 
      memref_alloca_17[0] = memref_load_79; 
      double memref_load_80 = memref_alloca_18[arith_const_10]; 
      func_arg_2[arith_addi_27] = memref_load_80; 
    }
    int arith_addi_81 = (for_iter_26 + arith_const_7); 
    for (int for_iter_82 = arith_const_10; for_iter_82 < arith_addi_81; for_iter_82 += arith_const_8) {
      int arith_addi_83 = (for_iter_82 + arith_const_9); 
      int arith_addi_84 = (arith_addi_83 + arith_const_6); 
      double memref_load_85 = func_arg_2[arith_addi_84]; 
      double memref_load_86 = memref_alloca_13[arith_const_10]; 
      int arith_muli_87 = (arith_addi_83 * arith_const_7); 
      int arith_addi_88 = (arith_muli_87 + arith_addi_27); 
      int arith_addi_89 = (arith_addi_88 + arith_const_5); 
      double memref_load_90 = func_arg_2[arith_addi_89]; 
      double arith_mulf_91 = (memref_load_86 * memref_load_90); 
      double arith_addf_92 = (memref_load_85 + arith_mulf_91); 
      int arith_addi_93 = (arith_addi_83 + arith_const_6); 
      memref_alloca_15[arith_addi_93] = arith_addf_92; 
    }
    int arith_addi_94 = (for_iter_26 + arith_const_7); 
    int arith_cmpi_95 = (arith_addi_94 >= arith_const_10); 
    if (arith_cmpi_95) {
      int arith_addi_96 = (arith_addi_27 + arith_const_7); 
      double memref_load_97 = func_arg_2[arith_addi_96]; 
      double memref_load_98 = memref_alloca_13[arith_const_10]; 
      double memref_load_99 = func_arg_2[arith_const_10]; 
      double arith_mulf_100 = (memref_load_98 * memref_load_99); 
      double arith_addf_101 = (memref_load_97 + arith_mulf_100); 
      int arith_addi_102 = (arith_addi_27 + arith_const_7); 
      memref_alloca_15[arith_addi_102] = arith_addf_101; 
      double memref_load_103 = memref_alloca_15[arith_const_10]; 
      func_arg_2[arith_const_10] = memref_load_103; 
    }
    for (int for_iter_104 = arith_const_10; for_iter_104 < for_iter_26; for_iter_104 += arith_const_8) {
      int arith_addi_105 = (arith_addi_27 + for_iter_104); 
      int arith_addi_106 = (arith_addi_105 + arith_const_4); 
      int arith_muli_107 = (arith_addi_27 * arith_const_7); 
      int arith_addi_108 = (arith_muli_107 + arith_addi_106); 
      int arith_addi_109 = (arith_addi_108 + arith_const_3); 
      double memref_load_110 = memref_alloca_15[arith_addi_109]; 
      int arith_muli_111 = (arith_addi_27 * arith_const_7); 
      int arith_addi_112 = (arith_muli_111 + arith_addi_106); 
      int arith_addi_113 = (arith_addi_112 + arith_const_3); 
      func_arg_2[arith_addi_113] = memref_load_110; 
    }
  }
  return; 

}
#pragma pocc-region-end
