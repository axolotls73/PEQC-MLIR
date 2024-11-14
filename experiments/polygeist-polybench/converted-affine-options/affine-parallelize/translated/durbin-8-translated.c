#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
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
  double* memref_alloca_17; 
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double memref_load_23 = func_arg_1[arith_const_14]; 
  double arith_negf_24 = -(memref_load_23); 
  func_arg_2[arith_const_14] = arith_negf_24; 
  double _25; 
  memref_alloca_21[0] = _25; 
  double memref_load_26 = func_arg_1[arith_const_14]; 
  double arith_negf_27 = -(memref_load_26); 
  memref_alloca_21[0] = arith_negf_27; 
  double _28; 
  memref_alloca_20[0] = _28; 
  memref_alloca_20[0] = arith_const_16; 
  double _29; 
  memref_alloca_18[0] = _29; 
  for (int for_iter_30 = arith_const_13; for_iter_30 < arith_const_12; for_iter_30 += arith_const_13) {
    memref_alloca_18[0] = arith_const_15; 
    double memref_load_31 = memref_alloca_18[0]; 
    int arith_addi_32 = (for_iter_30 + arith_const_11); 
    double memref_load_33 = func_arg_1[arith_addi_32]; 
    double memref_load_34 = func_arg_2[arith_const_14]; 
    double arith_mulf_35 = (memref_load_33 * memref_load_34); 
    double arith_addf_36 = (memref_load_31 + arith_mulf_35); 
    memref_alloca_18[0] = arith_addf_36; 
    double memref_load_37 = memref_alloca_20[0]; 
    double memref_load_38 = memref_alloca_21[0]; 
    double arith_mulf_39 = (memref_load_38 * memref_load_38); 
    double arith_subf_40 = (memref_load_37 - arith_mulf_39); 
    double memref_load_41 = memref_alloca_20[0]; 
    double arith_mulf_42 = (arith_subf_40 * memref_load_41); 
    memref_alloca_20[0] = arith_mulf_42; 
    for (int for_iter_43 = arith_const_13; for_iter_43 < for_iter_30; for_iter_43 += arith_const_13) {
      double memref_load_44 = memref_alloca_18[0]; 
      int arith_muli_45 = (for_iter_43 * arith_const_11); 
      int arith_addi_46 = (for_iter_30 + arith_muli_45); 
      int arith_addi_47 = (arith_addi_46 + arith_const_11); 
      double memref_load_48 = func_arg_1[arith_addi_47]; 
      double memref_load_49 = func_arg_2[for_iter_43]; 
      double arith_mulf_50 = (memref_load_48 * memref_load_49); 
      double arith_addf_51 = (memref_load_44 + arith_mulf_50); 
      memref_alloca_18[0] = arith_addf_51; 
    }
    int arith_addi_52 = (for_iter_30 + arith_const_11); 
    int arith_cmpi_53 = (arith_addi_52 == arith_const_14); 
    if (arith_cmpi_53) {
      double memref_load_54 = func_arg_1[arith_const_13]; 
      double memref_load_55 = memref_alloca_18[0]; 
      double arith_addf_56 = (memref_load_54 + memref_load_55); 
      double arith_negf_57 = -(arith_addf_56); 
      double memref_load_58 = memref_alloca_20[0]; 
      double arith_divf_59 = (arith_negf_57 / memref_load_58); 
      memref_alloca_17[arith_const_14] = arith_divf_59; 
      double memref_load_60 = func_arg_2[arith_const_14]; 
      double memref_load_61 = memref_alloca_17[arith_const_14]; 
      double memref_load_62 = func_arg_2[arith_const_14]; 
      double arith_mulf_63 = (memref_load_61 * memref_load_62); 
      double arith_addf_64 = (memref_load_60 + arith_mulf_63); 
      memref_alloca_19[arith_const_14] = arith_addf_64; 
      double memref_load_65 = memref_alloca_19[arith_const_14]; 
      func_arg_2[arith_const_14] = memref_load_65; 
      double memref_load_66 = memref_alloca_17[arith_const_14]; 
      memref_alloca_22[arith_const_14] = memref_load_66; 
      memref_alloca_21[0] = memref_load_66; 
      double memref_load_67 = memref_alloca_22[arith_const_14]; 
      func_arg_2[arith_const_13] = memref_load_67; 
    }
    int arith_addi_68 = (for_iter_30 + arith_const_10); 
    int arith_cmpi_69 = (arith_addi_68 >= arith_const_14); 
    if (arith_cmpi_69) {
      double memref_load_70 = func_arg_1[for_iter_30]; 
      double memref_load_71 = memref_alloca_18[0]; 
      double arith_addf_72 = (memref_load_70 + memref_load_71); 
      double arith_negf_73 = -(arith_addf_72); 
      double memref_load_74 = memref_alloca_20[0]; 
      double arith_divf_75 = (arith_negf_73 / memref_load_74); 
      memref_alloca_17[arith_const_14] = arith_divf_75; 
      double memref_load_76 = func_arg_2[arith_const_14]; 
      double memref_load_77 = memref_alloca_17[arith_const_14]; 
      int arith_addi_78 = (for_iter_30 + arith_const_11); 
      double memref_load_79 = func_arg_2[arith_addi_78]; 
      double arith_mulf_80 = (memref_load_77 * memref_load_79); 
      double arith_addf_81 = (memref_load_76 + arith_mulf_80); 
      memref_alloca_19[arith_const_14] = arith_addf_81; 
      double memref_load_82 = memref_alloca_17[arith_const_14]; 
      memref_alloca_22[arith_const_14] = memref_load_82; 
      memref_alloca_21[0] = memref_load_82; 
      double memref_load_83 = memref_alloca_22[arith_const_14]; 
      func_arg_2[for_iter_30] = memref_load_83; 
    }
    int arith_addi_84 = (for_iter_30 + arith_const_8); 
    int* async_group_85; 
    int async_group_index_86 = 0; 
    int for_iter_arg_88 = arith_const_14; 
    for (int for_iter_87 = arith_const_9; for_iter_87 < arith_addi_84; for_iter_87 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_89); 
      #pragma peqc async_execute
      {
        int arith_addi_90 = (for_iter_87 + arith_const_7); 
        double memref_load_91 = func_arg_2[arith_addi_90]; 
        double memref_load_92 = memref_alloca_17[arith_const_14]; 
        int arith_muli_93 = (for_iter_87 * arith_const_11); 
        int arith_addi_94 = (arith_muli_93 + for_iter_30); 
        int arith_addi_95 = (arith_addi_94 + arith_const_8); 
        double memref_load_96 = func_arg_2[arith_addi_95]; 
        double arith_mulf_97 = (memref_load_92 * memref_load_96); 
        double arith_addf_98 = (memref_load_91 + arith_mulf_97); 
        int arith_addi_99 = (for_iter_87 + arith_const_7); 
        memref_alloca_19[arith_addi_99] = arith_addf_98; 
        PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED); 
      }
      async_group_85[async_group_index_86] = execute_token_89; 
      async_group_index_86++; 
      int arith_addi_100 = (for_iter_arg_88 + arith_const_13); 
      for_iter_arg_88 = arith_addi_100; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_85, async_group_index_86, PAST_TASK_FINISHED); 
    int arith_addi_101 = (for_iter_30 + arith_const_10); 
    int arith_cmpi_102 = (arith_addi_101 >= arith_const_14); 
    if (arith_cmpi_102) {
      int arith_addi_103 = (for_iter_30 + arith_const_11); 
      double memref_load_104 = func_arg_2[arith_addi_103]; 
      double memref_load_105 = memref_alloca_17[arith_const_14]; 
      double memref_load_106 = func_arg_2[arith_const_14]; 
      double arith_mulf_107 = (memref_load_105 * memref_load_106); 
      double arith_addf_108 = (memref_load_104 + arith_mulf_107); 
      int arith_addi_109 = (for_iter_30 + arith_const_11); 
      memref_alloca_19[arith_addi_109] = arith_addf_108; 
      double memref_load_110 = memref_alloca_19[arith_const_14]; 
      func_arg_2[arith_const_14] = memref_load_110; 
    }
    int arith_addi_111 = (for_iter_30 + arith_const_6); 
    int arith_muli_112 = (for_iter_30 * arith_const_5); 
    int arith_addi_113 = (arith_muli_112 + arith_const_8); 
    int* async_group_114; 
    int async_group_index_115 = 0; 
    int for_iter_arg_117 = arith_const_14; 
    for (int for_iter_116 = arith_addi_111; for_iter_116 < arith_addi_113; for_iter_116 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_118); 
      #pragma peqc async_execute
      {
        int arith_muli_119 = (for_iter_30 * arith_const_11); 
        int arith_addi_120 = (arith_muli_119 + for_iter_116); 
        int arith_addi_121 = (arith_addi_120 + arith_const_4); 
        double memref_load_122 = memref_alloca_19[arith_addi_121]; 
        int arith_muli_123 = (for_iter_30 * arith_const_11); 
        int arith_addi_124 = (arith_muli_123 + for_iter_116); 
        int arith_addi_125 = (arith_addi_124 + arith_const_4); 
        func_arg_2[arith_addi_125] = memref_load_122; 
        PAST_SET_SEMAPHORE(execute_token_118, PAST_TASK_FINISHED); 
      }
      async_group_114[async_group_index_115] = execute_token_118; 
      async_group_index_115++; 
      int arith_addi_126 = (for_iter_arg_117 + arith_const_13); 
      for_iter_arg_117 = arith_addi_126; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_114, async_group_index_115, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;

#pragma peqc async_execute
{
  kernel_durbin(n, r, y);
}
}

#pragma pocc-region-end
