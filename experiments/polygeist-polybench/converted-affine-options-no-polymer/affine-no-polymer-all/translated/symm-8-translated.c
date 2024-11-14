#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 8; 
  int arith_const_12 = 30; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 1; 
  int arith_const_16 = 0; 
  double arith_const_17 = 0.000000; 
  double* memref_alloca_18; 
  memref_alloca_18[0] = arith_const_17; 
  int* async_group_19; 
  int async_group_index_20 = 0; 
  int for_iter_arg_22 = arith_const_16; 
  for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_15; for_iter_21 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_23); 
    #pragma peqc async_execute
    {
      int arith_muli_24 = (for_iter_21 * arith_const_14); 
      for (int for_iter_25 = arith_const_16; for_iter_25 < arith_const_15; for_iter_25 += arith_const_15) {
        int arith_muli_26 = (for_iter_25 * arith_const_14); 
        for (int for_iter_27 = arith_const_16; for_iter_27 < arith_const_13; for_iter_27 += arith_const_15) {
          int arith_addi_28 = (arith_muli_24 + for_iter_27); 
          double memref_load_29 = func_arg_5[arith_addi_28][arith_addi_28]; 
          for (int for_iter_30 = arith_const_16; for_iter_30 < arith_const_12; for_iter_30 += arith_const_15) {
            int arith_addi_31 = (arith_muli_26 + for_iter_30); 
            memref_alloca_18[0] = arith_const_17; 
            double memref_load_32 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_33 = (func_arg_2 * memref_load_32); 
            double memref_load_34 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_35 = (func_arg_2 * memref_load_34); 
            double memref_load_36 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_37 = (func_arg_2 * memref_load_36); 
            double memref_load_38 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_39 = (func_arg_2 * memref_load_38); 
            int arith_muli_40 = (for_iter_21 * arith_const_11); 
            int arith_cmpi_41 = (for_iter_27 < arith_const_16); 
            int arith_subi_42 = (arith_const_9 - for_iter_27); 
            int arith_select_43 = (arith_cmpi_41 ? arith_subi_42 : for_iter_27); 
            int arith_divi_44 = (arith_select_43 / arith_const_10); 
            int arith_subi_45 = (arith_const_9 - arith_divi_44); 
            int arith_select_46 = (arith_cmpi_41 ? arith_subi_45 : arith_divi_44); 
            int arith_addi_47 = (arith_muli_40 + arith_select_46); 
            for (int for_iter_48 = arith_const_16; for_iter_48 < arith_addi_47; for_iter_48 += arith_const_15) {
              int arith_muli_49 = (for_iter_48 * arith_const_10); 
              double memref_load_50 = func_arg_5[arith_addi_28][arith_muli_49]; 
              double arith_mulf_51 = (arith_mulf_33 * memref_load_50); 
              double memref_load_52 = func_arg_4[arith_muli_49][arith_addi_31]; 
              double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
              func_arg_4[arith_muli_49][arith_addi_31] = arith_addf_53; 
              double memref_load_54 = func_arg_6[arith_muli_49][arith_addi_31]; 
              double memref_load_55 = func_arg_5[arith_addi_28][arith_muli_49]; 
              double arith_mulf_56 = (memref_load_54 * memref_load_55); 
              double memref_load_57 = memref_alloca_18[0]; 
              double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
              memref_alloca_18[0] = arith_addf_58; 
              int arith_addi_59 = (arith_muli_49 + arith_const_15); 
              double memref_load_60 = func_arg_5[arith_addi_28][arith_addi_59]; 
              double arith_mulf_61 = (arith_mulf_35 * memref_load_60); 
              double memref_load_62 = func_arg_4[arith_addi_59][arith_addi_31]; 
              double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
              func_arg_4[arith_addi_59][arith_addi_31] = arith_addf_63; 
              double memref_load_64 = func_arg_6[arith_addi_59][arith_addi_31]; 
              double memref_load_65 = func_arg_5[arith_addi_28][arith_addi_59]; 
              double arith_mulf_66 = (memref_load_64 * memref_load_65); 
              double memref_load_67 = memref_alloca_18[0]; 
              double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
              memref_alloca_18[0] = arith_addf_68; 
              int arith_addi_69 = (arith_muli_49 + arith_const_8); 
              double memref_load_70 = func_arg_5[arith_addi_28][arith_addi_69]; 
              double arith_mulf_71 = (arith_mulf_37 * memref_load_70); 
              double memref_load_72 = func_arg_4[arith_addi_69][arith_addi_31]; 
              double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
              func_arg_4[arith_addi_69][arith_addi_31] = arith_addf_73; 
              double memref_load_74 = func_arg_6[arith_addi_69][arith_addi_31]; 
              double memref_load_75 = func_arg_5[arith_addi_28][arith_addi_69]; 
              double arith_mulf_76 = (memref_load_74 * memref_load_75); 
              double memref_load_77 = memref_alloca_18[0]; 
              double arith_addf_78 = (memref_load_77 + arith_mulf_76); 
              memref_alloca_18[0] = arith_addf_78; 
              int arith_addi_79 = (arith_muli_49 + arith_const_7); 
              double memref_load_80 = func_arg_5[arith_addi_28][arith_addi_79]; 
              double arith_mulf_81 = (arith_mulf_39 * memref_load_80); 
              double memref_load_82 = func_arg_4[arith_addi_79][arith_addi_31]; 
              double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
              func_arg_4[arith_addi_79][arith_addi_31] = arith_addf_83; 
              double memref_load_84 = func_arg_6[arith_addi_79][arith_addi_31]; 
              double memref_load_85 = func_arg_5[arith_addi_28][arith_addi_79]; 
              double arith_mulf_86 = (memref_load_84 * memref_load_85); 
              double memref_load_87 = memref_alloca_18[0]; 
              double arith_addf_88 = (memref_load_87 + arith_mulf_86); 
              memref_alloca_18[0] = arith_addf_88; 
            }
            double memref_load_89 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_90 = (func_arg_2 * memref_load_89); 
            int arith_remsi_91 = (arith_addi_28 % arith_const_10); 
            int arith_cmpi_92 = (arith_remsi_91 < arith_const_16); 
            int arith_addi_93 = (arith_remsi_91 + arith_const_10); 
            int arith_select_94 = (arith_cmpi_92 ? arith_addi_93 : arith_remsi_91); 
            for (int for_iter_95 = arith_const_16; for_iter_95 < arith_select_94; for_iter_95 += arith_const_15) {
              int arith_cmpi_96 = (arith_addi_28 < arith_const_16); 
              int arith_subi_97 = (arith_const_9 - arith_addi_28); 
              int arith_select_98 = (arith_cmpi_96 ? arith_subi_97 : arith_addi_28); 
              int arith_divi_99 = (arith_select_98 / arith_const_10); 
              int arith_subi_100 = (arith_const_9 - arith_divi_99); 
              int arith_select_101 = (arith_cmpi_96 ? arith_subi_100 : arith_divi_99); 
              int arith_muli_102 = (arith_select_101 * arith_const_10); 
              int arith_addi_103 = (for_iter_95 + arith_muli_102); 
              double memref_load_104 = func_arg_5[arith_addi_28][arith_addi_103]; 
              double arith_mulf_105 = (arith_mulf_90 * memref_load_104); 
              double memref_load_106 = func_arg_4[arith_addi_103][arith_addi_31]; 
              double arith_addf_107 = (memref_load_106 + arith_mulf_105); 
              func_arg_4[arith_addi_103][arith_addi_31] = arith_addf_107; 
              double memref_load_108 = func_arg_6[arith_addi_103][arith_addi_31]; 
              double memref_load_109 = func_arg_5[arith_addi_28][arith_addi_103]; 
              double arith_mulf_110 = (memref_load_108 * memref_load_109); 
              double memref_load_111 = memref_alloca_18[0]; 
              double arith_addf_112 = (memref_load_111 + arith_mulf_110); 
              memref_alloca_18[0] = arith_addf_112; 
            }
            double memref_load_113 = func_arg_4[arith_addi_28][arith_addi_31]; 
            double arith_mulf_114 = (func_arg_3 * memref_load_113); 
            double memref_load_115 = func_arg_6[arith_addi_28][arith_addi_31]; 
            double arith_mulf_116 = (func_arg_2 * memref_load_115); 
            double arith_mulf_117 = (arith_mulf_116 * memref_load_29); 
            double arith_addf_118 = (arith_mulf_114 + arith_mulf_117); 
            double memref_load_119 = memref_alloca_18[0]; 
            double arith_mulf_120 = (func_arg_2 * memref_load_119); 
            double arith_addf_121 = (arith_addf_118 + arith_mulf_120); 
            func_arg_4[arith_addi_28][arith_addi_31] = arith_addf_121; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_122 = (for_iter_arg_22 + arith_const_15); 
    for_iter_arg_22 = arith_addi_122; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_symm(m, n, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
