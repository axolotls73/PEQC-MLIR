#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 24; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_16; 
  for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_17; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      int arith_muli_23 = (for_iter_20 * arith_const_14); 
      for (int for_iter_24 = arith_const_16; for_iter_24 < arith_const_13; for_iter_24 += arith_const_17) {
        int arith_addi_25 = (arith_muli_23 + for_iter_24); 
        for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_12; for_iter_26 += arith_const_17) {
          int arith_muli_27 = (for_iter_26 * arith_const_11); 
          double memref_load_28 = func_arg_5[arith_addi_25][arith_muli_27]; 
          double arith_mulf_29 = (memref_load_28 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_muli_27] = arith_mulf_29; 
          int arith_addi_30 = (arith_muli_27 + arith_const_17); 
          double memref_load_31 = func_arg_5[arith_addi_25][arith_addi_30]; 
          double arith_mulf_32 = (memref_load_31 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_30] = arith_mulf_32; 
          int arith_addi_33 = (arith_muli_27 + arith_const_10); 
          double memref_load_34 = func_arg_5[arith_addi_25][arith_addi_33]; 
          double arith_mulf_35 = (memref_load_34 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_33] = arith_mulf_35; 
          int arith_addi_36 = (arith_muli_27 + arith_const_9); 
          double memref_load_37 = func_arg_5[arith_addi_25][arith_addi_36]; 
          double arith_mulf_38 = (memref_load_37 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_36] = arith_mulf_38; 
        }
        double memref_load_39 = func_arg_5[arith_addi_25][arith_const_15]; 
        double arith_mulf_40 = (memref_load_39 * func_arg_4); 
        func_arg_5[arith_addi_25][arith_const_15] = arith_mulf_40; 
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_41 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_41; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_42; 
  int async_group_index_43 = 0; 
  int for_iter_arg_45 = arith_const_16; 
  for (int for_iter_44 = arith_const_16; for_iter_44 < arith_const_17; for_iter_44 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_46); 
    #pragma peqc async_execute
    {
      int arith_muli_47 = (for_iter_44 * arith_const_14); 
      for (int for_iter_48 = arith_const_16; for_iter_48 < arith_const_17; for_iter_48 += arith_const_17) {
        int arith_muli_49 = (for_iter_48 * arith_const_14); 
        for (int for_iter_50 = arith_const_16; for_iter_50 < arith_const_13; for_iter_50 += arith_const_17) {
          int arith_addi_51 = (arith_muli_47 + for_iter_50); 
          for (int for_iter_52 = arith_const_16; for_iter_52 < arith_const_8; for_iter_52 += arith_const_17) {
            int arith_addi_53 = (arith_muli_49 + for_iter_52); 
            double memref_load_54 = func_arg_6[arith_addi_51][arith_addi_53]; 
            double arith_mulf_55 = (func_arg_3 * memref_load_54); 
            double memref_load_56 = func_arg_6[arith_addi_51][arith_addi_53]; 
            double arith_mulf_57 = (func_arg_3 * memref_load_56); 
            double memref_load_58 = func_arg_6[arith_addi_51][arith_addi_53]; 
            double arith_mulf_59 = (func_arg_3 * memref_load_58); 
            double memref_load_60 = func_arg_6[arith_addi_51][arith_addi_53]; 
            double arith_mulf_61 = (func_arg_3 * memref_load_60); 
            for (int for_iter_62 = arith_const_16; for_iter_62 < arith_const_12; for_iter_62 += arith_const_17) {
              int arith_muli_63 = (for_iter_62 * arith_const_11); 
              double memref_load_64 = func_arg_5[arith_addi_51][arith_muli_63]; 
              double memref_load_65 = func_arg_7[arith_addi_53][arith_muli_63]; 
              double arith_mulf_66 = (arith_mulf_55 * memref_load_65); 
              double arith_addf_67 = (memref_load_64 + arith_mulf_66); 
              func_arg_5[arith_addi_51][arith_muli_63] = arith_addf_67; 
              int arith_addi_68 = (arith_muli_63 + arith_const_17); 
              double memref_load_69 = func_arg_5[arith_addi_51][arith_addi_68]; 
              double memref_load_70 = func_arg_7[arith_addi_53][arith_addi_68]; 
              double arith_mulf_71 = (arith_mulf_57 * memref_load_70); 
              double arith_addf_72 = (memref_load_69 + arith_mulf_71); 
              func_arg_5[arith_addi_51][arith_addi_68] = arith_addf_72; 
              int arith_addi_73 = (arith_muli_63 + arith_const_10); 
              double memref_load_74 = func_arg_5[arith_addi_51][arith_addi_73]; 
              double memref_load_75 = func_arg_7[arith_addi_53][arith_addi_73]; 
              double arith_mulf_76 = (arith_mulf_59 * memref_load_75); 
              double arith_addf_77 = (memref_load_74 + arith_mulf_76); 
              func_arg_5[arith_addi_51][arith_addi_73] = arith_addf_77; 
              int arith_addi_78 = (arith_muli_63 + arith_const_9); 
              double memref_load_79 = func_arg_5[arith_addi_51][arith_addi_78]; 
              double memref_load_80 = func_arg_7[arith_addi_53][arith_addi_78]; 
              double arith_mulf_81 = (arith_mulf_61 * memref_load_80); 
              double arith_addf_82 = (memref_load_79 + arith_mulf_81); 
              func_arg_5[arith_addi_51][arith_addi_78] = arith_addf_82; 
            }
            double memref_load_83 = func_arg_5[arith_addi_51][arith_const_15]; 
            double memref_load_84 = func_arg_6[arith_addi_51][arith_addi_53]; 
            double arith_mulf_85 = (func_arg_3 * memref_load_84); 
            double memref_load_86 = func_arg_7[arith_addi_53][arith_const_15]; 
            double arith_mulf_87 = (arith_mulf_85 * memref_load_86); 
            double arith_addf_88 = (memref_load_83 + arith_mulf_87); 
            func_arg_5[arith_addi_51][arith_const_15] = arith_addf_88; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
    }
    async_group_42[async_group_index_43] = execute_token_46; 
    async_group_index_43++; 
    int arith_addi_89 = (for_iter_arg_45 + arith_const_17); 
    for_iter_arg_45 = arith_addi_89; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_42, async_group_index_43, PAST_TASK_FINISHED); 
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
