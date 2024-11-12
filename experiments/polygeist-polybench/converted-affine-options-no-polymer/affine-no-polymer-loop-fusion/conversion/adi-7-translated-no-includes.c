#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -1; 
  int arith_const_8 = 19; 
  int arith_const_9 = 2; 
  double arith_const_10 = 10.000000; 
  double arith_const_11 = -19.000000; 
  double arith_const_12 = -10.000000; 
  double arith_const_13 = -20.000000; 
  double arith_const_14 = 41.000000; 
  double arith_const_15 = 20.000000; 
  double arith_const_16 = 0.000000; 
  double arith_const_17 = 1.000000; 
  int arith_const_18 = 0; 
  int arith_const_19 = 1; 
  func_arg_3[arith_const_18][arith_const_19] = arith_const_17; 
  func_arg_4[arith_const_19][arith_const_18] = arith_const_16; 
  double memref_load_20 = func_arg_3[arith_const_18][arith_const_19]; 
  func_arg_5[arith_const_19][arith_const_18] = memref_load_20; 
  double memref_load_21 = func_arg_4[arith_const_19][arith_const_18]; 
  double arith_mulf_22 = (memref_load_21 * arith_const_13); 
  double arith_addf_23 = (arith_mulf_22 + arith_const_14); 
  double arith_divf_24 = (arith_const_15 / arith_addf_23); 
  func_arg_4[arith_const_19][arith_const_19] = arith_divf_24; 
  double memref_load_25 = func_arg_2[arith_const_19][arith_const_18]; 
  double arith_mulf_26 = (memref_load_25 * arith_const_10); 
  double memref_load_27 = func_arg_2[arith_const_19][arith_const_19]; 
  double arith_mulf_28 = (memref_load_27 * arith_const_11); 
  double arith_addf_29 = (arith_mulf_26 + arith_mulf_28); 
  double memref_load_30 = func_arg_2[arith_const_19][arith_const_9]; 
  double arith_mulf_31 = (memref_load_30 * arith_const_12); 
  double arith_subf_32 = (arith_addf_29 - arith_mulf_31); 
  double memref_load_33 = func_arg_5[arith_const_19][arith_const_18]; 
  double arith_mulf_34 = (memref_load_33 * arith_const_13); 
  double arith_subf_35 = (arith_subf_32 - arith_mulf_34); 
  double arith_divf_36 = (arith_subf_35 / arith_addf_23); 
  func_arg_5[arith_const_19][arith_const_19] = arith_divf_36; 
  func_arg_3[arith_const_8][arith_const_19] = arith_const_17; 
  for (int for_iter_37 = arith_const_19; for_iter_37 < arith_const_8; for_iter_37 += arith_const_19) {
    int arith_muli_38 = (for_iter_37 * arith_const_7); 
    int arith_addi_39 = (arith_muli_38 + arith_const_8); 
    double memref_load_40 = func_arg_4[arith_const_19][arith_addi_39]; 
    int arith_muli_41 = (for_iter_37 * arith_const_7); 
    int arith_addi_42 = (arith_muli_41 + arith_const_6); 
    double memref_load_43 = func_arg_3[arith_addi_42][arith_const_19]; 
    double arith_mulf_44 = (memref_load_40 * memref_load_43); 
    int arith_muli_45 = (for_iter_37 * arith_const_7); 
    int arith_addi_46 = (arith_muli_45 + arith_const_8); 
    double memref_load_47 = func_arg_5[arith_const_19][arith_addi_46]; 
    double arith_addf_48 = (arith_mulf_44 + memref_load_47); 
    int arith_muli_49 = (for_iter_37 * arith_const_7); 
    int arith_addi_50 = (arith_muli_49 + arith_const_8); 
    func_arg_3[arith_addi_50][arith_const_19] = arith_addf_48; 
  }
  return; 

}
#pragma pocc-region-end
