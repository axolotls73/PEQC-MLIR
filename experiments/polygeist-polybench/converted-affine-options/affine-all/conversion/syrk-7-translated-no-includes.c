#pragma pocc-region-start
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 5; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_14; 
  for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_muli_21 = (for_iter_18 * arith_const_13); 
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_12; for_iter_22 += arith_const_15) {
        int arith_addi_23 = (arith_muli_21 + for_iter_22); 
        int arith_muli_24 = (for_iter_18 * arith_const_13); 
        int arith_addi_25 = (for_iter_22 + arith_muli_24); 
        int arith_addi_26 = (arith_addi_25 + arith_const_15); 
        int arith_cmpi_27 = (arith_addi_26 < arith_const_14); 
        int arith_subi_28 = (arith_const_10 - arith_addi_26); 
        int arith_select_29 = (arith_cmpi_27 ? arith_subi_28 : arith_addi_26); 
        int arith_divi_30 = (arith_select_29 / arith_const_11); 
        int arith_subi_31 = (arith_const_10 - arith_divi_30); 
        int arith_select_32 = (arith_cmpi_27 ? arith_subi_31 : arith_divi_30); 
        for (int for_iter_33 = arith_const_14; for_iter_33 < arith_select_32; for_iter_33 += arith_const_15) {
          int arith_muli_34 = (for_iter_33 * arith_const_11); 
          double memref_load_35 = func_arg_4[arith_addi_23][arith_muli_34]; 
          double arith_mulf_36 = (memref_load_35 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_muli_34] = arith_mulf_36; 
          int arith_addi_37 = (arith_muli_34 + arith_const_15); 
          double memref_load_38 = func_arg_4[arith_addi_23][arith_addi_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_37] = arith_mulf_39; 
          int arith_addi_40 = (arith_muli_34 + arith_const_9); 
          double memref_load_41 = func_arg_4[arith_addi_23][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_40] = arith_mulf_42; 
          int arith_addi_43 = (arith_muli_34 + arith_const_8); 
          double memref_load_44 = func_arg_4[arith_addi_23][arith_addi_43]; 
          double arith_mulf_45 = (memref_load_44 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_43] = arith_mulf_45; 
        }
        int arith_muli_46 = (for_iter_18 * arith_const_13); 
        int arith_addi_47 = (for_iter_22 + arith_muli_46); 
        int arith_muli_48 = (for_iter_18 * arith_const_13); 
        int arith_addi_49 = (for_iter_22 + arith_muli_48); 
        int arith_addi_50 = (arith_addi_49 + arith_const_15); 
        int arith_cmpi_51 = (arith_addi_50 < arith_const_14); 
        int arith_subi_52 = (arith_const_10 - arith_addi_50); 
        int arith_select_53 = (arith_cmpi_51 ? arith_subi_52 : arith_addi_50); 
        int arith_divi_54 = (arith_select_53 / arith_const_11); 
        int arith_subi_55 = (arith_const_10 - arith_divi_54); 
        int arith_select_56 = (arith_cmpi_51 ? arith_subi_55 : arith_divi_54); 
        int arith_muli_57 = (arith_select_56 * arith_const_7); 
        int arith_addi_58 = (arith_addi_47 + arith_muli_57); 
        int arith_addi_59 = (arith_addi_58 + arith_const_15); 
        for (int for_iter_60 = arith_const_14; for_iter_60 < arith_addi_59; for_iter_60 += arith_const_15) {
          int arith_addi_61 = (arith_addi_23 + arith_const_15); 
          int arith_cmpi_62 = (arith_addi_61 < arith_const_14); 
          int arith_subi_63 = (arith_const_10 - arith_addi_61); 
          int arith_select_64 = (arith_cmpi_62 ? arith_subi_63 : arith_addi_61); 
          int arith_divi_65 = (arith_select_64 / arith_const_11); 
          int arith_subi_66 = (arith_const_10 - arith_divi_65); 
          int arith_select_67 = (arith_cmpi_62 ? arith_subi_66 : arith_divi_65); 
          int arith_muli_68 = (arith_select_67 * arith_const_11); 
          int arith_addi_69 = (for_iter_60 + arith_muli_68); 
          double memref_load_70 = func_arg_4[arith_addi_23][arith_addi_69]; 
          double arith_mulf_71 = (memref_load_70 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_69] = arith_mulf_71; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_72 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_72; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  int* async_group_73; 
  int async_group_index_74 = 0; 
  int for_iter_arg_76 = arith_const_14; 
  for (int for_iter_75 = arith_const_14; for_iter_75 < arith_const_12; for_iter_75 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_77); 
    #pragma peqc async_execute
    {
      int arith_addi_78 = (for_iter_75 + arith_const_15); 
      for (int for_iter_79 = arith_const_14; for_iter_79 < arith_addi_78; for_iter_79 += arith_const_15) {
        for (int for_iter_80 = arith_const_14; for_iter_80 < arith_const_6; for_iter_80 += arith_const_15) {
          int arith_muli_81 = (for_iter_80 * arith_const_11); 
          double memref_load_82 = func_arg_4[for_iter_75][for_iter_79]; 
          double memref_load_83 = func_arg_5[for_iter_75][arith_muli_81]; 
          double arith_mulf_84 = (func_arg_2 * memref_load_83); 
          double memref_load_85 = func_arg_5[for_iter_79][arith_muli_81]; 
          double arith_mulf_86 = (arith_mulf_84 * memref_load_85); 
          double arith_addf_87 = (memref_load_82 + arith_mulf_86); 
          func_arg_4[for_iter_75][for_iter_79] = arith_addf_87; 
          int arith_addi_88 = (arith_muli_81 + arith_const_15); 
          double memref_load_89 = func_arg_4[for_iter_75][for_iter_79]; 
          double memref_load_90 = func_arg_5[for_iter_75][arith_addi_88]; 
          double arith_mulf_91 = (func_arg_2 * memref_load_90); 
          double memref_load_92 = func_arg_5[for_iter_79][arith_addi_88]; 
          double arith_mulf_93 = (arith_mulf_91 * memref_load_92); 
          double arith_addf_94 = (memref_load_89 + arith_mulf_93); 
          func_arg_4[for_iter_75][for_iter_79] = arith_addf_94; 
          int arith_addi_95 = (arith_muli_81 + arith_const_9); 
          double memref_load_96 = func_arg_4[for_iter_75][for_iter_79]; 
          double memref_load_97 = func_arg_5[for_iter_75][arith_addi_95]; 
          double arith_mulf_98 = (func_arg_2 * memref_load_97); 
          double memref_load_99 = func_arg_5[for_iter_79][arith_addi_95]; 
          double arith_mulf_100 = (arith_mulf_98 * memref_load_99); 
          double arith_addf_101 = (memref_load_96 + arith_mulf_100); 
          func_arg_4[for_iter_75][for_iter_79] = arith_addf_101; 
          int arith_addi_102 = (arith_muli_81 + arith_const_8); 
          double memref_load_103 = func_arg_4[for_iter_75][for_iter_79]; 
          double memref_load_104 = func_arg_5[for_iter_75][arith_addi_102]; 
          double arith_mulf_105 = (func_arg_2 * memref_load_104); 
          double memref_load_106 = func_arg_5[for_iter_79][arith_addi_102]; 
          double arith_mulf_107 = (arith_mulf_105 * memref_load_106); 
          double arith_addf_108 = (memref_load_103 + arith_mulf_107); 
          func_arg_4[for_iter_75][for_iter_79] = arith_addf_108; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_77, PAST_TASK_FINISHED); 
    }
    async_group_73[async_group_index_74] = execute_token_77; 
    async_group_index_74++; 
    int arith_addi_109 = (for_iter_arg_76 + arith_const_15); 
    for_iter_arg_76 = arith_addi_109; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_73, async_group_index_74, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
