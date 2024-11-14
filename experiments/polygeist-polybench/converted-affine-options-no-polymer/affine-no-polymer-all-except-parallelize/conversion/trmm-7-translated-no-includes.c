#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -4; 
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 19; 
  int arith_const_10 = -32; 
  int arith_const_11 = -1; 
  int arith_const_12 = 30; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_15; for_iter_17 < arith_const_16; for_iter_17 += arith_const_16) {
    int arith_muli_18 = (for_iter_17 * arith_const_14); 
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
      int arith_muli_20 = (for_iter_19 * arith_const_14); 
      for (int for_iter_21 = arith_const_15; for_iter_21 < arith_const_13; for_iter_21 += arith_const_16) {
        int arith_addi_22 = (arith_muli_18 + for_iter_21); 
        for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_12; for_iter_23 += arith_const_16) {
          int arith_addi_24 = (arith_muli_20 + for_iter_23); 
          int arith_muli_25 = (for_iter_21 * arith_const_11); 
          int arith_muli_26 = (for_iter_17 * arith_const_10); 
          int arith_addi_27 = (arith_muli_25 + arith_muli_26); 
          int arith_addi_28 = (arith_addi_27 + arith_const_9); 
          int arith_cmpi_29 = (arith_addi_28 < arith_const_15); 
          int arith_subi_30 = (arith_const_11 - arith_addi_28); 
          int arith_select_31 = (arith_cmpi_29 ? arith_subi_30 : arith_addi_28); 
          int arith_divi_32 = (arith_select_31 / arith_const_8); 
          int arith_subi_33 = (arith_const_11 - arith_divi_32); 
          int arith_select_34 = (arith_cmpi_29 ? arith_subi_33 : arith_divi_32); 
          for (int for_iter_35 = arith_const_15; for_iter_35 < arith_select_34; for_iter_35 += arith_const_16) {
            int arith_muli_36 = (for_iter_35 * arith_const_8); 
            int arith_addi_37 = (arith_addi_22 + arith_muli_36); 
            int arith_addi_38 = (arith_addi_37 + arith_const_16); 
            double memref_load_39 = func_arg_3[arith_addi_38][arith_addi_22]; 
            double memref_load_40 = func_arg_4[arith_addi_38][arith_addi_24]; 
            double arith_mulf_41 = (memref_load_39 * memref_load_40); 
            double memref_load_42 = func_arg_4[arith_addi_22][arith_addi_24]; 
            double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
            func_arg_4[arith_addi_22][arith_addi_24] = arith_addf_43; 
            int arith_addi_44 = (arith_addi_38 + arith_const_16); 
            double memref_load_45 = func_arg_3[arith_addi_44][arith_addi_22]; 
            double memref_load_46 = func_arg_4[arith_addi_44][arith_addi_24]; 
            double arith_mulf_47 = (memref_load_45 * memref_load_46); 
            double memref_load_48 = func_arg_4[arith_addi_22][arith_addi_24]; 
            double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
            func_arg_4[arith_addi_22][arith_addi_24] = arith_addf_49; 
            int arith_addi_50 = (arith_addi_38 + arith_const_7); 
            double memref_load_51 = func_arg_3[arith_addi_50][arith_addi_22]; 
            double memref_load_52 = func_arg_4[arith_addi_50][arith_addi_24]; 
            double arith_mulf_53 = (memref_load_51 * memref_load_52); 
            double memref_load_54 = func_arg_4[arith_addi_22][arith_addi_24]; 
            double arith_addf_55 = (memref_load_54 + arith_mulf_53); 
            func_arg_4[arith_addi_22][arith_addi_24] = arith_addf_55; 
            int arith_addi_56 = (arith_addi_38 + arith_const_6); 
            double memref_load_57 = func_arg_3[arith_addi_56][arith_addi_22]; 
            double memref_load_58 = func_arg_4[arith_addi_56][arith_addi_24]; 
            double arith_mulf_59 = (memref_load_57 * memref_load_58); 
            double memref_load_60 = func_arg_4[arith_addi_22][arith_addi_24]; 
            double arith_addf_61 = (memref_load_60 + arith_mulf_59); 
            func_arg_4[arith_addi_22][arith_addi_24] = arith_addf_61; 
          }
          int arith_muli_62 = (for_iter_21 * arith_const_11); 
          int arith_muli_63 = (for_iter_17 * arith_const_10); 
          int arith_addi_64 = (arith_muli_62 + arith_muli_63); 
          int arith_muli_65 = (for_iter_21 * arith_const_11); 
          int arith_muli_66 = (for_iter_17 * arith_const_10); 
          int arith_addi_67 = (arith_muli_65 + arith_muli_66); 
          int arith_addi_68 = (arith_addi_67 + arith_const_9); 
          int arith_cmpi_69 = (arith_addi_68 < arith_const_15); 
          int arith_subi_70 = (arith_const_11 - arith_addi_68); 
          int arith_select_71 = (arith_cmpi_69 ? arith_subi_70 : arith_addi_68); 
          int arith_divi_72 = (arith_select_71 / arith_const_8); 
          int arith_subi_73 = (arith_const_11 - arith_divi_72); 
          int arith_select_74 = (arith_cmpi_69 ? arith_subi_73 : arith_divi_72); 
          int arith_muli_75 = (arith_select_74 * arith_const_5); 
          int arith_addi_76 = (arith_addi_64 + arith_muli_75); 
          int arith_addi_77 = (arith_addi_76 + arith_const_9); 
          for (int for_iter_78 = arith_const_15; for_iter_78 < arith_addi_77; for_iter_78 += arith_const_16) {
            int arith_addi_79 = (arith_addi_22 + for_iter_78); 
            int arith_muli_80 = (arith_addi_22 * arith_const_11); 
            int arith_addi_81 = (arith_muli_80 + arith_const_9); 
            int arith_cmpi_82 = (arith_addi_81 < arith_const_15); 
            int arith_subi_83 = (arith_const_11 - arith_addi_81); 
            int arith_select_84 = (arith_cmpi_82 ? arith_subi_83 : arith_addi_81); 
            int arith_divi_85 = (arith_select_84 / arith_const_8); 
            int arith_subi_86 = (arith_const_11 - arith_divi_85); 
            int arith_select_87 = (arith_cmpi_82 ? arith_subi_86 : arith_divi_85); 
            int arith_muli_88 = (arith_select_87 * arith_const_8); 
            int arith_addi_89 = (arith_addi_79 + arith_muli_88); 
            int arith_addi_90 = (arith_addi_89 + arith_const_16); 
            double memref_load_91 = func_arg_3[arith_addi_90][arith_addi_22]; 
            double memref_load_92 = func_arg_4[arith_addi_90][arith_addi_24]; 
            double arith_mulf_93 = (memref_load_91 * memref_load_92); 
            double memref_load_94 = func_arg_4[arith_addi_22][arith_addi_24]; 
            double arith_addf_95 = (memref_load_94 + arith_mulf_93); 
            func_arg_4[arith_addi_22][arith_addi_24] = arith_addf_95; 
          }
          double memref_load_96 = func_arg_4[arith_addi_22][arith_addi_24]; 
          double arith_mulf_97 = (func_arg_2 * memref_load_96); 
          func_arg_4[arith_addi_22][arith_addi_24] = arith_mulf_97; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
