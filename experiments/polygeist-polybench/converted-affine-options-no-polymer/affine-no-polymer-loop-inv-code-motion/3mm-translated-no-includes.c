#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 24; 
  int arith_const_13 = 22; 
  int arith_const_14 = 20; 
  int arith_const_15 = 18; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 16; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_15; for_iter_21 += arith_const_19) {
      func_arg_5[for_iter_20][for_iter_21] = arith_const_16; 
      for (int for_iter_22 = arith_const_17; for_iter_22 < arith_const_14; for_iter_22 += arith_const_19) {
        double memref_load_23 = func_arg_6[for_iter_20][for_iter_22]; 
        double memref_load_24 = func_arg_7[for_iter_22][for_iter_21]; 
        double arith_mulf_25 = (memref_load_23 * memref_load_24); 
        double memref_load_26 = func_arg_5[for_iter_20][for_iter_21]; 
        double arith_addf_27 = (memref_load_26 + arith_mulf_25); 
        func_arg_5[for_iter_20][for_iter_21] = arith_addf_27; 
      }
    }
  }
  for (int for_iter_28 = arith_const_17; for_iter_28 < arith_const_15; for_iter_28 += arith_const_19) {
    for (int for_iter_29 = arith_const_17; for_iter_29 < arith_const_13; for_iter_29 += arith_const_19) {
      func_arg_8[for_iter_28][for_iter_29] = arith_const_16; 
      for (int for_iter_30 = arith_const_17; for_iter_30 < arith_const_12; for_iter_30 += arith_const_19) {
        double memref_load_31 = func_arg_9[for_iter_28][for_iter_30]; 
        double memref_load_32 = func_arg_10[for_iter_30][for_iter_29]; 
        double arith_mulf_33 = (memref_load_31 * memref_load_32); 
        double memref_load_34 = func_arg_8[for_iter_28][for_iter_29]; 
        double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
        func_arg_8[for_iter_28][for_iter_29] = arith_addf_35; 
      }
    }
  }
  for (int for_iter_36 = arith_const_17; for_iter_36 < arith_const_18; for_iter_36 += arith_const_19) {
    for (int for_iter_37 = arith_const_17; for_iter_37 < arith_const_13; for_iter_37 += arith_const_19) {
      func_arg_11[for_iter_36][for_iter_37] = arith_const_16; 
      for (int for_iter_38 = arith_const_17; for_iter_38 < arith_const_15; for_iter_38 += arith_const_19) {
        double memref_load_39 = func_arg_5[for_iter_36][for_iter_38]; 
        double memref_load_40 = func_arg_8[for_iter_38][for_iter_37]; 
        double arith_mulf_41 = (memref_load_39 * memref_load_40); 
        double memref_load_42 = func_arg_11[for_iter_36][for_iter_37]; 
        double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
        func_arg_11[for_iter_36][for_iter_37] = arith_addf_43; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
