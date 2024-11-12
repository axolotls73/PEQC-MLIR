#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 18; 
  int arith_const_7 = 20; 
  int arith_const_8 = -1; 
  int arith_const_9 = 0; 
  int arith_const_10 = 19; 
  double arith_const_11 = 10.000000; 
  double arith_const_12 = -19.000000; 
  double arith_const_13 = -39.000000; 
  double arith_const_14 = -10.000000; 
  double arith_const_15 = -20.000000; 
  double arith_const_16 = 21.000000; 
  double arith_const_17 = 41.000000; 
  double arith_const_18 = 20.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 1.000000; 
  int arith_const_21 = 1; 
  int arith_const_22 = 21; 
  for (int for_iter_23 = arith_const_21; for_iter_23 < arith_const_22; for_iter_23 += arith_const_21) {
    int* async_group_24; 
    int async_group_index_25 = 0; 
    int for_iter_arg_27 = arith_const_9; 
    for (int for_iter_26 = arith_const_21; for_iter_26 < arith_const_10; for_iter_26 += arith_const_21) {
      PAST_NEW_SEMAPHORE(execute_token_28); 
      #pragma peqc async_execute
      {
        func_arg_3[arith_const_9][for_iter_26] = arith_const_20; 
        func_arg_4[for_iter_26][arith_const_9] = arith_const_19; 
        double memref_load_29 = func_arg_3[arith_const_9][for_iter_26]; 
        func_arg_5[for_iter_26][arith_const_9] = memref_load_29; 
        for (int for_iter_30 = arith_const_21; for_iter_30 < arith_const_10; for_iter_30 += arith_const_21) {
          int arith_addi_31 = (for_iter_30 + arith_const_8); 
          double memref_load_32 = func_arg_4[for_iter_26][arith_addi_31]; 
          double arith_mulf_33 = (memref_load_32 * arith_const_15); 
          double arith_addf_34 = (arith_mulf_33 + arith_const_17); 
          double arith_divf_35 = (arith_const_18 / arith_addf_34); 
          func_arg_4[for_iter_26][for_iter_30] = arith_divf_35; 
          int arith_addi_36 = (for_iter_26 + arith_const_8); 
          double memref_load_37 = func_arg_2[for_iter_30][arith_addi_36]; 
          double arith_mulf_38 = (memref_load_37 * arith_const_11); 
          double memref_load_39 = func_arg_2[for_iter_30][for_iter_26]; 
          double arith_mulf_40 = (memref_load_39 * arith_const_12); 
          double arith_addf_41 = (arith_mulf_38 + arith_mulf_40); 
          int arith_addi_42 = (for_iter_26 + arith_const_21); 
          double memref_load_43 = func_arg_2[for_iter_30][arith_addi_42]; 
          double arith_mulf_44 = (memref_load_43 * arith_const_14); 
          double arith_subf_45 = (arith_addf_41 - arith_mulf_44); 
          int arith_addi_46 = (for_iter_30 + arith_const_8); 
          double memref_load_47 = func_arg_5[for_iter_26][arith_addi_46]; 
          double arith_mulf_48 = (memref_load_47 * arith_const_15); 
          double arith_subf_49 = (arith_subf_45 - arith_mulf_48); 
          double arith_divf_50 = (arith_subf_49 / arith_addf_34); 
          func_arg_5[for_iter_26][for_iter_30] = arith_divf_50; 
        }
        func_arg_3[arith_const_10][for_iter_26] = arith_const_20; 
        for (int for_iter_51 = arith_const_21; for_iter_51 < arith_const_10; for_iter_51 += arith_const_21) {
          int arith_muli_52 = (for_iter_51 * arith_const_8); 
          int arith_addi_53 = (arith_muli_52 + arith_const_10); 
          double memref_load_54 = func_arg_4[for_iter_26][arith_addi_53]; 
          int arith_muli_55 = (for_iter_51 * arith_const_8); 
          int arith_addi_56 = (arith_muli_55 + arith_const_7); 
          double memref_load_57 = func_arg_3[arith_addi_56][for_iter_26]; 
          double arith_mulf_58 = (memref_load_54 * memref_load_57); 
          int arith_muli_59 = (for_iter_51 * arith_const_8); 
          int arith_addi_60 = (arith_muli_59 + arith_const_10); 
          double memref_load_61 = func_arg_5[for_iter_26][arith_addi_60]; 
          double arith_addf_62 = (arith_mulf_58 + memref_load_61); 
          int arith_muli_63 = (for_iter_51 * arith_const_8); 
          int arith_addi_64 = (arith_muli_63 + arith_const_10); 
          func_arg_3[arith_addi_64][for_iter_26] = arith_addf_62; 
        }
        PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
      }
      async_group_24[async_group_index_25] = execute_token_28; 
      async_group_index_25++; 
      int arith_addi_65 = (for_iter_arg_27 + arith_const_21); 
      for_iter_arg_27 = arith_addi_65; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
    int* async_group_66; 
    int async_group_index_67 = 0; 
    int for_iter_arg_69 = arith_const_9; 
    for (int for_iter_68 = arith_const_21; for_iter_68 < arith_const_10; for_iter_68 += arith_const_21) {
      PAST_NEW_SEMAPHORE(execute_token_70); 
      #pragma peqc async_execute
      {
        func_arg_2[for_iter_68][arith_const_9] = arith_const_20; 
        func_arg_4[for_iter_68][arith_const_9] = arith_const_19; 
        double memref_load_71 = func_arg_2[for_iter_68][arith_const_9]; 
        func_arg_5[for_iter_68][arith_const_9] = memref_load_71; 
        for (int for_iter_72 = arith_const_21; for_iter_72 < arith_const_10; for_iter_72 += arith_const_21) {
          int arith_addi_73 = (for_iter_72 + arith_const_8); 
          double memref_load_74 = func_arg_4[for_iter_68][arith_addi_73]; 
          double arith_mulf_75 = (memref_load_74 * arith_const_14); 
          double arith_addf_76 = (arith_mulf_75 + arith_const_16); 
          double arith_divf_77 = (arith_const_11 / arith_addf_76); 
          func_arg_4[for_iter_68][for_iter_72] = arith_divf_77; 
          int arith_addi_78 = (for_iter_68 + arith_const_8); 
          double memref_load_79 = func_arg_3[arith_addi_78][for_iter_72]; 
          double arith_mulf_80 = (memref_load_79 * arith_const_18); 
          double memref_load_81 = func_arg_3[for_iter_68][for_iter_72]; 
          double arith_mulf_82 = (memref_load_81 * arith_const_13); 
          double arith_addf_83 = (arith_mulf_80 + arith_mulf_82); 
          int arith_addi_84 = (for_iter_68 + arith_const_21); 
          double memref_load_85 = func_arg_3[arith_addi_84][for_iter_72]; 
          double arith_mulf_86 = (memref_load_85 * arith_const_15); 
          double arith_subf_87 = (arith_addf_83 - arith_mulf_86); 
          int arith_addi_88 = (for_iter_72 + arith_const_8); 
          double memref_load_89 = func_arg_5[for_iter_68][arith_addi_88]; 
          double arith_mulf_90 = (memref_load_89 * arith_const_14); 
          double arith_subf_91 = (arith_subf_87 - arith_mulf_90); 
          double arith_divf_92 = (arith_subf_91 / arith_addf_76); 
          func_arg_5[for_iter_68][for_iter_72] = arith_divf_92; 
        }
        func_arg_2[for_iter_68][arith_const_10] = arith_const_20; 
        for (int for_iter_93 = arith_const_21; for_iter_93 < arith_const_10; for_iter_93 += arith_const_21) {
          int arith_muli_94 = (for_iter_93 * arith_const_8); 
          int arith_addi_95 = (arith_muli_94 + arith_const_10); 
          double memref_load_96 = func_arg_4[for_iter_68][arith_addi_95]; 
          int arith_muli_97 = (for_iter_93 * arith_const_8); 
          int arith_addi_98 = (arith_muli_97 + arith_const_7); 
          double memref_load_99 = func_arg_2[for_iter_68][arith_addi_98]; 
          double arith_mulf_100 = (memref_load_96 * memref_load_99); 
          int arith_muli_101 = (for_iter_93 * arith_const_8); 
          int arith_addi_102 = (arith_muli_101 + arith_const_10); 
          double memref_load_103 = func_arg_5[for_iter_68][arith_addi_102]; 
          double arith_addf_104 = (arith_mulf_100 + memref_load_103); 
          int arith_muli_105 = (for_iter_93 * arith_const_8); 
          int arith_addi_106 = (arith_muli_105 + arith_const_10); 
          func_arg_2[for_iter_68][arith_addi_106] = arith_addf_104; 
        }
        PAST_SET_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
      }
      async_group_66[async_group_index_67] = execute_token_70; 
      async_group_index_67++; 
      int arith_addi_107 = (for_iter_arg_69 + arith_const_21); 
      for_iter_arg_69 = arith_addi_107; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_66, async_group_index_67, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* u;
  double* v;
  double* p;
  double* q;

#pragma peqc async_execute
{
  kernel_adi(tsteps, n, u, v, p, q);
}
}

#pragma pocc-region-end
