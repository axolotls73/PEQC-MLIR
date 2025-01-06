#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -1; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  int arith_const_9 = 30; 
  int arith_const_10 = 0; 
  double _11; 
  double arith_const_12 = 0.000000; 
  double* memref_alloca_13; 
  memref_alloca_13[0] = _11; 
  for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_8) {
    memref_alloca_13[0] = arith_const_12; 
    for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_7; for_iter_15 += arith_const_8) {
      double memref_load_16 = func_arg_2[for_iter_15][for_iter_14]; 
      double arith_mulf_17 = (memref_load_16 * memref_load_16); 
      double memref_load_18 = memref_alloca_13[0]; 
      double arith_addf_19 = (memref_load_18 + arith_mulf_17); 
      memref_alloca_13[0] = arith_addf_19; 
    }
    double memref_load_20 = memref_alloca_13[0]; 
    double math_sqrt_21 = sqrt(memref_load_20); 
    func_arg_3[for_iter_14][for_iter_14] = math_sqrt_21; 
    for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_7; for_iter_22 += arith_const_8) {
      double memref_load_23 = func_arg_2[for_iter_22][for_iter_14]; 
      double memref_load_24 = func_arg_3[for_iter_14][for_iter_14]; 
      double arith_divf_25 = (memref_load_23 / memref_load_24); 
      func_arg_4[for_iter_22][for_iter_14] = arith_divf_25; 
    }
    int arith_muli_26 = (for_iter_14 * arith_const_6); 
    int arith_addi_27 = (arith_muli_26 + arith_const_5); 
    for (int for_iter_28 = arith_const_10; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_8) {
      int arith_addi_29 = (for_iter_14 + for_iter_28); 
      int arith_addi_30 = (arith_addi_29 + arith_const_8); 
      func_arg_3[for_iter_14][arith_addi_30] = arith_const_12; 
      for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_7; for_iter_31 += arith_const_8) {
        double memref_load_32 = func_arg_4[for_iter_31][for_iter_14]; 
        int arith_addi_33 = (for_iter_14 + for_iter_28); 
        int arith_addi_34 = (arith_addi_33 + arith_const_8); 
        double memref_load_35 = func_arg_2[for_iter_31][arith_addi_34]; 
        double arith_mulf_36 = (memref_load_32 * memref_load_35); 
        int arith_addi_37 = (for_iter_14 + for_iter_28); 
        int arith_addi_38 = (arith_addi_37 + arith_const_8); 
        double memref_load_39 = func_arg_3[for_iter_14][arith_addi_38]; 
        double arith_addf_40 = (memref_load_39 + arith_mulf_36); 
        int arith_addi_41 = (for_iter_14 + for_iter_28); 
        int arith_addi_42 = (arith_addi_41 + arith_const_8); 
        func_arg_3[for_iter_14][arith_addi_42] = arith_addf_40; 
      }
      for (int for_iter_43 = arith_const_10; for_iter_43 < arith_const_7; for_iter_43 += arith_const_8) {
        int arith_addi_44 = (for_iter_14 + for_iter_28); 
        int arith_addi_45 = (arith_addi_44 + arith_const_8); 
        double memref_load_46 = func_arg_2[for_iter_43][arith_addi_45]; 
        double memref_load_47 = func_arg_4[for_iter_43][for_iter_14]; 
        int arith_addi_48 = (for_iter_14 + for_iter_28); 
        int arith_addi_49 = (arith_addi_48 + arith_const_8); 
        double memref_load_50 = func_arg_3[for_iter_14][arith_addi_49]; 
        double arith_mulf_51 = (memref_load_47 * memref_load_50); 
        double arith_subf_52 = (memref_load_46 - arith_mulf_51); 
        int arith_addi_53 = (for_iter_14 + for_iter_28); 
        int arith_addi_54 = (arith_addi_53 + arith_const_8); 
        func_arg_2[for_iter_43][arith_addi_54] = arith_subf_52; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
