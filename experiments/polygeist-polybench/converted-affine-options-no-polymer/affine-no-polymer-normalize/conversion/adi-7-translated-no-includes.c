#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -1; 
  int arith_const_8 = 18; 
  int arith_const_9 = 19; 
  int arith_const_10 = 2; 
  double arith_const_11 = 10.000000; 
  double arith_const_12 = -19.000000; 
  double arith_const_13 = -10.000000; 
  double arith_const_14 = -20.000000; 
  double arith_const_15 = 41.000000; 
  double arith_const_16 = 20.000000; 
  double arith_const_17 = 0.000000; 
  double arith_const_18 = 1.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 1; 
  func_arg_3[arith_const_19][arith_const_20] = arith_const_18; 
  func_arg_4[arith_const_20][arith_const_19] = arith_const_17; 
  double memref_load_21 = func_arg_3[arith_const_19][arith_const_20]; 
  func_arg_5[arith_const_20][arith_const_19] = memref_load_21; 
  double memref_load_22 = func_arg_4[arith_const_20][arith_const_19]; 
  double arith_mulf_23 = (memref_load_22 * arith_const_14); 
  double arith_addf_24 = (arith_mulf_23 + arith_const_15); 
  double arith_divf_25 = (arith_const_16 / arith_addf_24); 
  func_arg_4[arith_const_20][arith_const_20] = arith_divf_25; 
  double memref_load_26 = func_arg_2[arith_const_20][arith_const_19]; 
  double arith_mulf_27 = (memref_load_26 * arith_const_11); 
  double memref_load_28 = func_arg_2[arith_const_20][arith_const_20]; 
  double arith_mulf_29 = (memref_load_28 * arith_const_12); 
  double arith_addf_30 = (arith_mulf_27 + arith_mulf_29); 
  double memref_load_31 = func_arg_2[arith_const_20][arith_const_10]; 
  double arith_mulf_32 = (memref_load_31 * arith_const_13); 
  double arith_subf_33 = (arith_addf_30 - arith_mulf_32); 
  double memref_load_34 = func_arg_5[arith_const_20][arith_const_19]; 
  double arith_mulf_35 = (memref_load_34 * arith_const_14); 
  double arith_subf_36 = (arith_subf_33 - arith_mulf_35); 
  double arith_divf_37 = (arith_subf_36 / arith_addf_24); 
  func_arg_5[arith_const_20][arith_const_20] = arith_divf_37; 
  func_arg_3[arith_const_9][arith_const_20] = arith_const_18; 
  for (int for_iter_38 = arith_const_19; for_iter_38 < arith_const_8; for_iter_38 += arith_const_20) {
    int arith_addi_39 = (for_iter_38 + arith_const_20); 
    int arith_muli_40 = (arith_addi_39 * arith_const_7); 
    int arith_addi_41 = (arith_muli_40 + arith_const_9); 
    double memref_load_42 = func_arg_4[arith_const_20][arith_addi_41]; 
    int arith_muli_43 = (arith_addi_39 * arith_const_7); 
    int arith_addi_44 = (arith_muli_43 + arith_const_6); 
    double memref_load_45 = func_arg_3[arith_addi_44][arith_const_20]; 
    double arith_mulf_46 = (memref_load_42 * memref_load_45); 
    int arith_muli_47 = (arith_addi_39 * arith_const_7); 
    int arith_addi_48 = (arith_muli_47 + arith_const_9); 
    double memref_load_49 = func_arg_5[arith_const_20][arith_addi_48]; 
    double arith_addf_50 = (arith_mulf_46 + memref_load_49); 
    int arith_muli_51 = (arith_addi_39 * arith_const_7); 
    int arith_addi_52 = (arith_muli_51 + arith_const_9); 
    func_arg_3[arith_addi_52][arith_const_20] = arith_addf_50; 
  }
  return; 

}
#pragma pocc-region-end
