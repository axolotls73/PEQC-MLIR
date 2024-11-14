#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = -32; 
  int arith_const_9 = 36; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 9; 
  int arith_const_15 = 128; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_17; for_iter_19 < arith_const_18; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_15); 
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_14; for_iter_21 += arith_const_18) {
      int arith_muli_22 = (for_iter_21 * arith_const_13); 
      int arith_addi_23 = (arith_muli_20 + arith_muli_22); 
      func_arg_3[arith_addi_23] = arith_const_16; 
      int arith_addi_24 = (arith_addi_23 + arith_const_18); 
      func_arg_3[arith_addi_24] = arith_const_16; 
      int arith_addi_25 = (arith_addi_23 + arith_const_12); 
      func_arg_3[arith_addi_25] = arith_const_16; 
      int arith_addi_26 = (arith_addi_23 + arith_const_11); 
      func_arg_3[arith_addi_26] = arith_const_16; 
    }
  }
  for (int for_iter_27 = arith_const_17; for_iter_27 < arith_const_18; for_iter_27 += arith_const_18) {
    int arith_muli_28 = (for_iter_27 * arith_const_10); 
    int arith_addi_29 = (arith_muli_28 + arith_const_9); 
    for (int for_iter_30 = arith_const_17; for_iter_30 < arith_const_12; for_iter_30 += arith_const_18) {
      int arith_addi_31 = (arith_addi_29 + for_iter_30); 
      func_arg_3[arith_addi_31] = arith_const_16; 
    }
  }
  for (int for_iter_32 = arith_const_17; for_iter_32 < arith_const_12; for_iter_32 += arith_const_18) {
    int arith_muli_33 = (for_iter_32 * arith_const_10); 
    int arith_muli_34 = (for_iter_32 * arith_const_8); 
    int arith_addi_35 = (arith_muli_34 + arith_const_7); 
    int arith_minsi_36 = min(arith_addi_35, arith_const_10); 
    for (int for_iter_37 = arith_const_17; for_iter_37 < arith_minsi_36; for_iter_37 += arith_const_18) {
      int arith_addi_38 = (arith_muli_33 + for_iter_37); 
      func_arg_4[arith_addi_38] = arith_const_16; 
      double memref_load_39 = func_arg_6[arith_addi_38]; 
      double memref_load_40 = func_arg_6[arith_addi_38]; 
      double memref_load_41 = func_arg_6[arith_addi_38]; 
      double memref_load_42 = func_arg_6[arith_addi_38]; 
      for (int for_iter_43 = arith_const_17; for_iter_43 < arith_const_14; for_iter_43 += arith_const_18) {
        int arith_muli_44 = (for_iter_43 * arith_const_13); 
        double memref_load_45 = func_arg_3[arith_muli_44]; 
        double memref_load_46 = func_arg_2[arith_addi_38][arith_muli_44]; 
        double arith_mulf_47 = (memref_load_39 * memref_load_46); 
        double arith_addf_48 = (memref_load_45 + arith_mulf_47); 
        func_arg_3[arith_muli_44] = arith_addf_48; 
        double memref_load_49 = func_arg_4[arith_addi_38]; 
        double memref_load_50 = func_arg_2[arith_addi_38][arith_muli_44]; 
        double memref_load_51 = func_arg_5[arith_muli_44]; 
        double arith_mulf_52 = (memref_load_50 * memref_load_51); 
        double arith_addf_53 = (memref_load_49 + arith_mulf_52); 
        func_arg_4[arith_addi_38] = arith_addf_53; 
        int arith_addi_54 = (arith_muli_44 + arith_const_18); 
        double memref_load_55 = func_arg_3[arith_addi_54]; 
        double memref_load_56 = func_arg_2[arith_addi_38][arith_addi_54]; 
        double arith_mulf_57 = (memref_load_40 * memref_load_56); 
        double arith_addf_58 = (memref_load_55 + arith_mulf_57); 
        func_arg_3[arith_addi_54] = arith_addf_58; 
        double memref_load_59 = func_arg_4[arith_addi_38]; 
        double memref_load_60 = func_arg_2[arith_addi_38][arith_addi_54]; 
        double memref_load_61 = func_arg_5[arith_addi_54]; 
        double arith_mulf_62 = (memref_load_60 * memref_load_61); 
        double arith_addf_63 = (memref_load_59 + arith_mulf_62); 
        func_arg_4[arith_addi_38] = arith_addf_63; 
        int arith_addi_64 = (arith_muli_44 + arith_const_12); 
        double memref_load_65 = func_arg_3[arith_addi_64]; 
        double memref_load_66 = func_arg_2[arith_addi_38][arith_addi_64]; 
        double arith_mulf_67 = (memref_load_41 * memref_load_66); 
        double arith_addf_68 = (memref_load_65 + arith_mulf_67); 
        func_arg_3[arith_addi_64] = arith_addf_68; 
        double memref_load_69 = func_arg_4[arith_addi_38]; 
        double memref_load_70 = func_arg_2[arith_addi_38][arith_addi_64]; 
        double memref_load_71 = func_arg_5[arith_addi_64]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double arith_addf_73 = (memref_load_69 + arith_mulf_72); 
        func_arg_4[arith_addi_38] = arith_addf_73; 
        int arith_addi_74 = (arith_muli_44 + arith_const_11); 
        double memref_load_75 = func_arg_3[arith_addi_74]; 
        double memref_load_76 = func_arg_2[arith_addi_38][arith_addi_74]; 
        double arith_mulf_77 = (memref_load_42 * memref_load_76); 
        double arith_addf_78 = (memref_load_75 + arith_mulf_77); 
        func_arg_3[arith_addi_74] = arith_addf_78; 
        double memref_load_79 = func_arg_4[arith_addi_38]; 
        double memref_load_80 = func_arg_2[arith_addi_38][arith_addi_74]; 
        double memref_load_81 = func_arg_5[arith_addi_74]; 
        double arith_mulf_82 = (memref_load_80 * memref_load_81); 
        double arith_addf_83 = (memref_load_79 + arith_mulf_82); 
        func_arg_4[arith_addi_38] = arith_addf_83; 
      }
      double memref_load_84 = func_arg_6[arith_addi_38]; 
      for (int for_iter_85 = arith_const_17; for_iter_85 < arith_const_12; for_iter_85 += arith_const_18) {
        int arith_addi_86 = (for_iter_85 + arith_const_9); 
        double memref_load_87 = func_arg_3[arith_addi_86]; 
        double memref_load_88 = func_arg_2[arith_addi_38][arith_addi_86]; 
        double arith_mulf_89 = (memref_load_84 * memref_load_88); 
        double arith_addf_90 = (memref_load_87 + arith_mulf_89); 
        func_arg_3[arith_addi_86] = arith_addf_90; 
        double memref_load_91 = func_arg_4[arith_addi_38]; 
        double memref_load_92 = func_arg_2[arith_addi_38][arith_addi_86]; 
        double memref_load_93 = func_arg_5[arith_addi_86]; 
        double arith_mulf_94 = (memref_load_92 * memref_load_93); 
        double arith_addf_95 = (memref_load_91 + arith_mulf_94); 
        func_arg_4[arith_addi_38] = arith_addf_95; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
