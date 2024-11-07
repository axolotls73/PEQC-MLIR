#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 18; 
  int arith_const_14 = 1; 
  int arith_const_15 = 16; 
  int arith_const_16 = 0; 
  double arith_const_17 = 0.000000; 
  double* memref_alloc_18; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_15; for_iter_19 += arith_const_14) {
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_13; for_iter_20 += arith_const_14) {
      func_arg_6[for_iter_19][for_iter_20] = arith_const_17; 
      for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_12; for_iter_21 += arith_const_14) {
        double memref_load_22 = func_arg_7[for_iter_19][for_iter_21]; 
        double arith_mulf_23 = (func_arg_4 * memref_load_22); 
        double memref_load_24 = func_arg_8[for_iter_21][for_iter_20]; 
        double arith_mulf_25 = (arith_mulf_23 * memref_load_24); 
        double memref_load_26 = func_arg_6[for_iter_19][for_iter_20]; 
        double arith_addf_27 = (memref_load_26 + arith_mulf_25); 
        func_arg_6[for_iter_19][for_iter_20] = arith_addf_27; 
      }
    }
    for (int for_iter_28 = arith_const_16; for_iter_28 < arith_const_11; for_iter_28 += arith_const_14) {
      double memref_load_29 = func_arg_10[for_iter_19][for_iter_28]; 
      double arith_mulf_30 = (memref_load_29 * func_arg_5); 
      func_arg_10[for_iter_19][for_iter_28] = arith_mulf_30; 
      for (int for_iter_31 = arith_const_16; for_iter_31 < arith_const_13; for_iter_31 += arith_const_14) {
        memref_alloc_18[arith_const_16][arith_const_16] = arith_const_17; 
        for (int for_iter_32 = arith_const_16; for_iter_32 < arith_const_12; for_iter_32 += arith_const_14) {
          double memref_load_33 = func_arg_7[for_iter_19][for_iter_32]; 
          double arith_mulf_34 = (func_arg_4 * memref_load_33); 
          double memref_load_35 = func_arg_8[for_iter_32][for_iter_31]; 
          double arith_mulf_36 = (arith_mulf_34 * memref_load_35); 
          double memref_load_37 = memref_alloc_18[arith_const_16][arith_const_16]; 
          double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
          memref_alloc_18[arith_const_16][arith_const_16] = arith_addf_38; 
        }
        double memref_load_39 = memref_alloc_18[arith_const_16][arith_const_16]; 
        double memref_load_40 = func_arg_9[for_iter_31][for_iter_28]; 
        double arith_mulf_41 = (memref_load_39 * memref_load_40); 
        double memref_load_42 = func_arg_10[for_iter_19][for_iter_28]; 
        double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
        func_arg_10[for_iter_19][for_iter_28] = arith_addf_43; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
