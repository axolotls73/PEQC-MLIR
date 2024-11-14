#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = -32; 
  int arith_const_8 = 40; 
  int arith_const_9 = 32; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  int arith_const_13 = 10; 
  int arith_const_14 = 128; 
  double arith_const_15 = 0.000000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_16; for_iter_18 < arith_const_17; for_iter_18 += arith_const_17) {
    int arith_muli_19 = (for_iter_18 * arith_const_14); 
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_13; for_iter_20 += arith_const_17) {
      int arith_muli_21 = (for_iter_20 * arith_const_12); 
      int arith_addi_22 = (arith_muli_19 + arith_muli_21); 
      func_arg_4[arith_addi_22] = arith_const_15; 
      int arith_addi_23 = (arith_addi_22 + arith_const_17); 
      func_arg_4[arith_addi_23] = arith_const_15; 
      int arith_addi_24 = (arith_addi_22 + arith_const_11); 
      func_arg_4[arith_addi_24] = arith_const_15; 
      int arith_addi_25 = (arith_addi_22 + arith_const_10); 
      func_arg_4[arith_addi_25] = arith_const_15; 
    }
  }
  for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_17; for_iter_26 += arith_const_17) {
    int arith_muli_27 = (for_iter_26 * arith_const_9); 
    int arith_addi_28 = (arith_muli_27 + arith_const_8); 
    for (int for_iter_29 = arith_const_16; for_iter_29 < arith_const_11; for_iter_29 += arith_const_17) {
      int arith_addi_30 = (arith_addi_28 + for_iter_29); 
      func_arg_4[arith_addi_30] = arith_const_15; 
    }
  }
  for (int for_iter_31 = arith_const_16; for_iter_31 < arith_const_11; for_iter_31 += arith_const_17) {
    int arith_muli_32 = (for_iter_31 * arith_const_9); 
    int arith_muli_33 = (for_iter_31 * arith_const_7); 
    int arith_addi_34 = (arith_muli_33 + arith_const_6); 
    int arith_minsi_35 = min(arith_addi_34, arith_const_9); 
    for (int for_iter_36 = arith_const_16; for_iter_36 < arith_minsi_35; for_iter_36 += arith_const_17) {
      int arith_addi_37 = (arith_muli_32 + for_iter_36); 
      func_arg_5[arith_addi_37] = arith_const_15; 
      for (int for_iter_38 = arith_const_16; for_iter_38 < arith_const_13; for_iter_38 += arith_const_17) {
        int arith_muli_39 = (for_iter_38 * arith_const_12); 
        double memref_load_40 = func_arg_5[arith_addi_37]; 
        double memref_load_41 = func_arg_2[arith_addi_37][arith_muli_39]; 
        double memref_load_42 = func_arg_3[arith_muli_39]; 
        double arith_mulf_43 = (memref_load_41 * memref_load_42); 
        double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
        func_arg_5[arith_addi_37] = arith_addf_44; 
        int arith_addi_45 = (arith_muli_39 + arith_const_17); 
        double memref_load_46 = func_arg_5[arith_addi_37]; 
        double memref_load_47 = func_arg_2[arith_addi_37][arith_addi_45]; 
        double memref_load_48 = func_arg_3[arith_addi_45]; 
        double arith_mulf_49 = (memref_load_47 * memref_load_48); 
        double arith_addf_50 = (memref_load_46 + arith_mulf_49); 
        func_arg_5[arith_addi_37] = arith_addf_50; 
        int arith_addi_51 = (arith_muli_39 + arith_const_11); 
        double memref_load_52 = func_arg_5[arith_addi_37]; 
        double memref_load_53 = func_arg_2[arith_addi_37][arith_addi_51]; 
        double memref_load_54 = func_arg_3[arith_addi_51]; 
        double arith_mulf_55 = (memref_load_53 * memref_load_54); 
        double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
        func_arg_5[arith_addi_37] = arith_addf_56; 
        int arith_addi_57 = (arith_muli_39 + arith_const_10); 
        double memref_load_58 = func_arg_5[arith_addi_37]; 
        double memref_load_59 = func_arg_2[arith_addi_37][arith_addi_57]; 
        double memref_load_60 = func_arg_3[arith_addi_57]; 
        double arith_mulf_61 = (memref_load_59 * memref_load_60); 
        double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
        func_arg_5[arith_addi_37] = arith_addf_62; 
      }
      for (int for_iter_63 = arith_const_16; for_iter_63 < arith_const_11; for_iter_63 += arith_const_17) {
        int arith_addi_64 = (for_iter_63 + arith_const_8); 
        double memref_load_65 = func_arg_5[arith_addi_37]; 
        double memref_load_66 = func_arg_2[arith_addi_37][arith_addi_64]; 
        double memref_load_67 = func_arg_3[arith_addi_64]; 
        double arith_mulf_68 = (memref_load_66 * memref_load_67); 
        double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
        func_arg_5[arith_addi_37] = arith_addf_69; 
      }
      double memref_load_70 = func_arg_5[arith_addi_37]; 
      double memref_load_71 = func_arg_5[arith_addi_37]; 
      double memref_load_72 = func_arg_5[arith_addi_37]; 
      double memref_load_73 = func_arg_5[arith_addi_37]; 
      for (int for_iter_74 = arith_const_16; for_iter_74 < arith_const_13; for_iter_74 += arith_const_17) {
        int arith_muli_75 = (for_iter_74 * arith_const_12); 
        double memref_load_76 = func_arg_4[arith_muli_75]; 
        double memref_load_77 = func_arg_2[arith_addi_37][arith_muli_75]; 
        double arith_mulf_78 = (memref_load_77 * memref_load_70); 
        double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
        func_arg_4[arith_muli_75] = arith_addf_79; 
        int arith_addi_80 = (arith_muli_75 + arith_const_17); 
        double memref_load_81 = func_arg_4[arith_addi_80]; 
        double memref_load_82 = func_arg_2[arith_addi_37][arith_addi_80]; 
        double arith_mulf_83 = (memref_load_82 * memref_load_71); 
        double arith_addf_84 = (memref_load_81 + arith_mulf_83); 
        func_arg_4[arith_addi_80] = arith_addf_84; 
        int arith_addi_85 = (arith_muli_75 + arith_const_11); 
        double memref_load_86 = func_arg_4[arith_addi_85]; 
        double memref_load_87 = func_arg_2[arith_addi_37][arith_addi_85]; 
        double arith_mulf_88 = (memref_load_87 * memref_load_72); 
        double arith_addf_89 = (memref_load_86 + arith_mulf_88); 
        func_arg_4[arith_addi_85] = arith_addf_89; 
        int arith_addi_90 = (arith_muli_75 + arith_const_10); 
        double memref_load_91 = func_arg_4[arith_addi_90]; 
        double memref_load_92 = func_arg_2[arith_addi_37][arith_addi_90]; 
        double arith_mulf_93 = (memref_load_92 * memref_load_73); 
        double arith_addf_94 = (memref_load_91 + arith_mulf_93); 
        func_arg_4[arith_addi_90] = arith_addf_94; 
      }
      double memref_load_95 = func_arg_5[arith_addi_37]; 
      for (int for_iter_96 = arith_const_16; for_iter_96 < arith_const_11; for_iter_96 += arith_const_17) {
        int arith_addi_97 = (for_iter_96 + arith_const_8); 
        double memref_load_98 = func_arg_4[arith_addi_97]; 
        double memref_load_99 = func_arg_2[arith_addi_37][arith_addi_97]; 
        double arith_mulf_100 = (memref_load_99 * memref_load_95); 
        double arith_addf_101 = (memref_load_98 + arith_mulf_100); 
        func_arg_4[arith_addi_97] = arith_addf_101; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
