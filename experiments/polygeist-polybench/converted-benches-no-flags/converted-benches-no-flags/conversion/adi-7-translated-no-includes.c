#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -1; 
  int arith_const_8 = 0; 
  int arith_const_9 = 19; 
  double arith_const_10 = 10.000000; 
  double arith_const_11 = -19.000000; 
  double arith_const_12 = -39.000000; 
  double arith_const_13 = -10.000000; 
  double arith_const_14 = -20.000000; 
  double arith_const_15 = 21.000000; 
  double arith_const_16 = 41.000000; 
  double arith_const_17 = 20.000000; 
  double arith_const_18 = 0.000000; 
  double arith_const_19 = 1.000000; 
  int arith_const_20 = 1; 
  int arith_const_21 = 21; 
  for (int for_iter_22 = arith_const_20; for_iter_22 < arith_const_21; for_iter_22 += arith_const_20) {
    for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_9; for_iter_23 += arith_const_20) {
      func_arg_3[arith_const_8][for_iter_23] = arith_const_19; 
      func_arg_4[for_iter_23][arith_const_8] = arith_const_18; 
      double memref_load_24 = func_arg_3[arith_const_8][for_iter_23]; 
      func_arg_5[for_iter_23][arith_const_8] = memref_load_24; 
      for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_9; for_iter_25 += arith_const_20) {
        int arith_addi_26 = (for_iter_25 + arith_const_7); 
        double memref_load_27 = func_arg_4[for_iter_23][arith_addi_26]; 
        double arith_mulf_28 = (memref_load_27 * arith_const_14); 
        double arith_addf_29 = (arith_mulf_28 + arith_const_16); 
        double arith_divf_30 = (arith_const_17 / arith_addf_29); 
        func_arg_4[for_iter_23][for_iter_25] = arith_divf_30; 
        int arith_addi_31 = (for_iter_23 + arith_const_7); 
        double memref_load_32 = func_arg_2[for_iter_25][arith_addi_31]; 
        double arith_mulf_33 = (memref_load_32 * arith_const_10); 
        double memref_load_34 = func_arg_2[for_iter_25][for_iter_23]; 
        double arith_mulf_35 = (memref_load_34 * arith_const_11); 
        double arith_addf_36 = (arith_mulf_33 + arith_mulf_35); 
        int arith_addi_37 = (for_iter_23 + arith_const_20); 
        double memref_load_38 = func_arg_2[for_iter_25][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * arith_const_13); 
        double arith_subf_40 = (arith_addf_36 - arith_mulf_39); 
        int arith_addi_41 = (for_iter_25 + arith_const_7); 
        double memref_load_42 = func_arg_5[for_iter_23][arith_addi_41]; 
        double arith_mulf_43 = (memref_load_42 * arith_const_14); 
        double arith_subf_44 = (arith_subf_40 - arith_mulf_43); 
        double arith_divf_45 = (arith_subf_44 / arith_addf_29); 
        func_arg_5[for_iter_23][for_iter_25] = arith_divf_45; 
      }
      func_arg_3[arith_const_9][for_iter_23] = arith_const_19; 
      for (int for_iter_46 = arith_const_20; for_iter_46 < arith_const_9; for_iter_46 += arith_const_20) {
        int arith_muli_47 = (for_iter_46 * arith_const_7); 
        int arith_addi_48 = (arith_muli_47 + arith_const_9); 
        double memref_load_49 = func_arg_4[for_iter_23][arith_addi_48]; 
        int arith_muli_50 = (for_iter_46 * arith_const_7); 
        int arith_addi_51 = (arith_muli_50 + arith_const_6); 
        double memref_load_52 = func_arg_3[arith_addi_51][for_iter_23]; 
        double arith_mulf_53 = (memref_load_49 * memref_load_52); 
        int arith_muli_54 = (for_iter_46 * arith_const_7); 
        int arith_addi_55 = (arith_muli_54 + arith_const_9); 
        double memref_load_56 = func_arg_5[for_iter_23][arith_addi_55]; 
        double arith_addf_57 = (arith_mulf_53 + memref_load_56); 
        int arith_muli_58 = (for_iter_46 * arith_const_7); 
        int arith_addi_59 = (arith_muli_58 + arith_const_9); 
        func_arg_3[arith_addi_59][for_iter_23] = arith_addf_57; 
      }
    }
    for (int for_iter_60 = arith_const_20; for_iter_60 < arith_const_9; for_iter_60 += arith_const_20) {
      func_arg_2[for_iter_60][arith_const_8] = arith_const_19; 
      func_arg_4[for_iter_60][arith_const_8] = arith_const_18; 
      double memref_load_61 = func_arg_2[for_iter_60][arith_const_8]; 
      func_arg_5[for_iter_60][arith_const_8] = memref_load_61; 
      for (int for_iter_62 = arith_const_20; for_iter_62 < arith_const_9; for_iter_62 += arith_const_20) {
        int arith_addi_63 = (for_iter_62 + arith_const_7); 
        double memref_load_64 = func_arg_4[for_iter_60][arith_addi_63]; 
        double arith_mulf_65 = (memref_load_64 * arith_const_13); 
        double arith_addf_66 = (arith_mulf_65 + arith_const_15); 
        double arith_divf_67 = (arith_const_10 / arith_addf_66); 
        func_arg_4[for_iter_60][for_iter_62] = arith_divf_67; 
        int arith_addi_68 = (for_iter_60 + arith_const_7); 
        double memref_load_69 = func_arg_3[arith_addi_68][for_iter_62]; 
        double arith_mulf_70 = (memref_load_69 * arith_const_17); 
        double memref_load_71 = func_arg_3[for_iter_60][for_iter_62]; 
        double arith_mulf_72 = (memref_load_71 * arith_const_12); 
        double arith_addf_73 = (arith_mulf_70 + arith_mulf_72); 
        int arith_addi_74 = (for_iter_60 + arith_const_20); 
        double memref_load_75 = func_arg_3[arith_addi_74][for_iter_62]; 
        double arith_mulf_76 = (memref_load_75 * arith_const_14); 
        double arith_subf_77 = (arith_addf_73 - arith_mulf_76); 
        int arith_addi_78 = (for_iter_62 + arith_const_7); 
        double memref_load_79 = func_arg_5[for_iter_60][arith_addi_78]; 
        double arith_mulf_80 = (memref_load_79 * arith_const_13); 
        double arith_subf_81 = (arith_subf_77 - arith_mulf_80); 
        double arith_divf_82 = (arith_subf_81 / arith_addf_66); 
        func_arg_5[for_iter_60][for_iter_62] = arith_divf_82; 
      }
      func_arg_2[for_iter_60][arith_const_9] = arith_const_19; 
      for (int for_iter_83 = arith_const_20; for_iter_83 < arith_const_9; for_iter_83 += arith_const_20) {
        int arith_muli_84 = (for_iter_83 * arith_const_7); 
        int arith_addi_85 = (arith_muli_84 + arith_const_9); 
        double memref_load_86 = func_arg_4[for_iter_60][arith_addi_85]; 
        int arith_muli_87 = (for_iter_83 * arith_const_7); 
        int arith_addi_88 = (arith_muli_87 + arith_const_6); 
        double memref_load_89 = func_arg_2[for_iter_60][arith_addi_88]; 
        double arith_mulf_90 = (memref_load_86 * memref_load_89); 
        int arith_muli_91 = (for_iter_83 * arith_const_7); 
        int arith_addi_92 = (arith_muli_91 + arith_const_9); 
        double memref_load_93 = func_arg_5[for_iter_60][arith_addi_92]; 
        double arith_addf_94 = (arith_mulf_90 + memref_load_93); 
        int arith_muli_95 = (for_iter_83 * arith_const_7); 
        int arith_addi_96 = (arith_muli_95 + arith_const_9); 
        func_arg_2[for_iter_60][arith_addi_96] = arith_addf_94; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
