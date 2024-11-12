#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 32; 
  int arith_const_10 = 1; 
  int arith_const_11 = 28; 
  int arith_const_12 = 0; 
  double arith_const_13 = 0.100000; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloc_16; 
  double* memref_alloc_17; 
  for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_11; for_iter_18 += arith_const_10) {
    func_arg_6[for_iter_18] = arith_const_14; 
    for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_9; for_iter_19 += arith_const_10) {
      func_arg_5[for_iter_18] = arith_const_14; 
      for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_9; for_iter_20 += arith_const_10) {
        double memref_load_21 = func_arg_3[for_iter_20][for_iter_18]; 
        double memref_load_22 = func_arg_5[for_iter_18]; 
        double arith_addf_23 = (memref_load_22 + memref_load_21); 
        func_arg_5[for_iter_18] = arith_addf_23; 
      }
      double memref_load_24 = func_arg_5[for_iter_18]; 
      double arith_divf_25 = (memref_load_24 / func_arg_2); 
      func_arg_5[for_iter_18] = arith_divf_25; 
      double memref_load_26 = func_arg_3[for_iter_19][for_iter_18]; 
      double memref_load_27 = func_arg_5[for_iter_18]; 
      double arith_subf_28 = (memref_load_26 - memref_load_27); 
      double arith_mulf_29 = (arith_subf_28 * arith_subf_28); 
      double memref_load_30 = func_arg_6[for_iter_18]; 
      double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
      func_arg_6[for_iter_18] = arith_addf_31; 
    }
    double memref_load_32 = func_arg_6[for_iter_18]; 
    double arith_divf_33 = (memref_load_32 / func_arg_2); 
    double math_sqrt_34 = sqrt(arith_divf_33); 
    int arith_cmpi_35 = (math_sqrt_34 <= arith_const_13); 
    double arith_select_36 = (arith_cmpi_35 ? arith_const_15 : math_sqrt_34); 
    func_arg_6[for_iter_18] = arith_select_36; 
  }
  double math_sqrt_37 = sqrt(func_arg_2); 
  for (int for_iter_38 = arith_const_12; for_iter_38 < arith_const_9; for_iter_38 += arith_const_10) {
    for (int for_iter_39 = arith_const_12; for_iter_39 < arith_const_11; for_iter_39 += arith_const_10) {
      memref_alloc_17[arith_const_12] = arith_const_14; 
      for (int for_iter_40 = arith_const_12; for_iter_40 < arith_const_9; for_iter_40 += arith_const_10) {
        double memref_load_41 = func_arg_3[for_iter_40][for_iter_39]; 
        double memref_load_42 = func_arg_5[for_iter_39]; 
        double arith_subf_43 = (memref_load_41 - memref_load_42); 
        double arith_mulf_44 = (arith_subf_43 * arith_subf_43); 
        double memref_load_45 = memref_alloc_17[arith_const_12]; 
        double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
        memref_alloc_17[arith_const_12] = arith_addf_46; 
      }
      double memref_load_47 = memref_alloc_17[arith_const_12]; 
      double arith_divf_48 = (memref_load_47 / func_arg_2); 
      double math_sqrt_49 = sqrt(arith_divf_48); 
      int arith_cmpi_50 = (math_sqrt_49 <= arith_const_13); 
      double arith_select_51 = (arith_cmpi_50 ? arith_const_15 : math_sqrt_49); 
      memref_alloc_17[arith_const_12] = arith_select_51; 
      double memref_load_52 = func_arg_5[for_iter_39]; 
      double memref_load_53 = func_arg_3[for_iter_38][for_iter_39]; 
      double arith_subf_54 = (memref_load_53 - memref_load_52); 
      func_arg_3[for_iter_38][for_iter_39] = arith_subf_54; 
      double memref_load_55 = memref_alloc_17[arith_const_12]; 
      double arith_mulf_56 = (math_sqrt_37 * memref_load_55); 
      double arith_divf_57 = (arith_subf_54 / arith_mulf_56); 
      func_arg_3[for_iter_38][for_iter_39] = arith_divf_57; 
    }
  }
  for (int for_iter_58 = arith_const_12; for_iter_58 < arith_const_8; for_iter_58 += arith_const_10) {
    func_arg_4[for_iter_58][for_iter_58] = arith_const_15; 
    int arith_addi_59 = (for_iter_58 + arith_const_10); 
    for (int for_iter_60 = arith_addi_59; for_iter_60 < arith_const_11; for_iter_60 += arith_const_10) {
      func_arg_4[for_iter_58][for_iter_60] = arith_const_14; 
      for (int for_iter_61 = arith_const_12; for_iter_61 < arith_const_9; for_iter_61 += arith_const_10) {
        for (int for_iter_62 = arith_const_12; for_iter_62 < arith_const_11; for_iter_62 += arith_const_10) {
          memref_alloc_17[arith_const_12] = arith_const_14; 
          for (int for_iter_63 = arith_const_12; for_iter_63 < arith_const_9; for_iter_63 += arith_const_10) {
            int arith_muli_64 = (for_iter_61 * arith_const_7); 
            int arith_addi_65 = (arith_muli_64 + for_iter_63); 
            double memref_load_66 = memref_alloc_16[arith_addi_65][for_iter_62]; 
            double memref_load_67 = func_arg_5[for_iter_62]; 
            double arith_subf_68 = (memref_load_66 - memref_load_67); 
            double arith_mulf_69 = (arith_subf_68 * arith_subf_68); 
            double memref_load_70 = memref_alloc_17[arith_const_12]; 
            double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
            memref_alloc_17[arith_const_12] = arith_addf_71; 
          }
          double memref_load_72 = memref_alloc_17[arith_const_12]; 
          double arith_divf_73 = (memref_load_72 / func_arg_2); 
          double math_sqrt_74 = sqrt(arith_divf_73); 
          int arith_cmpi_75 = (math_sqrt_74 <= arith_const_13); 
          double arith_select_76 = (arith_cmpi_75 ? arith_const_15 : math_sqrt_74); 
          memref_alloc_17[arith_const_12] = arith_select_76; 
          double memref_load_77 = func_arg_5[for_iter_62]; 
          double memref_load_78 = memref_alloc_16[arith_const_12][for_iter_62]; 
          double arith_subf_79 = (memref_load_78 - memref_load_77); 
          memref_alloc_16[arith_const_12][for_iter_62] = arith_subf_79; 
          double memref_load_80 = memref_alloc_17[arith_const_12]; 
          double arith_mulf_81 = (math_sqrt_37 * memref_load_80); 
          double arith_divf_82 = (arith_subf_79 / arith_mulf_81); 
          memref_alloc_16[arith_const_12][for_iter_62] = arith_divf_82; 
        }
        double memref_load_83 = memref_alloc_16[arith_const_12][for_iter_58]; 
        double memref_load_84 = memref_alloc_16[arith_const_12][for_iter_60]; 
        double arith_mulf_85 = (memref_load_83 * memref_load_84); 
        double memref_load_86 = func_arg_4[for_iter_58][for_iter_60]; 
        double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
        func_arg_4[for_iter_58][for_iter_60] = arith_addf_87; 
      }
      double memref_load_88 = func_arg_4[for_iter_58][for_iter_60]; 
      func_arg_4[for_iter_60][for_iter_58] = memref_load_88; 
    }
  }
  func_arg_4[arith_const_8][arith_const_8] = arith_const_15; 
  return; 

}
#pragma pocc-region-end
