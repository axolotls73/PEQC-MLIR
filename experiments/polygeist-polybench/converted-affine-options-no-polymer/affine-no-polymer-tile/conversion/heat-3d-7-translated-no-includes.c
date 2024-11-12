#pragma pocc-region-start
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 9; 
  int arith_const_6 = 20; 
  double arith_const_7 = 0.125000; 
  double arith_const_8 = 2.000000; 
  int arith_const_9 = 1; 
  int arith_const_10 = 21; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_6); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_9) {
      for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_5; for_iter_15 += arith_const_9) {
        for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_5; for_iter_16 += arith_const_9) {
          for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_5; for_iter_17 += arith_const_9) {
            int arith_addi_18 = (for_iter_15 + arith_const_9); 
            double memref_load_19 = func_arg_2[arith_addi_18][for_iter_16][for_iter_17]; 
            double memref_load_20 = func_arg_2[for_iter_15][for_iter_16][for_iter_17]; 
            double arith_mulf_21 = (memref_load_20 * arith_const_8); 
            double arith_subf_22 = (memref_load_19 - arith_mulf_21); 
            int arith_addi_23 = (for_iter_15 + arith_const_4); 
            double memref_load_24 = func_arg_2[arith_addi_23][for_iter_16][for_iter_17]; 
            double arith_addf_25 = (arith_subf_22 + memref_load_24); 
            double arith_mulf_26 = (arith_addf_25 * arith_const_7); 
            int arith_addi_27 = (for_iter_16 + arith_const_9); 
            double memref_load_28 = func_arg_2[for_iter_15][arith_addi_27][for_iter_17]; 
            double arith_subf_29 = (memref_load_28 - arith_mulf_21); 
            int arith_addi_30 = (for_iter_16 + arith_const_4); 
            double memref_load_31 = func_arg_2[for_iter_15][arith_addi_30][for_iter_17]; 
            double arith_addf_32 = (arith_subf_29 + memref_load_31); 
            double arith_mulf_33 = (arith_addf_32 * arith_const_7); 
            double arith_addf_34 = (arith_mulf_26 + arith_mulf_33); 
            int arith_addi_35 = (for_iter_17 + arith_const_9); 
            double memref_load_36 = func_arg_2[for_iter_15][for_iter_16][arith_addi_35]; 
            double arith_subf_37 = (memref_load_36 - arith_mulf_21); 
            int arith_addi_38 = (for_iter_17 + arith_const_4); 
            double memref_load_39 = func_arg_2[for_iter_15][for_iter_16][arith_addi_38]; 
            double arith_addf_40 = (arith_subf_37 + memref_load_39); 
            double arith_mulf_41 = (arith_addf_40 * arith_const_7); 
            double arith_addf_42 = (arith_addf_34 + arith_mulf_41); 
            double arith_addf_43 = (arith_addf_42 + memref_load_20); 
            func_arg_3[for_iter_15][for_iter_16][for_iter_17] = arith_addf_43; 
          }
        }
      }
      for (int for_iter_44 = arith_const_9; for_iter_44 < arith_const_5; for_iter_44 += arith_const_9) {
        for (int for_iter_45 = arith_const_9; for_iter_45 < arith_const_5; for_iter_45 += arith_const_9) {
          for (int for_iter_46 = arith_const_9; for_iter_46 < arith_const_5; for_iter_46 += arith_const_9) {
            int arith_addi_47 = (for_iter_44 + arith_const_9); 
            double memref_load_48 = func_arg_3[arith_addi_47][for_iter_45][for_iter_46]; 
            double memref_load_49 = func_arg_3[for_iter_44][for_iter_45][for_iter_46]; 
            double arith_mulf_50 = (memref_load_49 * arith_const_8); 
            double arith_subf_51 = (memref_load_48 - arith_mulf_50); 
            int arith_addi_52 = (for_iter_44 + arith_const_4); 
            double memref_load_53 = func_arg_3[arith_addi_52][for_iter_45][for_iter_46]; 
            double arith_addf_54 = (arith_subf_51 + memref_load_53); 
            double arith_mulf_55 = (arith_addf_54 * arith_const_7); 
            int arith_addi_56 = (for_iter_45 + arith_const_9); 
            double memref_load_57 = func_arg_3[for_iter_44][arith_addi_56][for_iter_46]; 
            double arith_subf_58 = (memref_load_57 - arith_mulf_50); 
            int arith_addi_59 = (for_iter_45 + arith_const_4); 
            double memref_load_60 = func_arg_3[for_iter_44][arith_addi_59][for_iter_46]; 
            double arith_addf_61 = (arith_subf_58 + memref_load_60); 
            double arith_mulf_62 = (arith_addf_61 * arith_const_7); 
            double arith_addf_63 = (arith_mulf_55 + arith_mulf_62); 
            int arith_addi_64 = (for_iter_46 + arith_const_9); 
            double memref_load_65 = func_arg_3[for_iter_44][for_iter_45][arith_addi_64]; 
            double arith_subf_66 = (memref_load_65 - arith_mulf_50); 
            int arith_addi_67 = (for_iter_46 + arith_const_4); 
            double memref_load_68 = func_arg_3[for_iter_44][for_iter_45][arith_addi_67]; 
            double arith_addf_69 = (arith_subf_66 + memref_load_68); 
            double arith_mulf_70 = (arith_addf_69 * arith_const_7); 
            double arith_addf_71 = (arith_addf_63 + arith_mulf_70); 
            double arith_addf_72 = (arith_addf_71 + memref_load_49); 
            func_arg_2[for_iter_44][for_iter_45][for_iter_46] = arith_addf_72; 
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
