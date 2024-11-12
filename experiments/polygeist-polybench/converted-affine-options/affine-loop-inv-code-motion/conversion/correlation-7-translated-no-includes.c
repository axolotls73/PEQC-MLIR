#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 28; 
  int arith_const_9 = 1; 
  int arith_const_10 = 0; 
  int arith_const_11 = 27; 
  double arith_const_12 = 0.100000; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 1.000000; 
  double* memref_alloca_15; 
  func_arg_4[arith_const_11][arith_const_11] = arith_const_14; 
  for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_11; for_iter_16 += arith_const_9) {
    int arith_addi_17 = (for_iter_16 + arith_const_9); 
    for (int for_iter_18 = arith_addi_17; for_iter_18 < arith_const_8; for_iter_18 += arith_const_9) {
      func_arg_4[for_iter_16][for_iter_18] = arith_const_13; 
    }
  }
  for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_11; for_iter_19 += arith_const_9) {
    func_arg_4[for_iter_19][for_iter_19] = arith_const_14; 
  }
  double math_sqrt_20 = sqrt(func_arg_2); 
  memref_alloca_15[arith_const_10] = math_sqrt_20; 
  for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_8; for_iter_21 += arith_const_9) {
    func_arg_6[for_iter_21] = arith_const_13; 
    func_arg_5[for_iter_21] = arith_const_13; 
  }
  for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_7; for_iter_22 += arith_const_9) {
    for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_8; for_iter_23 += arith_const_9) {
      double memref_load_24 = func_arg_5[for_iter_23]; 
      double memref_load_25 = func_arg_3[for_iter_22][for_iter_23]; 
      double arith_addf_26 = (memref_load_24 + memref_load_25); 
      func_arg_5[for_iter_23] = arith_addf_26; 
    }
  }
  for (int for_iter_27 = arith_const_10; for_iter_27 < arith_const_8; for_iter_27 += arith_const_9) {
    double memref_load_28 = func_arg_5[for_iter_27]; 
    double arith_divf_29 = (memref_load_28 / func_arg_2); 
    func_arg_5[for_iter_27] = arith_divf_29; 
  }
  for (int for_iter_30 = arith_const_10; for_iter_30 < arith_const_7; for_iter_30 += arith_const_9) {
    for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_8; for_iter_31 += arith_const_9) {
      double memref_load_32 = func_arg_6[for_iter_31]; 
      double memref_load_33 = func_arg_3[for_iter_30][for_iter_31]; 
      double memref_load_34 = func_arg_5[for_iter_31]; 
      double arith_subf_35 = (memref_load_33 - memref_load_34); 
      double arith_mulf_36 = (arith_subf_35 * arith_subf_35); 
      double arith_addf_37 = (memref_load_32 + arith_mulf_36); 
      func_arg_6[for_iter_31] = arith_addf_37; 
      double memref_load_38 = func_arg_3[for_iter_30][for_iter_31]; 
      double memref_load_39 = func_arg_5[for_iter_31]; 
      double arith_subf_40 = (memref_load_38 - memref_load_39); 
      func_arg_3[for_iter_30][for_iter_31] = arith_subf_40; 
    }
  }
  for (int for_iter_41 = arith_const_10; for_iter_41 < arith_const_8; for_iter_41 += arith_const_9) {
    double memref_load_42 = func_arg_6[for_iter_41]; 
    double arith_divf_43 = (memref_load_42 / func_arg_2); 
    double math_sqrt_44 = sqrt(arith_divf_43); 
    int arith_cmpi_45 = (math_sqrt_44 <= arith_const_12); 
    double arith_select_46 = (arith_cmpi_45 ? arith_const_14 : math_sqrt_44); 
    func_arg_6[for_iter_41] = arith_select_46; 
  }
  double memref_load_47 = memref_alloca_15[arith_const_10]; 
  for (int for_iter_48 = arith_const_10; for_iter_48 < arith_const_7; for_iter_48 += arith_const_9) {
    for (int for_iter_49 = arith_const_10; for_iter_49 < arith_const_8; for_iter_49 += arith_const_9) {
      double memref_load_50 = func_arg_3[for_iter_48][for_iter_49]; 
      double memref_load_51 = func_arg_6[for_iter_49]; 
      double arith_mulf_52 = (memref_load_47 * memref_load_51); 
      double arith_divf_53 = (memref_load_50 / arith_mulf_52); 
      func_arg_3[for_iter_48][for_iter_49] = arith_divf_53; 
    }
  }
  for (int for_iter_54 = arith_const_10; for_iter_54 < arith_const_11; for_iter_54 += arith_const_9) {
    for (int for_iter_55 = arith_const_10; for_iter_55 < arith_const_7; for_iter_55 += arith_const_9) {
      double memref_load_56 = func_arg_3[for_iter_55][for_iter_54]; 
      int arith_addi_57 = (for_iter_54 + arith_const_9); 
      for (int for_iter_58 = arith_addi_57; for_iter_58 < arith_const_8; for_iter_58 += arith_const_9) {
        double memref_load_59 = func_arg_4[for_iter_54][for_iter_58]; 
        double memref_load_60 = func_arg_3[for_iter_55][for_iter_58]; 
        double arith_mulf_61 = (memref_load_56 * memref_load_60); 
        double arith_addf_62 = (memref_load_59 + arith_mulf_61); 
        func_arg_4[for_iter_54][for_iter_58] = arith_addf_62; 
      }
    }
  }
  for (int for_iter_63 = arith_const_10; for_iter_63 < arith_const_11; for_iter_63 += arith_const_9) {
    int arith_addi_64 = (for_iter_63 + arith_const_9); 
    for (int for_iter_65 = arith_addi_64; for_iter_65 < arith_const_8; for_iter_65 += arith_const_9) {
      double memref_load_66 = func_arg_4[for_iter_63][for_iter_65]; 
      func_arg_4[for_iter_65][for_iter_63] = memref_load_66; 
    }
  }
  return; 

}
#pragma pocc-region-end
