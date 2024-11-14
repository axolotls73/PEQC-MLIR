#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 28; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  int arith_const_13 = 30; 
  int arith_const_14 = 32; 
  double arith_const_15 = 0.000000; 
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
        func_arg_5[arith_addi_25] = arith_const_15; 
        func_arg_7[arith_addi_25] = arith_const_15; 
        for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_12; for_iter_26 += arith_const_17) {
          int arith_muli_27 = (for_iter_26 * arith_const_11); 
          double memref_load_28 = func_arg_3[arith_addi_25][arith_muli_27]; 
          double memref_load_29 = func_arg_6[arith_muli_27]; 
          double arith_mulf_30 = (memref_load_28 * memref_load_29); 
          double memref_load_31 = func_arg_5[arith_addi_25]; 
          double arith_addf_32 = (arith_mulf_30 + memref_load_31); 
          func_arg_5[arith_addi_25] = arith_addf_32; 
          double memref_load_33 = func_arg_4[arith_addi_25][arith_muli_27]; 
          double memref_load_34 = func_arg_6[arith_muli_27]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double memref_load_36 = func_arg_7[arith_addi_25]; 
          double arith_addf_37 = (arith_mulf_35 + memref_load_36); 
          func_arg_7[arith_addi_25] = arith_addf_37; 
          int arith_addi_38 = (arith_muli_27 + arith_const_17); 
          double memref_load_39 = func_arg_3[arith_addi_25][arith_addi_38]; 
          double memref_load_40 = func_arg_6[arith_addi_38]; 
          double arith_mulf_41 = (memref_load_39 * memref_load_40); 
          double memref_load_42 = func_arg_5[arith_addi_25]; 
          double arith_addf_43 = (arith_mulf_41 + memref_load_42); 
          func_arg_5[arith_addi_25] = arith_addf_43; 
          double memref_load_44 = func_arg_4[arith_addi_25][arith_addi_38]; 
          double memref_load_45 = func_arg_6[arith_addi_38]; 
          double arith_mulf_46 = (memref_load_44 * memref_load_45); 
          double memref_load_47 = func_arg_7[arith_addi_25]; 
          double arith_addf_48 = (arith_mulf_46 + memref_load_47); 
          func_arg_7[arith_addi_25] = arith_addf_48; 
          int arith_addi_49 = (arith_muli_27 + arith_const_10); 
          double memref_load_50 = func_arg_3[arith_addi_25][arith_addi_49]; 
          double memref_load_51 = func_arg_6[arith_addi_49]; 
          double arith_mulf_52 = (memref_load_50 * memref_load_51); 
          double memref_load_53 = func_arg_5[arith_addi_25]; 
          double arith_addf_54 = (arith_mulf_52 + memref_load_53); 
          func_arg_5[arith_addi_25] = arith_addf_54; 
          double memref_load_55 = func_arg_4[arith_addi_25][arith_addi_49]; 
          double memref_load_56 = func_arg_6[arith_addi_49]; 
          double arith_mulf_57 = (memref_load_55 * memref_load_56); 
          double memref_load_58 = func_arg_7[arith_addi_25]; 
          double arith_addf_59 = (arith_mulf_57 + memref_load_58); 
          func_arg_7[arith_addi_25] = arith_addf_59; 
          int arith_addi_60 = (arith_muli_27 + arith_const_9); 
          double memref_load_61 = func_arg_3[arith_addi_25][arith_addi_60]; 
          double memref_load_62 = func_arg_6[arith_addi_60]; 
          double arith_mulf_63 = (memref_load_61 * memref_load_62); 
          double memref_load_64 = func_arg_5[arith_addi_25]; 
          double arith_addf_65 = (arith_mulf_63 + memref_load_64); 
          func_arg_5[arith_addi_25] = arith_addf_65; 
          double memref_load_66 = func_arg_4[arith_addi_25][arith_addi_60]; 
          double memref_load_67 = func_arg_6[arith_addi_60]; 
          double arith_mulf_68 = (memref_load_66 * memref_load_67); 
          double memref_load_69 = func_arg_7[arith_addi_25]; 
          double arith_addf_70 = (arith_mulf_68 + memref_load_69); 
          func_arg_7[arith_addi_25] = arith_addf_70; 
        }
        for (int for_iter_71 = arith_const_16; for_iter_71 < arith_const_10; for_iter_71 += arith_const_17) {
          int arith_addi_72 = (for_iter_71 + arith_const_8); 
          double memref_load_73 = func_arg_3[arith_addi_25][arith_addi_72]; 
          double memref_load_74 = func_arg_6[arith_addi_72]; 
          double arith_mulf_75 = (memref_load_73 * memref_load_74); 
          double memref_load_76 = func_arg_5[arith_addi_25]; 
          double arith_addf_77 = (arith_mulf_75 + memref_load_76); 
          func_arg_5[arith_addi_25] = arith_addf_77; 
          double memref_load_78 = func_arg_4[arith_addi_25][arith_addi_72]; 
          double memref_load_79 = func_arg_6[arith_addi_72]; 
          double arith_mulf_80 = (memref_load_78 * memref_load_79); 
          double memref_load_81 = func_arg_7[arith_addi_25]; 
          double arith_addf_82 = (arith_mulf_80 + memref_load_81); 
          func_arg_7[arith_addi_25] = arith_addf_82; 
        }
        double memref_load_83 = func_arg_5[arith_addi_25]; 
        double arith_mulf_84 = (func_arg_1 * memref_load_83); 
        double memref_load_85 = func_arg_7[arith_addi_25]; 
        double arith_mulf_86 = (func_arg_2 * memref_load_85); 
        double arith_addf_87 = (arith_mulf_84 + arith_mulf_86); 
        func_arg_7[arith_addi_25] = arith_addf_87; 
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_88 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_88; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
