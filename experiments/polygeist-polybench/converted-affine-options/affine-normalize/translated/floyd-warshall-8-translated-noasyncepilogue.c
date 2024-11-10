#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 32; 
  int arith_const_3 = -32; 
  int arith_const_4 = 2; 
  int arith_const_5 = 0; 
  int arith_const_6 = 60; 
  int arith_const_7 = 1; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_6; for_iter_8 += arith_const_7) {
    for (int for_iter_9 = arith_const_5; for_iter_9 < arith_const_4; for_iter_9 += arith_const_7) {
      for (int for_iter_10 = arith_const_5; for_iter_10 < arith_const_4; for_iter_10 += arith_const_7) {
        int arith_muli_11 = (for_iter_9 * arith_const_3); 
        int arith_addi_12 = (arith_muli_11 + arith_const_6); 
        int arith_minsi_13 = min(arith_addi_12, arith_const_2); 
        for (int for_iter_14 = arith_const_5; for_iter_14 < arith_minsi_13; for_iter_14 += arith_const_7) {
          int arith_muli_15 = (for_iter_9 * arith_const_2); 
          int arith_addi_16 = (arith_muli_15 + for_iter_14); 
          int arith_muli_17 = (for_iter_10 * arith_const_3); 
          int arith_addi_18 = (arith_muli_17 + arith_const_6); 
          int arith_minsi_19 = min(arith_addi_18, arith_const_2); 
          for (int for_iter_20 = arith_const_5; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_7) {
            int arith_muli_21 = (for_iter_10 * arith_const_2); 
            int arith_addi_22 = (arith_muli_21 + for_iter_20); 
            int memref_load_23 = func_arg_1[arith_addi_16][arith_addi_22]; 
            int memref_load_24 = func_arg_1[arith_addi_16][for_iter_8]; 
            int memref_load_25 = func_arg_1[for_iter_8][arith_addi_22]; 
            int arith_addi_26 = (memref_load_24 + memref_load_25); 
            int arith_cmpi_27 = (memref_load_23 < arith_addi_26); 
            int arith_select_28 = (arith_cmpi_27 ? memref_load_23 : arith_addi_26); 
            func_arg_1[arith_addi_16][arith_addi_22] = arith_select_28; 
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


  kernel_floyd_warshall(n, path);

}

#pragma pocc-region-end
