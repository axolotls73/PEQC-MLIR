#pragma pocc-region-start
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 29; 
  int arith_const_8 = 19; 
  int arith_const_9 = 30; 
  int arith_const_10 = 1; 
  double arith_const_11 = 0.700000; 
  double arith_const_12 = 0.500000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 32; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_addi_17 = (for_iter_16 + arith_const_14); 
    for (int for_iter_18 = for_iter_16; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_10) {
      for (int for_iter_19 = arith_const_13; for_iter_19 < arith_const_9; for_iter_19 += arith_const_10) {
        double memref_load_20 = func_arg_6[for_iter_18]; 
        func_arg_4[arith_const_13][for_iter_19] = memref_load_20; 
      }
      for (int for_iter_21 = arith_const_13; for_iter_21 < arith_const_8; for_iter_21 += arith_const_10) {
        for (int for_iter_22 = arith_const_13; for_iter_22 < arith_const_9; for_iter_22 += arith_const_10) {
          int arith_addi_23 = (for_iter_21 + arith_const_10); 
          double memref_load_24 = func_arg_4[arith_addi_23][for_iter_22]; 
          int arith_addi_25 = (for_iter_21 + arith_const_10); 
          double memref_load_26 = func_arg_5[arith_addi_25][for_iter_22]; 
          double memref_load_27 = func_arg_5[for_iter_21][for_iter_22]; 
          double arith_subf_28 = (memref_load_26 - memref_load_27); 
          double arith_mulf_29 = (arith_subf_28 * arith_const_12); 
          double arith_subf_30 = (memref_load_24 - arith_mulf_29); 
          int arith_addi_31 = (for_iter_21 + arith_const_10); 
          func_arg_4[arith_addi_31][for_iter_22] = arith_subf_30; 
        }
      }
      for (int for_iter_32 = arith_const_13; for_iter_32 < arith_const_14; for_iter_32 += arith_const_10) {
        for (int for_iter_33 = arith_const_13; for_iter_33 < arith_const_7; for_iter_33 += arith_const_10) {
          int arith_addi_34 = (for_iter_33 + arith_const_10); 
          double memref_load_35 = func_arg_3[for_iter_32][arith_addi_34]; 
          int arith_addi_36 = (for_iter_33 + arith_const_10); 
          double memref_load_37 = func_arg_5[for_iter_32][arith_addi_36]; 
          double memref_load_38 = func_arg_5[for_iter_32][for_iter_33]; 
          double arith_subf_39 = (memref_load_37 - memref_load_38); 
          double arith_mulf_40 = (arith_subf_39 * arith_const_12); 
          double arith_subf_41 = (memref_load_35 - arith_mulf_40); 
          int arith_addi_42 = (for_iter_33 + arith_const_10); 
          func_arg_3[for_iter_32][arith_addi_42] = arith_subf_41; 
        }
      }
      for (int for_iter_43 = arith_const_13; for_iter_43 < arith_const_8; for_iter_43 += arith_const_10) {
        for (int for_iter_44 = arith_const_13; for_iter_44 < arith_const_7; for_iter_44 += arith_const_10) {
          double memref_load_45 = func_arg_5[for_iter_43][for_iter_44]; 
          int arith_addi_46 = (for_iter_44 + arith_const_10); 
          double memref_load_47 = func_arg_3[for_iter_43][arith_addi_46]; 
          double memref_load_48 = func_arg_3[for_iter_43][for_iter_44]; 
          double arith_subf_49 = (memref_load_47 - memref_load_48); 
          int arith_addi_50 = (for_iter_43 + arith_const_10); 
          double memref_load_51 = func_arg_4[arith_addi_50][for_iter_44]; 
          double arith_addf_52 = (arith_subf_49 + memref_load_51); 
          double memref_load_53 = func_arg_4[for_iter_43][for_iter_44]; 
          double arith_subf_54 = (arith_addf_52 - memref_load_53); 
          double arith_mulf_55 = (arith_subf_54 * arith_const_11); 
          double arith_subf_56 = (memref_load_45 - arith_mulf_55); 
          func_arg_5[for_iter_43][for_iter_44] = arith_subf_56; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
