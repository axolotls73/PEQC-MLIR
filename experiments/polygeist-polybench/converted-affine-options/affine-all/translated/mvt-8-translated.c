#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 4; 
  int arith_const_8 = 8; 
  int arith_const_9 = 10; 
  int arith_const_10 = -8; 
  int arith_const_11 = 32; 
  int arith_const_12 = 40; 
  int arith_const_13 = -32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_14; 
  for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_15; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_15; for_iter_22 += arith_const_16) {
        int arith_muli_23 = (for_iter_19 * arith_const_13); 
        int arith_addi_24 = (arith_muli_23 + arith_const_12); 
        int arith_minsi_25 = min(arith_addi_24, arith_const_11); 
        for (int for_iter_26 = arith_const_14; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_16) {
          int arith_muli_27 = (for_iter_19 * arith_const_11); 
          int arith_addi_28 = (arith_muli_27 + for_iter_26); 
          int arith_muli_29 = (for_iter_22 * arith_const_10); 
          int arith_addi_30 = (arith_muli_29 + arith_const_9); 
          int arith_minsi_31 = min(arith_addi_30, arith_const_8); 
          for (int for_iter_32 = arith_const_14; for_iter_32 < arith_minsi_31; for_iter_32 += arith_const_16) {
            int arith_muli_33 = (for_iter_22 * arith_const_11); 
            int arith_muli_34 = (for_iter_32 * arith_const_7); 
            int arith_addi_35 = (arith_muli_33 + arith_muli_34); 
            double memref_load_36 = func_arg_1[arith_addi_28]; 
            double memref_load_37 = func_arg_5[arith_addi_28][arith_addi_35]; 
            double memref_load_38 = func_arg_3[arith_addi_35]; 
            double arith_mulf_39 = (memref_load_37 * memref_load_38); 
            double arith_addf_40 = (memref_load_36 + arith_mulf_39); 
            func_arg_1[arith_addi_28] = arith_addf_40; 
            double memref_load_41 = func_arg_2[arith_addi_28]; 
            double memref_load_42 = func_arg_5[arith_addi_35][arith_addi_28]; 
            double memref_load_43 = func_arg_4[arith_addi_35]; 
            double arith_mulf_44 = (memref_load_42 * memref_load_43); 
            double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
            func_arg_2[arith_addi_28] = arith_addf_45; 
            int arith_addi_46 = (arith_addi_35 + arith_const_16); 
            double memref_load_47 = func_arg_1[arith_addi_28]; 
            double memref_load_48 = func_arg_5[arith_addi_28][arith_addi_46]; 
            double memref_load_49 = func_arg_3[arith_addi_46]; 
            double arith_mulf_50 = (memref_load_48 * memref_load_49); 
            double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
            func_arg_1[arith_addi_28] = arith_addf_51; 
            double memref_load_52 = func_arg_2[arith_addi_28]; 
            double memref_load_53 = func_arg_5[arith_addi_46][arith_addi_28]; 
            double memref_load_54 = func_arg_4[arith_addi_46]; 
            double arith_mulf_55 = (memref_load_53 * memref_load_54); 
            double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
            func_arg_2[arith_addi_28] = arith_addf_56; 
            int arith_addi_57 = (arith_addi_35 + arith_const_15); 
            double memref_load_58 = func_arg_1[arith_addi_28]; 
            double memref_load_59 = func_arg_5[arith_addi_28][arith_addi_57]; 
            double memref_load_60 = func_arg_3[arith_addi_57]; 
            double arith_mulf_61 = (memref_load_59 * memref_load_60); 
            double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
            func_arg_1[arith_addi_28] = arith_addf_62; 
            double memref_load_63 = func_arg_2[arith_addi_28]; 
            double memref_load_64 = func_arg_5[arith_addi_57][arith_addi_28]; 
            double memref_load_65 = func_arg_4[arith_addi_57]; 
            double arith_mulf_66 = (memref_load_64 * memref_load_65); 
            double arith_addf_67 = (memref_load_63 + arith_mulf_66); 
            func_arg_2[arith_addi_28] = arith_addf_67; 
            int arith_addi_68 = (arith_addi_35 + arith_const_6); 
            double memref_load_69 = func_arg_1[arith_addi_28]; 
            double memref_load_70 = func_arg_5[arith_addi_28][arith_addi_68]; 
            double memref_load_71 = func_arg_3[arith_addi_68]; 
            double arith_mulf_72 = (memref_load_70 * memref_load_71); 
            double arith_addf_73 = (memref_load_69 + arith_mulf_72); 
            func_arg_1[arith_addi_28] = arith_addf_73; 
            double memref_load_74 = func_arg_2[arith_addi_28]; 
            double memref_load_75 = func_arg_5[arith_addi_68][arith_addi_28]; 
            double memref_load_76 = func_arg_4[arith_addi_68]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double arith_addf_78 = (memref_load_74 + arith_mulf_77); 
            func_arg_2[arith_addi_28] = arith_addf_78; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_79 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_79; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
