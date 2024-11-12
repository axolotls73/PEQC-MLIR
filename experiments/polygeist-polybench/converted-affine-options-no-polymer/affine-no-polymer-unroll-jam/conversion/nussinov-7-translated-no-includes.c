#pragma pocc-region-start
void kernel_nussinov(int func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = -61; 
  int arith_const_4 = 59; 
  int arith_const_5 = -1; 
  int arith_const_6 = 3; 
  int arith_const_7 = 0; 
  int arith_const_8 = 60; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_muli_11 = (for_iter_10 * arith_const_5); 
    int arith_addi_12 = (arith_muli_11 + arith_const_8); 
    for (int for_iter_13 = arith_addi_12; for_iter_13 < arith_const_8; for_iter_13 += arith_const_9) {
      int arith_addi_14 = (for_iter_13 + arith_const_5); 
      int arith_cmpi_15 = (arith_addi_14 >= arith_const_7); 
      if (arith_cmpi_15) {
        int arith_muli_16 = (for_iter_10 * arith_const_5); 
        int arith_addi_17 = (arith_muli_16 + arith_const_4); 
        int memref_load_18 = func_arg_2[arith_addi_17][for_iter_13]; 
        int arith_muli_19 = (for_iter_10 * arith_const_5); 
        int arith_addi_20 = (arith_muli_19 + arith_const_4); 
        int arith_addi_21 = (for_iter_13 + arith_const_5); 
        int memref_load_22 = func_arg_2[arith_addi_20][arith_addi_21]; 
        int arith_cmpi_23 = (memref_load_18 >= memref_load_22); 
        int arith_select_24 = (arith_cmpi_23 ? memref_load_18 : memref_load_22); 
        int arith_muli_25 = (for_iter_10 * arith_const_5); 
        int arith_addi_26 = (arith_muli_25 + arith_const_4); 
        func_arg_2[arith_addi_26][for_iter_13] = arith_select_24; 
      }
      int arith_addi_27 = (for_iter_10 + arith_const_5); 
      int arith_cmpi_28 = (arith_addi_27 >= arith_const_7); 
      if (arith_cmpi_28) {
        int arith_muli_29 = (for_iter_10 * arith_const_5); 
        int arith_addi_30 = (arith_muli_29 + arith_const_4); 
        int memref_load_31 = func_arg_2[arith_addi_30][for_iter_13]; 
        int arith_muli_32 = (for_iter_10 * arith_const_5); 
        int arith_addi_33 = (arith_muli_32 + arith_const_8); 
        int memref_load_34 = func_arg_2[arith_addi_33][for_iter_13]; 
        int arith_cmpi_35 = (memref_load_31 >= memref_load_34); 
        int arith_select_36 = (arith_cmpi_35 ? memref_load_31 : memref_load_34); 
        int arith_muli_37 = (for_iter_10 * arith_const_5); 
        int arith_addi_38 = (arith_muli_37 + arith_const_4); 
        func_arg_2[arith_addi_38][for_iter_13] = arith_select_36; 
      }
      int arith_addi_39 = (for_iter_13 + arith_const_5); 
      int arith_cmpi_40 = (arith_addi_39 >= arith_const_7); 
      int arith_addi_41 = (for_iter_10 + arith_const_5); 
      int arith_cmpi_42 = (arith_addi_41 >= arith_const_7); 
      int arith_andi_43 = (arith_cmpi_40 & arith_cmpi_42); 
      if (arith_andi_43) {
        int arith_addi_44 = (for_iter_10 + for_iter_13); 
        int arith_addi_45 = (arith_addi_44 + arith_const_3); 
        int arith_cmpi_46 = (arith_addi_45 >= arith_const_7); 
        if (arith_cmpi_46) {
          int arith_muli_58 = (for_iter_10 * arith_const_5); 
          int arith_addi_59 = (arith_muli_58 + arith_const_4); 
          int memref_load_60 = func_arg_2[arith_addi_59][for_iter_13]; 
          int arith_muli_61 = (for_iter_10 * arith_const_5); 
          int arith_addi_62 = (arith_muli_61 + arith_const_8); 
          int arith_addi_63 = (for_iter_13 + arith_const_5); 
          int memref_load_64 = func_arg_2[arith_addi_62][arith_addi_63]; 
          int arith_muli_65 = (for_iter_10 * arith_const_5); 
          int arith_addi_66 = (arith_muli_65 + arith_const_4); 
          int memref_load_67 = func_arg_1[arith_addi_66]; 
          int memref_load_68 = func_arg_1[for_iter_13]; 
          int arith_addi_69 = (memref_load_67 + memref_load_68); 
          int arith_cmpi_70 = (arith_addi_69 == arith_const_6); 
          int arith_extui_71 = arith_cmpi_70; 
          int arith_addi_72 = (memref_load_64 + arith_extui_71); 
          int arith_cmpi_73 = (memref_load_60 >= arith_addi_72); 
          int arith_select_74 = (arith_cmpi_73 ? memref_load_60 : arith_addi_72); 
          int arith_muli_75 = (for_iter_10 * arith_const_5); 
          int arith_addi_76 = (arith_muli_75 + arith_const_4); 
          func_arg_2[arith_addi_76][for_iter_13] = arith_select_74; 
        }
        else {
          int arith_muli_47 = (for_iter_10 * arith_const_5); 
          int arith_addi_48 = (arith_muli_47 + arith_const_4); 
          int memref_load_49 = func_arg_2[arith_addi_48][for_iter_13]; 
          int arith_muli_50 = (for_iter_10 * arith_const_5); 
          int arith_addi_51 = (arith_muli_50 + arith_const_8); 
          int arith_addi_52 = (for_iter_13 + arith_const_5); 
          int memref_load_53 = func_arg_2[arith_addi_51][arith_addi_52]; 
          int arith_cmpi_54 = (memref_load_49 >= memref_load_53); 
          int arith_select_55 = (arith_cmpi_54 ? memref_load_49 : memref_load_53); 
          int arith_muli_56 = (for_iter_10 * arith_const_5); 
          int arith_addi_57 = (arith_muli_56 + arith_const_4); 
          func_arg_2[arith_addi_57][for_iter_13] = arith_select_55; 
        }
      }
      int arith_muli_77 = (for_iter_10 * arith_const_5); 
      int arith_addi_78 = (arith_muli_77 + arith_const_8); 
      for (int for_iter_79 = arith_addi_78; for_iter_79 < for_iter_13; for_iter_79 += arith_const_9) {
        int arith_muli_80 = (for_iter_10 * arith_const_5); 
        int arith_addi_81 = (arith_muli_80 + arith_const_4); 
        int memref_load_82 = func_arg_2[arith_addi_81][for_iter_13]; 
        int arith_muli_83 = (for_iter_10 * arith_const_5); 
        int arith_addi_84 = (arith_muli_83 + arith_const_4); 
        int memref_load_85 = func_arg_2[arith_addi_84][for_iter_79]; 
        int arith_addi_86 = (for_iter_79 + arith_const_9); 
        int memref_load_87 = func_arg_2[arith_addi_86][for_iter_13]; 
        int arith_addi_88 = (memref_load_85 + memref_load_87); 
        int arith_cmpi_89 = (memref_load_82 >= arith_addi_88); 
        int arith_select_90 = (arith_cmpi_89 ? memref_load_82 : arith_addi_88); 
        int arith_muli_91 = (for_iter_10 * arith_const_5); 
        int arith_addi_92 = (arith_muli_91 + arith_const_4); 
        func_arg_2[arith_addi_92][for_iter_13] = arith_select_90; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
