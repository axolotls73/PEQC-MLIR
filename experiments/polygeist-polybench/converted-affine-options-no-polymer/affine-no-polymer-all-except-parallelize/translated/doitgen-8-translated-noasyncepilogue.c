#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  int arith_const_11 = 10; 
  int arith_const_12 = 32; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_14; for_iter_16 < arith_const_15; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_12); 
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
      int arith_muli_19 = (for_iter_18 * arith_const_12); 
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_11; for_iter_20 += arith_const_15) {
        int arith_addi_21 = (arith_muli_17 + for_iter_20); 
        for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_10; for_iter_22 += arith_const_15) {
          int arith_addi_23 = (arith_muli_19 + for_iter_22); 
          for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_9; for_iter_24 += arith_const_15) {
            func_arg_5[for_iter_24] = arith_const_13; 
            for (int for_iter_25 = arith_const_14; for_iter_25 < arith_const_8; for_iter_25 += arith_const_15) {
              int arith_muli_26 = (for_iter_25 * arith_const_7); 
              double memref_load_27 = func_arg_3[arith_addi_21][arith_addi_23][arith_muli_26]; 
              double memref_load_28 = func_arg_4[arith_muli_26][for_iter_24]; 
              double arith_mulf_29 = (memref_load_27 * memref_load_28); 
              double memref_load_30 = func_arg_5[for_iter_24]; 
              double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
              func_arg_5[for_iter_24] = arith_addf_31; 
              int arith_addi_32 = (arith_muli_26 + arith_const_15); 
              double memref_load_33 = func_arg_3[arith_addi_21][arith_addi_23][arith_addi_32]; 
              double memref_load_34 = func_arg_4[arith_addi_32][for_iter_24]; 
              double arith_mulf_35 = (memref_load_33 * memref_load_34); 
              double memref_load_36 = func_arg_5[for_iter_24]; 
              double arith_addf_37 = (memref_load_36 + arith_mulf_35); 
              func_arg_5[for_iter_24] = arith_addf_37; 
              int arith_addi_38 = (arith_muli_26 + arith_const_6); 
              double memref_load_39 = func_arg_3[arith_addi_21][arith_addi_23][arith_addi_38]; 
              double memref_load_40 = func_arg_4[arith_addi_38][for_iter_24]; 
              double arith_mulf_41 = (memref_load_39 * memref_load_40); 
              double memref_load_42 = func_arg_5[for_iter_24]; 
              double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
              func_arg_5[for_iter_24] = arith_addf_43; 
              int arith_addi_44 = (arith_muli_26 + arith_const_8); 
              double memref_load_45 = func_arg_3[arith_addi_21][arith_addi_23][arith_addi_44]; 
              double memref_load_46 = func_arg_4[arith_addi_44][for_iter_24]; 
              double arith_mulf_47 = (memref_load_45 * memref_load_46); 
              double memref_load_48 = func_arg_5[for_iter_24]; 
              double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
              func_arg_5[for_iter_24] = arith_addf_49; 
            }
          }
          for (int for_iter_50 = arith_const_14; for_iter_50 < arith_const_8; for_iter_50 += arith_const_15) {
            int arith_muli_51 = (for_iter_50 * arith_const_7); 
            double memref_load_52 = func_arg_5[arith_muli_51]; 
            func_arg_3[arith_addi_21][arith_addi_23][arith_muli_51] = memref_load_52; 
            int arith_addi_53 = (arith_muli_51 + arith_const_15); 
            double memref_load_54 = func_arg_5[arith_addi_53]; 
            func_arg_3[arith_addi_21][arith_addi_23][arith_addi_53] = memref_load_54; 
            int arith_addi_55 = (arith_muli_51 + arith_const_6); 
            double memref_load_56 = func_arg_5[arith_addi_55]; 
            func_arg_3[arith_addi_21][arith_addi_23][arith_addi_55] = memref_load_56; 
            int arith_addi_57 = (arith_muli_51 + arith_const_8); 
            double memref_load_58 = func_arg_5[arith_addi_57]; 
            func_arg_3[arith_addi_21][arith_addi_23][arith_addi_57] = memref_load_58; 
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
