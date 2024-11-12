#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 1; 
  int arith_const_7 = 32; 
  int arith_const_8 = 30; 
  int arith_const_9 = 0; 
  double arith_const_10 = 0.000000; 
  double* memref_alloca_11; 
  double _12; 
  memref_alloca_11[0] = _12; 
  for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_8; for_iter_13 += arith_const_7) {
    int arith_addi_14 = (for_iter_13 + arith_const_8); 
    for (int for_iter_15 = for_iter_13; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_6) {
      memref_alloca_11[0] = arith_const_10; 
      for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_5; for_iter_16 += arith_const_6) {
        double memref_load_17 = func_arg_2[for_iter_16][for_iter_15]; 
        double arith_mulf_18 = (memref_load_17 * memref_load_17); 
        double memref_load_19 = memref_alloca_11[0]; 
        double arith_addf_20 = (memref_load_19 + arith_mulf_18); 
        memref_alloca_11[0] = arith_addf_20; 
      }
      double memref_load_21 = memref_alloca_11[0]; 
      double math_sqrt_22 = sqrt(memref_load_21); 
      func_arg_3[for_iter_15][for_iter_15] = math_sqrt_22; 
      for (int for_iter_23 = arith_const_9; for_iter_23 < arith_const_5; for_iter_23 += arith_const_6) {
        double memref_load_24 = func_arg_2[for_iter_23][for_iter_15]; 
        double memref_load_25 = func_arg_3[for_iter_15][for_iter_15]; 
        double arith_divf_26 = (memref_load_24 / memref_load_25); 
        func_arg_4[for_iter_23][for_iter_15] = arith_divf_26; 
      }
      int arith_addi_27 = (for_iter_15 + arith_const_6); 
      for (int for_iter_28 = arith_addi_27; for_iter_28 < arith_const_8; for_iter_28 += arith_const_6) {
        func_arg_3[for_iter_15][for_iter_28] = arith_const_10; 
        for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_5; for_iter_29 += arith_const_6) {
          double memref_load_30 = func_arg_4[for_iter_29][for_iter_15]; 
          double memref_load_31 = func_arg_2[for_iter_29][for_iter_28]; 
          double arith_mulf_32 = (memref_load_30 * memref_load_31); 
          double memref_load_33 = func_arg_3[for_iter_15][for_iter_28]; 
          double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
          func_arg_3[for_iter_15][for_iter_28] = arith_addf_34; 
        }
        for (int for_iter_35 = arith_const_9; for_iter_35 < arith_const_5; for_iter_35 += arith_const_6) {
          double memref_load_36 = func_arg_2[for_iter_35][for_iter_28]; 
          double memref_load_37 = func_arg_4[for_iter_35][for_iter_15]; 
          double memref_load_38 = func_arg_3[for_iter_15][for_iter_28]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double arith_subf_40 = (memref_load_36 - arith_mulf_39); 
          func_arg_2[for_iter_35][for_iter_28] = arith_subf_40; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
