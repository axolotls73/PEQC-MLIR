#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 3; 
  int arith_const_3 = 4; 
  int arith_const_4 = 8; 
  int arith_const_5 = 15; 
  int arith_const_6 = -8; 
  int arith_const_7 = 32; 
  int arith_const_8 = -32; 
  int arith_const_9 = 2; 
  int arith_const_10 = 0; 
  int arith_const_11 = 60; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_12) {
      for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_9; for_iter_15 += arith_const_12) {
        int arith_muli_16 = (for_iter_14 * arith_const_8); 
        int arith_addi_17 = (arith_muli_16 + arith_const_11); 
        int arith_minsi_18 = min(arith_addi_17, arith_const_7); 
        for (int for_iter_19 = arith_const_10; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_12) {
          int arith_muli_20 = (for_iter_14 * arith_const_7); 
          int arith_addi_21 = (arith_muli_20 + for_iter_19); 
          int arith_muli_22 = (for_iter_15 * arith_const_6); 
          int arith_addi_23 = (arith_muli_22 + arith_const_5); 
          int arith_minsi_24 = min(arith_addi_23, arith_const_4); 
          for (int for_iter_25 = arith_const_10; for_iter_25 < arith_minsi_24; for_iter_25 += arith_const_12) {
            int arith_muli_26 = (for_iter_15 * arith_const_7); 
            int arith_muli_27 = (for_iter_25 * arith_const_3); 
            int arith_addi_28 = (arith_muli_26 + arith_muli_27); 
            int memref_load_29 = func_arg_1[arith_addi_21][arith_addi_28]; 
            int memref_load_30 = func_arg_1[arith_addi_21][for_iter_13]; 
            int memref_load_31 = func_arg_1[for_iter_13][arith_addi_28]; 
            int arith_addi_32 = (memref_load_30 + memref_load_31); 
            int arith_cmpi_33 = ((memref_load_29 < arith_addi_32) ? 1 : 0); 
            int arith_select_34 = (arith_cmpi_33 ? memref_load_29 : arith_addi_32); 
            func_arg_1[arith_addi_21][arith_addi_28] = arith_select_34; 
            int arith_addi_35 = (arith_addi_28 + arith_const_12); 
            int memref_load_36 = func_arg_1[arith_addi_21][arith_addi_35]; 
            int memref_load_37 = func_arg_1[arith_addi_21][for_iter_13]; 
            int memref_load_38 = func_arg_1[for_iter_13][arith_addi_35]; 
            int arith_addi_39 = (memref_load_37 + memref_load_38); 
            int arith_cmpi_40 = ((memref_load_36 < arith_addi_39) ? 1 : 0); 
            int arith_select_41 = (arith_cmpi_40 ? memref_load_36 : arith_addi_39); 
            func_arg_1[arith_addi_21][arith_addi_35] = arith_select_41; 
            int arith_addi_42 = (arith_addi_28 + arith_const_9); 
            int memref_load_43 = func_arg_1[arith_addi_21][arith_addi_42]; 
            int memref_load_44 = func_arg_1[arith_addi_21][for_iter_13]; 
            int memref_load_45 = func_arg_1[for_iter_13][arith_addi_42]; 
            int arith_addi_46 = (memref_load_44 + memref_load_45); 
            int arith_cmpi_47 = ((memref_load_43 < arith_addi_46) ? 1 : 0); 
            int arith_select_48 = (arith_cmpi_47 ? memref_load_43 : arith_addi_46); 
            func_arg_1[arith_addi_21][arith_addi_42] = arith_select_48; 
            int arith_addi_49 = (arith_addi_28 + arith_const_2); 
            int memref_load_50 = func_arg_1[arith_addi_21][arith_addi_49]; 
            int memref_load_51 = func_arg_1[arith_addi_21][for_iter_13]; 
            int memref_load_52 = func_arg_1[for_iter_13][arith_addi_49]; 
            int arith_addi_53 = (memref_load_51 + memref_load_52); 
            int arith_cmpi_54 = ((memref_load_50 < arith_addi_53) ? 1 : 0); 
            int arith_select_55 = (arith_cmpi_54 ? memref_load_50 : arith_addi_53); 
            func_arg_1[arith_addi_21][arith_addi_49] = arith_select_55; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int* path;

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}

#pragma pocc-region-end
