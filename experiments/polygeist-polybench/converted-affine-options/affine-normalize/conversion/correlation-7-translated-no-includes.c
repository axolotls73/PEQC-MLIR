#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 28; 
  int arith_const_9 = -1; 
  int arith_const_10 = 1; 
  int arith_const_11 = 0; 
  int arith_const_12 = 27; 
  double arith_const_13 = 0.100000; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloca_16; 
  func_arg_4[arith_const_12][arith_const_12] = arith_const_15; 
  for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_12; for_iter_17 += arith_const_10) {
    int arith_muli_18 = (for_iter_17 * arith_const_9); 
    int arith_addi_19 = (arith_muli_18 + arith_const_12); 
    for (int for_iter_20 = arith_const_11; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_10) {
      int arith_addi_21 = (for_iter_17 + for_iter_20); 
      int arith_addi_22 = (arith_addi_21 + arith_const_10); 
      func_arg_4[for_iter_17][arith_addi_22] = arith_const_14; 
    }
  }
  for (int for_iter_23 = arith_const_11; for_iter_23 < arith_const_12; for_iter_23 += arith_const_10) {
    func_arg_4[for_iter_23][for_iter_23] = arith_const_15; 
  }
  double math_sqrt_24 = sqrt(func_arg_2); 
  memref_alloca_16[arith_const_11] = math_sqrt_24; 
  for (int for_iter_25 = arith_const_11; for_iter_25 < arith_const_8; for_iter_25 += arith_const_10) {
    func_arg_6[for_iter_25] = arith_const_14; 
    func_arg_5[for_iter_25] = arith_const_14; 
  }
  for (int for_iter_26 = arith_const_11; for_iter_26 < arith_const_7; for_iter_26 += arith_const_10) {
    for (int for_iter_27 = arith_const_11; for_iter_27 < arith_const_8; for_iter_27 += arith_const_10) {
      double memref_load_28 = func_arg_5[for_iter_27]; 
      double memref_load_29 = func_arg_3[for_iter_26][for_iter_27]; 
      double arith_addf_30 = (memref_load_28 + memref_load_29); 
      func_arg_5[for_iter_27] = arith_addf_30; 
    }
  }
  for (int for_iter_31 = arith_const_11; for_iter_31 < arith_const_8; for_iter_31 += arith_const_10) {
    double memref_load_32 = func_arg_5[for_iter_31]; 
    double arith_divf_33 = (memref_load_32 / func_arg_2); 
    func_arg_5[for_iter_31] = arith_divf_33; 
  }
  for (int for_iter_34 = arith_const_11; for_iter_34 < arith_const_7; for_iter_34 += arith_const_10) {
    for (int for_iter_35 = arith_const_11; for_iter_35 < arith_const_8; for_iter_35 += arith_const_10) {
      double memref_load_36 = func_arg_6[for_iter_35]; 
      double memref_load_37 = func_arg_3[for_iter_34][for_iter_35]; 
      double memref_load_38 = func_arg_5[for_iter_35]; 
      double arith_subf_39 = (memref_load_37 - memref_load_38); 
      double arith_mulf_40 = (arith_subf_39 * arith_subf_39); 
      double arith_addf_41 = (memref_load_36 + arith_mulf_40); 
      func_arg_6[for_iter_35] = arith_addf_41; 
      double memref_load_42 = func_arg_3[for_iter_34][for_iter_35]; 
      double memref_load_43 = func_arg_5[for_iter_35]; 
      double arith_subf_44 = (memref_load_42 - memref_load_43); 
      func_arg_3[for_iter_34][for_iter_35] = arith_subf_44; 
    }
  }
  for (int for_iter_45 = arith_const_11; for_iter_45 < arith_const_8; for_iter_45 += arith_const_10) {
    double memref_load_46 = func_arg_6[for_iter_45]; 
    double arith_divf_47 = (memref_load_46 / func_arg_2); 
    double math_sqrt_48 = sqrt(arith_divf_47); 
    int arith_cmpi_49 = (math_sqrt_48 <= arith_const_13); 
    double arith_select_50 = (arith_cmpi_49 ? arith_const_15 : math_sqrt_48); 
    func_arg_6[for_iter_45] = arith_select_50; 
  }
  for (int for_iter_51 = arith_const_11; for_iter_51 < arith_const_7; for_iter_51 += arith_const_10) {
    for (int for_iter_52 = arith_const_11; for_iter_52 < arith_const_8; for_iter_52 += arith_const_10) {
      double memref_load_53 = func_arg_3[for_iter_51][for_iter_52]; 
      double memref_load_54 = memref_alloca_16[arith_const_11]; 
      double memref_load_55 = func_arg_6[for_iter_52]; 
      double arith_mulf_56 = (memref_load_54 * memref_load_55); 
      double arith_divf_57 = (memref_load_53 / arith_mulf_56); 
      func_arg_3[for_iter_51][for_iter_52] = arith_divf_57; 
    }
  }
  for (int for_iter_58 = arith_const_11; for_iter_58 < arith_const_12; for_iter_58 += arith_const_10) {
    for (int for_iter_59 = arith_const_11; for_iter_59 < arith_const_7; for_iter_59 += arith_const_10) {
      int arith_muli_60 = (for_iter_58 * arith_const_9); 
      int arith_addi_61 = (arith_muli_60 + arith_const_12); 
      for (int for_iter_62 = arith_const_11; for_iter_62 < arith_addi_61; for_iter_62 += arith_const_10) {
        int arith_addi_63 = (for_iter_58 + for_iter_62); 
        int arith_addi_64 = (arith_addi_63 + arith_const_10); 
        double memref_load_65 = func_arg_4[for_iter_58][arith_addi_64]; 
        double memref_load_66 = func_arg_3[for_iter_59][for_iter_58]; 
        double memref_load_67 = func_arg_3[for_iter_59][arith_addi_64]; 
        double arith_mulf_68 = (memref_load_66 * memref_load_67); 
        double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
        func_arg_4[for_iter_58][arith_addi_64] = arith_addf_69; 
      }
    }
  }
  for (int for_iter_70 = arith_const_11; for_iter_70 < arith_const_12; for_iter_70 += arith_const_10) {
    int arith_muli_71 = (for_iter_70 * arith_const_9); 
    int arith_addi_72 = (arith_muli_71 + arith_const_12); 
    for (int for_iter_73 = arith_const_11; for_iter_73 < arith_addi_72; for_iter_73 += arith_const_10) {
      int arith_addi_74 = (for_iter_70 + for_iter_73); 
      int arith_addi_75 = (arith_addi_74 + arith_const_10); 
      double memref_load_76 = func_arg_4[for_iter_70][arith_addi_75]; 
      func_arg_4[arith_addi_75][for_iter_70] = memref_load_76; 
    }
  }
  return; 

}
#pragma pocc-region-end
