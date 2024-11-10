#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 20; 
  int arith_const_13 = 16; 
  int arith_const_14 = 24; 
  int arith_const_15 = 22; 
  int arith_const_16 = 1; 
  int arith_const_17 = 18; 
  int arith_const_18 = 0; 
  double arith_const_19 = 0.000000; 
  double* memref_alloc_20; 
  double* memref_alloc_21; 
  for (int for_iter_22 = arith_const_18; for_iter_22 < arith_const_17; for_iter_22 += arith_const_16) {
    for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_15; for_iter_23 += arith_const_16) {
      func_arg_8[for_iter_22][for_iter_23] = arith_const_19; 
      for (int for_iter_24 = arith_const_18; for_iter_24 < arith_const_14; for_iter_24 += arith_const_16) {
        double memref_load_25 = func_arg_9[for_iter_22][for_iter_24]; 
        double memref_load_26 = func_arg_10[for_iter_24][for_iter_23]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double memref_load_28 = func_arg_8[for_iter_22][for_iter_23]; 
        double arith_addf_29 = (memref_load_28 + arith_mulf_27); 
        func_arg_8[for_iter_22][for_iter_23] = arith_addf_29; 
      }
    }
  }
  for (int for_iter_30 = arith_const_18; for_iter_30 < arith_const_13; for_iter_30 += arith_const_16) {
    for (int for_iter_31 = arith_const_18; for_iter_31 < arith_const_17; for_iter_31 += arith_const_16) {
      func_arg_5[for_iter_30][for_iter_31] = arith_const_19; 
      for (int for_iter_32 = arith_const_18; for_iter_32 < arith_const_12; for_iter_32 += arith_const_16) {
        double memref_load_33 = func_arg_6[for_iter_30][for_iter_32]; 
        double memref_load_34 = func_arg_7[for_iter_32][for_iter_31]; 
        double arith_mulf_35 = (memref_load_33 * memref_load_34); 
        double memref_load_36 = func_arg_5[for_iter_30][for_iter_31]; 
        double arith_addf_37 = (memref_load_36 + arith_mulf_35); 
        func_arg_5[for_iter_30][for_iter_31] = arith_addf_37; 
      }
    }
    for (int for_iter_38 = arith_const_18; for_iter_38 < arith_const_15; for_iter_38 += arith_const_16) {
      func_arg_11[for_iter_30][for_iter_38] = arith_const_19; 
      for (int for_iter_39 = arith_const_18; for_iter_39 < arith_const_17; for_iter_39 += arith_const_16) {
        memref_alloc_20[arith_const_18][arith_const_18] = arith_const_19; 
        for (int for_iter_40 = arith_const_18; for_iter_40 < arith_const_12; for_iter_40 += arith_const_16) {
          double memref_load_41 = func_arg_6[for_iter_30][for_iter_40]; 
          double memref_load_42 = func_arg_7[for_iter_40][for_iter_39]; 
          double arith_mulf_43 = (memref_load_41 * memref_load_42); 
          double memref_load_44 = memref_alloc_20[arith_const_18][arith_const_18]; 
          double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
          memref_alloc_20[arith_const_18][arith_const_18] = arith_addf_45; 
        }
        memref_alloc_21[arith_const_18][arith_const_18] = arith_const_19; 
        for (int for_iter_46 = arith_const_18; for_iter_46 < arith_const_14; for_iter_46 += arith_const_16) {
          double memref_load_47 = func_arg_9[for_iter_39][for_iter_46]; 
          double memref_load_48 = func_arg_10[for_iter_46][for_iter_38]; 
          double arith_mulf_49 = (memref_load_47 * memref_load_48); 
          double memref_load_50 = memref_alloc_21[arith_const_18][arith_const_18]; 
          double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
          memref_alloc_21[arith_const_18][arith_const_18] = arith_addf_51; 
        }
        double memref_load_52 = memref_alloc_20[arith_const_18][arith_const_18]; 
        double memref_load_53 = memref_alloc_21[arith_const_18][arith_const_18]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double memref_load_55 = func_arg_11[for_iter_30][for_iter_38]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        func_arg_11[for_iter_30][for_iter_38] = arith_addf_56; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
