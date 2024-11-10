#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 28; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 30; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_16; for_iter_18 += arith_const_16) {
      int arith_addi_19 = (for_iter_17 + for_iter_18); 
      func_arg_5[arith_addi_19] = arith_const_13; 
      func_arg_7[arith_addi_19] = arith_const_13; 
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_12; for_iter_20 += arith_const_16) {
        int arith_muli_21 = (for_iter_20 * arith_const_11); 
        double memref_load_22 = func_arg_3[arith_addi_19][arith_muli_21]; 
        double memref_load_23 = func_arg_6[arith_muli_21]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double memref_load_25 = func_arg_5[arith_addi_19]; 
        double arith_addf_26 = (arith_mulf_24 + memref_load_25); 
        func_arg_5[arith_addi_19] = arith_addf_26; 
        double memref_load_27 = func_arg_4[arith_addi_19][arith_muli_21]; 
        double memref_load_28 = func_arg_6[arith_muli_21]; 
        double arith_mulf_29 = (memref_load_27 * memref_load_28); 
        double memref_load_30 = func_arg_7[arith_addi_19]; 
        double arith_addf_31 = (arith_mulf_29 + memref_load_30); 
        func_arg_7[arith_addi_19] = arith_addf_31; 
        int arith_addi_32 = (arith_muli_21 + arith_const_16); 
        double memref_load_33 = func_arg_3[arith_addi_19][arith_addi_32]; 
        double memref_load_34 = func_arg_6[arith_addi_32]; 
        double arith_mulf_35 = (memref_load_33 * memref_load_34); 
        double memref_load_36 = func_arg_5[arith_addi_19]; 
        double arith_addf_37 = (arith_mulf_35 + memref_load_36); 
        func_arg_5[arith_addi_19] = arith_addf_37; 
        double memref_load_38 = func_arg_4[arith_addi_19][arith_addi_32]; 
        double memref_load_39 = func_arg_6[arith_addi_32]; 
        double arith_mulf_40 = (memref_load_38 * memref_load_39); 
        double memref_load_41 = func_arg_7[arith_addi_19]; 
        double arith_addf_42 = (arith_mulf_40 + memref_load_41); 
        func_arg_7[arith_addi_19] = arith_addf_42; 
        int arith_addi_43 = (arith_muli_21 + arith_const_10); 
        double memref_load_44 = func_arg_3[arith_addi_19][arith_addi_43]; 
        double memref_load_45 = func_arg_6[arith_addi_43]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = func_arg_5[arith_addi_19]; 
        double arith_addf_48 = (arith_mulf_46 + memref_load_47); 
        func_arg_5[arith_addi_19] = arith_addf_48; 
        double memref_load_49 = func_arg_4[arith_addi_19][arith_addi_43]; 
        double memref_load_50 = func_arg_6[arith_addi_43]; 
        double arith_mulf_51 = (memref_load_49 * memref_load_50); 
        double memref_load_52 = func_arg_7[arith_addi_19]; 
        double arith_addf_53 = (arith_mulf_51 + memref_load_52); 
        func_arg_7[arith_addi_19] = arith_addf_53; 
        int arith_addi_54 = (arith_muli_21 + arith_const_9); 
        double memref_load_55 = func_arg_3[arith_addi_19][arith_addi_54]; 
        double memref_load_56 = func_arg_6[arith_addi_54]; 
        double arith_mulf_57 = (memref_load_55 * memref_load_56); 
        double memref_load_58 = func_arg_5[arith_addi_19]; 
        double arith_addf_59 = (arith_mulf_57 + memref_load_58); 
        func_arg_5[arith_addi_19] = arith_addf_59; 
        double memref_load_60 = func_arg_4[arith_addi_19][arith_addi_54]; 
        double memref_load_61 = func_arg_6[arith_addi_54]; 
        double arith_mulf_62 = (memref_load_60 * memref_load_61); 
        double memref_load_63 = func_arg_7[arith_addi_19]; 
        double arith_addf_64 = (arith_mulf_62 + memref_load_63); 
        func_arg_7[arith_addi_19] = arith_addf_64; 
      }
      for (int for_iter_65 = arith_const_14; for_iter_65 < arith_const_10; for_iter_65 += arith_const_16) {
        int arith_addi_66 = (for_iter_65 + arith_const_8); 
        double memref_load_67 = func_arg_3[arith_addi_19][arith_addi_66]; 
        double memref_load_68 = func_arg_6[arith_addi_66]; 
        double arith_mulf_69 = (memref_load_67 * memref_load_68); 
        double memref_load_70 = func_arg_5[arith_addi_19]; 
        double arith_addf_71 = (arith_mulf_69 + memref_load_70); 
        func_arg_5[arith_addi_19] = arith_addf_71; 
        double memref_load_72 = func_arg_4[arith_addi_19][arith_addi_66]; 
        double memref_load_73 = func_arg_6[arith_addi_66]; 
        double arith_mulf_74 = (memref_load_72 * memref_load_73); 
        double memref_load_75 = func_arg_7[arith_addi_19]; 
        double arith_addf_76 = (arith_mulf_74 + memref_load_75); 
        func_arg_7[arith_addi_19] = arith_addf_76; 
      }
      double memref_load_77 = func_arg_5[arith_addi_19]; 
      double arith_mulf_78 = (func_arg_1 * memref_load_77); 
      double memref_load_79 = func_arg_7[arith_addi_19]; 
      double arith_mulf_80 = (func_arg_2 * memref_load_79); 
      double arith_addf_81 = (arith_mulf_78 + arith_mulf_80); 
      func_arg_7[arith_addi_19] = arith_addf_81; 
    }
  }
  return; 

}
#pragma pocc-region-end
