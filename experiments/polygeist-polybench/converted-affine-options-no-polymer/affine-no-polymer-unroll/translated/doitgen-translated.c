#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_10; for_iter_16 += arith_const_14) {
      for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_9; for_iter_17 += arith_const_14) {
        func_arg_5[for_iter_17] = arith_const_11; 
        for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_9; for_iter_18 += arith_const_8) {
          double memref_load_19 = func_arg_3[for_iter_15][for_iter_16][for_iter_18]; 
          double memref_load_20 = func_arg_4[for_iter_18][for_iter_17]; 
          double arith_mulf_21 = (memref_load_19 * memref_load_20); 
          double memref_load_22 = func_arg_5[for_iter_17]; 
          double arith_addf_23 = (memref_load_22 + arith_mulf_21); 
          func_arg_5[for_iter_17] = arith_addf_23; 
          int arith_addi_24 = (for_iter_18 + arith_const_14); 
          double memref_load_25 = func_arg_3[for_iter_15][for_iter_16][arith_addi_24]; 
          double memref_load_26 = func_arg_4[arith_addi_24][for_iter_17]; 
          double arith_mulf_27 = (memref_load_25 * memref_load_26); 
          double memref_load_28 = func_arg_5[for_iter_17]; 
          double arith_addf_29 = (memref_load_28 + arith_mulf_27); 
          func_arg_5[for_iter_17] = arith_addf_29; 
          int arith_addi_30 = (for_iter_18 + arith_const_7); 
          double memref_load_31 = func_arg_3[for_iter_15][for_iter_16][arith_addi_30]; 
          double memref_load_32 = func_arg_4[arith_addi_30][for_iter_17]; 
          double arith_mulf_33 = (memref_load_31 * memref_load_32); 
          double memref_load_34 = func_arg_5[for_iter_17]; 
          double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
          func_arg_5[for_iter_17] = arith_addf_35; 
          int arith_addi_36 = (for_iter_18 + arith_const_6); 
          double memref_load_37 = func_arg_3[for_iter_15][for_iter_16][arith_addi_36]; 
          double memref_load_38 = func_arg_4[arith_addi_36][for_iter_17]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double memref_load_40 = func_arg_5[for_iter_17]; 
          double arith_addf_41 = (memref_load_40 + arith_mulf_39); 
          func_arg_5[for_iter_17] = arith_addf_41; 
        }
      }
      for (int for_iter_42 = arith_const_12; for_iter_42 < arith_const_9; for_iter_42 += arith_const_8) {
        double memref_load_43 = func_arg_5[for_iter_42]; 
        func_arg_3[for_iter_15][for_iter_16][for_iter_42] = memref_load_43; 
        int arith_addi_44 = (for_iter_42 + arith_const_14); 
        double memref_load_45 = func_arg_5[arith_addi_44]; 
        func_arg_3[for_iter_15][for_iter_16][arith_addi_44] = memref_load_45; 
        int arith_addi_46 = (for_iter_42 + arith_const_7); 
        double memref_load_47 = func_arg_5[arith_addi_46]; 
        func_arg_3[for_iter_15][for_iter_16][arith_addi_46] = memref_load_47; 
        int arith_addi_48 = (for_iter_42 + arith_const_6); 
        double memref_load_49 = func_arg_5[arith_addi_48]; 
        func_arg_3[for_iter_15][for_iter_16][arith_addi_48] = memref_load_49; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}

#pragma pocc-region-end
