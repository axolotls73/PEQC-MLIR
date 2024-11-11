#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_10; for_iter_16 += arith_const_14) {
      int* async_group_17; 
      int async_group_index_18 = 0; 
      int for_iter_arg_20 = arith_const_12; 
      for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_14; for_iter_19 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_21); 
        #pragma peqc async_execute
        {
          int arith_addi_22 = (for_iter_15 + for_iter_19); 
          for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_14; for_iter_23 += arith_const_14) {
            int arith_addi_24 = (for_iter_16 + for_iter_23); 
            for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_9; for_iter_25 += arith_const_14) {
              func_arg_5[for_iter_25] = arith_const_11; 
              for (int for_iter_26 = arith_const_12; for_iter_26 < arith_const_8; for_iter_26 += arith_const_14) {
                int arith_muli_27 = (for_iter_26 * arith_const_7); 
                double memref_load_28 = func_arg_3[arith_addi_22][arith_addi_24][arith_muli_27]; 
                double memref_load_29 = func_arg_4[arith_muli_27][for_iter_25]; 
                double arith_mulf_30 = (memref_load_28 * memref_load_29); 
                double memref_load_31 = func_arg_5[for_iter_25]; 
                double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
                func_arg_5[for_iter_25] = arith_addf_32; 
                int arith_addi_33 = (arith_muli_27 + arith_const_14); 
                double memref_load_34 = func_arg_3[arith_addi_22][arith_addi_24][arith_addi_33]; 
                double memref_load_35 = func_arg_4[arith_addi_33][for_iter_25]; 
                double arith_mulf_36 = (memref_load_34 * memref_load_35); 
                double memref_load_37 = func_arg_5[for_iter_25]; 
                double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
                func_arg_5[for_iter_25] = arith_addf_38; 
                int arith_addi_39 = (arith_muli_27 + arith_const_6); 
                double memref_load_40 = func_arg_3[arith_addi_22][arith_addi_24][arith_addi_39]; 
                double memref_load_41 = func_arg_4[arith_addi_39][for_iter_25]; 
                double arith_mulf_42 = (memref_load_40 * memref_load_41); 
                double memref_load_43 = func_arg_5[for_iter_25]; 
                double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
                func_arg_5[for_iter_25] = arith_addf_44; 
                int arith_addi_45 = (arith_muli_27 + arith_const_8); 
                double memref_load_46 = func_arg_3[arith_addi_22][arith_addi_24][arith_addi_45]; 
                double memref_load_47 = func_arg_4[arith_addi_45][for_iter_25]; 
                double arith_mulf_48 = (memref_load_46 * memref_load_47); 
                double memref_load_49 = func_arg_5[for_iter_25]; 
                double arith_addf_50 = (memref_load_49 + arith_mulf_48); 
                func_arg_5[for_iter_25] = arith_addf_50; 
              }
            }
            for (int for_iter_51 = arith_const_12; for_iter_51 < arith_const_8; for_iter_51 += arith_const_14) {
              int arith_muli_52 = (for_iter_51 * arith_const_7); 
              double memref_load_53 = func_arg_5[arith_muli_52]; 
              func_arg_3[arith_addi_22][arith_addi_24][arith_muli_52] = memref_load_53; 
              int arith_addi_54 = (arith_muli_52 + arith_const_14); 
              double memref_load_55 = func_arg_5[arith_addi_54]; 
              func_arg_3[arith_addi_22][arith_addi_24][arith_addi_54] = memref_load_55; 
              int arith_addi_56 = (arith_muli_52 + arith_const_6); 
              double memref_load_57 = func_arg_5[arith_addi_56]; 
              func_arg_3[arith_addi_22][arith_addi_24][arith_addi_56] = memref_load_57; 
              int arith_addi_58 = (arith_muli_52 + arith_const_8); 
              double memref_load_59 = func_arg_5[arith_addi_58]; 
              func_arg_3[arith_addi_22][arith_addi_24][arith_addi_58] = memref_load_59; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
        }
        async_group_17[async_group_index_18] = execute_token_21; 
        async_group_index_18++; 
        int arith_addi_60 = (for_iter_arg_20 + arith_const_14); 
        for_iter_arg_20 = arith_addi_60; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}

#pragma pocc-region-end
