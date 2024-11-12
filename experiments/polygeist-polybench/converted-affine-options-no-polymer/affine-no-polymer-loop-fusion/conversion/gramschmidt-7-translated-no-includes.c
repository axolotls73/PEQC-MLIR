#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 1; 
  int arith_const_7 = 30; 
  int arith_const_8 = 0; 
  double arith_const_9 = 0.000000; 
  double* memref_alloca_10; 
  double _11; 
  memref_alloca_10[0] = _11; 
  for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_7; for_iter_12 += arith_const_6) {
    memref_alloca_10[0] = arith_const_9; 
    for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_5; for_iter_13 += arith_const_6) {
      double memref_load_14 = func_arg_2[for_iter_13][for_iter_12]; 
      double arith_mulf_15 = (memref_load_14 * memref_load_14); 
      double memref_load_16 = memref_alloca_10[0]; 
      double arith_addf_17 = (memref_load_16 + arith_mulf_15); 
      memref_alloca_10[0] = arith_addf_17; 
    }
    double memref_load_18 = memref_alloca_10[0]; 
    double math_sqrt_19 = sqrt(memref_load_18); 
    func_arg_3[for_iter_12][for_iter_12] = math_sqrt_19; 
    for (int for_iter_20 = arith_const_8; for_iter_20 < arith_const_5; for_iter_20 += arith_const_6) {
      double memref_load_21 = func_arg_2[for_iter_20][for_iter_12]; 
      double memref_load_22 = func_arg_3[for_iter_12][for_iter_12]; 
      double arith_divf_23 = (memref_load_21 / memref_load_22); 
      func_arg_4[for_iter_20][for_iter_12] = arith_divf_23; 
    }
    int arith_addi_24 = (for_iter_12 + arith_const_6); 
    for (int for_iter_25 = arith_addi_24; for_iter_25 < arith_const_7; for_iter_25 += arith_const_6) {
      func_arg_3[for_iter_12][for_iter_25] = arith_const_9; 
      for (int for_iter_26 = arith_const_8; for_iter_26 < arith_const_5; for_iter_26 += arith_const_6) {
        double memref_load_27 = func_arg_4[for_iter_26][for_iter_12]; 
        double memref_load_28 = func_arg_2[for_iter_26][for_iter_25]; 
        double arith_mulf_29 = (memref_load_27 * memref_load_28); 
        double memref_load_30 = func_arg_3[for_iter_12][for_iter_25]; 
        double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
        func_arg_3[for_iter_12][for_iter_25] = arith_addf_31; 
      }
      for (int for_iter_32 = arith_const_8; for_iter_32 < arith_const_5; for_iter_32 += arith_const_6) {
        double memref_load_33 = func_arg_2[for_iter_32][for_iter_25]; 
        double memref_load_34 = func_arg_4[for_iter_32][for_iter_12]; 
        double memref_load_35 = func_arg_3[for_iter_12][for_iter_25]; 
        double arith_mulf_36 = (memref_load_34 * memref_load_35); 
        double arith_subf_37 = (memref_load_33 - arith_mulf_36); 
        func_arg_2[for_iter_32][for_iter_25] = arith_subf_37; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
