#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 7; 
  int arith_const_8 = 32; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 8; 
  double arith_const_13 = 1.000000; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 28; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_17; for_iter_19 += arith_const_17) {
      int arith_addi_20 = (for_iter_18 + for_iter_19); 
      func_arg_5[arith_addi_20] = arith_const_14; 
      for (int for_iter_21 = arith_const_15; for_iter_21 < arith_const_12; for_iter_21 += arith_const_17) {
        int arith_muli_22 = (for_iter_21 * arith_const_11); 
        double memref_load_23 = func_arg_3[arith_muli_22][arith_addi_20]; 
        double memref_load_24 = func_arg_5[arith_addi_20]; 
        double arith_addf_25 = (memref_load_24 + memref_load_23); 
        func_arg_5[arith_addi_20] = arith_addf_25; 
        int arith_addi_26 = (arith_muli_22 + arith_const_17); 
        double memref_load_27 = func_arg_3[arith_addi_26][arith_addi_20]; 
        double memref_load_28 = func_arg_5[arith_addi_20]; 
        double arith_addf_29 = (memref_load_28 + memref_load_27); 
        func_arg_5[arith_addi_20] = arith_addf_29; 
        int arith_addi_30 = (arith_muli_22 + arith_const_10); 
        double memref_load_31 = func_arg_3[arith_addi_30][arith_addi_20]; 
        double memref_load_32 = func_arg_5[arith_addi_20]; 
        double arith_addf_33 = (memref_load_32 + memref_load_31); 
        func_arg_5[arith_addi_20] = arith_addf_33; 
        int arith_addi_34 = (arith_muli_22 + arith_const_9); 
        double memref_load_35 = func_arg_3[arith_addi_34][arith_addi_20]; 
        double memref_load_36 = func_arg_5[arith_addi_20]; 
        double arith_addf_37 = (memref_load_36 + memref_load_35); 
        func_arg_5[arith_addi_20] = arith_addf_37; 
      }
      double memref_load_38 = func_arg_5[arith_addi_20]; 
      double arith_divf_39 = (memref_load_38 / func_arg_2); 
      func_arg_5[arith_addi_20] = arith_divf_39; 
    }
  }
  for (int for_iter_40 = arith_const_15; for_iter_40 < arith_const_8; for_iter_40 += arith_const_17) {
    for (int for_iter_41 = arith_const_15; for_iter_41 < arith_const_17; for_iter_41 += arith_const_17) {
      int arith_addi_42 = (for_iter_40 + for_iter_41); 
      for (int for_iter_43 = arith_const_15; for_iter_43 < arith_const_7; for_iter_43 += arith_const_17) {
        int arith_muli_44 = (for_iter_43 * arith_const_11); 
        for (int for_iter_45 = arith_const_15; for_iter_45 < arith_const_17; for_iter_45 += arith_const_17) {
          int arith_muli_46 = (for_iter_45 * arith_const_11); 
          int arith_addi_47 = (arith_muli_44 + arith_muli_46); 
          double memref_load_48 = func_arg_5[arith_addi_47]; 
          double memref_load_49 = func_arg_3[arith_addi_42][arith_addi_47]; 
          double arith_subf_50 = (memref_load_49 - memref_load_48); 
          func_arg_3[arith_addi_42][arith_addi_47] = arith_subf_50; 
          int arith_addi_51 = (arith_addi_47 + arith_const_17); 
          double memref_load_52 = func_arg_5[arith_addi_51]; 
          double memref_load_53 = func_arg_3[arith_addi_42][arith_addi_51]; 
          double arith_subf_54 = (memref_load_53 - memref_load_52); 
          func_arg_3[arith_addi_42][arith_addi_51] = arith_subf_54; 
          int arith_addi_55 = (arith_addi_47 + arith_const_10); 
          double memref_load_56 = func_arg_5[arith_addi_55]; 
          double memref_load_57 = func_arg_3[arith_addi_42][arith_addi_55]; 
          double arith_subf_58 = (memref_load_57 - memref_load_56); 
          func_arg_3[arith_addi_42][arith_addi_55] = arith_subf_58; 
          int arith_addi_59 = (arith_addi_47 + arith_const_9); 
          double memref_load_60 = func_arg_5[arith_addi_59]; 
          double memref_load_61 = func_arg_3[arith_addi_42][arith_addi_59]; 
          double arith_subf_62 = (memref_load_61 - memref_load_60); 
          func_arg_3[arith_addi_42][arith_addi_59] = arith_subf_62; 
        }
      }
    }
  }
  double arith_subf_63 = (func_arg_2 - arith_const_13); 
  for (int for_iter_64 = arith_const_15; for_iter_64 < arith_const_16; for_iter_64 += arith_const_17) {
    int arith_muli_65 = (for_iter_64 * arith_const_6); 
    int arith_addi_66 = (arith_muli_65 + arith_const_16); 
    for (int for_iter_67 = arith_const_15; for_iter_67 < arith_addi_66; for_iter_67 += arith_const_17) {
      int arith_addi_68 = (for_iter_64 + for_iter_67); 
      func_arg_4[for_iter_64][arith_addi_68] = arith_const_14; 
      for (int for_iter_69 = arith_const_15; for_iter_69 < arith_const_12; for_iter_69 += arith_const_17) {
        int arith_muli_70 = (for_iter_69 * arith_const_11); 
        double memref_load_71 = func_arg_3[arith_muli_70][for_iter_64]; 
        double memref_load_72 = func_arg_3[arith_muli_70][arith_addi_68]; 
        double arith_mulf_73 = (memref_load_71 * memref_load_72); 
        double memref_load_74 = func_arg_4[for_iter_64][arith_addi_68]; 
        double arith_addf_75 = (memref_load_74 + arith_mulf_73); 
        func_arg_4[for_iter_64][arith_addi_68] = arith_addf_75; 
        int arith_addi_76 = (arith_muli_70 + arith_const_17); 
        double memref_load_77 = func_arg_3[arith_addi_76][for_iter_64]; 
        double memref_load_78 = func_arg_3[arith_addi_76][arith_addi_68]; 
        double arith_mulf_79 = (memref_load_77 * memref_load_78); 
        double memref_load_80 = func_arg_4[for_iter_64][arith_addi_68]; 
        double arith_addf_81 = (memref_load_80 + arith_mulf_79); 
        func_arg_4[for_iter_64][arith_addi_68] = arith_addf_81; 
        int arith_addi_82 = (arith_muli_70 + arith_const_10); 
        double memref_load_83 = func_arg_3[arith_addi_82][for_iter_64]; 
        double memref_load_84 = func_arg_3[arith_addi_82][arith_addi_68]; 
        double arith_mulf_85 = (memref_load_83 * memref_load_84); 
        double memref_load_86 = func_arg_4[for_iter_64][arith_addi_68]; 
        double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
        func_arg_4[for_iter_64][arith_addi_68] = arith_addf_87; 
        int arith_addi_88 = (arith_muli_70 + arith_const_9); 
        double memref_load_89 = func_arg_3[arith_addi_88][for_iter_64]; 
        double memref_load_90 = func_arg_3[arith_addi_88][arith_addi_68]; 
        double arith_mulf_91 = (memref_load_89 * memref_load_90); 
        double memref_load_92 = func_arg_4[for_iter_64][arith_addi_68]; 
        double arith_addf_93 = (memref_load_92 + arith_mulf_91); 
        func_arg_4[for_iter_64][arith_addi_68] = arith_addf_93; 
      }
      double memref_load_94 = func_arg_4[for_iter_64][arith_addi_68]; 
      double arith_divf_95 = (memref_load_94 / arith_subf_63); 
      func_arg_4[for_iter_64][arith_addi_68] = arith_divf_95; 
      func_arg_4[arith_addi_68][for_iter_64] = arith_divf_95; 
    }
  }
  return; 

}
#pragma pocc-region-end
