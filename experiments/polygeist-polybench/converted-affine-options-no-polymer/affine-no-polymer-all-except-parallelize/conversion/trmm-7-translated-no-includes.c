#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -4; 
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 19; 
  int arith_const_10 = -1; 
  int arith_const_11 = 30; 
  int arith_const_12 = 0; 
  int arith_const_13 = 20; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_11; for_iter_16 += arith_const_14) {
      for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_14; for_iter_17 += arith_const_14) {
        int arith_addi_18 = (for_iter_15 + for_iter_17); 
        for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_14; for_iter_19 += arith_const_14) {
          int arith_addi_20 = (for_iter_16 + for_iter_19); 
          int arith_muli_21 = (for_iter_15 * arith_const_10); 
          int arith_muli_22 = (for_iter_17 * arith_const_10); 
          int arith_addi_23 = (arith_muli_21 + arith_muli_22); 
          int arith_addi_24 = (arith_addi_23 + arith_const_9); 
          int arith_cmpi_25 = (arith_addi_24 < arith_const_12); 
          int arith_subi_26 = (arith_const_10 - arith_addi_24); 
          int arith_select_27 = (arith_cmpi_25 ? arith_subi_26 : arith_addi_24); 
          int arith_divi_28 = (arith_select_27 / arith_const_8); 
          int arith_subi_29 = (arith_const_10 - arith_divi_28); 
          int arith_select_30 = (arith_cmpi_25 ? arith_subi_29 : arith_divi_28); 
          for (int for_iter_31 = arith_const_12; for_iter_31 < arith_select_30; for_iter_31 += arith_const_14) {
            int arith_muli_32 = (for_iter_31 * arith_const_8); 
            int arith_addi_33 = (arith_addi_18 + arith_muli_32); 
            int arith_addi_34 = (arith_addi_33 + arith_const_14); 
            double memref_load_35 = func_arg_3[arith_addi_34][arith_addi_18]; 
            double memref_load_36 = func_arg_4[arith_addi_34][arith_addi_20]; 
            double arith_mulf_37 = (memref_load_35 * memref_load_36); 
            double memref_load_38 = func_arg_4[arith_addi_18][arith_addi_20]; 
            double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
            func_arg_4[arith_addi_18][arith_addi_20] = arith_addf_39; 
            int arith_addi_40 = (arith_addi_34 + arith_const_14); 
            double memref_load_41 = func_arg_3[arith_addi_40][arith_addi_18]; 
            double memref_load_42 = func_arg_4[arith_addi_40][arith_addi_20]; 
            double arith_mulf_43 = (memref_load_41 * memref_load_42); 
            double memref_load_44 = func_arg_4[arith_addi_18][arith_addi_20]; 
            double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
            func_arg_4[arith_addi_18][arith_addi_20] = arith_addf_45; 
            int arith_addi_46 = (arith_addi_34 + arith_const_7); 
            double memref_load_47 = func_arg_3[arith_addi_46][arith_addi_18]; 
            double memref_load_48 = func_arg_4[arith_addi_46][arith_addi_20]; 
            double arith_mulf_49 = (memref_load_47 * memref_load_48); 
            double memref_load_50 = func_arg_4[arith_addi_18][arith_addi_20]; 
            double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
            func_arg_4[arith_addi_18][arith_addi_20] = arith_addf_51; 
            int arith_addi_52 = (arith_addi_34 + arith_const_6); 
            double memref_load_53 = func_arg_3[arith_addi_52][arith_addi_18]; 
            double memref_load_54 = func_arg_4[arith_addi_52][arith_addi_20]; 
            double arith_mulf_55 = (memref_load_53 * memref_load_54); 
            double memref_load_56 = func_arg_4[arith_addi_18][arith_addi_20]; 
            double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
            func_arg_4[arith_addi_18][arith_addi_20] = arith_addf_57; 
          }
          int arith_muli_58 = (for_iter_15 * arith_const_10); 
          int arith_muli_59 = (for_iter_17 * arith_const_10); 
          int arith_addi_60 = (arith_muli_58 + arith_muli_59); 
          int arith_muli_61 = (for_iter_15 * arith_const_10); 
          int arith_muli_62 = (for_iter_17 * arith_const_10); 
          int arith_addi_63 = (arith_muli_61 + arith_muli_62); 
          int arith_addi_64 = (arith_addi_63 + arith_const_9); 
          int arith_cmpi_65 = (arith_addi_64 < arith_const_12); 
          int arith_subi_66 = (arith_const_10 - arith_addi_64); 
          int arith_select_67 = (arith_cmpi_65 ? arith_subi_66 : arith_addi_64); 
          int arith_divi_68 = (arith_select_67 / arith_const_8); 
          int arith_subi_69 = (arith_const_10 - arith_divi_68); 
          int arith_select_70 = (arith_cmpi_65 ? arith_subi_69 : arith_divi_68); 
          int arith_muli_71 = (arith_select_70 * arith_const_5); 
          int arith_addi_72 = (arith_addi_60 + arith_muli_71); 
          int arith_addi_73 = (arith_addi_72 + arith_const_9); 
          for (int for_iter_74 = arith_const_12; for_iter_74 < arith_addi_73; for_iter_74 += arith_const_14) {
            int arith_addi_75 = (arith_addi_18 + for_iter_74); 
            int arith_muli_76 = (arith_addi_18 * arith_const_10); 
            int arith_addi_77 = (arith_muli_76 + arith_const_9); 
            int arith_cmpi_78 = (arith_addi_77 < arith_const_12); 
            int arith_subi_79 = (arith_const_10 - arith_addi_77); 
            int arith_select_80 = (arith_cmpi_78 ? arith_subi_79 : arith_addi_77); 
            int arith_divi_81 = (arith_select_80 / arith_const_8); 
            int arith_subi_82 = (arith_const_10 - arith_divi_81); 
            int arith_select_83 = (arith_cmpi_78 ? arith_subi_82 : arith_divi_81); 
            int arith_muli_84 = (arith_select_83 * arith_const_8); 
            int arith_addi_85 = (arith_addi_75 + arith_muli_84); 
            int arith_addi_86 = (arith_addi_85 + arith_const_14); 
            double memref_load_87 = func_arg_3[arith_addi_86][arith_addi_18]; 
            double memref_load_88 = func_arg_4[arith_addi_86][arith_addi_20]; 
            double arith_mulf_89 = (memref_load_87 * memref_load_88); 
            double memref_load_90 = func_arg_4[arith_addi_18][arith_addi_20]; 
            double arith_addf_91 = (memref_load_90 + arith_mulf_89); 
            func_arg_4[arith_addi_18][arith_addi_20] = arith_addf_91; 
          }
          double memref_load_92 = func_arg_4[arith_addi_18][arith_addi_20]; 
          double arith_mulf_93 = (func_arg_2 * memref_load_92); 
          func_arg_4[arith_addi_18][arith_addi_20] = arith_mulf_93; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
