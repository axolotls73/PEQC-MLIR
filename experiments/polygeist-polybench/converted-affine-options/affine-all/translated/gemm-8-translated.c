#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 24; 
  int arith_const_14 = 0; 
  int arith_const_15 = 20; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_14; 
  for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_15; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_16; for_iter_22 += arith_const_16) {
        int arith_addi_23 = (for_iter_19 + for_iter_22); 
        for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_12; for_iter_24 += arith_const_16) {
          int arith_muli_25 = (for_iter_24 * arith_const_11); 
          double memref_load_26 = func_arg_5[arith_addi_23][arith_muli_25]; 
          double arith_mulf_27 = (memref_load_26 * func_arg_4); 
          func_arg_5[arith_addi_23][arith_muli_25] = arith_mulf_27; 
          int arith_addi_28 = (arith_muli_25 + arith_const_16); 
          double memref_load_29 = func_arg_5[arith_addi_23][arith_addi_28]; 
          double arith_mulf_30 = (memref_load_29 * func_arg_4); 
          func_arg_5[arith_addi_23][arith_addi_28] = arith_mulf_30; 
          int arith_addi_31 = (arith_muli_25 + arith_const_10); 
          double memref_load_32 = func_arg_5[arith_addi_23][arith_addi_31]; 
          double arith_mulf_33 = (memref_load_32 * func_arg_4); 
          func_arg_5[arith_addi_23][arith_addi_31] = arith_mulf_33; 
          int arith_addi_34 = (arith_muli_25 + arith_const_9); 
          double memref_load_35 = func_arg_5[arith_addi_23][arith_addi_34]; 
          double arith_mulf_36 = (memref_load_35 * func_arg_4); 
          func_arg_5[arith_addi_23][arith_addi_34] = arith_mulf_36; 
        }
        double memref_load_37 = func_arg_5[arith_addi_23][arith_const_13]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_4); 
        func_arg_5[arith_addi_23][arith_const_13] = arith_mulf_38; 
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_39 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_39; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  int* async_group_40; 
  int async_group_index_41 = 0; 
  int for_iter_arg_43 = arith_const_14; 
  for (int for_iter_42 = arith_const_14; for_iter_42 < arith_const_15; for_iter_42 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_44); 
    #pragma peqc async_execute
    {
      for (int for_iter_45 = arith_const_14; for_iter_45 < arith_const_8; for_iter_45 += arith_const_16) {
        for (int for_iter_46 = arith_const_14; for_iter_46 < arith_const_16; for_iter_46 += arith_const_16) {
          int arith_addi_47 = (for_iter_42 + for_iter_46); 
          for (int for_iter_48 = arith_const_14; for_iter_48 < arith_const_16; for_iter_48 += arith_const_16) {
            int arith_addi_49 = (for_iter_45 + for_iter_48); 
            double memref_load_50 = func_arg_6[arith_addi_47][arith_addi_49]; 
            double arith_mulf_51 = (func_arg_3 * memref_load_50); 
            double memref_load_52 = func_arg_6[arith_addi_47][arith_addi_49]; 
            double arith_mulf_53 = (func_arg_3 * memref_load_52); 
            double memref_load_54 = func_arg_6[arith_addi_47][arith_addi_49]; 
            double arith_mulf_55 = (func_arg_3 * memref_load_54); 
            double memref_load_56 = func_arg_6[arith_addi_47][arith_addi_49]; 
            double arith_mulf_57 = (func_arg_3 * memref_load_56); 
            for (int for_iter_58 = arith_const_14; for_iter_58 < arith_const_12; for_iter_58 += arith_const_16) {
              int arith_muli_59 = (for_iter_58 * arith_const_11); 
              double memref_load_60 = func_arg_5[arith_addi_47][arith_muli_59]; 
              double memref_load_61 = func_arg_7[arith_addi_49][arith_muli_59]; 
              double arith_mulf_62 = (arith_mulf_51 * memref_load_61); 
              double arith_addf_63 = (memref_load_60 + arith_mulf_62); 
              func_arg_5[arith_addi_47][arith_muli_59] = arith_addf_63; 
              int arith_addi_64 = (arith_muli_59 + arith_const_16); 
              double memref_load_65 = func_arg_5[arith_addi_47][arith_addi_64]; 
              double memref_load_66 = func_arg_7[arith_addi_49][arith_addi_64]; 
              double arith_mulf_67 = (arith_mulf_53 * memref_load_66); 
              double arith_addf_68 = (memref_load_65 + arith_mulf_67); 
              func_arg_5[arith_addi_47][arith_addi_64] = arith_addf_68; 
              int arith_addi_69 = (arith_muli_59 + arith_const_10); 
              double memref_load_70 = func_arg_5[arith_addi_47][arith_addi_69]; 
              double memref_load_71 = func_arg_7[arith_addi_49][arith_addi_69]; 
              double arith_mulf_72 = (arith_mulf_55 * memref_load_71); 
              double arith_addf_73 = (memref_load_70 + arith_mulf_72); 
              func_arg_5[arith_addi_47][arith_addi_69] = arith_addf_73; 
              int arith_addi_74 = (arith_muli_59 + arith_const_9); 
              double memref_load_75 = func_arg_5[arith_addi_47][arith_addi_74]; 
              double memref_load_76 = func_arg_7[arith_addi_49][arith_addi_74]; 
              double arith_mulf_77 = (arith_mulf_57 * memref_load_76); 
              double arith_addf_78 = (memref_load_75 + arith_mulf_77); 
              func_arg_5[arith_addi_47][arith_addi_74] = arith_addf_78; 
            }
            double memref_load_79 = func_arg_5[arith_addi_47][arith_const_13]; 
            double memref_load_80 = func_arg_6[arith_addi_47][arith_addi_49]; 
            double arith_mulf_81 = (func_arg_3 * memref_load_80); 
            double memref_load_82 = func_arg_7[arith_addi_49][arith_const_13]; 
            double arith_mulf_83 = (arith_mulf_81 * memref_load_82); 
            double arith_addf_84 = (memref_load_79 + arith_mulf_83); 
            func_arg_5[arith_addi_47][arith_const_13] = arith_addf_84; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
    }
    async_group_40[async_group_index_41] = execute_token_44; 
    async_group_index_41++; 
    int arith_addi_85 = (for_iter_arg_43 + arith_const_16); 
    for_iter_arg_43 = arith_addi_85; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
