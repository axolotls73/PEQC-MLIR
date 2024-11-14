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
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_15; 
  for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      int arith_muli_22 = (for_iter_19 * arith_const_14); 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_16; for_iter_23 += arith_const_16) {
        int arith_muli_24 = (for_iter_23 * arith_const_14); 
        for (int for_iter_25 = arith_const_15; for_iter_25 < arith_const_13; for_iter_25 += arith_const_16) {
          int arith_addi_26 = (arith_muli_22 + for_iter_25); 
          for (int for_iter_27 = arith_const_15; for_iter_27 < arith_const_12; for_iter_27 += arith_const_16) {
            int arith_addi_28 = (arith_muli_24 + for_iter_27); 
            int arith_muli_29 = (for_iter_25 * arith_const_11); 
            int arith_muli_30 = (for_iter_19 * arith_const_10); 
            int arith_addi_31 = (arith_muli_29 + arith_muli_30); 
            int arith_addi_32 = (arith_addi_31 + arith_const_9); 
            int arith_cmpi_33 = (arith_addi_32 < arith_const_15); 
            int arith_subi_34 = (arith_const_11 - arith_addi_32); 
            int arith_select_35 = (arith_cmpi_33 ? arith_subi_34 : arith_addi_32); 
            int arith_divi_36 = (arith_select_35 / arith_const_8); 
            int arith_subi_37 = (arith_const_11 - arith_divi_36); 
            int arith_select_38 = (arith_cmpi_33 ? arith_subi_37 : arith_divi_36); 
            for (int for_iter_39 = arith_const_15; for_iter_39 < arith_select_38; for_iter_39 += arith_const_16) {
              int arith_muli_40 = (for_iter_39 * arith_const_8); 
              int arith_addi_41 = (arith_addi_26 + arith_muli_40); 
              int arith_addi_42 = (arith_addi_41 + arith_const_16); 
              double memref_load_43 = func_arg_3[arith_addi_42][arith_addi_26]; 
              double memref_load_44 = func_arg_4[arith_addi_42][arith_addi_28]; 
              double arith_mulf_45 = (memref_load_43 * memref_load_44); 
              double memref_load_46 = func_arg_4[arith_addi_26][arith_addi_28]; 
              double arith_addf_47 = (memref_load_46 + arith_mulf_45); 
              func_arg_4[arith_addi_26][arith_addi_28] = arith_addf_47; 
              int arith_addi_48 = (arith_addi_42 + arith_const_16); 
              double memref_load_49 = func_arg_3[arith_addi_48][arith_addi_26]; 
              double memref_load_50 = func_arg_4[arith_addi_48][arith_addi_28]; 
              double arith_mulf_51 = (memref_load_49 * memref_load_50); 
              double memref_load_52 = func_arg_4[arith_addi_26][arith_addi_28]; 
              double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
              func_arg_4[arith_addi_26][arith_addi_28] = arith_addf_53; 
              int arith_addi_54 = (arith_addi_42 + arith_const_7); 
              double memref_load_55 = func_arg_3[arith_addi_54][arith_addi_26]; 
              double memref_load_56 = func_arg_4[arith_addi_54][arith_addi_28]; 
              double arith_mulf_57 = (memref_load_55 * memref_load_56); 
              double memref_load_58 = func_arg_4[arith_addi_26][arith_addi_28]; 
              double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
              func_arg_4[arith_addi_26][arith_addi_28] = arith_addf_59; 
              int arith_addi_60 = (arith_addi_42 + arith_const_6); 
              double memref_load_61 = func_arg_3[arith_addi_60][arith_addi_26]; 
              double memref_load_62 = func_arg_4[arith_addi_60][arith_addi_28]; 
              double arith_mulf_63 = (memref_load_61 * memref_load_62); 
              double memref_load_64 = func_arg_4[arith_addi_26][arith_addi_28]; 
              double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
              func_arg_4[arith_addi_26][arith_addi_28] = arith_addf_65; 
            }
            int arith_muli_66 = (for_iter_25 * arith_const_11); 
            int arith_muli_67 = (for_iter_19 * arith_const_10); 
            int arith_addi_68 = (arith_muli_66 + arith_muli_67); 
            int arith_muli_69 = (for_iter_25 * arith_const_11); 
            int arith_muli_70 = (for_iter_19 * arith_const_10); 
            int arith_addi_71 = (arith_muli_69 + arith_muli_70); 
            int arith_addi_72 = (arith_addi_71 + arith_const_9); 
            int arith_cmpi_73 = (arith_addi_72 < arith_const_15); 
            int arith_subi_74 = (arith_const_11 - arith_addi_72); 
            int arith_select_75 = (arith_cmpi_73 ? arith_subi_74 : arith_addi_72); 
            int arith_divi_76 = (arith_select_75 / arith_const_8); 
            int arith_subi_77 = (arith_const_11 - arith_divi_76); 
            int arith_select_78 = (arith_cmpi_73 ? arith_subi_77 : arith_divi_76); 
            int arith_muli_79 = (arith_select_78 * arith_const_5); 
            int arith_addi_80 = (arith_addi_68 + arith_muli_79); 
            int arith_addi_81 = (arith_addi_80 + arith_const_9); 
            for (int for_iter_82 = arith_const_15; for_iter_82 < arith_addi_81; for_iter_82 += arith_const_16) {
              int arith_addi_83 = (arith_addi_26 + for_iter_82); 
              int arith_muli_84 = (arith_addi_26 * arith_const_11); 
              int arith_addi_85 = (arith_muli_84 + arith_const_9); 
              int arith_cmpi_86 = (arith_addi_85 < arith_const_15); 
              int arith_subi_87 = (arith_const_11 - arith_addi_85); 
              int arith_select_88 = (arith_cmpi_86 ? arith_subi_87 : arith_addi_85); 
              int arith_divi_89 = (arith_select_88 / arith_const_8); 
              int arith_subi_90 = (arith_const_11 - arith_divi_89); 
              int arith_select_91 = (arith_cmpi_86 ? arith_subi_90 : arith_divi_89); 
              int arith_muli_92 = (arith_select_91 * arith_const_8); 
              int arith_addi_93 = (arith_addi_83 + arith_muli_92); 
              int arith_addi_94 = (arith_addi_93 + arith_const_16); 
              double memref_load_95 = func_arg_3[arith_addi_94][arith_addi_26]; 
              double memref_load_96 = func_arg_4[arith_addi_94][arith_addi_28]; 
              double arith_mulf_97 = (memref_load_95 * memref_load_96); 
              double memref_load_98 = func_arg_4[arith_addi_26][arith_addi_28]; 
              double arith_addf_99 = (memref_load_98 + arith_mulf_97); 
              func_arg_4[arith_addi_26][arith_addi_28] = arith_addf_99; 
            }
            double memref_load_100 = func_arg_4[arith_addi_26][arith_addi_28]; 
            double arith_mulf_101 = (func_arg_2 * memref_load_100); 
            func_arg_4[arith_addi_26][arith_addi_28] = arith_mulf_101; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_102 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_102; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
