#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 32; 
  int arith_const_13 = 40; 
  int arith_const_14 = -32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 2; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_17) {
      int arith_muli_20 = (for_iter_19 * arith_const_14); 
      int arith_addi_21 = (arith_muli_20 + arith_const_13); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_12); 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_17) {
        int arith_muli_24 = (for_iter_19 * arith_const_12); 
        int arith_addi_25 = (arith_muli_24 + for_iter_23); 
        int arith_muli_26 = (for_iter_18 * arith_const_14); 
        int arith_addi_27 = (arith_muli_26 + arith_const_13); 
        int arith_minsi_28 = min(arith_addi_27, arith_const_12); 
        for (int for_iter_29 = arith_const_15; for_iter_29 < arith_minsi_28; for_iter_29 += arith_const_17) {
          int arith_muli_30 = (for_iter_18 * arith_const_12); 
          int arith_addi_31 = (arith_muli_30 + for_iter_29); 
          double memref_load_32 = func_arg_3[arith_addi_25][arith_addi_31]; 
          double memref_load_33 = func_arg_4[arith_addi_25]; 
          double memref_load_34 = func_arg_5[arith_addi_31]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
          double memref_load_37 = func_arg_6[arith_addi_25]; 
          double memref_load_38 = func_arg_7[arith_addi_31]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double arith_addf_40 = (arith_addf_36 + arith_mulf_39); 
          func_arg_3[arith_addi_25][arith_addi_31] = arith_addf_40; 
          double memref_load_41 = func_arg_9[arith_addi_31]; 
          double memref_load_42 = func_arg_3[arith_addi_25][arith_addi_31]; 
          double arith_mulf_43 = (func_arg_2 * memref_load_42); 
          double memref_load_44 = func_arg_10[arith_addi_25]; 
          double arith_mulf_45 = (arith_mulf_43 * memref_load_44); 
          double arith_addf_46 = (memref_load_41 + arith_mulf_45); 
          func_arg_9[arith_addi_31] = arith_addf_46; 
        }
      }
    }
  }
  for (int for_iter_47 = arith_const_15; for_iter_47 < arith_const_16; for_iter_47 += arith_const_17) {
    int arith_muli_48 = (for_iter_47 * arith_const_14); 
    int arith_addi_49 = (arith_muli_48 + arith_const_13); 
    int arith_minsi_50 = min(arith_addi_49, arith_const_12); 
    for (int for_iter_51 = arith_const_15; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_17) {
      int arith_muli_52 = (for_iter_47 * arith_const_12); 
      int arith_addi_53 = (arith_muli_52 + for_iter_51); 
      double memref_load_54 = func_arg_9[arith_addi_53]; 
      double memref_load_55 = func_arg_11[arith_addi_53]; 
      double arith_addf_56 = (memref_load_54 + memref_load_55); 
      func_arg_9[arith_addi_53] = arith_addf_56; 
    }
  }
  for (int for_iter_57 = arith_const_15; for_iter_57 < arith_const_16; for_iter_57 += arith_const_17) {
    for (int for_iter_58 = arith_const_15; for_iter_58 < arith_const_16; for_iter_58 += arith_const_17) {
      int arith_muli_59 = (for_iter_57 * arith_const_14); 
      int arith_addi_60 = (arith_muli_59 + arith_const_13); 
      int arith_minsi_61 = min(arith_addi_60, arith_const_12); 
      for (int for_iter_62 = arith_const_15; for_iter_62 < arith_minsi_61; for_iter_62 += arith_const_17) {
        int arith_muli_63 = (for_iter_57 * arith_const_12); 
        int arith_addi_64 = (arith_muli_63 + for_iter_62); 
        int arith_muli_65 = (for_iter_58 * arith_const_14); 
        int arith_addi_66 = (arith_muli_65 + arith_const_13); 
        int arith_minsi_67 = min(arith_addi_66, arith_const_12); 
        for (int for_iter_68 = arith_const_15; for_iter_68 < arith_minsi_67; for_iter_68 += arith_const_17) {
          int arith_muli_69 = (for_iter_58 * arith_const_12); 
          int arith_addi_70 = (arith_muli_69 + for_iter_68); 
          double memref_load_71 = func_arg_8[arith_addi_64]; 
          double memref_load_72 = func_arg_3[arith_addi_64][arith_addi_70]; 
          double arith_mulf_73 = (func_arg_1 * memref_load_72); 
          double memref_load_74 = func_arg_9[arith_addi_70]; 
          double arith_mulf_75 = (arith_mulf_73 * memref_load_74); 
          double arith_addf_76 = (memref_load_71 + arith_mulf_75); 
          func_arg_8[arith_addi_64] = arith_addf_76; 
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


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
