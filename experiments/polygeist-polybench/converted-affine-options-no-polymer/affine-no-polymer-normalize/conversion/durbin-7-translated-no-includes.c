#pragma pocc-region-start
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 1; 
  int arith_const_5 = 39; 
  int arith_const_6 = 0; 
  double _7; 
  double arith_const_8 = 0.000000; 
  double arith_const_9 = 1.000000; 
  double* memref_alloca_10; 
  memref_alloca_10[0] = _7; 
  double* memref_alloca_11; 
  memref_alloca_11[0] = _7; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _7; 
  double* memref_alloca_13; 
  double memref_load_14 = func_arg_1[arith_const_6]; 
  double arith_negf_15 = -(memref_load_14); 
  func_arg_2[arith_const_6] = arith_negf_15; 
  memref_alloca_11[0] = arith_const_9; 
  double memref_load_16 = func_arg_1[arith_const_6]; 
  double arith_negf_17 = -(memref_load_16); 
  memref_alloca_12[0] = arith_negf_17; 
  for (int for_iter_18 = arith_const_6; for_iter_18 < arith_const_5; for_iter_18 += arith_const_4) {
    int arith_addi_19 = (for_iter_18 + arith_const_4); 
    double memref_load_20 = memref_alloca_12[0]; 
    double arith_mulf_21 = (memref_load_20 * memref_load_20); 
    double arith_subf_22 = (arith_const_9 - arith_mulf_21); 
    double memref_load_23 = memref_alloca_11[0]; 
    double arith_mulf_24 = (arith_subf_22 * memref_load_23); 
    memref_alloca_11[0] = arith_mulf_24; 
    memref_alloca_10[0] = arith_const_8; 
    int arith_addi_25 = (for_iter_18 + arith_const_4); 
    for (int for_iter_26 = arith_const_6; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_4) {
      int arith_muli_27 = (for_iter_26 * arith_const_3); 
      int arith_addi_28 = (arith_addi_19 + arith_muli_27); 
      int arith_addi_29 = (arith_addi_28 + arith_const_3); 
      double memref_load_30 = func_arg_1[arith_addi_29]; 
      double memref_load_31 = func_arg_2[for_iter_26]; 
      double arith_mulf_32 = (memref_load_30 * memref_load_31); 
      double memref_load_33 = memref_alloca_10[0]; 
      double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
      memref_alloca_10[0] = arith_addf_34; 
    }
    double memref_load_35 = func_arg_1[arith_addi_19]; 
    double memref_load_36 = memref_alloca_10[0]; 
    double arith_addf_37 = (memref_load_35 + memref_load_36); 
    double arith_negf_38 = -(arith_addf_37); 
    double arith_divf_39 = (arith_negf_38 / arith_mulf_24); 
    memref_alloca_12[0] = arith_divf_39; 
    int arith_addi_40 = (for_iter_18 + arith_const_4); 
    for (int for_iter_41 = arith_const_6; for_iter_41 < arith_addi_40; for_iter_41 += arith_const_4) {
      double memref_load_42 = func_arg_2[for_iter_41]; 
      int arith_muli_43 = (for_iter_41 * arith_const_3); 
      int arith_addi_44 = (arith_addi_19 + arith_muli_43); 
      int arith_addi_45 = (arith_addi_44 + arith_const_3); 
      double memref_load_46 = func_arg_2[arith_addi_45]; 
      double arith_mulf_47 = (arith_divf_39 * memref_load_46); 
      double arith_addf_48 = (memref_load_42 + arith_mulf_47); 
      memref_alloca_13[for_iter_41] = arith_addf_48; 
    }
    int arith_addi_49 = (for_iter_18 + arith_const_4); 
    for (int for_iter_50 = arith_const_6; for_iter_50 < arith_addi_49; for_iter_50 += arith_const_4) {
      double memref_load_51 = memref_alloca_13[for_iter_50]; 
      func_arg_2[for_iter_50] = memref_load_51; 
    }
    func_arg_2[arith_addi_19] = arith_divf_39; 
  }
  return; 

}
#pragma pocc-region-end
