#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  double arith_const_8 = 1.000000; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 28; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_addi_14 = (for_iter_13 + arith_const_11); 
    for (int for_iter_15 = for_iter_13; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_7) {
      func_arg_5[for_iter_15] = arith_const_9; 
      for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_12; for_iter_16 += arith_const_7) {
        double memref_load_17 = func_arg_3[for_iter_16][for_iter_15]; 
        double memref_load_18 = func_arg_5[for_iter_15]; 
        double arith_addf_19 = (memref_load_18 + memref_load_17); 
        func_arg_5[for_iter_15] = arith_addf_19; 
      }
      double memref_load_20 = func_arg_5[for_iter_15]; 
      double arith_divf_21 = (memref_load_20 / func_arg_2); 
      func_arg_5[for_iter_15] = arith_divf_21; 
    }
  }
  for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_12; for_iter_22 += arith_const_12) {
    for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_11; for_iter_23 += arith_const_12) {
      int arith_addi_24 = (for_iter_22 + arith_const_12); 
      for (int for_iter_25 = for_iter_22; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_7) {
        int arith_addi_26 = (for_iter_23 + arith_const_11); 
        for (int for_iter_27 = for_iter_23; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_7) {
          double memref_load_28 = func_arg_5[for_iter_27]; 
          double memref_load_29 = func_arg_3[for_iter_25][for_iter_27]; 
          double arith_subf_30 = (memref_load_29 - memref_load_28); 
          func_arg_3[for_iter_25][for_iter_27] = arith_subf_30; 
        }
      }
    }
  }
  double arith_subf_31 = (func_arg_2 - arith_const_8); 
  for (int for_iter_32 = arith_const_10; for_iter_32 < arith_const_11; for_iter_32 += arith_const_7) {
    int arith_muli_33 = (for_iter_32 * arith_const_6); 
    int arith_addi_34 = (arith_muli_33 + arith_const_11); 
    for (int for_iter_35 = arith_const_10; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_7) {
      int arith_addi_36 = (for_iter_32 + for_iter_35); 
      func_arg_4[for_iter_32][arith_addi_36] = arith_const_9; 
      for (int for_iter_37 = arith_const_10; for_iter_37 < arith_const_12; for_iter_37 += arith_const_7) {
        double memref_load_38 = func_arg_3[for_iter_37][for_iter_32]; 
        int arith_addi_39 = (for_iter_32 + for_iter_35); 
        double memref_load_40 = func_arg_3[for_iter_37][arith_addi_39]; 
        double arith_mulf_41 = (memref_load_38 * memref_load_40); 
        int arith_addi_42 = (for_iter_32 + for_iter_35); 
        double memref_load_43 = func_arg_4[for_iter_32][arith_addi_42]; 
        double arith_addf_44 = (memref_load_43 + arith_mulf_41); 
        int arith_addi_45 = (for_iter_32 + for_iter_35); 
        func_arg_4[for_iter_32][arith_addi_45] = arith_addf_44; 
      }
      int arith_addi_46 = (for_iter_32 + for_iter_35); 
      double memref_load_47 = func_arg_4[for_iter_32][arith_addi_46]; 
      double arith_divf_48 = (memref_load_47 / arith_subf_31); 
      int arith_addi_49 = (for_iter_32 + for_iter_35); 
      func_arg_4[for_iter_32][arith_addi_49] = arith_divf_48; 
      int arith_addi_50 = (for_iter_32 + for_iter_35); 
      func_arg_4[arith_addi_50][for_iter_32] = arith_divf_48; 
    }
  }
  return; 

}
#pragma pocc-region-end
