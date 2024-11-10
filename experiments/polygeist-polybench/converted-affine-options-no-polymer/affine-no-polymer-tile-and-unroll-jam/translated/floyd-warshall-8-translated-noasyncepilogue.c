#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 1; 
  int arith_const_3 = 0; 
  int arith_const_4 = 60; 
  int arith_const_5 = 32; 
  for (int for_iter_6 = arith_const_3; for_iter_6 < arith_const_4; for_iter_6 += arith_const_5) {
    for (int for_iter_7 = arith_const_3; for_iter_7 < arith_const_4; for_iter_7 += arith_const_5) {
      for (int for_iter_8 = arith_const_3; for_iter_8 < arith_const_4; for_iter_8 += arith_const_5) {
        int arith_addi_9 = (for_iter_6 + arith_const_5); 
        int arith_minsi_10 = min(arith_addi_9, arith_const_4); 
        for (int for_iter_11 = for_iter_6; for_iter_11 < arith_minsi_10; for_iter_11 += arith_const_2) {
          int arith_addi_12 = (for_iter_7 + arith_const_5); 
          int arith_minsi_13 = min(arith_addi_12, arith_const_4); 
          for (int for_iter_14 = for_iter_7; for_iter_14 < arith_minsi_13; for_iter_14 += arith_const_2) {
            int arith_addi_15 = (for_iter_8 + arith_const_5); 
            int arith_minsi_16 = min(arith_addi_15, arith_const_4); 
            for (int for_iter_17 = for_iter_8; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_2) {
              int memref_load_18 = func_arg_1[for_iter_14][for_iter_17]; 
              int memref_load_19 = func_arg_1[for_iter_14][for_iter_11]; 
              int memref_load_20 = func_arg_1[for_iter_11][for_iter_17]; 
              int arith_addi_21 = (memref_load_19 + memref_load_20); 
              int arith_cmpi_22 = (memref_load_18 < arith_addi_21); 
              int arith_select_23 = (arith_cmpi_22 ? memref_load_18 : arith_addi_21); 
              func_arg_1[for_iter_14][for_iter_17] = arith_select_23; 
            }
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
