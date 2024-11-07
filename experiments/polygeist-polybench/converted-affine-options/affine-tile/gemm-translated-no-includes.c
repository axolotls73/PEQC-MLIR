#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 25; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_12) {
      int arith_addi_15 = (for_iter_13 + arith_const_12); 
      for (int for_iter_16 = for_iter_13; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_12) {
        int arith_addi_17 = (for_iter_14 + arith_const_12); 
        for (int for_iter_18 = for_iter_14; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_12) {
          double memref_load_19 = func_arg_5[for_iter_16][for_iter_18]; 
          double arith_mulf_20 = (memref_load_19 * func_arg_4); 
          func_arg_5[for_iter_16][for_iter_18] = arith_mulf_20; 
        }
      }
    }
  }
  for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_11; for_iter_21 += arith_const_12) {
    for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_8; for_iter_22 += arith_const_12) {
      for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_9; for_iter_23 += arith_const_12) {
        int arith_addi_24 = (for_iter_21 + arith_const_12); 
        for (int for_iter_25 = for_iter_21; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_12) {
          int arith_addi_26 = (for_iter_22 + arith_const_12); 
          for (int for_iter_27 = for_iter_22; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_12) {
            int arith_addi_28 = (for_iter_23 + arith_const_12); 
            for (int for_iter_29 = for_iter_23; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_12) {
              double memref_load_30 = func_arg_5[for_iter_25][for_iter_29]; 
              double memref_load_31 = func_arg_6[for_iter_25][for_iter_27]; 
              double arith_mulf_32 = (func_arg_3 * memref_load_31); 
              double memref_load_33 = func_arg_7[for_iter_27][for_iter_29]; 
              double arith_mulf_34 = (arith_mulf_32 * memref_load_33); 
              double arith_addf_35 = (memref_load_30 + arith_mulf_34); 
              func_arg_5[for_iter_25][for_iter_29] = arith_addf_35; 
            }
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
