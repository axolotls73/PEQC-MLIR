#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -32; 
  int arith_const_7 = -1; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 5; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 1; 
  int arith_const_15 = 0; 
  double _16; 
  double arith_const_17 = 0.000000; 
  double* memref_alloca_18; 
  memref_alloca_18[0] = _16; 
  int* async_group_19; 
  int async_group_index_20 = 0; 
  int for_iter_arg_22 = arith_const_15; 
  for (int for_iter_21 = arith_const_15; for_iter_21 < arith_const_14; for_iter_21 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_23); 
    #pragma peqc async_execute
    {
      int arith_muli_24 = (for_iter_21 * arith_const_13); 
      for (int for_iter_25 = arith_const_15; for_iter_25 < arith_const_12; for_iter_25 += arith_const_14) {
        int arith_addi_26 = (arith_muli_24 + for_iter_25); 
        memref_alloca_18[0] = arith_const_17; 
        for (int for_iter_27 = arith_const_15; for_iter_27 < arith_const_11; for_iter_27 += arith_const_14) {
          int arith_muli_28 = (for_iter_27 * arith_const_10); 
          double memref_load_29 = func_arg_2[arith_muli_28][arith_addi_26]; 
          double arith_mulf_30 = (memref_load_29 * memref_load_29); 
          double memref_load_31 = memref_alloca_18[0]; 
          double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
          memref_alloca_18[0] = arith_addf_32; 
          int arith_addi_33 = (arith_muli_28 + arith_const_14); 
          double memref_load_34 = func_arg_2[arith_addi_33][arith_addi_26]; 
          double arith_mulf_35 = (memref_load_34 * memref_load_34); 
          double memref_load_36 = memref_alloca_18[0]; 
          double arith_addf_37 = (memref_load_36 + arith_mulf_35); 
          memref_alloca_18[0] = arith_addf_37; 
          int arith_addi_38 = (arith_muli_28 + arith_const_9); 
          double memref_load_39 = func_arg_2[arith_addi_38][arith_addi_26]; 
          double arith_mulf_40 = (memref_load_39 * memref_load_39); 
          double memref_load_41 = memref_alloca_18[0]; 
          double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
          memref_alloca_18[0] = arith_addf_42; 
          int arith_addi_43 = (arith_muli_28 + arith_const_8); 
          double memref_load_44 = func_arg_2[arith_addi_43][arith_addi_26]; 
          double arith_mulf_45 = (memref_load_44 * memref_load_44); 
          double memref_load_46 = memref_alloca_18[0]; 
          double arith_addf_47 = (memref_load_46 + arith_mulf_45); 
          memref_alloca_18[0] = arith_addf_47; 
        }
        double memref_load_48 = memref_alloca_18[0]; 
        double math_sqrt_49 = sqrt(memref_load_48); 
        func_arg_3[arith_addi_26][arith_addi_26] = math_sqrt_49; 
        double memref_load_50 = func_arg_3[arith_addi_26][arith_addi_26]; 
        double memref_load_51 = func_arg_3[arith_addi_26][arith_addi_26]; 
        double memref_load_52 = func_arg_3[arith_addi_26][arith_addi_26]; 
        double memref_load_53 = func_arg_3[arith_addi_26][arith_addi_26]; 
        for (int for_iter_54 = arith_const_15; for_iter_54 < arith_const_11; for_iter_54 += arith_const_14) {
          int arith_muli_55 = (for_iter_54 * arith_const_10); 
          double memref_load_56 = func_arg_2[arith_muli_55][arith_addi_26]; 
          double arith_divf_57 = (memref_load_56 / memref_load_50); 
          func_arg_4[arith_muli_55][arith_addi_26] = arith_divf_57; 
          int arith_addi_58 = (arith_muli_55 + arith_const_14); 
          double memref_load_59 = func_arg_2[arith_addi_58][arith_addi_26]; 
          double arith_divf_60 = (memref_load_59 / memref_load_51); 
          func_arg_4[arith_addi_58][arith_addi_26] = arith_divf_60; 
          int arith_addi_61 = (arith_muli_55 + arith_const_9); 
          double memref_load_62 = func_arg_2[arith_addi_61][arith_addi_26]; 
          double arith_divf_63 = (memref_load_62 / memref_load_52); 
          func_arg_4[arith_addi_61][arith_addi_26] = arith_divf_63; 
          int arith_addi_64 = (arith_muli_55 + arith_const_8); 
          double memref_load_65 = func_arg_2[arith_addi_64][arith_addi_26]; 
          double arith_divf_66 = (memref_load_65 / memref_load_53); 
          func_arg_4[arith_addi_64][arith_addi_26] = arith_divf_66; 
        }
        int arith_muli_67 = (for_iter_25 * arith_const_7); 
        int arith_muli_68 = (for_iter_21 * arith_const_6); 
        int arith_addi_69 = (arith_muli_67 + arith_muli_68); 
        int arith_addi_70 = (arith_addi_69 + arith_const_5); 
        for (int for_iter_71 = arith_const_15; for_iter_71 < arith_addi_70; for_iter_71 += arith_const_14) {
          int arith_addi_72 = (arith_addi_26 + for_iter_71); 
          int arith_addi_73 = (arith_addi_72 + arith_const_14); 
          func_arg_3[arith_addi_26][arith_addi_73] = arith_const_17; 
          for (int for_iter_74 = arith_const_15; for_iter_74 < arith_const_11; for_iter_74 += arith_const_14) {
            int arith_muli_75 = (for_iter_74 * arith_const_10); 
            double memref_load_76 = func_arg_4[arith_muli_75][arith_addi_26]; 
            double memref_load_77 = func_arg_2[arith_muli_75][arith_addi_73]; 
            double arith_mulf_78 = (memref_load_76 * memref_load_77); 
            double memref_load_79 = func_arg_3[arith_addi_26][arith_addi_73]; 
            double arith_addf_80 = (memref_load_79 + arith_mulf_78); 
            func_arg_3[arith_addi_26][arith_addi_73] = arith_addf_80; 
            int arith_addi_81 = (arith_muli_75 + arith_const_14); 
            double memref_load_82 = func_arg_4[arith_addi_81][arith_addi_26]; 
            double memref_load_83 = func_arg_2[arith_addi_81][arith_addi_73]; 
            double arith_mulf_84 = (memref_load_82 * memref_load_83); 
            double memref_load_85 = func_arg_3[arith_addi_26][arith_addi_73]; 
            double arith_addf_86 = (memref_load_85 + arith_mulf_84); 
            func_arg_3[arith_addi_26][arith_addi_73] = arith_addf_86; 
            int arith_addi_87 = (arith_muli_75 + arith_const_9); 
            double memref_load_88 = func_arg_4[arith_addi_87][arith_addi_26]; 
            double memref_load_89 = func_arg_2[arith_addi_87][arith_addi_73]; 
            double arith_mulf_90 = (memref_load_88 * memref_load_89); 
            double memref_load_91 = func_arg_3[arith_addi_26][arith_addi_73]; 
            double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
            func_arg_3[arith_addi_26][arith_addi_73] = arith_addf_92; 
            int arith_addi_93 = (arith_muli_75 + arith_const_8); 
            double memref_load_94 = func_arg_4[arith_addi_93][arith_addi_26]; 
            double memref_load_95 = func_arg_2[arith_addi_93][arith_addi_73]; 
            double arith_mulf_96 = (memref_load_94 * memref_load_95); 
            double memref_load_97 = func_arg_3[arith_addi_26][arith_addi_73]; 
            double arith_addf_98 = (memref_load_97 + arith_mulf_96); 
            func_arg_3[arith_addi_26][arith_addi_73] = arith_addf_98; 
          }
          double memref_load_99 = func_arg_3[arith_addi_26][arith_addi_73]; 
          double memref_load_100 = func_arg_3[arith_addi_26][arith_addi_73]; 
          double memref_load_101 = func_arg_3[arith_addi_26][arith_addi_73]; 
          double memref_load_102 = func_arg_3[arith_addi_26][arith_addi_73]; 
          for (int for_iter_103 = arith_const_15; for_iter_103 < arith_const_11; for_iter_103 += arith_const_14) {
            int arith_muli_104 = (for_iter_103 * arith_const_10); 
            double memref_load_105 = func_arg_2[arith_muli_104][arith_addi_73]; 
            double memref_load_106 = func_arg_4[arith_muli_104][arith_addi_26]; 
            double arith_mulf_107 = (memref_load_106 * memref_load_99); 
            double arith_subf_108 = (memref_load_105 - arith_mulf_107); 
            func_arg_2[arith_muli_104][arith_addi_73] = arith_subf_108; 
            int arith_addi_109 = (arith_muli_104 + arith_const_14); 
            double memref_load_110 = func_arg_2[arith_addi_109][arith_addi_73]; 
            double memref_load_111 = func_arg_4[arith_addi_109][arith_addi_26]; 
            double arith_mulf_112 = (memref_load_111 * memref_load_100); 
            double arith_subf_113 = (memref_load_110 - arith_mulf_112); 
            func_arg_2[arith_addi_109][arith_addi_73] = arith_subf_113; 
            int arith_addi_114 = (arith_muli_104 + arith_const_9); 
            double memref_load_115 = func_arg_2[arith_addi_114][arith_addi_73]; 
            double memref_load_116 = func_arg_4[arith_addi_114][arith_addi_26]; 
            double arith_mulf_117 = (memref_load_116 * memref_load_101); 
            double arith_subf_118 = (memref_load_115 - arith_mulf_117); 
            func_arg_2[arith_addi_114][arith_addi_73] = arith_subf_118; 
            int arith_addi_119 = (arith_muli_104 + arith_const_8); 
            double memref_load_120 = func_arg_2[arith_addi_119][arith_addi_73]; 
            double memref_load_121 = func_arg_4[arith_addi_119][arith_addi_26]; 
            double arith_mulf_122 = (memref_load_121 * memref_load_102); 
            double arith_subf_123 = (memref_load_120 - arith_mulf_122); 
            func_arg_2[arith_addi_119][arith_addi_73] = arith_subf_123; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_124 = (for_iter_arg_22 + arith_const_14); 
    for_iter_arg_22 = arith_addi_124; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
