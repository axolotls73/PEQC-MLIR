#pragma pocc-region-start
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 36; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  double arith_const_12 = 0.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 9; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_11); 
    for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
      int arith_muli_19 = (for_iter_18 * arith_const_11); 
      int arith_addi_20 = (arith_muli_17 + arith_muli_19); 
      func_arg_3[arith_addi_20] = arith_const_12; 
      int arith_addi_21 = (arith_addi_20 + arith_const_15); 
      func_arg_3[arith_addi_21] = arith_const_12; 
      int arith_addi_22 = (arith_addi_20 + arith_const_10); 
      func_arg_3[arith_addi_22] = arith_const_12; 
      int arith_addi_23 = (arith_addi_20 + arith_const_9); 
      func_arg_3[arith_addi_23] = arith_const_12; 
    }
  }
  for (int for_iter_24 = arith_const_13; for_iter_24 < arith_const_10; for_iter_24 += arith_const_15) {
    int arith_addi_25 = (for_iter_24 + arith_const_8); 
    for (int for_iter_26 = arith_const_13; for_iter_26 < arith_const_15; for_iter_26 += arith_const_15) {
      int arith_addi_27 = (arith_addi_25 + for_iter_26); 
      func_arg_3[arith_addi_27] = arith_const_12; 
    }
  }
  for (int for_iter_28 = arith_const_13; for_iter_28 < arith_const_7; for_iter_28 += arith_const_15) {
    for (int for_iter_29 = arith_const_13; for_iter_29 < arith_const_15; for_iter_29 += arith_const_15) {
      int arith_addi_30 = (for_iter_28 + for_iter_29); 
      func_arg_4[arith_addi_30] = arith_const_12; 
      double memref_load_31 = func_arg_6[arith_addi_30]; 
      double memref_load_32 = func_arg_6[arith_addi_30]; 
      double memref_load_33 = func_arg_6[arith_addi_30]; 
      double memref_load_34 = func_arg_6[arith_addi_30]; 
      for (int for_iter_35 = arith_const_13; for_iter_35 < arith_const_14; for_iter_35 += arith_const_15) {
        int arith_muli_36 = (for_iter_35 * arith_const_11); 
        double memref_load_37 = func_arg_3[arith_muli_36]; 
        double memref_load_38 = func_arg_2[arith_addi_30][arith_muli_36]; 
        double arith_mulf_39 = (memref_load_31 * memref_load_38); 
        double arith_addf_40 = (memref_load_37 + arith_mulf_39); 
        func_arg_3[arith_muli_36] = arith_addf_40; 
        double memref_load_41 = func_arg_4[arith_addi_30]; 
        double memref_load_42 = func_arg_2[arith_addi_30][arith_muli_36]; 
        double memref_load_43 = func_arg_5[arith_muli_36]; 
        double arith_mulf_44 = (memref_load_42 * memref_load_43); 
        double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
        func_arg_4[arith_addi_30] = arith_addf_45; 
        int arith_addi_46 = (arith_muli_36 + arith_const_15); 
        double memref_load_47 = func_arg_3[arith_addi_46]; 
        double memref_load_48 = func_arg_2[arith_addi_30][arith_addi_46]; 
        double arith_mulf_49 = (memref_load_32 * memref_load_48); 
        double arith_addf_50 = (memref_load_47 + arith_mulf_49); 
        func_arg_3[arith_addi_46] = arith_addf_50; 
        double memref_load_51 = func_arg_4[arith_addi_30]; 
        double memref_load_52 = func_arg_2[arith_addi_30][arith_addi_46]; 
        double memref_load_53 = func_arg_5[arith_addi_46]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double arith_addf_55 = (memref_load_51 + arith_mulf_54); 
        func_arg_4[arith_addi_30] = arith_addf_55; 
        int arith_addi_56 = (arith_muli_36 + arith_const_10); 
        double memref_load_57 = func_arg_3[arith_addi_56]; 
        double memref_load_58 = func_arg_2[arith_addi_30][arith_addi_56]; 
        double arith_mulf_59 = (memref_load_33 * memref_load_58); 
        double arith_addf_60 = (memref_load_57 + arith_mulf_59); 
        func_arg_3[arith_addi_56] = arith_addf_60; 
        double memref_load_61 = func_arg_4[arith_addi_30]; 
        double memref_load_62 = func_arg_2[arith_addi_30][arith_addi_56]; 
        double memref_load_63 = func_arg_5[arith_addi_56]; 
        double arith_mulf_64 = (memref_load_62 * memref_load_63); 
        double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
        func_arg_4[arith_addi_30] = arith_addf_65; 
        int arith_addi_66 = (arith_muli_36 + arith_const_9); 
        double memref_load_67 = func_arg_3[arith_addi_66]; 
        double memref_load_68 = func_arg_2[arith_addi_30][arith_addi_66]; 
        double arith_mulf_69 = (memref_load_34 * memref_load_68); 
        double arith_addf_70 = (memref_load_67 + arith_mulf_69); 
        func_arg_3[arith_addi_66] = arith_addf_70; 
        double memref_load_71 = func_arg_4[arith_addi_30]; 
        double memref_load_72 = func_arg_2[arith_addi_30][arith_addi_66]; 
        double memref_load_73 = func_arg_5[arith_addi_66]; 
        double arith_mulf_74 = (memref_load_72 * memref_load_73); 
        double arith_addf_75 = (memref_load_71 + arith_mulf_74); 
        func_arg_4[arith_addi_30] = arith_addf_75; 
      }
      double memref_load_76 = func_arg_6[arith_addi_30]; 
      for (int for_iter_77 = arith_const_13; for_iter_77 < arith_const_10; for_iter_77 += arith_const_15) {
        int arith_addi_78 = (for_iter_77 + arith_const_8); 
        double memref_load_79 = func_arg_3[arith_addi_78]; 
        double memref_load_80 = func_arg_2[arith_addi_30][arith_addi_78]; 
        double arith_mulf_81 = (memref_load_76 * memref_load_80); 
        double arith_addf_82 = (memref_load_79 + arith_mulf_81); 
        func_arg_3[arith_addi_78] = arith_addf_82; 
        double memref_load_83 = func_arg_4[arith_addi_30]; 
        double memref_load_84 = func_arg_2[arith_addi_30][arith_addi_78]; 
        double memref_load_85 = func_arg_5[arith_addi_78]; 
        double arith_mulf_86 = (memref_load_84 * memref_load_85); 
        double arith_addf_87 = (memref_load_83 + arith_mulf_86); 
        func_arg_4[arith_addi_30] = arith_addf_87; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
