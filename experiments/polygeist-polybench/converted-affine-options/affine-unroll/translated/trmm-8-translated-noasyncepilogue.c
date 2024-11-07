#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 30; 
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 28; 
  int arith_const_10 = 20; 
  int arith_const_11 = 0; 
  int arith_const_12 = 19; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_addi_15 = (for_iter_14 + arith_const_13); 
    for (int for_iter_16 = arith_addi_15; for_iter_16 < arith_const_10; for_iter_16 += arith_const_13) {
      for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_9; for_iter_17 += arith_const_8) {
        double memref_load_18 = func_arg_4[for_iter_14][for_iter_17]; 
        double memref_load_19 = func_arg_3[for_iter_16][for_iter_14]; 
        double memref_load_20 = func_arg_4[for_iter_16][for_iter_17]; 
        double arith_mulf_21 = (memref_load_19 * memref_load_20); 
        double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
        func_arg_4[for_iter_14][for_iter_17] = arith_addf_22; 
        int arith_addi_23 = (for_iter_17 + arith_const_13); 
        double memref_load_24 = func_arg_4[for_iter_14][arith_addi_23]; 
        double memref_load_25 = func_arg_3[for_iter_16][for_iter_14]; 
        double memref_load_26 = func_arg_4[for_iter_16][arith_addi_23]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double arith_addf_28 = (memref_load_24 + arith_mulf_27); 
        func_arg_4[for_iter_14][arith_addi_23] = arith_addf_28; 
        int arith_addi_29 = (for_iter_17 + arith_const_7); 
        double memref_load_30 = func_arg_4[for_iter_14][arith_addi_29]; 
        double memref_load_31 = func_arg_3[for_iter_16][for_iter_14]; 
        double memref_load_32 = func_arg_4[for_iter_16][arith_addi_29]; 
        double arith_mulf_33 = (memref_load_31 * memref_load_32); 
        double arith_addf_34 = (memref_load_30 + arith_mulf_33); 
        func_arg_4[for_iter_14][arith_addi_29] = arith_addf_34; 
        int arith_addi_35 = (for_iter_17 + arith_const_6); 
        double memref_load_36 = func_arg_4[for_iter_14][arith_addi_35]; 
        double memref_load_37 = func_arg_3[for_iter_16][for_iter_14]; 
        double memref_load_38 = func_arg_4[for_iter_16][arith_addi_35]; 
        double arith_mulf_39 = (memref_load_37 * memref_load_38); 
        double arith_addf_40 = (memref_load_36 + arith_mulf_39); 
        func_arg_4[for_iter_14][arith_addi_35] = arith_addf_40; 
      }
      for (int for_iter_41 = arith_const_9; for_iter_41 < arith_const_5; for_iter_41 += arith_const_13) {
        double memref_load_42 = func_arg_4[for_iter_14][for_iter_41]; 
        double memref_load_43 = func_arg_3[for_iter_16][for_iter_14]; 
        double memref_load_44 = func_arg_4[for_iter_16][for_iter_41]; 
        double arith_mulf_45 = (memref_load_43 * memref_load_44); 
        double arith_addf_46 = (memref_load_42 + arith_mulf_45); 
        func_arg_4[for_iter_14][for_iter_41] = arith_addf_46; 
      }
    }
  }
  for (int for_iter_47 = arith_const_11; for_iter_47 < arith_const_10; for_iter_47 += arith_const_13) {
    for (int for_iter_48 = arith_const_11; for_iter_48 < arith_const_9; for_iter_48 += arith_const_8) {
      double memref_load_49 = func_arg_4[for_iter_47][for_iter_48]; 
      double arith_mulf_50 = (func_arg_2 * memref_load_49); 
      func_arg_4[for_iter_47][for_iter_48] = arith_mulf_50; 
      int arith_addi_51 = (for_iter_48 + arith_const_13); 
      double memref_load_52 = func_arg_4[for_iter_47][arith_addi_51]; 
      double arith_mulf_53 = (func_arg_2 * memref_load_52); 
      func_arg_4[for_iter_47][arith_addi_51] = arith_mulf_53; 
      int arith_addi_54 = (for_iter_48 + arith_const_7); 
      double memref_load_55 = func_arg_4[for_iter_47][arith_addi_54]; 
      double arith_mulf_56 = (func_arg_2 * memref_load_55); 
      func_arg_4[for_iter_47][arith_addi_54] = arith_mulf_56; 
      int arith_addi_57 = (for_iter_48 + arith_const_6); 
      double memref_load_58 = func_arg_4[for_iter_47][arith_addi_57]; 
      double arith_mulf_59 = (func_arg_2 * memref_load_58); 
      func_arg_4[for_iter_47][arith_addi_57] = arith_mulf_59; 
    }
    for (int for_iter_60 = arith_const_9; for_iter_60 < arith_const_5; for_iter_60 += arith_const_13) {
      double memref_load_61 = func_arg_4[for_iter_47][for_iter_60]; 
      double arith_mulf_62 = (func_arg_2 * memref_load_61); 
      func_arg_4[for_iter_47][for_iter_60] = arith_mulf_62; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
