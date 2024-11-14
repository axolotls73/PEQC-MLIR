#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 19; 
  int arith_const_7 = -1; 
  int arith_const_8 = 18; 
  double arith_const_9 = 10.000000; 
  double arith_const_10 = -19.000000; 
  double arith_const_11 = -39.000000; 
  double arith_const_12 = -10.000000; 
  double arith_const_13 = -20.000000; 
  double arith_const_14 = 21.000000; 
  double arith_const_15 = 41.000000; 
  double arith_const_16 = 20.000000; 
  double arith_const_17 = 0.000000; 
  double arith_const_18 = 1.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 20; 
  int arith_const_21 = 1; 
  for (int for_iter_22 = arith_const_19; for_iter_22 < arith_const_20; for_iter_22 += arith_const_21) {
    for (int for_iter_23 = arith_const_19; for_iter_23 < arith_const_8; for_iter_23 += arith_const_21) {
      int arith_addi_24 = (for_iter_23 + arith_const_21); 
      func_arg_3[arith_const_19][arith_addi_24] = arith_const_18; 
      func_arg_4[arith_addi_24][arith_const_19] = arith_const_17; 
      double memref_load_25 = func_arg_3[arith_const_19][arith_addi_24]; 
      func_arg_5[arith_addi_24][arith_const_19] = memref_load_25; 
      for (int for_iter_26 = arith_const_19; for_iter_26 < arith_const_8; for_iter_26 += arith_const_21) {
        int arith_addi_27 = (for_iter_26 + arith_const_21); 
        int arith_addi_28 = (arith_addi_27 + arith_const_7); 
        double memref_load_29 = func_arg_4[arith_addi_24][arith_addi_28]; 
        double arith_mulf_30 = (memref_load_29 * arith_const_13); 
        double arith_addf_31 = (arith_mulf_30 + arith_const_15); 
        double arith_divf_32 = (arith_const_16 / arith_addf_31); 
        func_arg_4[arith_addi_24][arith_addi_27] = arith_divf_32; 
        int arith_addi_33 = (arith_addi_24 + arith_const_7); 
        double memref_load_34 = func_arg_2[arith_addi_27][arith_addi_33]; 
        double arith_mulf_35 = (memref_load_34 * arith_const_9); 
        double memref_load_36 = func_arg_2[arith_addi_27][arith_addi_24]; 
        double arith_mulf_37 = (memref_load_36 * arith_const_10); 
        double arith_addf_38 = (arith_mulf_35 + arith_mulf_37); 
        int arith_addi_39 = (arith_addi_24 + arith_const_21); 
        double memref_load_40 = func_arg_2[arith_addi_27][arith_addi_39]; 
        double arith_mulf_41 = (memref_load_40 * arith_const_12); 
        double arith_subf_42 = (arith_addf_38 - arith_mulf_41); 
        int arith_addi_43 = (arith_addi_27 + arith_const_7); 
        double memref_load_44 = func_arg_5[arith_addi_24][arith_addi_43]; 
        double arith_mulf_45 = (memref_load_44 * arith_const_13); 
        double arith_subf_46 = (arith_subf_42 - arith_mulf_45); 
        double arith_divf_47 = (arith_subf_46 / arith_addf_31); 
        func_arg_5[arith_addi_24][arith_addi_27] = arith_divf_47; 
      }
      func_arg_3[arith_const_6][arith_addi_24] = arith_const_18; 
      for (int for_iter_48 = arith_const_19; for_iter_48 < arith_const_8; for_iter_48 += arith_const_21) {
        int arith_addi_49 = (for_iter_48 + arith_const_21); 
        int arith_muli_50 = (arith_addi_49 * arith_const_7); 
        int arith_addi_51 = (arith_muli_50 + arith_const_6); 
        double memref_load_52 = func_arg_4[arith_addi_24][arith_addi_51]; 
        int arith_muli_53 = (arith_addi_49 * arith_const_7); 
        int arith_addi_54 = (arith_muli_53 + arith_const_20); 
        double memref_load_55 = func_arg_3[arith_addi_54][arith_addi_24]; 
        double arith_mulf_56 = (memref_load_52 * memref_load_55); 
        int arith_muli_57 = (arith_addi_49 * arith_const_7); 
        int arith_addi_58 = (arith_muli_57 + arith_const_6); 
        double memref_load_59 = func_arg_5[arith_addi_24][arith_addi_58]; 
        double arith_addf_60 = (arith_mulf_56 + memref_load_59); 
        int arith_muli_61 = (arith_addi_49 * arith_const_7); 
        int arith_addi_62 = (arith_muli_61 + arith_const_6); 
        func_arg_3[arith_addi_62][arith_addi_24] = arith_addf_60; 
      }
    }
    for (int for_iter_63 = arith_const_19; for_iter_63 < arith_const_8; for_iter_63 += arith_const_21) {
      int arith_addi_64 = (for_iter_63 + arith_const_21); 
      func_arg_2[arith_addi_64][arith_const_19] = arith_const_18; 
      func_arg_4[arith_addi_64][arith_const_19] = arith_const_17; 
      double memref_load_65 = func_arg_2[arith_addi_64][arith_const_19]; 
      func_arg_5[arith_addi_64][arith_const_19] = memref_load_65; 
      for (int for_iter_66 = arith_const_19; for_iter_66 < arith_const_8; for_iter_66 += arith_const_21) {
        int arith_addi_67 = (for_iter_66 + arith_const_21); 
        int arith_addi_68 = (arith_addi_67 + arith_const_7); 
        double memref_load_69 = func_arg_4[arith_addi_64][arith_addi_68]; 
        double arith_mulf_70 = (memref_load_69 * arith_const_12); 
        double arith_addf_71 = (arith_mulf_70 + arith_const_14); 
        double arith_divf_72 = (arith_const_9 / arith_addf_71); 
        func_arg_4[arith_addi_64][arith_addi_67] = arith_divf_72; 
        int arith_addi_73 = (arith_addi_64 + arith_const_7); 
        double memref_load_74 = func_arg_3[arith_addi_73][arith_addi_67]; 
        double arith_mulf_75 = (memref_load_74 * arith_const_16); 
        double memref_load_76 = func_arg_3[arith_addi_64][arith_addi_67]; 
        double arith_mulf_77 = (memref_load_76 * arith_const_11); 
        double arith_addf_78 = (arith_mulf_75 + arith_mulf_77); 
        int arith_addi_79 = (arith_addi_64 + arith_const_21); 
        double memref_load_80 = func_arg_3[arith_addi_79][arith_addi_67]; 
        double arith_mulf_81 = (memref_load_80 * arith_const_13); 
        double arith_subf_82 = (arith_addf_78 - arith_mulf_81); 
        int arith_addi_83 = (arith_addi_67 + arith_const_7); 
        double memref_load_84 = func_arg_5[arith_addi_64][arith_addi_83]; 
        double arith_mulf_85 = (memref_load_84 * arith_const_12); 
        double arith_subf_86 = (arith_subf_82 - arith_mulf_85); 
        double arith_divf_87 = (arith_subf_86 / arith_addf_71); 
        func_arg_5[arith_addi_64][arith_addi_67] = arith_divf_87; 
      }
      func_arg_2[arith_addi_64][arith_const_6] = arith_const_18; 
      for (int for_iter_88 = arith_const_19; for_iter_88 < arith_const_8; for_iter_88 += arith_const_21) {
        int arith_addi_89 = (for_iter_88 + arith_const_21); 
        int arith_muli_90 = (arith_addi_89 * arith_const_7); 
        int arith_addi_91 = (arith_muli_90 + arith_const_6); 
        double memref_load_92 = func_arg_4[arith_addi_64][arith_addi_91]; 
        int arith_muli_93 = (arith_addi_89 * arith_const_7); 
        int arith_addi_94 = (arith_muli_93 + arith_const_20); 
        double memref_load_95 = func_arg_2[arith_addi_64][arith_addi_94]; 
        double arith_mulf_96 = (memref_load_92 * memref_load_95); 
        int arith_muli_97 = (arith_addi_89 * arith_const_7); 
        int arith_addi_98 = (arith_muli_97 + arith_const_6); 
        double memref_load_99 = func_arg_5[arith_addi_64][arith_addi_98]; 
        double arith_addf_100 = (arith_mulf_96 + memref_load_99); 
        int arith_muli_101 = (arith_addi_89 * arith_const_7); 
        int arith_addi_102 = (arith_muli_101 + arith_const_6); 
        func_arg_2[arith_addi_64][arith_addi_102] = arith_addf_100; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
