#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = 42; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 1; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 40; 
  int arith_const_14 = 4; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    func_arg_4[for_iter_15] = arith_const_11; 
    int arith_addi_16 = (for_iter_15 + arith_const_10); 
    func_arg_4[arith_addi_16] = arith_const_11; 
    int arith_addi_17 = (for_iter_15 + arith_const_9); 
    func_arg_4[arith_addi_17] = arith_const_11; 
    int arith_addi_18 = (for_iter_15 + arith_const_8); 
    func_arg_4[arith_addi_18] = arith_const_11; 
  }
  for (int for_iter_19 = arith_const_13; for_iter_19 < arith_const_7; for_iter_19 += arith_const_10) {
    func_arg_4[for_iter_19] = arith_const_11; 
  }
  for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_6; for_iter_20 += arith_const_10) {
    func_arg_5[for_iter_20] = arith_const_11; 
    for (int for_iter_21 = arith_const_12; for_iter_21 < arith_const_13; for_iter_21 += arith_const_14) {
      double memref_load_22 = func_arg_5[for_iter_20]; 
      double memref_load_23 = func_arg_2[for_iter_20][for_iter_21]; 
      double memref_load_24 = func_arg_3[for_iter_21]; 
      double arith_mulf_25 = (memref_load_23 * memref_load_24); 
      double arith_addf_26 = (memref_load_22 + arith_mulf_25); 
      func_arg_5[for_iter_20] = arith_addf_26; 
      int arith_addi_27 = (for_iter_21 + arith_const_10); 
      double memref_load_28 = func_arg_5[for_iter_20]; 
      double memref_load_29 = func_arg_2[for_iter_20][arith_addi_27]; 
      double memref_load_30 = func_arg_3[arith_addi_27]; 
      double arith_mulf_31 = (memref_load_29 * memref_load_30); 
      double arith_addf_32 = (memref_load_28 + arith_mulf_31); 
      func_arg_5[for_iter_20] = arith_addf_32; 
      int arith_addi_33 = (for_iter_21 + arith_const_9); 
      double memref_load_34 = func_arg_5[for_iter_20]; 
      double memref_load_35 = func_arg_2[for_iter_20][arith_addi_33]; 
      double memref_load_36 = func_arg_3[arith_addi_33]; 
      double arith_mulf_37 = (memref_load_35 * memref_load_36); 
      double arith_addf_38 = (memref_load_34 + arith_mulf_37); 
      func_arg_5[for_iter_20] = arith_addf_38; 
      int arith_addi_39 = (for_iter_21 + arith_const_8); 
      double memref_load_40 = func_arg_5[for_iter_20]; 
      double memref_load_41 = func_arg_2[for_iter_20][arith_addi_39]; 
      double memref_load_42 = func_arg_3[arith_addi_39]; 
      double arith_mulf_43 = (memref_load_41 * memref_load_42); 
      double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
      func_arg_5[for_iter_20] = arith_addf_44; 
    }
    for (int for_iter_45 = arith_const_13; for_iter_45 < arith_const_7; for_iter_45 += arith_const_10) {
      double memref_load_46 = func_arg_5[for_iter_20]; 
      double memref_load_47 = func_arg_2[for_iter_20][for_iter_45]; 
      double memref_load_48 = func_arg_3[for_iter_45]; 
      double arith_mulf_49 = (memref_load_47 * memref_load_48); 
      double arith_addf_50 = (memref_load_46 + arith_mulf_49); 
      func_arg_5[for_iter_20] = arith_addf_50; 
    }
    for (int for_iter_51 = arith_const_12; for_iter_51 < arith_const_13; for_iter_51 += arith_const_14) {
      double memref_load_52 = func_arg_4[for_iter_51]; 
      double memref_load_53 = func_arg_2[for_iter_20][for_iter_51]; 
      double memref_load_54 = func_arg_5[for_iter_20]; 
      double arith_mulf_55 = (memref_load_53 * memref_load_54); 
      double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
      func_arg_4[for_iter_51] = arith_addf_56; 
      int arith_addi_57 = (for_iter_51 + arith_const_10); 
      double memref_load_58 = func_arg_4[arith_addi_57]; 
      double memref_load_59 = func_arg_2[for_iter_20][arith_addi_57]; 
      double memref_load_60 = func_arg_5[for_iter_20]; 
      double arith_mulf_61 = (memref_load_59 * memref_load_60); 
      double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
      func_arg_4[arith_addi_57] = arith_addf_62; 
      int arith_addi_63 = (for_iter_51 + arith_const_9); 
      double memref_load_64 = func_arg_4[arith_addi_63]; 
      double memref_load_65 = func_arg_2[for_iter_20][arith_addi_63]; 
      double memref_load_66 = func_arg_5[for_iter_20]; 
      double arith_mulf_67 = (memref_load_65 * memref_load_66); 
      double arith_addf_68 = (memref_load_64 + arith_mulf_67); 
      func_arg_4[arith_addi_63] = arith_addf_68; 
      int arith_addi_69 = (for_iter_51 + arith_const_8); 
      double memref_load_70 = func_arg_4[arith_addi_69]; 
      double memref_load_71 = func_arg_2[for_iter_20][arith_addi_69]; 
      double memref_load_72 = func_arg_5[for_iter_20]; 
      double arith_mulf_73 = (memref_load_71 * memref_load_72); 
      double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
      func_arg_4[arith_addi_69] = arith_addf_74; 
    }
    for (int for_iter_75 = arith_const_13; for_iter_75 < arith_const_7; for_iter_75 += arith_const_10) {
      double memref_load_76 = func_arg_4[for_iter_75]; 
      double memref_load_77 = func_arg_2[for_iter_20][for_iter_75]; 
      double memref_load_78 = func_arg_5[for_iter_20]; 
      double arith_mulf_79 = (memref_load_77 * memref_load_78); 
      double arith_addf_80 = (memref_load_76 + arith_mulf_79); 
      func_arg_4[for_iter_75] = arith_addf_80; 
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

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}

#pragma pocc-region-end
