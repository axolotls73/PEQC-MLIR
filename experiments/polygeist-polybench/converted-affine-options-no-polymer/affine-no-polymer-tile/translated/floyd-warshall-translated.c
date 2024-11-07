#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 0; 
  int arith_const_3 = 60; 
  int arith_const_4 = 1; 
  for (int for_iter_5 = arith_const_2; for_iter_5 < arith_const_3; for_iter_5 += arith_const_4) {
    for (int for_iter_6 = arith_const_2; for_iter_6 < arith_const_3; for_iter_6 += arith_const_4) {
      for (int for_iter_7 = arith_const_2; for_iter_7 < arith_const_3; for_iter_7 += arith_const_4) {
        int arith_addi_8 = (for_iter_5 + arith_const_4); 
        for (int for_iter_9 = for_iter_5; for_iter_9 < arith_addi_8; for_iter_9 += arith_const_4) {
          int arith_addi_10 = (for_iter_6 + arith_const_4); 
          for (int for_iter_11 = for_iter_6; for_iter_11 < arith_addi_10; for_iter_11 += arith_const_4) {
            int arith_addi_12 = (for_iter_7 + arith_const_4); 
            for (int for_iter_13 = for_iter_7; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_4) {
              int memref_load_14 = func_arg_1[for_iter_11][for_iter_13]; 
              int memref_load_15 = func_arg_1[for_iter_11][for_iter_9]; 
              int memref_load_16 = func_arg_1[for_iter_9][for_iter_13]; 
              int arith_addi_17 = (memref_load_15 + memref_load_16); 
              int arith_cmpi_18 = ((memref_load_14 < arith_addi_17) ? 1 : 0); 
              int arith_select_19 = (arith_cmpi_18 ? memref_load_14 : arith_addi_17); 
              func_arg_1[for_iter_11][for_iter_13] = arith_select_19; 
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

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}

#pragma pocc-region-end
