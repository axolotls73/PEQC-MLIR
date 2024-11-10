#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = 40; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_10); 
    for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_14; for_iter_17 += arith_const_14) {
      int arith_muli_18 = (for_iter_17 * arith_const_10); 
      int arith_addi_19 = (arith_muli_16 + arith_muli_18); 
      func_arg_4[arith_addi_19] = arith_const_11; 
      int arith_addi_20 = (arith_addi_19 + arith_const_14); 
      func_arg_4[arith_addi_20] = arith_const_11; 
      int arith_addi_21 = (arith_addi_19 + arith_const_9); 
      func_arg_4[arith_addi_21] = arith_const_11; 
      int arith_addi_22 = (arith_addi_19 + arith_const_8); 
      func_arg_4[arith_addi_22] = arith_const_11; 
    }
  }
  for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_9; for_iter_23 += arith_const_14) {
    int arith_addi_24 = (for_iter_23 + arith_const_7); 
    for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_14; for_iter_25 += arith_const_14) {
      int arith_addi_26 = (arith_addi_24 + for_iter_25); 
      func_arg_4[arith_addi_26] = arith_const_11; 
    }
  }
  for (int for_iter_27 = arith_const_12; for_iter_27 < arith_const_6; for_iter_27 += arith_const_14) {
    for (int for_iter_28 = arith_const_12; for_iter_28 < arith_const_14; for_iter_28 += arith_const_14) {
      int arith_addi_29 = (for_iter_27 + for_iter_28); 
      func_arg_5[arith_addi_29] = arith_const_11; 
      for (int for_iter_30 = arith_const_12; for_iter_30 < arith_const_13; for_iter_30 += arith_const_14) {
        int arith_muli_31 = (for_iter_30 * arith_const_10); 
        double memref_load_32 = func_arg_5[arith_addi_29]; 
        double memref_load_33 = func_arg_2[arith_addi_29][arith_muli_31]; 
        double memref_load_34 = func_arg_3[arith_muli_31]; 
        double arith_mulf_35 = (memref_load_33 * memref_load_34); 
        double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
        func_arg_5[arith_addi_29] = arith_addf_36; 
        int arith_addi_37 = (arith_muli_31 + arith_const_14); 
        double memref_load_38 = func_arg_5[arith_addi_29]; 
        double memref_load_39 = func_arg_2[arith_addi_29][arith_addi_37]; 
        double memref_load_40 = func_arg_3[arith_addi_37]; 
        double arith_mulf_41 = (memref_load_39 * memref_load_40); 
        double arith_addf_42 = (memref_load_38 + arith_mulf_41); 
        func_arg_5[arith_addi_29] = arith_addf_42; 
        int arith_addi_43 = (arith_muli_31 + arith_const_9); 
        double memref_load_44 = func_arg_5[arith_addi_29]; 
        double memref_load_45 = func_arg_2[arith_addi_29][arith_addi_43]; 
        double memref_load_46 = func_arg_3[arith_addi_43]; 
        double arith_mulf_47 = (memref_load_45 * memref_load_46); 
        double arith_addf_48 = (memref_load_44 + arith_mulf_47); 
        func_arg_5[arith_addi_29] = arith_addf_48; 
        int arith_addi_49 = (arith_muli_31 + arith_const_8); 
        double memref_load_50 = func_arg_5[arith_addi_29]; 
        double memref_load_51 = func_arg_2[arith_addi_29][arith_addi_49]; 
        double memref_load_52 = func_arg_3[arith_addi_49]; 
        double arith_mulf_53 = (memref_load_51 * memref_load_52); 
        double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
        func_arg_5[arith_addi_29] = arith_addf_54; 
      }
      for (int for_iter_55 = arith_const_12; for_iter_55 < arith_const_9; for_iter_55 += arith_const_14) {
        int arith_addi_56 = (for_iter_55 + arith_const_7); 
        double memref_load_57 = func_arg_5[arith_addi_29]; 
        double memref_load_58 = func_arg_2[arith_addi_29][arith_addi_56]; 
        double memref_load_59 = func_arg_3[arith_addi_56]; 
        double arith_mulf_60 = (memref_load_58 * memref_load_59); 
        double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
        func_arg_5[arith_addi_29] = arith_addf_61; 
      }
      double memref_load_62 = func_arg_5[arith_addi_29]; 
      double memref_load_63 = func_arg_5[arith_addi_29]; 
      double memref_load_64 = func_arg_5[arith_addi_29]; 
      double memref_load_65 = func_arg_5[arith_addi_29]; 
      for (int for_iter_66 = arith_const_12; for_iter_66 < arith_const_13; for_iter_66 += arith_const_14) {
        int arith_muli_67 = (for_iter_66 * arith_const_10); 
        double memref_load_68 = func_arg_4[arith_muli_67]; 
        double memref_load_69 = func_arg_2[arith_addi_29][arith_muli_67]; 
        double arith_mulf_70 = (memref_load_69 * memref_load_62); 
        double arith_addf_71 = (memref_load_68 + arith_mulf_70); 
        func_arg_4[arith_muli_67] = arith_addf_71; 
        int arith_addi_72 = (arith_muli_67 + arith_const_14); 
        double memref_load_73 = func_arg_4[arith_addi_72]; 
        double memref_load_74 = func_arg_2[arith_addi_29][arith_addi_72]; 
        double arith_mulf_75 = (memref_load_74 * memref_load_63); 
        double arith_addf_76 = (memref_load_73 + arith_mulf_75); 
        func_arg_4[arith_addi_72] = arith_addf_76; 
        int arith_addi_77 = (arith_muli_67 + arith_const_9); 
        double memref_load_78 = func_arg_4[arith_addi_77]; 
        double memref_load_79 = func_arg_2[arith_addi_29][arith_addi_77]; 
        double arith_mulf_80 = (memref_load_79 * memref_load_64); 
        double arith_addf_81 = (memref_load_78 + arith_mulf_80); 
        func_arg_4[arith_addi_77] = arith_addf_81; 
        int arith_addi_82 = (arith_muli_67 + arith_const_8); 
        double memref_load_83 = func_arg_4[arith_addi_82]; 
        double memref_load_84 = func_arg_2[arith_addi_29][arith_addi_82]; 
        double arith_mulf_85 = (memref_load_84 * memref_load_65); 
        double arith_addf_86 = (memref_load_83 + arith_mulf_85); 
        func_arg_4[arith_addi_82] = arith_addf_86; 
      }
      double memref_load_87 = func_arg_5[arith_addi_29]; 
      for (int for_iter_88 = arith_const_12; for_iter_88 < arith_const_9; for_iter_88 += arith_const_14) {
        int arith_addi_89 = (for_iter_88 + arith_const_7); 
        double memref_load_90 = func_arg_4[arith_addi_89]; 
        double memref_load_91 = func_arg_2[arith_addi_29][arith_addi_89]; 
        double arith_mulf_92 = (memref_load_91 * memref_load_87); 
        double arith_addf_93 = (memref_load_90 + arith_mulf_92); 
        func_arg_4[arith_addi_89] = arith_addf_93; 
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
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}

#pragma pocc-region-end
