#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 38; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  double arith_const_12 = 0.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 36; 
  int arith_const_15 = 4; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    func_arg_3[for_iter_16] = arith_const_12; 
    int arith_addi_17 = (for_iter_16 + arith_const_11); 
    func_arg_3[arith_addi_17] = arith_const_12; 
    int arith_addi_18 = (for_iter_16 + arith_const_10); 
    func_arg_3[arith_addi_18] = arith_const_12; 
    int arith_addi_19 = (for_iter_16 + arith_const_9); 
    func_arg_3[arith_addi_19] = arith_const_12; 
  }
  for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_8; for_iter_20 += arith_const_11) {
    func_arg_3[for_iter_20] = arith_const_12; 
  }
  for (int for_iter_21 = arith_const_13; for_iter_21 < arith_const_7; for_iter_21 += arith_const_11) {
    func_arg_4[for_iter_21] = arith_const_12; 
    for (int for_iter_22 = arith_const_13; for_iter_22 < arith_const_14; for_iter_22 += arith_const_15) {
      double memref_load_23 = func_arg_3[for_iter_22]; 
      double memref_load_24 = func_arg_6[for_iter_21]; 
      double memref_load_25 = func_arg_2[for_iter_21][for_iter_22]; 
      double arith_mulf_26 = (memref_load_24 * memref_load_25); 
      double arith_addf_27 = (memref_load_23 + arith_mulf_26); 
      func_arg_3[for_iter_22] = arith_addf_27; 
      double memref_load_28 = func_arg_4[for_iter_21]; 
      double memref_load_29 = func_arg_2[for_iter_21][for_iter_22]; 
      double memref_load_30 = func_arg_5[for_iter_22]; 
      double arith_mulf_31 = (memref_load_29 * memref_load_30); 
      double arith_addf_32 = (memref_load_28 + arith_mulf_31); 
      func_arg_4[for_iter_21] = arith_addf_32; 
      int arith_addi_33 = (for_iter_22 + arith_const_11); 
      double memref_load_34 = func_arg_3[arith_addi_33]; 
      double memref_load_35 = func_arg_6[for_iter_21]; 
      double memref_load_36 = func_arg_2[for_iter_21][arith_addi_33]; 
      double arith_mulf_37 = (memref_load_35 * memref_load_36); 
      double arith_addf_38 = (memref_load_34 + arith_mulf_37); 
      func_arg_3[arith_addi_33] = arith_addf_38; 
      double memref_load_39 = func_arg_4[for_iter_21]; 
      double memref_load_40 = func_arg_2[for_iter_21][arith_addi_33]; 
      double memref_load_41 = func_arg_5[arith_addi_33]; 
      double arith_mulf_42 = (memref_load_40 * memref_load_41); 
      double arith_addf_43 = (memref_load_39 + arith_mulf_42); 
      func_arg_4[for_iter_21] = arith_addf_43; 
      int arith_addi_44 = (for_iter_22 + arith_const_10); 
      double memref_load_45 = func_arg_3[arith_addi_44]; 
      double memref_load_46 = func_arg_6[for_iter_21]; 
      double memref_load_47 = func_arg_2[for_iter_21][arith_addi_44]; 
      double arith_mulf_48 = (memref_load_46 * memref_load_47); 
      double arith_addf_49 = (memref_load_45 + arith_mulf_48); 
      func_arg_3[arith_addi_44] = arith_addf_49; 
      double memref_load_50 = func_arg_4[for_iter_21]; 
      double memref_load_51 = func_arg_2[for_iter_21][arith_addi_44]; 
      double memref_load_52 = func_arg_5[arith_addi_44]; 
      double arith_mulf_53 = (memref_load_51 * memref_load_52); 
      double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
      func_arg_4[for_iter_21] = arith_addf_54; 
      int arith_addi_55 = (for_iter_22 + arith_const_9); 
      double memref_load_56 = func_arg_3[arith_addi_55]; 
      double memref_load_57 = func_arg_6[for_iter_21]; 
      double memref_load_58 = func_arg_2[for_iter_21][arith_addi_55]; 
      double arith_mulf_59 = (memref_load_57 * memref_load_58); 
      double arith_addf_60 = (memref_load_56 + arith_mulf_59); 
      func_arg_3[arith_addi_55] = arith_addf_60; 
      double memref_load_61 = func_arg_4[for_iter_21]; 
      double memref_load_62 = func_arg_2[for_iter_21][arith_addi_55]; 
      double memref_load_63 = func_arg_5[arith_addi_55]; 
      double arith_mulf_64 = (memref_load_62 * memref_load_63); 
      double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
      func_arg_4[for_iter_21] = arith_addf_65; 
    }
    for (int for_iter_66 = arith_const_14; for_iter_66 < arith_const_8; for_iter_66 += arith_const_11) {
      double memref_load_67 = func_arg_3[for_iter_66]; 
      double memref_load_68 = func_arg_6[for_iter_21]; 
      double memref_load_69 = func_arg_2[for_iter_21][for_iter_66]; 
      double arith_mulf_70 = (memref_load_68 * memref_load_69); 
      double arith_addf_71 = (memref_load_67 + arith_mulf_70); 
      func_arg_3[for_iter_66] = arith_addf_71; 
      double memref_load_72 = func_arg_4[for_iter_21]; 
      double memref_load_73 = func_arg_2[for_iter_21][for_iter_66]; 
      double memref_load_74 = func_arg_5[for_iter_66]; 
      double arith_mulf_75 = (memref_load_73 * memref_load_74); 
      double arith_addf_76 = (memref_load_72 + arith_mulf_75); 
      func_arg_4[for_iter_21] = arith_addf_76; 
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
