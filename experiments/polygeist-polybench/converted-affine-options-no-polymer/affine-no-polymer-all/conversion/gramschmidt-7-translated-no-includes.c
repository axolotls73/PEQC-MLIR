#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -1; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = 4; 
  int arith_const_10 = 5; 
  int arith_const_11 = 1; 
  int arith_const_12 = 30; 
  int arith_const_13 = 0; 
  double arith_const_14 = 0.000000; 
  double* memref_alloca_15; 
  double _16; 
  memref_alloca_15[0] = _16; 
  for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_12; for_iter_17 += arith_const_11) {
    int* async_group_18; 
    int async_group_index_19 = 0; 
    int for_iter_arg_21 = arith_const_13; 
    for (int for_iter_20 = arith_const_13; for_iter_20 < arith_const_11; for_iter_20 += arith_const_11) {
      PAST_NEW_SEMAPHORE(execute_token_22); 
      #pragma peqc async_execute
      {
        int arith_addi_23 = (for_iter_17 + for_iter_20); 
        memref_alloca_15[0] = arith_const_14; 
        for (int for_iter_24 = arith_const_13; for_iter_24 < arith_const_10; for_iter_24 += arith_const_11) {
          int arith_muli_25 = (for_iter_24 * arith_const_9); 
          double memref_load_26 = func_arg_2[arith_muli_25][arith_addi_23]; 
          double arith_mulf_27 = (memref_load_26 * memref_load_26); 
          double memref_load_28 = memref_alloca_15[0]; 
          double arith_addf_29 = (memref_load_28 + arith_mulf_27); 
          memref_alloca_15[0] = arith_addf_29; 
          int arith_addi_30 = (arith_muli_25 + arith_const_11); 
          double memref_load_31 = func_arg_2[arith_addi_30][arith_addi_23]; 
          double arith_mulf_32 = (memref_load_31 * memref_load_31); 
          double memref_load_33 = memref_alloca_15[0]; 
          double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
          memref_alloca_15[0] = arith_addf_34; 
          int arith_addi_35 = (arith_muli_25 + arith_const_8); 
          double memref_load_36 = func_arg_2[arith_addi_35][arith_addi_23]; 
          double arith_mulf_37 = (memref_load_36 * memref_load_36); 
          double memref_load_38 = memref_alloca_15[0]; 
          double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
          memref_alloca_15[0] = arith_addf_39; 
          int arith_addi_40 = (arith_muli_25 + arith_const_7); 
          double memref_load_41 = func_arg_2[arith_addi_40][arith_addi_23]; 
          double arith_mulf_42 = (memref_load_41 * memref_load_41); 
          double memref_load_43 = memref_alloca_15[0]; 
          double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
          memref_alloca_15[0] = arith_addf_44; 
        }
        double memref_load_45 = memref_alloca_15[0]; 
        double math_sqrt_46 = sqrt(memref_load_45); 
        func_arg_3[arith_addi_23][arith_addi_23] = math_sqrt_46; 
        double memref_load_47 = func_arg_3[arith_addi_23][arith_addi_23]; 
        double memref_load_48 = func_arg_3[arith_addi_23][arith_addi_23]; 
        double memref_load_49 = func_arg_3[arith_addi_23][arith_addi_23]; 
        double memref_load_50 = func_arg_3[arith_addi_23][arith_addi_23]; 
        for (int for_iter_51 = arith_const_13; for_iter_51 < arith_const_10; for_iter_51 += arith_const_11) {
          int arith_muli_52 = (for_iter_51 * arith_const_9); 
          double memref_load_53 = func_arg_2[arith_muli_52][arith_addi_23]; 
          double arith_divf_54 = (memref_load_53 / memref_load_47); 
          func_arg_4[arith_muli_52][arith_addi_23] = arith_divf_54; 
          int arith_addi_55 = (arith_muli_52 + arith_const_11); 
          double memref_load_56 = func_arg_2[arith_addi_55][arith_addi_23]; 
          double arith_divf_57 = (memref_load_56 / memref_load_48); 
          func_arg_4[arith_addi_55][arith_addi_23] = arith_divf_57; 
          int arith_addi_58 = (arith_muli_52 + arith_const_8); 
          double memref_load_59 = func_arg_2[arith_addi_58][arith_addi_23]; 
          double arith_divf_60 = (memref_load_59 / memref_load_49); 
          func_arg_4[arith_addi_58][arith_addi_23] = arith_divf_60; 
          int arith_addi_61 = (arith_muli_52 + arith_const_7); 
          double memref_load_62 = func_arg_2[arith_addi_61][arith_addi_23]; 
          double arith_divf_63 = (memref_load_62 / memref_load_50); 
          func_arg_4[arith_addi_61][arith_addi_23] = arith_divf_63; 
        }
        int arith_muli_64 = (for_iter_17 * arith_const_6); 
        int arith_muli_65 = (for_iter_20 * arith_const_6); 
        int arith_addi_66 = (arith_muli_64 + arith_muli_65); 
        int arith_addi_67 = (arith_addi_66 + arith_const_5); 
        for (int for_iter_68 = arith_const_13; for_iter_68 < arith_addi_67; for_iter_68 += arith_const_11) {
          int arith_addi_69 = (arith_addi_23 + for_iter_68); 
          int arith_addi_70 = (arith_addi_69 + arith_const_11); 
          func_arg_3[arith_addi_23][arith_addi_70] = arith_const_14; 
          for (int for_iter_71 = arith_const_13; for_iter_71 < arith_const_10; for_iter_71 += arith_const_11) {
            int arith_muli_72 = (for_iter_71 * arith_const_9); 
            double memref_load_73 = func_arg_4[arith_muli_72][arith_addi_23]; 
            double memref_load_74 = func_arg_2[arith_muli_72][arith_addi_70]; 
            double arith_mulf_75 = (memref_load_73 * memref_load_74); 
            double memref_load_76 = func_arg_3[arith_addi_23][arith_addi_70]; 
            double arith_addf_77 = (memref_load_76 + arith_mulf_75); 
            func_arg_3[arith_addi_23][arith_addi_70] = arith_addf_77; 
            int arith_addi_78 = (arith_muli_72 + arith_const_11); 
            double memref_load_79 = func_arg_4[arith_addi_78][arith_addi_23]; 
            double memref_load_80 = func_arg_2[arith_addi_78][arith_addi_70]; 
            double arith_mulf_81 = (memref_load_79 * memref_load_80); 
            double memref_load_82 = func_arg_3[arith_addi_23][arith_addi_70]; 
            double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
            func_arg_3[arith_addi_23][arith_addi_70] = arith_addf_83; 
            int arith_addi_84 = (arith_muli_72 + arith_const_8); 
            double memref_load_85 = func_arg_4[arith_addi_84][arith_addi_23]; 
            double memref_load_86 = func_arg_2[arith_addi_84][arith_addi_70]; 
            double arith_mulf_87 = (memref_load_85 * memref_load_86); 
            double memref_load_88 = func_arg_3[arith_addi_23][arith_addi_70]; 
            double arith_addf_89 = (memref_load_88 + arith_mulf_87); 
            func_arg_3[arith_addi_23][arith_addi_70] = arith_addf_89; 
            int arith_addi_90 = (arith_muli_72 + arith_const_7); 
            double memref_load_91 = func_arg_4[arith_addi_90][arith_addi_23]; 
            double memref_load_92 = func_arg_2[arith_addi_90][arith_addi_70]; 
            double arith_mulf_93 = (memref_load_91 * memref_load_92); 
            double memref_load_94 = func_arg_3[arith_addi_23][arith_addi_70]; 
            double arith_addf_95 = (memref_load_94 + arith_mulf_93); 
            func_arg_3[arith_addi_23][arith_addi_70] = arith_addf_95; 
          }
          double memref_load_96 = func_arg_3[arith_addi_23][arith_addi_70]; 
          double memref_load_97 = func_arg_3[arith_addi_23][arith_addi_70]; 
          double memref_load_98 = func_arg_3[arith_addi_23][arith_addi_70]; 
          double memref_load_99 = func_arg_3[arith_addi_23][arith_addi_70]; 
          for (int for_iter_100 = arith_const_13; for_iter_100 < arith_const_10; for_iter_100 += arith_const_11) {
            int arith_muli_101 = (for_iter_100 * arith_const_9); 
            double memref_load_102 = func_arg_2[arith_muli_101][arith_addi_70]; 
            double memref_load_103 = func_arg_4[arith_muli_101][arith_addi_23]; 
            double arith_mulf_104 = (memref_load_103 * memref_load_96); 
            double arith_subf_105 = (memref_load_102 - arith_mulf_104); 
            func_arg_2[arith_muli_101][arith_addi_70] = arith_subf_105; 
            int arith_addi_106 = (arith_muli_101 + arith_const_11); 
            double memref_load_107 = func_arg_2[arith_addi_106][arith_addi_70]; 
            double memref_load_108 = func_arg_4[arith_addi_106][arith_addi_23]; 
            double arith_mulf_109 = (memref_load_108 * memref_load_97); 
            double arith_subf_110 = (memref_load_107 - arith_mulf_109); 
            func_arg_2[arith_addi_106][arith_addi_70] = arith_subf_110; 
            int arith_addi_111 = (arith_muli_101 + arith_const_8); 
            double memref_load_112 = func_arg_2[arith_addi_111][arith_addi_70]; 
            double memref_load_113 = func_arg_4[arith_addi_111][arith_addi_23]; 
            double arith_mulf_114 = (memref_load_113 * memref_load_98); 
            double arith_subf_115 = (memref_load_112 - arith_mulf_114); 
            func_arg_2[arith_addi_111][arith_addi_70] = arith_subf_115; 
            int arith_addi_116 = (arith_muli_101 + arith_const_7); 
            double memref_load_117 = func_arg_2[arith_addi_116][arith_addi_70]; 
            double memref_load_118 = func_arg_4[arith_addi_116][arith_addi_23]; 
            double arith_mulf_119 = (memref_load_118 * memref_load_99); 
            double arith_subf_120 = (memref_load_117 - arith_mulf_119); 
            func_arg_2[arith_addi_116][arith_addi_70] = arith_subf_120; 
          }
        }
        PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
      }
      async_group_18[async_group_index_19] = execute_token_22; 
      async_group_index_19++; 
      int arith_addi_121 = (for_iter_arg_21 + arith_const_11); 
      for_iter_arg_21 = arith_addi_121; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
