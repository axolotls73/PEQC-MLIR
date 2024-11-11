#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 5; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_14; for_iter_20 += arith_const_14) {
        int arith_addi_21 = (for_iter_17 + for_iter_20); 
        int arith_addi_22 = (for_iter_17 + for_iter_20); 
        int arith_addi_23 = (arith_addi_22 + arith_const_14); 
        int arith_cmpi_24 = (arith_addi_23 < arith_const_12); 
        int arith_subi_25 = (arith_const_10 - arith_addi_23); 
        int arith_select_26 = (arith_cmpi_24 ? arith_subi_25 : arith_addi_23); 
        int arith_divi_27 = (arith_select_26 / arith_const_11); 
        int arith_subi_28 = (arith_const_10 - arith_divi_27); 
        int arith_select_29 = (arith_cmpi_24 ? arith_subi_28 : arith_divi_27); 
        for (int for_iter_30 = arith_const_12; for_iter_30 < arith_select_29; for_iter_30 += arith_const_14) {
          int arith_muli_31 = (for_iter_30 * arith_const_11); 
          double memref_load_32 = func_arg_4[arith_addi_21][arith_muli_31]; 
          double arith_mulf_33 = (memref_load_32 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_muli_31] = arith_mulf_33; 
          int arith_addi_34 = (arith_muli_31 + arith_const_14); 
          double memref_load_35 = func_arg_4[arith_addi_21][arith_addi_34]; 
          double arith_mulf_36 = (memref_load_35 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_34] = arith_mulf_36; 
          int arith_addi_37 = (arith_muli_31 + arith_const_9); 
          double memref_load_38 = func_arg_4[arith_addi_21][arith_addi_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_37] = arith_mulf_39; 
          int arith_addi_40 = (arith_muli_31 + arith_const_8); 
          double memref_load_41 = func_arg_4[arith_addi_21][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_40] = arith_mulf_42; 
        }
        int arith_addi_43 = (for_iter_17 + for_iter_20); 
        int arith_addi_44 = (for_iter_17 + for_iter_20); 
        int arith_addi_45 = (arith_addi_44 + arith_const_14); 
        int arith_cmpi_46 = (arith_addi_45 < arith_const_12); 
        int arith_subi_47 = (arith_const_10 - arith_addi_45); 
        int arith_select_48 = (arith_cmpi_46 ? arith_subi_47 : arith_addi_45); 
        int arith_divi_49 = (arith_select_48 / arith_const_11); 
        int arith_subi_50 = (arith_const_10 - arith_divi_49); 
        int arith_select_51 = (arith_cmpi_46 ? arith_subi_50 : arith_divi_49); 
        int arith_muli_52 = (arith_select_51 * arith_const_7); 
        int arith_addi_53 = (arith_addi_43 + arith_muli_52); 
        int arith_addi_54 = (arith_addi_53 + arith_const_14); 
        for (int for_iter_55 = arith_const_12; for_iter_55 < arith_addi_54; for_iter_55 += arith_const_14) {
          int arith_addi_56 = (arith_addi_21 + arith_const_14); 
          int arith_cmpi_57 = (arith_addi_56 < arith_const_12); 
          int arith_subi_58 = (arith_const_10 - arith_addi_56); 
          int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_addi_56); 
          int arith_divi_60 = (arith_select_59 / arith_const_11); 
          int arith_subi_61 = (arith_const_10 - arith_divi_60); 
          int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
          int arith_muli_63 = (arith_select_62 * arith_const_11); 
          int arith_addi_64 = (for_iter_55 + arith_muli_63); 
          double memref_load_65 = func_arg_4[arith_addi_21][arith_addi_64]; 
          double arith_mulf_66 = (memref_load_65 * func_arg_3); 
          func_arg_4[arith_addi_21][arith_addi_64] = arith_mulf_66; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_67 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_67; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  int* async_group_68; 
  int async_group_index_69 = 0; 
  int for_iter_arg_71 = arith_const_12; 
  for (int for_iter_70 = arith_const_12; for_iter_70 < arith_const_13; for_iter_70 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_72); 
    #pragma peqc async_execute
    {
      int arith_addi_73 = (for_iter_70 + arith_const_14); 
      for (int for_iter_74 = arith_const_12; for_iter_74 < arith_addi_73; for_iter_74 += arith_const_14) {
        for (int for_iter_75 = arith_const_12; for_iter_75 < arith_const_6; for_iter_75 += arith_const_14) {
          int arith_muli_76 = (for_iter_75 * arith_const_11); 
          double memref_load_77 = func_arg_4[for_iter_70][for_iter_74]; 
          double memref_load_78 = func_arg_5[for_iter_70][arith_muli_76]; 
          double arith_mulf_79 = (func_arg_2 * memref_load_78); 
          double memref_load_80 = func_arg_5[for_iter_74][arith_muli_76]; 
          double arith_mulf_81 = (arith_mulf_79 * memref_load_80); 
          double arith_addf_82 = (memref_load_77 + arith_mulf_81); 
          func_arg_4[for_iter_70][for_iter_74] = arith_addf_82; 
          int arith_addi_83 = (arith_muli_76 + arith_const_14); 
          double memref_load_84 = func_arg_4[for_iter_70][for_iter_74]; 
          double memref_load_85 = func_arg_5[for_iter_70][arith_addi_83]; 
          double arith_mulf_86 = (func_arg_2 * memref_load_85); 
          double memref_load_87 = func_arg_5[for_iter_74][arith_addi_83]; 
          double arith_mulf_88 = (arith_mulf_86 * memref_load_87); 
          double arith_addf_89 = (memref_load_84 + arith_mulf_88); 
          func_arg_4[for_iter_70][for_iter_74] = arith_addf_89; 
          int arith_addi_90 = (arith_muli_76 + arith_const_9); 
          double memref_load_91 = func_arg_4[for_iter_70][for_iter_74]; 
          double memref_load_92 = func_arg_5[for_iter_70][arith_addi_90]; 
          double arith_mulf_93 = (func_arg_2 * memref_load_92); 
          double memref_load_94 = func_arg_5[for_iter_74][arith_addi_90]; 
          double arith_mulf_95 = (arith_mulf_93 * memref_load_94); 
          double arith_addf_96 = (memref_load_91 + arith_mulf_95); 
          func_arg_4[for_iter_70][for_iter_74] = arith_addf_96; 
          int arith_addi_97 = (arith_muli_76 + arith_const_8); 
          double memref_load_98 = func_arg_4[for_iter_70][for_iter_74]; 
          double memref_load_99 = func_arg_5[for_iter_70][arith_addi_97]; 
          double arith_mulf_100 = (func_arg_2 * memref_load_99); 
          double memref_load_101 = func_arg_5[for_iter_74][arith_addi_97]; 
          double arith_mulf_102 = (arith_mulf_100 * memref_load_101); 
          double arith_addf_103 = (memref_load_98 + arith_mulf_102); 
          func_arg_4[for_iter_70][for_iter_74] = arith_addf_103; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_72, PAST_TASK_FINISHED); 
    }
    async_group_68[async_group_index_69] = execute_token_72; 
    async_group_index_69++; 
    int arith_addi_104 = (for_iter_arg_71 + arith_const_14); 
    for_iter_arg_71 = arith_addi_104; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_68, async_group_index_69, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}

#pragma pocc-region-end
