#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 28; 
  double arith_const_6 = 0.200000; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_7; for_iter_11 < arith_const_5; for_iter_11 += arith_const_9) {
      int arith_addi_12 = (for_iter_11 + arith_const_9); 
      for (int for_iter_13 = arith_const_7; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
        int arith_addi_14 = (for_iter_13 + arith_const_9); 
        double memref_load_15 = func_arg_2[arith_addi_12][arith_addi_14]; 
        int arith_addi_16 = (arith_addi_14 + arith_const_4); 
        double memref_load_17 = func_arg_2[arith_addi_12][arith_addi_16]; 
        double arith_addf_18 = (memref_load_15 + memref_load_17); 
        int arith_addi_19 = (arith_addi_14 + arith_const_9); 
        double memref_load_20 = func_arg_2[arith_addi_12][arith_addi_19]; 
        double arith_addf_21 = (arith_addf_18 + memref_load_20); 
        int arith_addi_22 = (arith_addi_12 + arith_const_9); 
        double memref_load_23 = func_arg_2[arith_addi_22][arith_addi_14]; 
        double arith_addf_24 = (arith_addf_21 + memref_load_23); 
        int arith_addi_25 = (arith_addi_12 + arith_const_4); 
        double memref_load_26 = func_arg_2[arith_addi_25][arith_addi_14]; 
        double arith_addf_27 = (arith_addf_24 + memref_load_26); 
        double arith_mulf_28 = (arith_addf_27 * arith_const_6); 
        func_arg_3[arith_addi_12][arith_addi_14] = arith_mulf_28; 
      }
    }
    for (int for_iter_29 = arith_const_7; for_iter_29 < arith_const_5; for_iter_29 += arith_const_9) {
      int arith_addi_30 = (for_iter_29 + arith_const_9); 
      for (int for_iter_31 = arith_const_7; for_iter_31 < arith_const_5; for_iter_31 += arith_const_9) {
        int arith_addi_32 = (for_iter_31 + arith_const_9); 
        double memref_load_33 = func_arg_3[arith_addi_30][arith_addi_32]; 
        int arith_addi_34 = (arith_addi_32 + arith_const_4); 
        double memref_load_35 = func_arg_3[arith_addi_30][arith_addi_34]; 
        double arith_addf_36 = (memref_load_33 + memref_load_35); 
        int arith_addi_37 = (arith_addi_32 + arith_const_9); 
        double memref_load_38 = func_arg_3[arith_addi_30][arith_addi_37]; 
        double arith_addf_39 = (arith_addf_36 + memref_load_38); 
        int arith_addi_40 = (arith_addi_30 + arith_const_9); 
        double memref_load_41 = func_arg_3[arith_addi_40][arith_addi_32]; 
        double arith_addf_42 = (arith_addf_39 + memref_load_41); 
        int arith_addi_43 = (arith_addi_30 + arith_const_4); 
        double memref_load_44 = func_arg_3[arith_addi_43][arith_addi_32]; 
        double arith_addf_45 = (arith_addf_42 + memref_load_44); 
        double arith_mulf_46 = (arith_addf_45 * arith_const_6); 
        func_arg_2[arith_addi_30][arith_addi_32] = arith_mulf_46; 
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
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_2d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
