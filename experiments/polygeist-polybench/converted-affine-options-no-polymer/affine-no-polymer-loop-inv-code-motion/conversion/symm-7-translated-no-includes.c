#pragma pocc-region-start
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 30; 
  int arith_const_8 = 1; 
  int arith_const_9 = 20; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = arith_const_11; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_9; for_iter_13 += arith_const_8) {
    double memref_load_14 = func_arg_5[for_iter_13][for_iter_13]; 
    for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_7; for_iter_15 += arith_const_8) {
      memref_alloca_12[0] = arith_const_11; 
      double memref_load_16 = func_arg_6[for_iter_13][for_iter_15]; 
      double arith_mulf_17 = (func_arg_2 * memref_load_16); 
      for (int for_iter_18 = arith_const_10; for_iter_18 < for_iter_13; for_iter_18 += arith_const_8) {
        double memref_load_19 = func_arg_5[for_iter_13][for_iter_18]; 
        double arith_mulf_20 = (arith_mulf_17 * memref_load_19); 
        double memref_load_21 = func_arg_4[for_iter_18][for_iter_15]; 
        double arith_addf_22 = (memref_load_21 + arith_mulf_20); 
        func_arg_4[for_iter_18][for_iter_15] = arith_addf_22; 
        double memref_load_23 = func_arg_6[for_iter_18][for_iter_15]; 
        double memref_load_24 = func_arg_5[for_iter_13][for_iter_18]; 
        double arith_mulf_25 = (memref_load_23 * memref_load_24); 
        double memref_load_26 = memref_alloca_12[0]; 
        double arith_addf_27 = (memref_load_26 + arith_mulf_25); 
        memref_alloca_12[0] = arith_addf_27; 
      }
      double memref_load_28 = func_arg_4[for_iter_13][for_iter_15]; 
      double arith_mulf_29 = (func_arg_3 * memref_load_28); 
      double memref_load_30 = func_arg_6[for_iter_13][for_iter_15]; 
      double arith_mulf_31 = (func_arg_2 * memref_load_30); 
      double arith_mulf_32 = (arith_mulf_31 * memref_load_14); 
      double arith_addf_33 = (arith_mulf_29 + arith_mulf_32); 
      double memref_load_34 = memref_alloca_12[0]; 
      double arith_mulf_35 = (func_arg_2 * memref_load_34); 
      double arith_addf_36 = (arith_addf_33 + arith_mulf_35); 
      func_arg_4[for_iter_13][for_iter_15] = arith_addf_36; 
    }
  }
  return; 

}
#pragma pocc-region-end
