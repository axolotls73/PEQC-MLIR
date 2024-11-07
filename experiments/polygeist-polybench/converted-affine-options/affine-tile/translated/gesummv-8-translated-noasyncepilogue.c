#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 1; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 30; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_addi_14 = (for_iter_13 + arith_const_11); 
    for (int for_iter_15 = for_iter_13; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_8) {
      func_arg_7[for_iter_15] = arith_const_9; 
    }
  }
  for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_11; for_iter_16 += arith_const_12) {
    for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_11; for_iter_17 += arith_const_12) {
      int arith_addi_18 = (for_iter_16 + arith_const_11); 
      for (int for_iter_19 = for_iter_16; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_8) {
        int arith_addi_20 = (for_iter_17 + arith_const_11); 
        for (int for_iter_21 = for_iter_17; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_8) {
          double memref_load_22 = func_arg_4[for_iter_19][for_iter_21]; 
          double memref_load_23 = func_arg_6[for_iter_21]; 
          double arith_mulf_24 = (memref_load_22 * memref_load_23); 
          double memref_load_25 = func_arg_7[for_iter_19]; 
          double arith_addf_26 = (arith_mulf_24 + memref_load_25); 
          func_arg_7[for_iter_19] = arith_addf_26; 
        }
      }
    }
  }
  for (int for_iter_27 = arith_const_10; for_iter_27 < arith_const_11; for_iter_27 += arith_const_12) {
    int arith_addi_28 = (for_iter_27 + arith_const_11); 
    for (int for_iter_29 = for_iter_27; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_8) {
      func_arg_5[for_iter_29] = arith_const_9; 
    }
  }
  for (int for_iter_30 = arith_const_10; for_iter_30 < arith_const_11; for_iter_30 += arith_const_12) {
    for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_11; for_iter_31 += arith_const_12) {
      int arith_addi_32 = (for_iter_30 + arith_const_11); 
      for (int for_iter_33 = for_iter_30; for_iter_33 < arith_addi_32; for_iter_33 += arith_const_8) {
        int arith_addi_34 = (for_iter_31 + arith_const_11); 
        for (int for_iter_35 = for_iter_31; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_8) {
          double memref_load_36 = func_arg_3[for_iter_33][for_iter_35]; 
          double memref_load_37 = func_arg_6[for_iter_35]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double memref_load_39 = func_arg_5[for_iter_33]; 
          double arith_addf_40 = (arith_mulf_38 + memref_load_39); 
          func_arg_5[for_iter_33] = arith_addf_40; 
        }
      }
    }
  }
  for (int for_iter_41 = arith_const_10; for_iter_41 < arith_const_11; for_iter_41 += arith_const_12) {
    int arith_addi_42 = (for_iter_41 + arith_const_11); 
    for (int for_iter_43 = for_iter_41; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_8) {
      double memref_load_44 = func_arg_5[for_iter_43]; 
      double arith_mulf_45 = (func_arg_1 * memref_load_44); 
      double memref_load_46 = func_arg_7[for_iter_43]; 
      double arith_mulf_47 = (func_arg_2 * memref_load_46); 
      double arith_addf_48 = (arith_mulf_45 + arith_mulf_47); 
      func_arg_7[for_iter_43] = arith_addf_48; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;


  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);

}

#pragma pocc-region-end
