#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 29; 
  int arith_const_8 = 19; 
  int arith_const_9 = -1; 
  int arith_const_10 = 30; 
  double arith_const_11 = 0.700000; 
  double arith_const_12 = 0.500000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int* async_group_17; 
    int async_group_index_18 = 0; 
    int for_iter_arg_20 = arith_const_13; 
    for (int for_iter_19 = arith_const_13; for_iter_19 < arith_const_10; for_iter_19 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_21); 
      #pragma peqc async_execute
      {
        double memref_load_22 = func_arg_6[for_iter_16]; 
        func_arg_4[arith_const_13][for_iter_19] = memref_load_22; 
        PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
      }
      async_group_17[async_group_index_18] = execute_token_21; 
      async_group_index_18++; 
      int arith_addi_23 = (for_iter_arg_20 + arith_const_15); 
      for_iter_arg_20 = arith_addi_23; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
    int* async_group_24; 
    int async_group_index_25 = 0; 
    int for_iter_arg_27 = arith_const_13; 
    for (int for_iter_26 = arith_const_15; for_iter_26 < arith_const_14; for_iter_26 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_28); 
      #pragma peqc async_execute
      {
        for (int for_iter_29 = arith_const_13; for_iter_29 < arith_const_10; for_iter_29 += arith_const_15) {
          double memref_load_30 = func_arg_4[for_iter_26][for_iter_29]; 
          double memref_load_31 = func_arg_5[for_iter_26][for_iter_29]; 
          int arith_addi_32 = (for_iter_26 + arith_const_9); 
          double memref_load_33 = func_arg_5[arith_addi_32][for_iter_29]; 
          double arith_subf_34 = (memref_load_31 - memref_load_33); 
          double arith_mulf_35 = (arith_subf_34 * arith_const_12); 
          double arith_subf_36 = (memref_load_30 - arith_mulf_35); 
          func_arg_4[for_iter_26][for_iter_29] = arith_subf_36; 
        }
        PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
      }
      async_group_24[async_group_index_25] = execute_token_28; 
      async_group_index_25++; 
      int arith_addi_37 = (for_iter_arg_27 + arith_const_15); 
      for_iter_arg_27 = arith_addi_37; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
    int* async_group_38; 
    int async_group_index_39 = 0; 
    int for_iter_arg_41 = arith_const_13; 
    for (int for_iter_40 = arith_const_13; for_iter_40 < arith_const_14; for_iter_40 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_42); 
      #pragma peqc async_execute
      {
        for (int for_iter_43 = arith_const_15; for_iter_43 < arith_const_10; for_iter_43 += arith_const_15) {
          double memref_load_44 = func_arg_3[for_iter_40][for_iter_43]; 
          double memref_load_45 = func_arg_5[for_iter_40][for_iter_43]; 
          int arith_addi_46 = (for_iter_43 + arith_const_9); 
          double memref_load_47 = func_arg_5[for_iter_40][arith_addi_46]; 
          double arith_subf_48 = (memref_load_45 - memref_load_47); 
          double arith_mulf_49 = (arith_subf_48 * arith_const_12); 
          double arith_subf_50 = (memref_load_44 - arith_mulf_49); 
          func_arg_3[for_iter_40][for_iter_43] = arith_subf_50; 
        }
        PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
      }
      async_group_38[async_group_index_39] = execute_token_42; 
      async_group_index_39++; 
      int arith_addi_51 = (for_iter_arg_41 + arith_const_15); 
      for_iter_arg_41 = arith_addi_51; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
    int* async_group_52; 
    int async_group_index_53 = 0; 
    int for_iter_arg_55 = arith_const_13; 
    for (int for_iter_54 = arith_const_13; for_iter_54 < arith_const_8; for_iter_54 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_56); 
      #pragma peqc async_execute
      {
        for (int for_iter_57 = arith_const_13; for_iter_57 < arith_const_7; for_iter_57 += arith_const_15) {
          double memref_load_58 = func_arg_5[for_iter_54][for_iter_57]; 
          int arith_addi_59 = (for_iter_57 + arith_const_15); 
          double memref_load_60 = func_arg_3[for_iter_54][arith_addi_59]; 
          double memref_load_61 = func_arg_3[for_iter_54][for_iter_57]; 
          double arith_subf_62 = (memref_load_60 - memref_load_61); 
          int arith_addi_63 = (for_iter_54 + arith_const_15); 
          double memref_load_64 = func_arg_4[arith_addi_63][for_iter_57]; 
          double arith_addf_65 = (arith_subf_62 + memref_load_64); 
          double memref_load_66 = func_arg_4[for_iter_54][for_iter_57]; 
          double arith_subf_67 = (arith_addf_65 - memref_load_66); 
          double arith_mulf_68 = (arith_subf_67 * arith_const_11); 
          double arith_subf_69 = (memref_load_58 - arith_mulf_68); 
          func_arg_5[for_iter_54][for_iter_57] = arith_subf_69; 
        }
        PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
      }
      async_group_52[async_group_index_53] = execute_token_56; 
      async_group_index_53++; 
      int arith_addi_70 = (for_iter_arg_55 + arith_const_15); 
      for_iter_arg_55 = arith_addi_70; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_52, async_group_index_53, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}

#pragma pocc-region-end
