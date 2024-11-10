#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  int arith_const_9 = 42; 
  int arith_const_10 = -32; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_10); 
    int arith_addi_17 = (arith_muli_16 + arith_const_9); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_8); 
    for (int for_iter_19 = arith_const_12; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_14) {
      int arith_muli_20 = (for_iter_15 * arith_const_8); 
      int arith_addi_21 = (arith_muli_20 + for_iter_19); 
      func_arg_4[arith_addi_21] = arith_const_11; 
    }
  }
  for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_13; for_iter_22 += arith_const_14) {
    for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_13; for_iter_23 += arith_const_14) {
      int arith_muli_24 = (for_iter_22 * arith_const_10); 
      int arith_addi_25 = (arith_muli_24 + arith_const_9); 
      int arith_minsi_26 = min(arith_addi_25, arith_const_8); 
      for (int for_iter_27 = arith_const_12; for_iter_27 < arith_minsi_26; for_iter_27 += arith_const_14) {
        int arith_muli_28 = (for_iter_23 * arith_const_10); 
        int arith_addi_29 = (arith_muli_28 + arith_const_7); 
        int arith_minsi_30 = min(arith_addi_29, arith_const_8); 
        for (int for_iter_31 = arith_const_12; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_14) {
          int arith_muli_32 = (for_iter_22 * arith_const_8); 
          int arith_addi_33 = (arith_muli_32 + for_iter_27); 
          double memref_load_34 = func_arg_4[arith_addi_33]; 
          int arith_muli_35 = (for_iter_22 * arith_const_8); 
          int arith_addi_36 = (arith_muli_35 + for_iter_27); 
          int arith_muli_37 = (for_iter_23 * arith_const_8); 
          int arith_addi_38 = (arith_muli_37 + for_iter_31); 
          double memref_load_39 = func_arg_2[arith_addi_36][arith_addi_38]; 
          int arith_muli_40 = (for_iter_23 * arith_const_8); 
          int arith_addi_41 = (arith_muli_40 + for_iter_31); 
          double memref_load_42 = func_arg_5[arith_addi_41]; 
          double arith_mulf_43 = (memref_load_39 * memref_load_42); 
          double arith_addf_44 = (memref_load_34 + arith_mulf_43); 
          int arith_muli_45 = (for_iter_22 * arith_const_8); 
          int arith_addi_46 = (arith_muli_45 + for_iter_27); 
          func_arg_4[arith_addi_46] = arith_addf_44; 
        }
      }
    }
  }
  for (int for_iter_47 = arith_const_12; for_iter_47 < arith_const_13; for_iter_47 += arith_const_14) {
    int arith_muli_48 = (for_iter_47 * arith_const_10); 
    int arith_addi_49 = (arith_muli_48 + arith_const_7); 
    int arith_minsi_50 = min(arith_addi_49, arith_const_8); 
    for (int for_iter_51 = arith_const_12; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_14) {
      int arith_muli_52 = (for_iter_47 * arith_const_8); 
      int arith_addi_53 = (arith_muli_52 + for_iter_51); 
      func_arg_3[arith_addi_53] = arith_const_11; 
    }
  }
  for (int for_iter_54 = arith_const_12; for_iter_54 < arith_const_13; for_iter_54 += arith_const_14) {
    for (int for_iter_55 = arith_const_12; for_iter_55 < arith_const_13; for_iter_55 += arith_const_14) {
      int arith_muli_56 = (for_iter_55 * arith_const_10); 
      int arith_addi_57 = (arith_muli_56 + arith_const_9); 
      int arith_minsi_58 = min(arith_addi_57, arith_const_8); 
      for (int for_iter_59 = arith_const_12; for_iter_59 < arith_minsi_58; for_iter_59 += arith_const_14) {
        int arith_muli_60 = (for_iter_54 * arith_const_10); 
        int arith_addi_61 = (arith_muli_60 + arith_const_7); 
        int arith_minsi_62 = min(arith_addi_61, arith_const_8); 
        for (int for_iter_63 = arith_const_12; for_iter_63 < arith_minsi_62; for_iter_63 += arith_const_14) {
          int arith_muli_64 = (for_iter_54 * arith_const_8); 
          int arith_addi_65 = (arith_muli_64 + for_iter_63); 
          double memref_load_66 = func_arg_3[arith_addi_65]; 
          int arith_muli_67 = (for_iter_55 * arith_const_8); 
          int arith_addi_68 = (arith_muli_67 + for_iter_59); 
          double memref_load_69 = func_arg_6[arith_addi_68]; 
          int arith_muli_70 = (for_iter_55 * arith_const_8); 
          int arith_addi_71 = (arith_muli_70 + for_iter_59); 
          int arith_muli_72 = (for_iter_54 * arith_const_8); 
          int arith_addi_73 = (arith_muli_72 + for_iter_63); 
          double memref_load_74 = func_arg_2[arith_addi_71][arith_addi_73]; 
          double arith_mulf_75 = (memref_load_69 * memref_load_74); 
          double arith_addf_76 = (memref_load_66 + arith_mulf_75); 
          int arith_muli_77 = (for_iter_54 * arith_const_8); 
          int arith_addi_78 = (arith_muli_77 + for_iter_63); 
          func_arg_3[arith_addi_78] = arith_addf_76; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;


  kernel_bicg(m, n, A, s, q, p, r);

}

#pragma pocc-region-end
