#pragma pocc-region-start
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 9; 
  double arith_const_6 = 0.125000; 
  double arith_const_7 = 2.000000; 
  int arith_const_8 = 1; 
  int arith_const_9 = 21; 
  for (int for_iter_10 = arith_const_8; for_iter_10 < arith_const_9; for_iter_10 += arith_const_8) {
    for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_5; for_iter_11 += arith_const_8) {
      for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_5; for_iter_12 += arith_const_8) {
        for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_5; for_iter_13 += arith_const_8) {
          int arith_addi_14 = (for_iter_12 + arith_const_8); 
          double memref_load_15 = func_arg_2[arith_addi_14][for_iter_13][for_iter_11]; 
          double memref_load_16 = func_arg_2[for_iter_12][for_iter_13][for_iter_11]; 
          double arith_mulf_17 = (memref_load_16 * arith_const_7); 
          double arith_subf_18 = (memref_load_15 - arith_mulf_17); 
          int arith_addi_19 = (for_iter_12 + arith_const_4); 
          double memref_load_20 = func_arg_2[arith_addi_19][for_iter_13][for_iter_11]; 
          double arith_addf_21 = (arith_subf_18 + memref_load_20); 
          double arith_mulf_22 = (arith_addf_21 * arith_const_6); 
          int arith_addi_23 = (for_iter_13 + arith_const_8); 
          double memref_load_24 = func_arg_2[for_iter_12][arith_addi_23][for_iter_11]; 
          double arith_subf_25 = (memref_load_24 - arith_mulf_17); 
          int arith_addi_26 = (for_iter_13 + arith_const_4); 
          double memref_load_27 = func_arg_2[for_iter_12][arith_addi_26][for_iter_11]; 
          double arith_addf_28 = (arith_subf_25 + memref_load_27); 
          double arith_mulf_29 = (arith_addf_28 * arith_const_6); 
          double arith_addf_30 = (arith_mulf_22 + arith_mulf_29); 
          int arith_addi_31 = (for_iter_11 + arith_const_8); 
          double memref_load_32 = func_arg_2[for_iter_12][for_iter_13][arith_addi_31]; 
          double arith_subf_33 = (memref_load_32 - arith_mulf_17); 
          int arith_addi_34 = (for_iter_11 + arith_const_4); 
          double memref_load_35 = func_arg_2[for_iter_12][for_iter_13][arith_addi_34]; 
          double arith_addf_36 = (arith_subf_33 + memref_load_35); 
          double arith_mulf_37 = (arith_addf_36 * arith_const_6); 
          double arith_addf_38 = (arith_addf_30 + arith_mulf_37); 
          double arith_addf_39 = (arith_addf_38 + memref_load_16); 
          func_arg_3[for_iter_12][for_iter_13][for_iter_11] = arith_addf_39; 
        }
      }
    }
    for (int for_iter_40 = arith_const_8; for_iter_40 < arith_const_5; for_iter_40 += arith_const_8) {
      for (int for_iter_41 = arith_const_8; for_iter_41 < arith_const_5; for_iter_41 += arith_const_8) {
        for (int for_iter_42 = arith_const_8; for_iter_42 < arith_const_5; for_iter_42 += arith_const_8) {
          int arith_addi_43 = (for_iter_41 + arith_const_8); 
          double memref_load_44 = func_arg_3[arith_addi_43][for_iter_42][for_iter_40]; 
          double memref_load_45 = func_arg_3[for_iter_41][for_iter_42][for_iter_40]; 
          double arith_mulf_46 = (memref_load_45 * arith_const_7); 
          double arith_subf_47 = (memref_load_44 - arith_mulf_46); 
          int arith_addi_48 = (for_iter_41 + arith_const_4); 
          double memref_load_49 = func_arg_3[arith_addi_48][for_iter_42][for_iter_40]; 
          double arith_addf_50 = (arith_subf_47 + memref_load_49); 
          double arith_mulf_51 = (arith_addf_50 * arith_const_6); 
          int arith_addi_52 = (for_iter_42 + arith_const_8); 
          double memref_load_53 = func_arg_3[for_iter_41][arith_addi_52][for_iter_40]; 
          double arith_subf_54 = (memref_load_53 - arith_mulf_46); 
          int arith_addi_55 = (for_iter_42 + arith_const_4); 
          double memref_load_56 = func_arg_3[for_iter_41][arith_addi_55][for_iter_40]; 
          double arith_addf_57 = (arith_subf_54 + memref_load_56); 
          double arith_mulf_58 = (arith_addf_57 * arith_const_6); 
          double arith_addf_59 = (arith_mulf_51 + arith_mulf_58); 
          int arith_addi_60 = (for_iter_40 + arith_const_8); 
          double memref_load_61 = func_arg_3[for_iter_41][for_iter_42][arith_addi_60]; 
          double arith_subf_62 = (memref_load_61 - arith_mulf_46); 
          int arith_addi_63 = (for_iter_40 + arith_const_4); 
          double memref_load_64 = func_arg_3[for_iter_41][for_iter_42][arith_addi_63]; 
          double arith_addf_65 = (arith_subf_62 + memref_load_64); 
          double arith_mulf_66 = (arith_addf_65 * arith_const_6); 
          double arith_addf_67 = (arith_addf_59 + arith_mulf_66); 
          double arith_addf_68 = (arith_addf_67 + memref_load_45); 
          func_arg_2[for_iter_41][for_iter_42][for_iter_40] = arith_addf_68; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
