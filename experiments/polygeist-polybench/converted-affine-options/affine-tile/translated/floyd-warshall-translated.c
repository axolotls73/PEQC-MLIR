#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 32; 
  int arith_const_3 = 2; 
  int arith_const_4 = 0; 
  int arith_const_5 = 60; 
  int arith_const_6 = 1; 
  for (int for_iter_7 = arith_const_4; for_iter_7 < arith_const_5; for_iter_7 += arith_const_6) {
    for (int for_iter_8 = arith_const_4; for_iter_8 < arith_const_3; for_iter_8 += arith_const_6) {
      for (int for_iter_9 = arith_const_4; for_iter_9 < arith_const_3; for_iter_9 += arith_const_6) {
        int arith_muli_10 = (for_iter_8 * arith_const_2); 
        int arith_muli_11 = (for_iter_8 * arith_const_2); 
        int arith_addi_12 = (arith_muli_11 + arith_const_2); 
        int arith_minsi_13 = min(arith_addi_12, arith_const_5); 
        for (int for_iter_14 = arith_muli_10; for_iter_14 < arith_minsi_13; for_iter_14 += arith_const_6) {
          int arith_muli_15 = (for_iter_9 * arith_const_2); 
          int arith_muli_16 = (for_iter_9 * arith_const_2); 
          int arith_addi_17 = (arith_muli_16 + arith_const_2); 
          int arith_minsi_18 = min(arith_addi_17, arith_const_5); 
          for (int for_iter_19 = arith_muli_15; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_6) {
            int memref_load_20 = func_arg_1[for_iter_14][for_iter_19]; 
            int memref_load_21 = func_arg_1[for_iter_14][for_iter_7]; 
            int memref_load_22 = func_arg_1[for_iter_7][for_iter_19]; 
            int arith_addi_23 = (memref_load_21 + memref_load_22); 
            int arith_cmpi_24 = ((memref_load_20 < arith_addi_23) ? 1 : 0); 
            int arith_select_25 = (arith_cmpi_24 ? memref_load_20 : arith_addi_23); 
            func_arg_1[for_iter_14][for_iter_19] = arith_select_25; 
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
