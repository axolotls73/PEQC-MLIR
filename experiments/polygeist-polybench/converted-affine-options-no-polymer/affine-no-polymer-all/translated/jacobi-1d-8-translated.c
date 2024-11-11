#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 7; 
  double arith_const_9 = 0.333330; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int* async_group_14; 
    int async_group_index_15 = 0; 
    int for_iter_arg_17 = arith_const_10; 
    for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_12; for_iter_16 += arith_const_12) {
      PAST_NEW_SEMAPHORE(execute_token_18); 
      #pragma peqc async_execute
      {
        for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_8; for_iter_19 += arith_const_12) {
          int arith_muli_20 = (for_iter_19 * arith_const_7); 
          int arith_addi_21 = (arith_muli_20 + arith_const_12); 
          int arith_addi_22 = (arith_addi_21 + arith_const_6); 
          double memref_load_23 = func_arg_2[arith_addi_22]; 
          double memref_load_24 = func_arg_2[arith_addi_21]; 
          double arith_addf_25 = (memref_load_23 + memref_load_24); 
          int arith_addi_26 = (arith_addi_21 + arith_const_12); 
          double memref_load_27 = func_arg_2[arith_addi_26]; 
          double arith_addf_28 = (arith_addf_25 + memref_load_27); 
          double arith_mulf_29 = (arith_addf_28 * arith_const_9); 
          func_arg_3[arith_addi_21] = arith_mulf_29; 
          int arith_addi_30 = (arith_addi_21 + arith_const_12); 
          int arith_addi_31 = (arith_addi_30 + arith_const_6); 
          double memref_load_32 = func_arg_2[arith_addi_31]; 
          double memref_load_33 = func_arg_2[arith_addi_30]; 
          double arith_addf_34 = (memref_load_32 + memref_load_33); 
          int arith_addi_35 = (arith_addi_30 + arith_const_12); 
          double memref_load_36 = func_arg_2[arith_addi_35]; 
          double arith_addf_37 = (arith_addf_34 + memref_load_36); 
          double arith_mulf_38 = (arith_addf_37 * arith_const_9); 
          func_arg_3[arith_addi_30] = arith_mulf_38; 
          int arith_addi_39 = (arith_addi_21 + arith_const_5); 
          int arith_addi_40 = (arith_addi_39 + arith_const_6); 
          double memref_load_41 = func_arg_2[arith_addi_40]; 
          double memref_load_42 = func_arg_2[arith_addi_39]; 
          double arith_addf_43 = (memref_load_41 + memref_load_42); 
          int arith_addi_44 = (arith_addi_39 + arith_const_12); 
          double memref_load_45 = func_arg_2[arith_addi_44]; 
          double arith_addf_46 = (arith_addf_43 + memref_load_45); 
          double arith_mulf_47 = (arith_addf_46 * arith_const_9); 
          func_arg_3[arith_addi_39] = arith_mulf_47; 
          int arith_addi_48 = (arith_addi_21 + arith_const_4); 
          int arith_addi_49 = (arith_addi_48 + arith_const_6); 
          double memref_load_50 = func_arg_2[arith_addi_49]; 
          double memref_load_51 = func_arg_2[arith_addi_48]; 
          double arith_addf_52 = (memref_load_50 + memref_load_51); 
          int arith_addi_53 = (arith_addi_48 + arith_const_12); 
          double memref_load_54 = func_arg_2[arith_addi_53]; 
          double arith_addf_55 = (arith_addf_52 + memref_load_54); 
          double arith_mulf_56 = (arith_addf_55 * arith_const_9); 
          func_arg_3[arith_addi_48] = arith_mulf_56; 
        }
        for (int for_iter_57 = arith_const_10; for_iter_57 < arith_const_8; for_iter_57 += arith_const_12) {
          int arith_muli_58 = (for_iter_57 * arith_const_7); 
          int arith_addi_59 = (arith_muli_58 + arith_const_12); 
          int arith_addi_60 = (arith_addi_59 + arith_const_6); 
          double memref_load_61 = func_arg_3[arith_addi_60]; 
          double memref_load_62 = func_arg_3[arith_addi_59]; 
          double arith_addf_63 = (memref_load_61 + memref_load_62); 
          int arith_addi_64 = (arith_addi_59 + arith_const_12); 
          double memref_load_65 = func_arg_3[arith_addi_64]; 
          double arith_addf_66 = (arith_addf_63 + memref_load_65); 
          double arith_mulf_67 = (arith_addf_66 * arith_const_9); 
          func_arg_2[arith_addi_59] = arith_mulf_67; 
          int arith_addi_68 = (arith_addi_59 + arith_const_12); 
          int arith_addi_69 = (arith_addi_68 + arith_const_6); 
          double memref_load_70 = func_arg_3[arith_addi_69]; 
          double memref_load_71 = func_arg_3[arith_addi_68]; 
          double arith_addf_72 = (memref_load_70 + memref_load_71); 
          int arith_addi_73 = (arith_addi_68 + arith_const_12); 
          double memref_load_74 = func_arg_3[arith_addi_73]; 
          double arith_addf_75 = (arith_addf_72 + memref_load_74); 
          double arith_mulf_76 = (arith_addf_75 * arith_const_9); 
          func_arg_2[arith_addi_68] = arith_mulf_76; 
          int arith_addi_77 = (arith_addi_59 + arith_const_5); 
          int arith_addi_78 = (arith_addi_77 + arith_const_6); 
          double memref_load_79 = func_arg_3[arith_addi_78]; 
          double memref_load_80 = func_arg_3[arith_addi_77]; 
          double arith_addf_81 = (memref_load_79 + memref_load_80); 
          int arith_addi_82 = (arith_addi_77 + arith_const_12); 
          double memref_load_83 = func_arg_3[arith_addi_82]; 
          double arith_addf_84 = (arith_addf_81 + memref_load_83); 
          double arith_mulf_85 = (arith_addf_84 * arith_const_9); 
          func_arg_2[arith_addi_77] = arith_mulf_85; 
          int arith_addi_86 = (arith_addi_59 + arith_const_4); 
          int arith_addi_87 = (arith_addi_86 + arith_const_6); 
          double memref_load_88 = func_arg_3[arith_addi_87]; 
          double memref_load_89 = func_arg_3[arith_addi_86]; 
          double arith_addf_90 = (memref_load_88 + memref_load_89); 
          int arith_addi_91 = (arith_addi_86 + arith_const_12); 
          double memref_load_92 = func_arg_3[arith_addi_91]; 
          double arith_addf_93 = (arith_addf_90 + memref_load_92); 
          double arith_mulf_94 = (arith_addf_93 * arith_const_9); 
          func_arg_2[arith_addi_86] = arith_mulf_94; 
        }
        PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
      }
      async_group_14[async_group_index_15] = execute_token_18; 
      async_group_index_15++; 
      int arith_addi_95 = (for_iter_arg_17 + arith_const_12); 
      for_iter_arg_17 = arith_addi_95; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
