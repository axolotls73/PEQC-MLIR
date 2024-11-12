#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 32; 
  double arith_const_10 = 1.000000; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 0.100000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 28; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    func_arg_5[for_iter_16] = arith_const_11; 
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_9; for_iter_17 += arith_const_15) {
      double memref_load_18 = func_arg_3[for_iter_17][for_iter_16]; 
      double memref_load_19 = func_arg_5[for_iter_16]; 
      double arith_addf_20 = (memref_load_19 + memref_load_18); 
      func_arg_5[for_iter_16] = arith_addf_20; 
    }
    double memref_load_21 = func_arg_5[for_iter_16]; 
    double arith_divf_22 = (memref_load_21 / func_arg_2); 
    func_arg_5[for_iter_16] = arith_divf_22; 
  }
  for (int for_iter_23 = arith_const_13; for_iter_23 < arith_const_14; for_iter_23 += arith_const_15) {
    func_arg_6[for_iter_23] = arith_const_11; 
    for (int for_iter_24 = arith_const_13; for_iter_24 < arith_const_9; for_iter_24 += arith_const_15) {
      double memref_load_25 = func_arg_3[for_iter_24][for_iter_23]; 
      double memref_load_26 = func_arg_5[for_iter_23]; 
      double arith_subf_27 = (memref_load_25 - memref_load_26); 
      double arith_mulf_28 = (arith_subf_27 * arith_subf_27); 
      double memref_load_29 = func_arg_6[for_iter_23]; 
      double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
      func_arg_6[for_iter_23] = arith_addf_30; 
    }
    double memref_load_31 = func_arg_6[for_iter_23]; 
    double arith_divf_32 = (memref_load_31 / func_arg_2); 
    double math_sqrt_33 = sqrt(arith_divf_32); 
    int arith_cmpi_34 = (math_sqrt_33 <= arith_const_12); 
    double arith_select_35 = (arith_cmpi_34 ? arith_const_10 : math_sqrt_33); 
    func_arg_6[for_iter_23] = arith_select_35; 
  }
  double math_sqrt_36 = sqrt(func_arg_2); 
  for (int for_iter_37 = arith_const_13; for_iter_37 < arith_const_9; for_iter_37 += arith_const_15) {
    for (int for_iter_38 = arith_const_13; for_iter_38 < arith_const_14; for_iter_38 += arith_const_15) {
      double memref_load_39 = func_arg_5[for_iter_38]; 
      double memref_load_40 = func_arg_3[for_iter_37][for_iter_38]; 
      double arith_subf_41 = (memref_load_40 - memref_load_39); 
      func_arg_3[for_iter_37][for_iter_38] = arith_subf_41; 
      double memref_load_42 = func_arg_6[for_iter_38]; 
      double arith_mulf_43 = (math_sqrt_36 * memref_load_42); 
      double arith_divf_44 = (arith_subf_41 / arith_mulf_43); 
      func_arg_3[for_iter_37][for_iter_38] = arith_divf_44; 
    }
  }
  for (int for_iter_45 = arith_const_13; for_iter_45 < arith_const_8; for_iter_45 += arith_const_15) {
    func_arg_4[for_iter_45][for_iter_45] = arith_const_10; 
    int arith_muli_46 = (for_iter_45 * arith_const_7); 
    int arith_addi_47 = (arith_muli_46 + arith_const_8); 
    for (int for_iter_48 = arith_const_13; for_iter_48 < arith_addi_47; for_iter_48 += arith_const_15) {
      int arith_addi_49 = (for_iter_45 + for_iter_48); 
      int arith_addi_50 = (arith_addi_49 + arith_const_15); 
      func_arg_4[for_iter_45][arith_addi_50] = arith_const_11; 
      for (int for_iter_51 = arith_const_13; for_iter_51 < arith_const_9; for_iter_51 += arith_const_15) {
        double memref_load_52 = func_arg_3[for_iter_51][for_iter_45]; 
        double memref_load_53 = func_arg_3[for_iter_51][arith_addi_50]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double memref_load_55 = func_arg_4[for_iter_45][arith_addi_50]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        func_arg_4[for_iter_45][arith_addi_50] = arith_addf_56; 
      }
      double memref_load_57 = func_arg_4[for_iter_45][arith_addi_50]; 
      func_arg_4[arith_addi_50][for_iter_45] = memref_load_57; 
    }
  }
  func_arg_4[arith_const_8][arith_const_8] = arith_const_10; 
  return; 

}
#pragma pocc-region-end
