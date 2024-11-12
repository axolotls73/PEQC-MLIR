#pragma pocc-region-start
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 30; 
  int arith_const_12 = 1; 
  int arith_const_13 = 20; 
  int arith_const_14 = 0; 
  double arith_const_15 = 0.000000; 
  double* memref_alloca_16; 
  memref_alloca_16[0] = arith_const_15; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_13; for_iter_17 += arith_const_12) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_11; for_iter_18 += arith_const_12) {
      int* async_group_19; 
      int async_group_index_20 = 0; 
      int for_iter_arg_22 = arith_const_14; 
      for (int for_iter_21 = arith_const_14; for_iter_21 < arith_const_12; for_iter_21 += arith_const_12) {
        PAST_NEW_SEMAPHORE(execute_token_23); 
        #pragma peqc async_execute
        {
          int arith_addi_24 = (for_iter_17 + for_iter_21); 
          double memref_load_25 = func_arg_5[arith_addi_24][arith_addi_24]; 
          for (int for_iter_26 = arith_const_14; for_iter_26 < arith_const_12; for_iter_26 += arith_const_12) {
            int arith_addi_27 = (for_iter_18 + for_iter_26); 
            memref_alloca_16[0] = arith_const_15; 
            double memref_load_28 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_29 = (func_arg_2 * memref_load_28); 
            double memref_load_30 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_31 = (func_arg_2 * memref_load_30); 
            double memref_load_32 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_33 = (func_arg_2 * memref_load_32); 
            double memref_load_34 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_35 = (func_arg_2 * memref_load_34); 
            int arith_addi_36 = (for_iter_17 + for_iter_21); 
            int arith_cmpi_37 = (arith_addi_36 < arith_const_14); 
            int arith_subi_38 = (arith_const_9 - arith_addi_36); 
            int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
            int arith_divi_40 = (arith_select_39 / arith_const_10); 
            int arith_subi_41 = (arith_const_9 - arith_divi_40); 
            int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
            for (int for_iter_43 = arith_const_14; for_iter_43 < arith_select_42; for_iter_43 += arith_const_12) {
              int arith_muli_44 = (for_iter_43 * arith_const_10); 
              double memref_load_45 = func_arg_5[arith_addi_24][arith_muli_44]; 
              double arith_mulf_46 = (arith_mulf_29 * memref_load_45); 
              double memref_load_47 = func_arg_4[arith_muli_44][arith_addi_27]; 
              double arith_addf_48 = (memref_load_47 + arith_mulf_46); 
              func_arg_4[arith_muli_44][arith_addi_27] = arith_addf_48; 
              double memref_load_49 = func_arg_6[arith_muli_44][arith_addi_27]; 
              double memref_load_50 = func_arg_5[arith_addi_24][arith_muli_44]; 
              double arith_mulf_51 = (memref_load_49 * memref_load_50); 
              double memref_load_52 = memref_alloca_16[0]; 
              double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
              memref_alloca_16[0] = arith_addf_53; 
              int arith_addi_54 = (arith_muli_44 + arith_const_12); 
              double memref_load_55 = func_arg_5[arith_addi_24][arith_addi_54]; 
              double arith_mulf_56 = (arith_mulf_31 * memref_load_55); 
              double memref_load_57 = func_arg_4[arith_addi_54][arith_addi_27]; 
              double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
              func_arg_4[arith_addi_54][arith_addi_27] = arith_addf_58; 
              double memref_load_59 = func_arg_6[arith_addi_54][arith_addi_27]; 
              double memref_load_60 = func_arg_5[arith_addi_24][arith_addi_54]; 
              double arith_mulf_61 = (memref_load_59 * memref_load_60); 
              double memref_load_62 = memref_alloca_16[0]; 
              double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
              memref_alloca_16[0] = arith_addf_63; 
              int arith_addi_64 = (arith_muli_44 + arith_const_8); 
              double memref_load_65 = func_arg_5[arith_addi_24][arith_addi_64]; 
              double arith_mulf_66 = (arith_mulf_33 * memref_load_65); 
              double memref_load_67 = func_arg_4[arith_addi_64][arith_addi_27]; 
              double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
              func_arg_4[arith_addi_64][arith_addi_27] = arith_addf_68; 
              double memref_load_69 = func_arg_6[arith_addi_64][arith_addi_27]; 
              double memref_load_70 = func_arg_5[arith_addi_24][arith_addi_64]; 
              double arith_mulf_71 = (memref_load_69 * memref_load_70); 
              double memref_load_72 = memref_alloca_16[0]; 
              double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
              memref_alloca_16[0] = arith_addf_73; 
              int arith_addi_74 = (arith_muli_44 + arith_const_7); 
              double memref_load_75 = func_arg_5[arith_addi_24][arith_addi_74]; 
              double arith_mulf_76 = (arith_mulf_35 * memref_load_75); 
              double memref_load_77 = func_arg_4[arith_addi_74][arith_addi_27]; 
              double arith_addf_78 = (memref_load_77 + arith_mulf_76); 
              func_arg_4[arith_addi_74][arith_addi_27] = arith_addf_78; 
              double memref_load_79 = func_arg_6[arith_addi_74][arith_addi_27]; 
              double memref_load_80 = func_arg_5[arith_addi_24][arith_addi_74]; 
              double arith_mulf_81 = (memref_load_79 * memref_load_80); 
              double memref_load_82 = memref_alloca_16[0]; 
              double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
              memref_alloca_16[0] = arith_addf_83; 
            }
            double memref_load_84 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_85 = (func_arg_2 * memref_load_84); 
            int arith_addi_86 = (for_iter_17 + for_iter_21); 
            int arith_remsi_87 = (arith_addi_86 % arith_const_10); 
            int arith_cmpi_88 = (arith_remsi_87 < arith_const_14); 
            int arith_addi_89 = (arith_remsi_87 + arith_const_10); 
            int arith_select_90 = (arith_cmpi_88 ? arith_addi_89 : arith_remsi_87); 
            for (int for_iter_91 = arith_const_14; for_iter_91 < arith_select_90; for_iter_91 += arith_const_12) {
              int arith_cmpi_92 = (arith_addi_24 < arith_const_14); 
              int arith_subi_93 = (arith_const_9 - arith_addi_24); 
              int arith_select_94 = (arith_cmpi_92 ? arith_subi_93 : arith_addi_24); 
              int arith_divi_95 = (arith_select_94 / arith_const_10); 
              int arith_subi_96 = (arith_const_9 - arith_divi_95); 
              int arith_select_97 = (arith_cmpi_92 ? arith_subi_96 : arith_divi_95); 
              int arith_muli_98 = (arith_select_97 * arith_const_10); 
              int arith_addi_99 = (for_iter_91 + arith_muli_98); 
              double memref_load_100 = func_arg_5[arith_addi_24][arith_addi_99]; 
              double arith_mulf_101 = (arith_mulf_85 * memref_load_100); 
              double memref_load_102 = func_arg_4[arith_addi_99][arith_addi_27]; 
              double arith_addf_103 = (memref_load_102 + arith_mulf_101); 
              func_arg_4[arith_addi_99][arith_addi_27] = arith_addf_103; 
              double memref_load_104 = func_arg_6[arith_addi_99][arith_addi_27]; 
              double memref_load_105 = func_arg_5[arith_addi_24][arith_addi_99]; 
              double arith_mulf_106 = (memref_load_104 * memref_load_105); 
              double memref_load_107 = memref_alloca_16[0]; 
              double arith_addf_108 = (memref_load_107 + arith_mulf_106); 
              memref_alloca_16[0] = arith_addf_108; 
            }
            double memref_load_109 = func_arg_4[arith_addi_24][arith_addi_27]; 
            double arith_mulf_110 = (func_arg_3 * memref_load_109); 
            double memref_load_111 = func_arg_6[arith_addi_24][arith_addi_27]; 
            double arith_mulf_112 = (func_arg_2 * memref_load_111); 
            double arith_mulf_113 = (arith_mulf_112 * memref_load_25); 
            double arith_addf_114 = (arith_mulf_110 + arith_mulf_113); 
            double memref_load_115 = memref_alloca_16[0]; 
            double arith_mulf_116 = (func_arg_2 * memref_load_115); 
            double arith_addf_117 = (arith_addf_114 + arith_mulf_116); 
            func_arg_4[arith_addi_24][arith_addi_27] = arith_addf_117; 
          }
          PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
        }
        async_group_19[async_group_index_20] = execute_token_23; 
        async_group_index_20++; 
        int arith_addi_118 = (for_iter_arg_22 + arith_const_12); 
        for_iter_arg_22 = arith_addi_118; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
    }
  }
  return; 

}
#pragma pocc-region-end
