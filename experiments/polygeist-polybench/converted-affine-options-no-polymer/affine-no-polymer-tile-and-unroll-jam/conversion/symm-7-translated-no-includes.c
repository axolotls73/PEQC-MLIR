#pragma pocc-region-start
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 1; 
  int arith_const_8 = 30; 
  int arith_const_9 = 32; 
  int arith_const_10 = 20; 
  int arith_const_11 = 0; 
  double arith_const_12 = 0.000000; 
  double* memref_alloca_13; 
  memref_alloca_13[0] = arith_const_12; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_10; for_iter_14 += arith_const_9) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_8; for_iter_15 += arith_const_9) {
      int arith_addi_16 = (for_iter_14 + arith_const_10); 
      for (int for_iter_17 = for_iter_14; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_7) {
        int arith_addi_18 = (for_iter_15 + arith_const_8); 
        for (int for_iter_19 = for_iter_15; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_7) {
          memref_alloca_13[0] = arith_const_12; 
          for (int for_iter_20 = arith_const_11; for_iter_20 < for_iter_17; for_iter_20 += arith_const_7) {
            double memref_load_21 = func_arg_6[for_iter_17][for_iter_19]; 
            double arith_mulf_22 = (func_arg_2 * memref_load_21); 
            double memref_load_23 = func_arg_5[for_iter_17][for_iter_20]; 
            double arith_mulf_24 = (arith_mulf_22 * memref_load_23); 
            double memref_load_25 = func_arg_4[for_iter_20][for_iter_19]; 
            double arith_addf_26 = (memref_load_25 + arith_mulf_24); 
            func_arg_4[for_iter_20][for_iter_19] = arith_addf_26; 
            double memref_load_27 = func_arg_6[for_iter_20][for_iter_19]; 
            double memref_load_28 = func_arg_5[for_iter_17][for_iter_20]; 
            double arith_mulf_29 = (memref_load_27 * memref_load_28); 
            double memref_load_30 = memref_alloca_13[0]; 
            double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
            memref_alloca_13[0] = arith_addf_31; 
          }
          double memref_load_32 = func_arg_4[for_iter_17][for_iter_19]; 
          double arith_mulf_33 = (func_arg_3 * memref_load_32); 
          double memref_load_34 = func_arg_6[for_iter_17][for_iter_19]; 
          double arith_mulf_35 = (func_arg_2 * memref_load_34); 
          double memref_load_36 = func_arg_5[for_iter_17][for_iter_17]; 
          double arith_mulf_37 = (arith_mulf_35 * memref_load_36); 
          double arith_addf_38 = (arith_mulf_33 + arith_mulf_37); 
          double memref_load_39 = memref_alloca_13[0]; 
          double arith_mulf_40 = (func_arg_2 * memref_load_39); 
          double arith_addf_41 = (arith_addf_38 + arith_mulf_40); 
          func_arg_4[for_iter_17][for_iter_19] = arith_addf_41; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
