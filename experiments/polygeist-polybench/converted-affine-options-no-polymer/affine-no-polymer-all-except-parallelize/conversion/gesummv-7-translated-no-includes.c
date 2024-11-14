#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 28; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  int arith_const_13 = 30; 
  int arith_const_14 = 32; 
  double arith_const_15 = 0.000000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_16; for_iter_18 < arith_const_17; for_iter_18 += arith_const_17) {
    int arith_muli_19 = (for_iter_18 * arith_const_14); 
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_13; for_iter_20 += arith_const_17) {
      int arith_addi_21 = (arith_muli_19 + for_iter_20); 
      func_arg_5[arith_addi_21] = arith_const_15; 
      func_arg_7[arith_addi_21] = arith_const_15; 
      for (int for_iter_22 = arith_const_16; for_iter_22 < arith_const_12; for_iter_22 += arith_const_17) {
        int arith_muli_23 = (for_iter_22 * arith_const_11); 
        double memref_load_24 = func_arg_3[arith_addi_21][arith_muli_23]; 
        double memref_load_25 = func_arg_6[arith_muli_23]; 
        double arith_mulf_26 = (memref_load_24 * memref_load_25); 
        double memref_load_27 = func_arg_5[arith_addi_21]; 
        double arith_addf_28 = (arith_mulf_26 + memref_load_27); 
        func_arg_5[arith_addi_21] = arith_addf_28; 
        double memref_load_29 = func_arg_4[arith_addi_21][arith_muli_23]; 
        double memref_load_30 = func_arg_6[arith_muli_23]; 
        double arith_mulf_31 = (memref_load_29 * memref_load_30); 
        double memref_load_32 = func_arg_7[arith_addi_21]; 
        double arith_addf_33 = (arith_mulf_31 + memref_load_32); 
        func_arg_7[arith_addi_21] = arith_addf_33; 
        int arith_addi_34 = (arith_muli_23 + arith_const_17); 
        double memref_load_35 = func_arg_3[arith_addi_21][arith_addi_34]; 
        double memref_load_36 = func_arg_6[arith_addi_34]; 
        double arith_mulf_37 = (memref_load_35 * memref_load_36); 
        double memref_load_38 = func_arg_5[arith_addi_21]; 
        double arith_addf_39 = (arith_mulf_37 + memref_load_38); 
        func_arg_5[arith_addi_21] = arith_addf_39; 
        double memref_load_40 = func_arg_4[arith_addi_21][arith_addi_34]; 
        double memref_load_41 = func_arg_6[arith_addi_34]; 
        double arith_mulf_42 = (memref_load_40 * memref_load_41); 
        double memref_load_43 = func_arg_7[arith_addi_21]; 
        double arith_addf_44 = (arith_mulf_42 + memref_load_43); 
        func_arg_7[arith_addi_21] = arith_addf_44; 
        int arith_addi_45 = (arith_muli_23 + arith_const_10); 
        double memref_load_46 = func_arg_3[arith_addi_21][arith_addi_45]; 
        double memref_load_47 = func_arg_6[arith_addi_45]; 
        double arith_mulf_48 = (memref_load_46 * memref_load_47); 
        double memref_load_49 = func_arg_5[arith_addi_21]; 
        double arith_addf_50 = (arith_mulf_48 + memref_load_49); 
        func_arg_5[arith_addi_21] = arith_addf_50; 
        double memref_load_51 = func_arg_4[arith_addi_21][arith_addi_45]; 
        double memref_load_52 = func_arg_6[arith_addi_45]; 
        double arith_mulf_53 = (memref_load_51 * memref_load_52); 
        double memref_load_54 = func_arg_7[arith_addi_21]; 
        double arith_addf_55 = (arith_mulf_53 + memref_load_54); 
        func_arg_7[arith_addi_21] = arith_addf_55; 
        int arith_addi_56 = (arith_muli_23 + arith_const_9); 
        double memref_load_57 = func_arg_3[arith_addi_21][arith_addi_56]; 
        double memref_load_58 = func_arg_6[arith_addi_56]; 
        double arith_mulf_59 = (memref_load_57 * memref_load_58); 
        double memref_load_60 = func_arg_5[arith_addi_21]; 
        double arith_addf_61 = (arith_mulf_59 + memref_load_60); 
        func_arg_5[arith_addi_21] = arith_addf_61; 
        double memref_load_62 = func_arg_4[arith_addi_21][arith_addi_56]; 
        double memref_load_63 = func_arg_6[arith_addi_56]; 
        double arith_mulf_64 = (memref_load_62 * memref_load_63); 
        double memref_load_65 = func_arg_7[arith_addi_21]; 
        double arith_addf_66 = (arith_mulf_64 + memref_load_65); 
        func_arg_7[arith_addi_21] = arith_addf_66; 
      }
      for (int for_iter_67 = arith_const_16; for_iter_67 < arith_const_10; for_iter_67 += arith_const_17) {
        int arith_addi_68 = (for_iter_67 + arith_const_8); 
        double memref_load_69 = func_arg_3[arith_addi_21][arith_addi_68]; 
        double memref_load_70 = func_arg_6[arith_addi_68]; 
        double arith_mulf_71 = (memref_load_69 * memref_load_70); 
        double memref_load_72 = func_arg_5[arith_addi_21]; 
        double arith_addf_73 = (arith_mulf_71 + memref_load_72); 
        func_arg_5[arith_addi_21] = arith_addf_73; 
        double memref_load_74 = func_arg_4[arith_addi_21][arith_addi_68]; 
        double memref_load_75 = func_arg_6[arith_addi_68]; 
        double arith_mulf_76 = (memref_load_74 * memref_load_75); 
        double memref_load_77 = func_arg_7[arith_addi_21]; 
        double arith_addf_78 = (arith_mulf_76 + memref_load_77); 
        func_arg_7[arith_addi_21] = arith_addf_78; 
      }
      double memref_load_79 = func_arg_5[arith_addi_21]; 
      double arith_mulf_80 = (func_arg_1 * memref_load_79); 
      double memref_load_81 = func_arg_7[arith_addi_21]; 
      double arith_mulf_82 = (func_arg_2 * memref_load_81); 
      double arith_addf_83 = (arith_mulf_80 + arith_mulf_82); 
      func_arg_7[arith_addi_21] = arith_addf_83; 
    }
  }
  return; 

}
#pragma pocc-region-end
