#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 28; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = 4; 
  int arith_const_10 = 7; 
  int arith_const_11 = -1; 
  int arith_const_12 = 0; 
  int arith_const_13 = 19; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_11); 
    int arith_addi_17 = (arith_muli_16 + arith_const_13); 
    for (int for_iter_18 = arith_const_12; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_14) {
      int arith_addi_19 = (for_iter_15 + for_iter_18); 
      int arith_addi_20 = (arith_addi_19 + arith_const_14); 
      double memref_load_21 = func_arg_3[arith_addi_20][for_iter_15]; 
      double memref_load_22 = func_arg_3[arith_addi_20][for_iter_15]; 
      double memref_load_23 = func_arg_3[arith_addi_20][for_iter_15]; 
      double memref_load_24 = func_arg_3[arith_addi_20][for_iter_15]; 
      for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_10; for_iter_25 += arith_const_14) {
        int arith_muli_26 = (for_iter_25 * arith_const_9); 
        double memref_load_27 = func_arg_4[for_iter_15][arith_muli_26]; 
        double memref_load_28 = func_arg_4[arith_addi_20][arith_muli_26]; 
        double arith_mulf_29 = (memref_load_21 * memref_load_28); 
        double arith_addf_30 = (memref_load_27 + arith_mulf_29); 
        func_arg_4[for_iter_15][arith_muli_26] = arith_addf_30; 
        int arith_addi_31 = (arith_muli_26 + arith_const_14); 
        double memref_load_32 = func_arg_4[for_iter_15][arith_addi_31]; 
        double memref_load_33 = func_arg_4[arith_addi_20][arith_addi_31]; 
        double arith_mulf_34 = (memref_load_22 * memref_load_33); 
        double arith_addf_35 = (memref_load_32 + arith_mulf_34); 
        func_arg_4[for_iter_15][arith_addi_31] = arith_addf_35; 
        int arith_addi_36 = (arith_muli_26 + arith_const_8); 
        double memref_load_37 = func_arg_4[for_iter_15][arith_addi_36]; 
        double memref_load_38 = func_arg_4[arith_addi_20][arith_addi_36]; 
        double arith_mulf_39 = (memref_load_23 * memref_load_38); 
        double arith_addf_40 = (memref_load_37 + arith_mulf_39); 
        func_arg_4[for_iter_15][arith_addi_36] = arith_addf_40; 
        int arith_addi_41 = (arith_muli_26 + arith_const_7); 
        double memref_load_42 = func_arg_4[for_iter_15][arith_addi_41]; 
        double memref_load_43 = func_arg_4[arith_addi_20][arith_addi_41]; 
        double arith_mulf_44 = (memref_load_24 * memref_load_43); 
        double arith_addf_45 = (memref_load_42 + arith_mulf_44); 
        func_arg_4[for_iter_15][arith_addi_41] = arith_addf_45; 
      }
      double memref_load_46 = func_arg_3[arith_addi_20][for_iter_15]; 
      for (int for_iter_47 = arith_const_12; for_iter_47 < arith_const_8; for_iter_47 += arith_const_14) {
        int arith_addi_48 = (for_iter_47 + arith_const_6); 
        double memref_load_49 = func_arg_4[for_iter_15][arith_addi_48]; 
        double memref_load_50 = func_arg_4[arith_addi_20][arith_addi_48]; 
        double arith_mulf_51 = (memref_load_46 * memref_load_50); 
        double arith_addf_52 = (memref_load_49 + arith_mulf_51); 
        func_arg_4[for_iter_15][arith_addi_48] = arith_addf_52; 
      }
    }
  }
  for (int for_iter_53 = arith_const_12; for_iter_53 < arith_const_5; for_iter_53 += arith_const_14) {
    for (int for_iter_54 = arith_const_12; for_iter_54 < arith_const_14; for_iter_54 += arith_const_14) {
      int arith_addi_55 = (for_iter_53 + for_iter_54); 
      for (int for_iter_56 = arith_const_12; for_iter_56 < arith_const_10; for_iter_56 += arith_const_14) {
        int arith_muli_57 = (for_iter_56 * arith_const_9); 
        double memref_load_58 = func_arg_4[arith_addi_55][arith_muli_57]; 
        double arith_mulf_59 = (func_arg_2 * memref_load_58); 
        func_arg_4[arith_addi_55][arith_muli_57] = arith_mulf_59; 
        int arith_addi_60 = (arith_muli_57 + arith_const_14); 
        double memref_load_61 = func_arg_4[arith_addi_55][arith_addi_60]; 
        double arith_mulf_62 = (func_arg_2 * memref_load_61); 
        func_arg_4[arith_addi_55][arith_addi_60] = arith_mulf_62; 
        int arith_addi_63 = (arith_muli_57 + arith_const_8); 
        double memref_load_64 = func_arg_4[arith_addi_55][arith_addi_63]; 
        double arith_mulf_65 = (func_arg_2 * memref_load_64); 
        func_arg_4[arith_addi_55][arith_addi_63] = arith_mulf_65; 
        int arith_addi_66 = (arith_muli_57 + arith_const_7); 
        double memref_load_67 = func_arg_4[arith_addi_55][arith_addi_66]; 
        double arith_mulf_68 = (func_arg_2 * memref_load_67); 
        func_arg_4[arith_addi_55][arith_addi_66] = arith_mulf_68; 
      }
      for (int for_iter_69 = arith_const_12; for_iter_69 < arith_const_8; for_iter_69 += arith_const_14) {
        int arith_addi_70 = (for_iter_69 + arith_const_6); 
        double memref_load_71 = func_arg_4[arith_addi_55][arith_addi_70]; 
        double arith_mulf_72 = (func_arg_2 * memref_load_71); 
        func_arg_4[arith_addi_55][arith_addi_70] = arith_mulf_72; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
