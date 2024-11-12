#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 1; 
  double arith_const_7 = 1.000000; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 28; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_10); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_6) {
      func_arg_5[for_iter_14] = arith_const_8; 
      for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_11; for_iter_15 += arith_const_6) {
        double memref_load_16 = func_arg_3[for_iter_15][for_iter_14]; 
        double memref_load_17 = func_arg_5[for_iter_14]; 
        double arith_addf_18 = (memref_load_17 + memref_load_16); 
        func_arg_5[for_iter_14] = arith_addf_18; 
      }
      double memref_load_19 = func_arg_5[for_iter_14]; 
      double arith_divf_20 = (memref_load_19 / func_arg_2); 
      func_arg_5[for_iter_14] = arith_divf_20; 
    }
  }
  for (int for_iter_21 = arith_const_9; for_iter_21 < arith_const_11; for_iter_21 += arith_const_11) {
    for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_10; for_iter_22 += arith_const_11) {
      int arith_addi_23 = (for_iter_21 + arith_const_11); 
      for (int for_iter_24 = for_iter_21; for_iter_24 < arith_addi_23; for_iter_24 += arith_const_6) {
        int arith_addi_25 = (for_iter_22 + arith_const_10); 
        for (int for_iter_26 = for_iter_22; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_6) {
          double memref_load_27 = func_arg_5[for_iter_26]; 
          double memref_load_28 = func_arg_3[for_iter_24][for_iter_26]; 
          double arith_subf_29 = (memref_load_28 - memref_load_27); 
          func_arg_3[for_iter_24][for_iter_26] = arith_subf_29; 
        }
      }
    }
  }
  double arith_subf_30 = (func_arg_2 - arith_const_7); 
  for (int for_iter_31 = arith_const_9; for_iter_31 < arith_const_10; for_iter_31 += arith_const_6) {
    for (int for_iter_32 = for_iter_31; for_iter_32 < arith_const_10; for_iter_32 += arith_const_6) {
      func_arg_4[for_iter_31][for_iter_32] = arith_const_8; 
      for (int for_iter_33 = arith_const_9; for_iter_33 < arith_const_11; for_iter_33 += arith_const_6) {
        double memref_load_34 = func_arg_3[for_iter_33][for_iter_31]; 
        double memref_load_35 = func_arg_3[for_iter_33][for_iter_32]; 
        double arith_mulf_36 = (memref_load_34 * memref_load_35); 
        double memref_load_37 = func_arg_4[for_iter_31][for_iter_32]; 
        double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
        func_arg_4[for_iter_31][for_iter_32] = arith_addf_38; 
      }
      double memref_load_39 = func_arg_4[for_iter_31][for_iter_32]; 
      double arith_divf_40 = (memref_load_39 / arith_subf_30); 
      func_arg_4[for_iter_31][for_iter_32] = arith_divf_40; 
      func_arg_4[for_iter_32][for_iter_31] = arith_divf_40; 
    }
  }
  return; 

}
#pragma pocc-region-end
