#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 0; 
  int arith_const_13 = 40; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_13; for_iter_16 += arith_const_14) {
      int arith_addi_17 = (for_iter_15 + arith_const_14); 
      for (int for_iter_18 = for_iter_15; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_14) {
        int arith_addi_19 = (for_iter_16 + arith_const_14); 
        for (int for_iter_20 = for_iter_16; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_14) {
          double memref_load_21 = func_arg_3[for_iter_18][for_iter_20]; 
          double memref_load_22 = func_arg_4[for_iter_18]; 
          double memref_load_23 = func_arg_5[for_iter_20]; 
          double arith_mulf_24 = (memref_load_22 * memref_load_23); 
          double arith_addf_25 = (memref_load_21 + arith_mulf_24); 
          double memref_load_26 = func_arg_6[for_iter_18]; 
          double memref_load_27 = func_arg_7[for_iter_20]; 
          double arith_mulf_28 = (memref_load_26 * memref_load_27); 
          double arith_addf_29 = (arith_addf_25 + arith_mulf_28); 
          func_arg_3[for_iter_18][for_iter_20] = arith_addf_29; 
        }
      }
    }
  }
  for (int for_iter_30 = arith_const_12; for_iter_30 < arith_const_13; for_iter_30 += arith_const_14) {
    for (int for_iter_31 = arith_const_12; for_iter_31 < arith_const_13; for_iter_31 += arith_const_14) {
      int arith_addi_32 = (for_iter_30 + arith_const_14); 
      for (int for_iter_33 = for_iter_30; for_iter_33 < arith_addi_32; for_iter_33 += arith_const_14) {
        int arith_addi_34 = (for_iter_31 + arith_const_14); 
        for (int for_iter_35 = for_iter_31; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_14) {
          double memref_load_36 = func_arg_9[for_iter_33]; 
          double memref_load_37 = func_arg_3[for_iter_35][for_iter_33]; 
          double arith_mulf_38 = (func_arg_2 * memref_load_37); 
          double memref_load_39 = func_arg_10[for_iter_35]; 
          double arith_mulf_40 = (arith_mulf_38 * memref_load_39); 
          double arith_addf_41 = (memref_load_36 + arith_mulf_40); 
          func_arg_9[for_iter_33] = arith_addf_41; 
        }
      }
    }
  }
  for (int for_iter_42 = arith_const_12; for_iter_42 < arith_const_13; for_iter_42 += arith_const_14) {
    int arith_addi_43 = (for_iter_42 + arith_const_14); 
    for (int for_iter_44 = for_iter_42; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_14) {
      double memref_load_45 = func_arg_9[for_iter_44]; 
      double memref_load_46 = func_arg_11[for_iter_44]; 
      double arith_addf_47 = (memref_load_45 + memref_load_46); 
      func_arg_9[for_iter_44] = arith_addf_47; 
    }
  }
  for (int for_iter_48 = arith_const_12; for_iter_48 < arith_const_13; for_iter_48 += arith_const_14) {
    for (int for_iter_49 = arith_const_12; for_iter_49 < arith_const_13; for_iter_49 += arith_const_14) {
      int arith_addi_50 = (for_iter_48 + arith_const_14); 
      for (int for_iter_51 = for_iter_48; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_14) {
        int arith_addi_52 = (for_iter_49 + arith_const_14); 
        for (int for_iter_53 = for_iter_49; for_iter_53 < arith_addi_52; for_iter_53 += arith_const_14) {
          double memref_load_54 = func_arg_8[for_iter_51]; 
          double memref_load_55 = func_arg_3[for_iter_51][for_iter_53]; 
          double arith_mulf_56 = (func_arg_1 * memref_load_55); 
          double memref_load_57 = func_arg_9[for_iter_53]; 
          double arith_mulf_58 = (arith_mulf_56 * memref_load_57); 
          double arith_addf_59 = (memref_load_54 + arith_mulf_58); 
          func_arg_8[for_iter_51] = arith_addf_59; 
        }
      }
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
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;

#pragma peqc async_execute
{
  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);
}
}

#pragma pocc-region-end
