#pragma pocc-region-start
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 42; 
  int arith_const_4 = -37; 
  int arith_const_5 = 2; 
  int arith_const_6 = 38; 
  int arith_const_7 = -38; 
  int arith_const_8 = 37; 
  int arith_const_9 = 39; 
  int arith_const_10 = -2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 40; 
  int arith_const_13 = 1; 
  int arith_const_14 = 0; 
  double arith_const_15 = 0.000000; 
  double arith_const_16 = 1.000000; 
  double _17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  double memref_load_24 = func_arg_1[arith_const_14]; 
  double arith_negf_25 = -(memref_load_24); 
  func_arg_2[arith_const_14] = arith_negf_25; 
  memref_alloca_22[0] = _17; 
  double memref_load_26 = func_arg_1[arith_const_14]; 
  double arith_negf_27 = -(memref_load_26); 
  memref_alloca_22[0] = arith_negf_27; 
  memref_alloca_21[0] = _17; 
  memref_alloca_21[0] = arith_const_16; 
  memref_alloca_19[0] = _17; 
  for (int for_iter_28 = arith_const_13; for_iter_28 < arith_const_12; for_iter_28 += arith_const_13) {
    memref_alloca_19[0] = arith_const_15; 
    double memref_load_29 = memref_alloca_19[0]; 
    int arith_addi_30 = (for_iter_28 + arith_const_11); 
    double memref_load_31 = func_arg_1[arith_addi_30]; 
    double memref_load_32 = func_arg_2[arith_const_14]; 
    double arith_mulf_33 = (memref_load_31 * memref_load_32); 
    double arith_addf_34 = (memref_load_29 + arith_mulf_33); 
    memref_alloca_19[0] = arith_addf_34; 
    double memref_load_35 = memref_alloca_21[0]; 
    double memref_load_36 = memref_alloca_22[0]; 
    double arith_mulf_37 = (memref_load_36 * memref_load_36); 
    double arith_subf_38 = (memref_load_35 - arith_mulf_37); 
    double memref_load_39 = memref_alloca_21[0]; 
    double arith_mulf_40 = (arith_subf_38 * memref_load_39); 
    memref_alloca_21[0] = arith_mulf_40; 
    for (int for_iter_41 = arith_const_13; for_iter_41 < for_iter_28; for_iter_41 += arith_const_13) {
      double memref_load_42 = memref_alloca_19[0]; 
      int arith_muli_43 = (for_iter_41 * arith_const_11); 
      int arith_addi_44 = (for_iter_28 + arith_muli_43); 
      int arith_addi_45 = (arith_addi_44 + arith_const_11); 
      double memref_load_46 = func_arg_1[arith_addi_45]; 
      double memref_load_47 = func_arg_2[for_iter_41]; 
      double arith_mulf_48 = (memref_load_46 * memref_load_47); 
      double arith_addf_49 = (memref_load_42 + arith_mulf_48); 
      memref_alloca_19[0] = arith_addf_49; 
    }
    int arith_addi_50 = (for_iter_28 + arith_const_11); 
    int arith_cmpi_51 = (arith_addi_50 == arith_const_14); 
    if (arith_cmpi_51) {
      double memref_load_52 = func_arg_1[arith_const_13]; 
      double memref_load_53 = memref_alloca_19[0]; 
      double arith_addf_54 = (memref_load_52 + memref_load_53); 
      double arith_negf_55 = -(arith_addf_54); 
      double memref_load_56 = memref_alloca_21[0]; 
      double arith_divf_57 = (arith_negf_55 / memref_load_56); 
      memref_alloca_18[arith_const_14] = arith_divf_57; 
      double memref_load_58 = func_arg_2[arith_const_14]; 
      double memref_load_59 = memref_alloca_18[arith_const_14]; 
      double memref_load_60 = func_arg_2[arith_const_14]; 
      double arith_mulf_61 = (memref_load_59 * memref_load_60); 
      double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
      memref_alloca_20[arith_const_14] = arith_addf_62; 
      double memref_load_63 = memref_alloca_20[arith_const_14]; 
      func_arg_2[arith_const_14] = memref_load_63; 
      double memref_load_64 = memref_alloca_18[arith_const_14]; 
      memref_alloca_23[arith_const_14] = memref_load_64; 
      memref_alloca_22[0] = memref_load_64; 
      double memref_load_65 = memref_alloca_23[arith_const_14]; 
      func_arg_2[arith_const_13] = memref_load_65; 
    }
    int arith_addi_66 = (for_iter_28 + arith_const_10); 
    int arith_cmpi_67 = (arith_addi_66 >= arith_const_14); 
    if (arith_cmpi_67) {
      double memref_load_68 = func_arg_1[for_iter_28]; 
      double memref_load_69 = memref_alloca_19[0]; 
      double arith_addf_70 = (memref_load_68 + memref_load_69); 
      double arith_negf_71 = -(arith_addf_70); 
      double memref_load_72 = memref_alloca_21[0]; 
      double arith_divf_73 = (arith_negf_71 / memref_load_72); 
      memref_alloca_18[arith_const_14] = arith_divf_73; 
      double memref_load_74 = func_arg_2[arith_const_14]; 
      double memref_load_75 = memref_alloca_18[arith_const_14]; 
      int arith_addi_76 = (for_iter_28 + arith_const_11); 
      double memref_load_77 = func_arg_2[arith_addi_76]; 
      double arith_mulf_78 = (memref_load_75 * memref_load_77); 
      double arith_addf_79 = (memref_load_74 + arith_mulf_78); 
      memref_alloca_20[arith_const_14] = arith_addf_79; 
      double memref_load_80 = memref_alloca_18[arith_const_14]; 
      memref_alloca_23[arith_const_14] = memref_load_80; 
      memref_alloca_22[0] = memref_load_80; 
      double memref_load_81 = memref_alloca_23[arith_const_14]; 
      func_arg_2[for_iter_28] = memref_load_81; 
    }
    int arith_addi_82 = (for_iter_28 + arith_const_8); 
    int* async_group_83; 
    int async_group_index_84 = 0; 
    int for_iter_arg_86 = arith_const_14; 
    for (int for_iter_85 = arith_const_9; for_iter_85 < arith_addi_82; for_iter_85 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_87); 
      #pragma peqc async_execute
      {
        int arith_addi_88 = (for_iter_85 + arith_const_7); 
        double memref_load_89 = func_arg_2[arith_addi_88]; 
        double memref_load_90 = memref_alloca_18[arith_const_14]; 
        int arith_muli_91 = (for_iter_85 * arith_const_11); 
        int arith_addi_92 = (arith_muli_91 + for_iter_28); 
        int arith_addi_93 = (arith_addi_92 + arith_const_8); 
        double memref_load_94 = func_arg_2[arith_addi_93]; 
        double arith_mulf_95 = (memref_load_90 * memref_load_94); 
        double arith_addf_96 = (memref_load_89 + arith_mulf_95); 
        int arith_addi_97 = (for_iter_85 + arith_const_7); 
        memref_alloca_20[arith_addi_97] = arith_addf_96; 
        PAST_SET_SEMAPHORE(execute_token_87, PAST_TASK_FINISHED); 
      }
      async_group_83[async_group_index_84] = execute_token_87; 
      async_group_index_84++; 
      int arith_addi_98 = (for_iter_arg_86 + arith_const_13); 
      for_iter_arg_86 = arith_addi_98; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_83, async_group_index_84, PAST_TASK_FINISHED); 
    int arith_addi_99 = (for_iter_28 + arith_const_10); 
    int arith_cmpi_100 = (arith_addi_99 >= arith_const_14); 
    if (arith_cmpi_100) {
      int arith_addi_101 = (for_iter_28 + arith_const_11); 
      double memref_load_102 = func_arg_2[arith_addi_101]; 
      double memref_load_103 = memref_alloca_18[arith_const_14]; 
      double memref_load_104 = func_arg_2[arith_const_14]; 
      double arith_mulf_105 = (memref_load_103 * memref_load_104); 
      double arith_addf_106 = (memref_load_102 + arith_mulf_105); 
      int arith_addi_107 = (for_iter_28 + arith_const_11); 
      memref_alloca_20[arith_addi_107] = arith_addf_106; 
      double memref_load_108 = memref_alloca_20[arith_const_14]; 
      func_arg_2[arith_const_14] = memref_load_108; 
    }
    int arith_addi_109 = (for_iter_28 + arith_const_6); 
    int arith_muli_110 = (for_iter_28 * arith_const_5); 
    int arith_addi_111 = (arith_muli_110 + arith_const_8); 
    int* async_group_112; 
    int async_group_index_113 = 0; 
    int for_iter_arg_115 = arith_const_14; 
    for (int for_iter_114 = arith_addi_109; for_iter_114 < arith_addi_111; for_iter_114 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_116); 
      #pragma peqc async_execute
      {
        int arith_muli_117 = (for_iter_28 * arith_const_11); 
        int arith_addi_118 = (arith_muli_117 + for_iter_114); 
        int arith_addi_119 = (arith_addi_118 + arith_const_4); 
        double memref_load_120 = memref_alloca_20[arith_addi_119]; 
        int arith_muli_121 = (for_iter_28 * arith_const_11); 
        int arith_addi_122 = (arith_muli_121 + for_iter_114); 
        int arith_addi_123 = (arith_addi_122 + arith_const_4); 
        func_arg_2[arith_addi_123] = memref_load_120; 
        PAST_SET_SEMAPHORE(execute_token_116, PAST_TASK_FINISHED); 
      }
      async_group_112[async_group_index_113] = execute_token_116; 
      async_group_index_113++; 
      int arith_addi_124 = (for_iter_arg_115 + arith_const_13); 
      for_iter_arg_115 = arith_addi_124; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_112, async_group_index_113, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
