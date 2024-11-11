#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
        for (int for_iter_39 = arith_const_14; for_iter_39 < arith_const_8; for_iter_39 += arith_const_16) {
          double memref_load_40 = func_arg_6[arith_addi_23][for_iter_39]; 
          double arith_mulf_41 = (func_arg_3 * memref_load_40); 
          double memref_load_42 = func_arg_6[arith_addi_23][for_iter_39]; 
          double arith_mulf_43 = (func_arg_3 * memref_load_42); 
          double memref_load_44 = func_arg_6[arith_addi_23][for_iter_39]; 
          double arith_mulf_45 = (func_arg_3 * memref_load_44); 
          double memref_load_46 = func_arg_6[arith_addi_23][for_iter_39]; 
          double arith_mulf_47 = (func_arg_3 * memref_load_46); 
          for (int for_iter_48 = arith_const_14; for_iter_48 < arith_const_12; for_iter_48 += arith_const_16) {
            int arith_muli_49 = (for_iter_48 * arith_const_11); 
            double memref_load_50 = func_arg_7[for_iter_39][arith_muli_49]; 
            double arith_mulf_51 = (arith_mulf_41 * memref_load_50); 
            double memref_load_52 = func_arg_5[arith_addi_23][arith_muli_49]; 
            double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
            func_arg_5[arith_addi_23][arith_muli_49] = arith_addf_53; 
            int arith_addi_54 = (arith_muli_49 + arith_const_16); 
            double memref_load_55 = func_arg_7[for_iter_39][arith_addi_54]; 
            double arith_mulf_56 = (arith_mulf_43 * memref_load_55); 
            double memref_load_57 = func_arg_5[arith_addi_23][arith_addi_54]; 
            double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
            func_arg_5[arith_addi_23][arith_addi_54] = arith_addf_58; 
            int arith_addi_59 = (arith_muli_49 + arith_const_10); 
            double memref_load_60 = func_arg_7[for_iter_39][arith_addi_59]; 
            double arith_mulf_61 = (arith_mulf_45 * memref_load_60); 
            double memref_load_62 = func_arg_5[arith_addi_23][arith_addi_59]; 
            double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
            func_arg_5[arith_addi_23][arith_addi_59] = arith_addf_63; 
            int arith_addi_64 = (arith_muli_49 + arith_const_9); 
            double memref_load_65 = func_arg_7[for_iter_39][arith_addi_64]; 
            double arith_mulf_66 = (arith_mulf_47 * memref_load_65); 
            double memref_load_67 = func_arg_5[arith_addi_23][arith_addi_64]; 
            double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
            func_arg_5[arith_addi_23][arith_addi_64] = arith_addf_68; 
          }
          double memref_load_69 = func_arg_6[arith_addi_23][for_iter_39]; 
          double arith_mulf_70 = (func_arg_3 * memref_load_69); 
          double memref_load_71 = func_arg_7[for_iter_39][arith_const_13]; 
          double arith_mulf_72 = (arith_mulf_70 * memref_load_71); 
          double memref_load_73 = func_arg_5[arith_addi_23][arith_const_13]; 
          double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
          func_arg_5[arith_addi_23][arith_const_13] = arith_addf_74; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_75 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_75; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
