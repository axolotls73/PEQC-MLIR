#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  int arith_const_8 = 40; 
  int arith_const_9 = 0; 
  double _10; 
  double* memref_alloca_11; 
  memref_alloca_11[0] = _10; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_8; for_iter_12 += arith_const_7) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < for_iter_12; for_iter_13 += arith_const_7) {
      double memref_load_14 = func_arg_1[for_iter_12][for_iter_13]; 
      memref_alloca_11[0] = memref_load_14; 
      for (int for_iter_15 = arith_const_9; for_iter_15 < for_iter_13; for_iter_15 += arith_const_7) {
        double memref_load_16 = func_arg_1[for_iter_12][for_iter_15]; 
        double memref_load_17 = func_arg_1[for_iter_15][for_iter_13]; 
        double arith_mulf_18 = (memref_load_16 * memref_load_17); 
        double memref_load_19 = memref_alloca_11[0]; 
        double arith_subf_20 = (memref_load_19 - arith_mulf_18); 
        memref_alloca_11[0] = arith_subf_20; 
      }
      double memref_load_21 = memref_alloca_11[0]; 
      double memref_load_22 = func_arg_1[for_iter_13][for_iter_13]; 
      double arith_divf_23 = (memref_load_21 / memref_load_22); 
      func_arg_1[for_iter_12][for_iter_13] = arith_divf_23; 
    }
    for (int for_iter_24 = for_iter_12; for_iter_24 < arith_const_8; for_iter_24 += arith_const_7) {
      double memref_load_25 = func_arg_1[for_iter_12][for_iter_24]; 
      memref_alloca_11[0] = memref_load_25; 
      for (int for_iter_26 = arith_const_9; for_iter_26 < for_iter_12; for_iter_26 += arith_const_7) {
        double memref_load_27 = func_arg_1[for_iter_12][for_iter_26]; 
        double memref_load_28 = func_arg_1[for_iter_26][for_iter_24]; 
        double arith_mulf_29 = (memref_load_27 * memref_load_28); 
        double memref_load_30 = memref_alloca_11[0]; 
        double arith_subf_31 = (memref_load_30 - arith_mulf_29); 
        memref_alloca_11[0] = arith_subf_31; 
      }
      double memref_load_32 = memref_alloca_11[0]; 
      func_arg_1[for_iter_12][for_iter_24] = memref_load_32; 
    }
  }
  for (int for_iter_33 = arith_const_9; for_iter_33 < arith_const_8; for_iter_33 += arith_const_7) {
    double memref_load_34 = func_arg_2[for_iter_33]; 
    memref_alloca_11[0] = memref_load_34; 
    for (int for_iter_35 = arith_const_9; for_iter_35 < for_iter_33; for_iter_35 += arith_const_7) {
      double memref_load_36 = func_arg_1[for_iter_33][for_iter_35]; 
      double memref_load_37 = func_arg_4[for_iter_35]; 
      double arith_mulf_38 = (memref_load_36 * memref_load_37); 
      double memref_load_39 = memref_alloca_11[0]; 
      double arith_subf_40 = (memref_load_39 - arith_mulf_38); 
      memref_alloca_11[0] = arith_subf_40; 
    }
    double memref_load_41 = memref_alloca_11[0]; 
    func_arg_4[for_iter_33] = memref_load_41; 
  }
  for (int for_iter_42 = arith_const_9; for_iter_42 < arith_const_8; for_iter_42 += arith_const_7) {
    int arith_muli_43 = (for_iter_42 * arith_const_6); 
    int arith_addi_44 = (arith_muli_43 + arith_const_5); 
    double memref_load_45 = func_arg_4[arith_addi_44]; 
    memref_alloca_11[0] = memref_load_45; 
    int arith_muli_46 = (for_iter_42 * arith_const_6); 
    int arith_addi_47 = (arith_muli_46 + arith_const_8); 
    for (int for_iter_48 = arith_addi_47; for_iter_48 < arith_const_8; for_iter_48 += arith_const_7) {
      int arith_muli_49 = (for_iter_42 * arith_const_6); 
      int arith_addi_50 = (arith_muli_49 + arith_const_5); 
      double memref_load_51 = func_arg_1[arith_addi_50][for_iter_48]; 
      double memref_load_52 = func_arg_3[for_iter_48]; 
      double arith_mulf_53 = (memref_load_51 * memref_load_52); 
      double memref_load_54 = memref_alloca_11[0]; 
      double arith_subf_55 = (memref_load_54 - arith_mulf_53); 
      memref_alloca_11[0] = arith_subf_55; 
    }
    double memref_load_56 = memref_alloca_11[0]; 
    int arith_muli_57 = (for_iter_42 * arith_const_6); 
    int arith_addi_58 = (arith_muli_57 + arith_const_5); 
    int arith_muli_59 = (for_iter_42 * arith_const_6); 
    int arith_addi_60 = (arith_muli_59 + arith_const_5); 
    double memref_load_61 = func_arg_1[arith_addi_58][arith_addi_60]; 
    double arith_divf_62 = (memref_load_56 / memref_load_61); 
    int arith_muli_63 = (for_iter_42 * arith_const_6); 
    int arith_addi_64 = (arith_muli_63 + arith_const_5); 
    func_arg_3[arith_addi_64] = arith_divf_62; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;
  double* b;
  double* x;
  double* y;


  kernel_ludcmp(n, A, b, x, y);

}

#pragma pocc-region-end
