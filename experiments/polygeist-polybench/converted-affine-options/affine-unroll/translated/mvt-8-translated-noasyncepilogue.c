#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 4; 
  int arith_const_8 = 40; 
  int arith_const_9 = 32; 
  int arith_const_10 = 0; 
  int arith_const_11 = 2; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_11; for_iter_14 += arith_const_12) {
      int arith_muli_15 = (for_iter_13 * arith_const_9); 
      int arith_muli_16 = (for_iter_13 * arith_const_9); 
      int arith_addi_17 = (arith_muli_16 + arith_const_9); 
      int arith_minsi_18 = min(arith_addi_17, arith_const_8); 
      for (int for_iter_19 = arith_muli_15; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_12) {
        int arith_muli_20 = (for_iter_14 * arith_const_9); 
        int arith_muli_21 = (for_iter_14 * arith_const_9); 
        int arith_addi_22 = (arith_muli_21 + arith_const_9); 
        int arith_minsi_23 = min(arith_addi_22, arith_const_8); 
        for (int for_iter_24 = arith_muli_20; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_7) {
          double memref_load_25 = func_arg_1[for_iter_19]; 
          double memref_load_26 = func_arg_5[for_iter_19][for_iter_24]; 
          double memref_load_27 = func_arg_3[for_iter_24]; 
          double arith_mulf_28 = (memref_load_26 * memref_load_27); 
          double arith_addf_29 = (memref_load_25 + arith_mulf_28); 
          func_arg_1[for_iter_19] = arith_addf_29; 
          double memref_load_30 = func_arg_2[for_iter_19]; 
          double memref_load_31 = func_arg_5[for_iter_24][for_iter_19]; 
          double memref_load_32 = func_arg_4[for_iter_24]; 
          double arith_mulf_33 = (memref_load_31 * memref_load_32); 
          double arith_addf_34 = (memref_load_30 + arith_mulf_33); 
          func_arg_2[for_iter_19] = arith_addf_34; 
          int arith_addi_35 = (for_iter_24 + arith_const_12); 
          double memref_load_36 = func_arg_1[for_iter_19]; 
          double memref_load_37 = func_arg_5[for_iter_19][arith_addi_35]; 
          double memref_load_38 = func_arg_3[arith_addi_35]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double arith_addf_40 = (memref_load_36 + arith_mulf_39); 
          func_arg_1[for_iter_19] = arith_addf_40; 
          double memref_load_41 = func_arg_2[for_iter_19]; 
          double memref_load_42 = func_arg_5[arith_addi_35][for_iter_19]; 
          double memref_load_43 = func_arg_4[arith_addi_35]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
          func_arg_2[for_iter_19] = arith_addf_45; 
          int arith_addi_46 = (for_iter_24 + arith_const_11); 
          double memref_load_47 = func_arg_1[for_iter_19]; 
          double memref_load_48 = func_arg_5[for_iter_19][arith_addi_46]; 
          double memref_load_49 = func_arg_3[arith_addi_46]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
          func_arg_1[for_iter_19] = arith_addf_51; 
          double memref_load_52 = func_arg_2[for_iter_19]; 
          double memref_load_53 = func_arg_5[arith_addi_46][for_iter_19]; 
          double memref_load_54 = func_arg_4[arith_addi_46]; 
          double arith_mulf_55 = (memref_load_53 * memref_load_54); 
          double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
          func_arg_2[for_iter_19] = arith_addf_56; 
          int arith_addi_57 = (for_iter_24 + arith_const_6); 
          double memref_load_58 = func_arg_1[for_iter_19]; 
          double memref_load_59 = func_arg_5[for_iter_19][arith_addi_57]; 
          double memref_load_60 = func_arg_3[arith_addi_57]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
          func_arg_1[for_iter_19] = arith_addf_62; 
          double memref_load_63 = func_arg_2[for_iter_19]; 
          double memref_load_64 = func_arg_5[arith_addi_57][for_iter_19]; 
          double memref_load_65 = func_arg_4[arith_addi_57]; 
          double arith_mulf_66 = (memref_load_64 * memref_load_65); 
          double arith_addf_67 = (memref_load_63 + arith_mulf_66); 
          func_arg_2[for_iter_19] = arith_addf_67; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;


  kernel_mvt(n, x1, x2, y_1, y_2, A);

}

#pragma pocc-region-end
