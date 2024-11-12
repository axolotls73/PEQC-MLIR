#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_10; for_iter_16 += arith_const_14) {
      for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_14; for_iter_17 += arith_const_14) {
        int arith_addi_18 = (for_iter_15 + for_iter_17); 
        for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_14; for_iter_19 += arith_const_14) {
          int arith_addi_20 = (for_iter_16 + for_iter_19); 
          for (int for_iter_21 = arith_const_12; for_iter_21 < arith_const_9; for_iter_21 += arith_const_14) {
            func_arg_5[for_iter_21] = arith_const_11; 
            for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_8; for_iter_22 += arith_const_14) {
              int arith_muli_23 = (for_iter_22 * arith_const_7); 
              double memref_load_24 = func_arg_3[arith_addi_18][arith_addi_20][arith_muli_23]; 
              double memref_load_25 = func_arg_4[arith_muli_23][for_iter_21]; 
              double arith_mulf_26 = (memref_load_24 * memref_load_25); 
              double memref_load_27 = func_arg_5[for_iter_21]; 
              double arith_addf_28 = (memref_load_27 + arith_mulf_26); 
              func_arg_5[for_iter_21] = arith_addf_28; 
              int arith_addi_29 = (arith_muli_23 + arith_const_14); 
              double memref_load_30 = func_arg_3[arith_addi_18][arith_addi_20][arith_addi_29]; 
              double memref_load_31 = func_arg_4[arith_addi_29][for_iter_21]; 
              double arith_mulf_32 = (memref_load_30 * memref_load_31); 
              double memref_load_33 = func_arg_5[for_iter_21]; 
              double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
              func_arg_5[for_iter_21] = arith_addf_34; 
              int arith_addi_35 = (arith_muli_23 + arith_const_6); 
              double memref_load_36 = func_arg_3[arith_addi_18][arith_addi_20][arith_addi_35]; 
              double memref_load_37 = func_arg_4[arith_addi_35][for_iter_21]; 
              double arith_mulf_38 = (memref_load_36 * memref_load_37); 
              double memref_load_39 = func_arg_5[for_iter_21]; 
              double arith_addf_40 = (memref_load_39 + arith_mulf_38); 
              func_arg_5[for_iter_21] = arith_addf_40; 
              int arith_addi_41 = (arith_muli_23 + arith_const_8); 
              double memref_load_42 = func_arg_3[arith_addi_18][arith_addi_20][arith_addi_41]; 
              double memref_load_43 = func_arg_4[arith_addi_41][for_iter_21]; 
              double arith_mulf_44 = (memref_load_42 * memref_load_43); 
              double memref_load_45 = func_arg_5[for_iter_21]; 
              double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
              func_arg_5[for_iter_21] = arith_addf_46; 
            }
          }
          for (int for_iter_47 = arith_const_12; for_iter_47 < arith_const_8; for_iter_47 += arith_const_14) {
            int arith_muli_48 = (for_iter_47 * arith_const_7); 
            double memref_load_49 = func_arg_5[arith_muli_48]; 
            func_arg_3[arith_addi_18][arith_addi_20][arith_muli_48] = memref_load_49; 
            int arith_addi_50 = (arith_muli_48 + arith_const_14); 
            double memref_load_51 = func_arg_5[arith_addi_50]; 
            func_arg_3[arith_addi_18][arith_addi_20][arith_addi_50] = memref_load_51; 
            int arith_addi_52 = (arith_muli_48 + arith_const_6); 
            double memref_load_53 = func_arg_5[arith_addi_52]; 
            func_arg_3[arith_addi_18][arith_addi_20][arith_addi_52] = memref_load_53; 
            int arith_addi_54 = (arith_muli_48 + arith_const_8); 
            double memref_load_55 = func_arg_5[arith_addi_54]; 
            func_arg_3[arith_addi_18][arith_addi_20][arith_addi_54] = memref_load_55; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
