#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  int arith_const_8 = 32; 
  int arith_const_9 = 40; 
  int arith_const_10 = 0; 
  double _11; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _11; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_9; for_iter_13 += arith_const_8) {
    int arith_addi_14 = (for_iter_13 + arith_const_8); 
    int arith_minsi_15 = min(arith_addi_14, arith_const_9); 
    for (int for_iter_16 = for_iter_13; for_iter_16 < arith_minsi_15; for_iter_16 += arith_const_7) {
      for (int for_iter_17 = arith_const_10; for_iter_17 < for_iter_16; for_iter_17 += arith_const_7) {
        double memref_load_18 = func_arg_1[for_iter_16][for_iter_17]; 
        memref_alloca_12[0] = memref_load_18; 
        for (int for_iter_19 = arith_const_10; for_iter_19 < for_iter_17; for_iter_19 += arith_const_7) {
          double memref_load_20 = func_arg_1[for_iter_16][for_iter_19]; 
          double memref_load_21 = func_arg_1[for_iter_19][for_iter_17]; 
          double arith_mulf_22 = (memref_load_20 * memref_load_21); 
          double memref_load_23 = memref_alloca_12[0]; 
          double arith_subf_24 = (memref_load_23 - arith_mulf_22); 
          memref_alloca_12[0] = arith_subf_24; 
        }
        double memref_load_25 = memref_alloca_12[0]; 
        double memref_load_26 = func_arg_1[for_iter_17][for_iter_17]; 
        double arith_divf_27 = (memref_load_25 / memref_load_26); 
        func_arg_1[for_iter_16][for_iter_17] = arith_divf_27; 
      }
      for (int for_iter_28 = for_iter_16; for_iter_28 < arith_const_9; for_iter_28 += arith_const_7) {
        double memref_load_29 = func_arg_1[for_iter_16][for_iter_28]; 
        memref_alloca_12[0] = memref_load_29; 
        for (int for_iter_30 = arith_const_10; for_iter_30 < for_iter_16; for_iter_30 += arith_const_7) {
          double memref_load_31 = func_arg_1[for_iter_16][for_iter_30]; 
          double memref_load_32 = func_arg_1[for_iter_30][for_iter_28]; 
          double arith_mulf_33 = (memref_load_31 * memref_load_32); 
          double memref_load_34 = memref_alloca_12[0]; 
          double arith_subf_35 = (memref_load_34 - arith_mulf_33); 
          memref_alloca_12[0] = arith_subf_35; 
        }
        double memref_load_36 = memref_alloca_12[0]; 
        func_arg_1[for_iter_16][for_iter_28] = memref_load_36; 
      }
    }
  }
  for (int for_iter_37 = arith_const_10; for_iter_37 < arith_const_9; for_iter_37 += arith_const_8) {
    int arith_addi_38 = (for_iter_37 + arith_const_8); 
    int arith_minsi_39 = min(arith_addi_38, arith_const_9); 
    for (int for_iter_40 = for_iter_37; for_iter_40 < arith_minsi_39; for_iter_40 += arith_const_7) {
      double memref_load_41 = func_arg_2[for_iter_40]; 
      memref_alloca_12[0] = memref_load_41; 
      for (int for_iter_42 = arith_const_10; for_iter_42 < for_iter_40; for_iter_42 += arith_const_7) {
        double memref_load_43 = func_arg_1[for_iter_40][for_iter_42]; 
        double memref_load_44 = func_arg_4[for_iter_42]; 
        double arith_mulf_45 = (memref_load_43 * memref_load_44); 
        double memref_load_46 = memref_alloca_12[0]; 
        double arith_subf_47 = (memref_load_46 - arith_mulf_45); 
        memref_alloca_12[0] = arith_subf_47; 
      }
      double memref_load_48 = memref_alloca_12[0]; 
      func_arg_4[for_iter_40] = memref_load_48; 
    }
  }
  for (int for_iter_49 = arith_const_10; for_iter_49 < arith_const_9; for_iter_49 += arith_const_8) {
    int arith_addi_50 = (for_iter_49 + arith_const_8); 
    int arith_minsi_51 = min(arith_addi_50, arith_const_9); 
    for (int for_iter_52 = for_iter_49; for_iter_52 < arith_minsi_51; for_iter_52 += arith_const_7) {
      int arith_muli_53 = (for_iter_52 * arith_const_6); 
      int arith_addi_54 = (arith_muli_53 + arith_const_5); 
      double memref_load_55 = func_arg_4[arith_addi_54]; 
      memref_alloca_12[0] = memref_load_55; 
      int arith_muli_56 = (for_iter_52 * arith_const_6); 
      int arith_addi_57 = (arith_muli_56 + arith_const_9); 
      for (int for_iter_58 = arith_addi_57; for_iter_58 < arith_const_9; for_iter_58 += arith_const_7) {
        int arith_muli_59 = (for_iter_52 * arith_const_6); 
        int arith_addi_60 = (arith_muli_59 + arith_const_5); 
        double memref_load_61 = func_arg_1[arith_addi_60][for_iter_58]; 
        double memref_load_62 = func_arg_3[for_iter_58]; 
        double arith_mulf_63 = (memref_load_61 * memref_load_62); 
        double memref_load_64 = memref_alloca_12[0]; 
        double arith_subf_65 = (memref_load_64 - arith_mulf_63); 
        memref_alloca_12[0] = arith_subf_65; 
      }
      double memref_load_66 = memref_alloca_12[0]; 
      int arith_muli_67 = (for_iter_52 * arith_const_6); 
      int arith_addi_68 = (arith_muli_67 + arith_const_5); 
      int arith_muli_69 = (for_iter_52 * arith_const_6); 
      int arith_addi_70 = (arith_muli_69 + arith_const_5); 
      double memref_load_71 = func_arg_1[arith_addi_68][arith_addi_70]; 
      double arith_divf_72 = (memref_load_66 / memref_load_71); 
      int arith_muli_73 = (for_iter_52 * arith_const_6); 
      int arith_addi_74 = (arith_muli_73 + arith_const_5); 
      func_arg_3[arith_addi_74] = arith_divf_72; 
    }
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
