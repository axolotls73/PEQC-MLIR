#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_11); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_11) {
      func_arg_7[for_iter_14] = arith_const_8; 
    }
  }
  for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_10; for_iter_15 += arith_const_11) {
    for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_10; for_iter_16 += arith_const_11) {
      int arith_addi_17 = (for_iter_15 + arith_const_11); 
      for (int for_iter_18 = for_iter_15; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_11) {
        int arith_addi_19 = (for_iter_16 + arith_const_11); 
        for (int for_iter_20 = for_iter_16; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_11) {
          double memref_load_21 = func_arg_4[for_iter_18][for_iter_20]; 
          double memref_load_22 = func_arg_6[for_iter_20]; 
          double arith_mulf_23 = (memref_load_21 * memref_load_22); 
          double memref_load_24 = func_arg_7[for_iter_18]; 
          double arith_addf_25 = (arith_mulf_23 + memref_load_24); 
          func_arg_7[for_iter_18] = arith_addf_25; 
        }
      }
    }
  }
  for (int for_iter_26 = arith_const_9; for_iter_26 < arith_const_10; for_iter_26 += arith_const_11) {
    int arith_addi_27 = (for_iter_26 + arith_const_11); 
    for (int for_iter_28 = for_iter_26; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_11) {
      func_arg_5[for_iter_28] = arith_const_8; 
    }
  }
  for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_10; for_iter_29 += arith_const_11) {
    for (int for_iter_30 = arith_const_9; for_iter_30 < arith_const_10; for_iter_30 += arith_const_11) {
      int arith_addi_31 = (for_iter_29 + arith_const_11); 
      for (int for_iter_32 = for_iter_29; for_iter_32 < arith_addi_31; for_iter_32 += arith_const_11) {
        int arith_addi_33 = (for_iter_30 + arith_const_11); 
        for (int for_iter_34 = for_iter_30; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_11) {
          double memref_load_35 = func_arg_3[for_iter_32][for_iter_34]; 
          double memref_load_36 = func_arg_6[for_iter_34]; 
          double arith_mulf_37 = (memref_load_35 * memref_load_36); 
          double memref_load_38 = func_arg_5[for_iter_32]; 
          double arith_addf_39 = (arith_mulf_37 + memref_load_38); 
          func_arg_5[for_iter_32] = arith_addf_39; 
        }
      }
    }
  }
  for (int for_iter_40 = arith_const_9; for_iter_40 < arith_const_10; for_iter_40 += arith_const_11) {
    int arith_addi_41 = (for_iter_40 + arith_const_11); 
    for (int for_iter_42 = for_iter_40; for_iter_42 < arith_addi_41; for_iter_42 += arith_const_11) {
      double memref_load_43 = func_arg_5[for_iter_42]; 
      double arith_mulf_44 = (func_arg_1 * memref_load_43); 
      double memref_load_45 = func_arg_7[for_iter_42]; 
      double arith_mulf_46 = (func_arg_2 * memref_load_45); 
      double arith_addf_47 = (arith_mulf_44 + arith_mulf_46); 
      func_arg_7[for_iter_42] = arith_addf_47; 
    }
  }
  return; 

}
#pragma pocc-region-end
