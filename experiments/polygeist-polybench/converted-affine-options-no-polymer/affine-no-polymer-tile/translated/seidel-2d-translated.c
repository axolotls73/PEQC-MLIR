#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -1; 
  int arith_const_4 = 39; 
  double arith_const_5 = 9.000000; 
  int arith_const_6 = 0; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_8; for_iter_10 < arith_const_4; for_iter_10 += arith_const_8) {
      for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_4; for_iter_11 += arith_const_8) {
        int arith_addi_12 = (for_iter_9 + arith_const_8); 
        for (int for_iter_13 = for_iter_9; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_8) {
          int arith_addi_14 = (for_iter_10 + arith_const_8); 
          for (int for_iter_15 = for_iter_10; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_8) {
            int arith_addi_16 = (for_iter_11 + arith_const_8); 
            for (int for_iter_17 = for_iter_11; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_8) {
              int arith_addi_18 = (for_iter_15 + arith_const_3); 
              int arith_addi_19 = (for_iter_17 + arith_const_3); 
              double memref_load_20 = func_arg_2[arith_addi_18][arith_addi_19]; 
              int arith_addi_21 = (for_iter_15 + arith_const_3); 
              double memref_load_22 = func_arg_2[arith_addi_21][for_iter_17]; 
              double arith_addf_23 = (memref_load_20 + memref_load_22); 
              int arith_addi_24 = (for_iter_15 + arith_const_3); 
              int arith_addi_25 = (for_iter_17 + arith_const_8); 
              double memref_load_26 = func_arg_2[arith_addi_24][arith_addi_25]; 
              double arith_addf_27 = (arith_addf_23 + memref_load_26); 
              int arith_addi_28 = (for_iter_17 + arith_const_3); 
              double memref_load_29 = func_arg_2[for_iter_15][arith_addi_28]; 
              double arith_addf_30 = (arith_addf_27 + memref_load_29); 
              double memref_load_31 = func_arg_2[for_iter_15][for_iter_17]; 
              double arith_addf_32 = (arith_addf_30 + memref_load_31); 
              int arith_addi_33 = (for_iter_17 + arith_const_8); 
              double memref_load_34 = func_arg_2[for_iter_15][arith_addi_33]; 
              double arith_addf_35 = (arith_addf_32 + memref_load_34); 
              int arith_addi_36 = (for_iter_15 + arith_const_8); 
              int arith_addi_37 = (for_iter_17 + arith_const_3); 
              double memref_load_38 = func_arg_2[arith_addi_36][arith_addi_37]; 
              double arith_addf_39 = (arith_addf_35 + memref_load_38); 
              int arith_addi_40 = (for_iter_15 + arith_const_8); 
              double memref_load_41 = func_arg_2[arith_addi_40][for_iter_17]; 
              double arith_addf_42 = (arith_addf_39 + memref_load_41); 
              int arith_addi_43 = (for_iter_15 + arith_const_8); 
              int arith_addi_44 = (for_iter_17 + arith_const_8); 
              double memref_load_45 = func_arg_2[arith_addi_43][arith_addi_44]; 
              double arith_addf_46 = (arith_addf_42 + memref_load_45); 
              double arith_divf_47 = (arith_addf_46 / arith_const_5); 
              func_arg_2[for_iter_15][for_iter_17] = arith_divf_47; 
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
  int tsteps;
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}

#pragma pocc-region-end
