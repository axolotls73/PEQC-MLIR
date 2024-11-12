#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 3; 
  int arith_const_3 = 2; 
  int arith_const_4 = 4; 
  int arith_const_5 = 0; 
  int arith_const_6 = 60; 
  int arith_const_7 = 1; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_6; for_iter_8 += arith_const_7) {
    for (int for_iter_9 = arith_const_5; for_iter_9 < arith_const_6; for_iter_9 += arith_const_7) {
      for (int for_iter_10 = arith_const_5; for_iter_10 < arith_const_6; for_iter_10 += arith_const_4) {
        int memref_load_11 = func_arg_1[for_iter_9][for_iter_10]; 
        int memref_load_12 = func_arg_1[for_iter_9][for_iter_8]; 
        int memref_load_13 = func_arg_1[for_iter_8][for_iter_10]; 
        int arith_addi_14 = (memref_load_12 + memref_load_13); 
        int arith_cmpi_15 = (memref_load_11 < arith_addi_14); 
        int arith_select_16 = (arith_cmpi_15 ? memref_load_11 : arith_addi_14); 
        func_arg_1[for_iter_9][for_iter_10] = arith_select_16; 
        int arith_addi_17 = (for_iter_10 + arith_const_7); 
        int memref_load_18 = func_arg_1[for_iter_9][arith_addi_17]; 
        int memref_load_19 = func_arg_1[for_iter_9][for_iter_8]; 
        int memref_load_20 = func_arg_1[for_iter_8][arith_addi_17]; 
        int arith_addi_21 = (memref_load_19 + memref_load_20); 
        int arith_cmpi_22 = (memref_load_18 < arith_addi_21); 
        int arith_select_23 = (arith_cmpi_22 ? memref_load_18 : arith_addi_21); 
        func_arg_1[for_iter_9][arith_addi_17] = arith_select_23; 
        int arith_addi_24 = (for_iter_10 + arith_const_3); 
        int memref_load_25 = func_arg_1[for_iter_9][arith_addi_24]; 
        int memref_load_26 = func_arg_1[for_iter_9][for_iter_8]; 
        int memref_load_27 = func_arg_1[for_iter_8][arith_addi_24]; 
        int arith_addi_28 = (memref_load_26 + memref_load_27); 
        int arith_cmpi_29 = (memref_load_25 < arith_addi_28); 
        int arith_select_30 = (arith_cmpi_29 ? memref_load_25 : arith_addi_28); 
        func_arg_1[for_iter_9][arith_addi_24] = arith_select_30; 
        int arith_addi_31 = (for_iter_10 + arith_const_2); 
        int memref_load_32 = func_arg_1[for_iter_9][arith_addi_31]; 
        int memref_load_33 = func_arg_1[for_iter_9][for_iter_8]; 
        int memref_load_34 = func_arg_1[for_iter_8][arith_addi_31]; 
        int arith_addi_35 = (memref_load_33 + memref_load_34); 
        int arith_cmpi_36 = (memref_load_32 < arith_addi_35); 
        int arith_select_37 = (arith_cmpi_36 ? memref_load_32 : arith_addi_35); 
        func_arg_1[for_iter_9][arith_addi_31] = arith_select_37; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int* path;


  kernel_floyd_warshall(n, path);

}

#pragma pocc-region-end
