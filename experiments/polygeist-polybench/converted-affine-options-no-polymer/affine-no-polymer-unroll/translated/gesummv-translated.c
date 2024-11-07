#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 28; 
  double arith_const_12 = 0.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 30; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    func_arg_5[for_iter_16] = arith_const_12; 
    func_arg_7[for_iter_16] = arith_const_12; 
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_11; for_iter_17 += arith_const_10) {
      double memref_load_18 = func_arg_3[for_iter_16][for_iter_17]; 
      double memref_load_19 = func_arg_6[for_iter_17]; 
      double arith_mulf_20 = (memref_load_18 * memref_load_19); 
      double memref_load_21 = func_arg_5[for_iter_16]; 
      double arith_addf_22 = (arith_mulf_20 + memref_load_21); 
      func_arg_5[for_iter_16] = arith_addf_22; 
      double memref_load_23 = func_arg_4[for_iter_16][for_iter_17]; 
      double memref_load_24 = func_arg_6[for_iter_17]; 
      double arith_mulf_25 = (memref_load_23 * memref_load_24); 
      double memref_load_26 = func_arg_7[for_iter_16]; 
      double arith_addf_27 = (arith_mulf_25 + memref_load_26); 
      func_arg_7[for_iter_16] = arith_addf_27; 
      int arith_addi_28 = (for_iter_17 + arith_const_15); 
      double memref_load_29 = func_arg_3[for_iter_16][arith_addi_28]; 
      double memref_load_30 = func_arg_6[arith_addi_28]; 
      double arith_mulf_31 = (memref_load_29 * memref_load_30); 
      double memref_load_32 = func_arg_5[for_iter_16]; 
      double arith_addf_33 = (arith_mulf_31 + memref_load_32); 
      func_arg_5[for_iter_16] = arith_addf_33; 
      double memref_load_34 = func_arg_4[for_iter_16][arith_addi_28]; 
      double memref_load_35 = func_arg_6[arith_addi_28]; 
      double arith_mulf_36 = (memref_load_34 * memref_load_35); 
      double memref_load_37 = func_arg_7[for_iter_16]; 
      double arith_addf_38 = (arith_mulf_36 + memref_load_37); 
      func_arg_7[for_iter_16] = arith_addf_38; 
      int arith_addi_39 = (for_iter_17 + arith_const_9); 
      double memref_load_40 = func_arg_3[for_iter_16][arith_addi_39]; 
      double memref_load_41 = func_arg_6[arith_addi_39]; 
      double arith_mulf_42 = (memref_load_40 * memref_load_41); 
      double memref_load_43 = func_arg_5[for_iter_16]; 
      double arith_addf_44 = (arith_mulf_42 + memref_load_43); 
      func_arg_5[for_iter_16] = arith_addf_44; 
      double memref_load_45 = func_arg_4[for_iter_16][arith_addi_39]; 
      double memref_load_46 = func_arg_6[arith_addi_39]; 
      double arith_mulf_47 = (memref_load_45 * memref_load_46); 
      double memref_load_48 = func_arg_7[for_iter_16]; 
      double arith_addf_49 = (arith_mulf_47 + memref_load_48); 
      func_arg_7[for_iter_16] = arith_addf_49; 
      int arith_addi_50 = (for_iter_17 + arith_const_8); 
      double memref_load_51 = func_arg_3[for_iter_16][arith_addi_50]; 
      double memref_load_52 = func_arg_6[arith_addi_50]; 
      double arith_mulf_53 = (memref_load_51 * memref_load_52); 
      double memref_load_54 = func_arg_5[for_iter_16]; 
      double arith_addf_55 = (arith_mulf_53 + memref_load_54); 
      func_arg_5[for_iter_16] = arith_addf_55; 
      double memref_load_56 = func_arg_4[for_iter_16][arith_addi_50]; 
      double memref_load_57 = func_arg_6[arith_addi_50]; 
      double arith_mulf_58 = (memref_load_56 * memref_load_57); 
      double memref_load_59 = func_arg_7[for_iter_16]; 
      double arith_addf_60 = (arith_mulf_58 + memref_load_59); 
      func_arg_7[for_iter_16] = arith_addf_60; 
    }
    for (int for_iter_61 = arith_const_11; for_iter_61 < arith_const_14; for_iter_61 += arith_const_15) {
      double memref_load_62 = func_arg_3[for_iter_16][for_iter_61]; 
      double memref_load_63 = func_arg_6[for_iter_61]; 
      double arith_mulf_64 = (memref_load_62 * memref_load_63); 
      double memref_load_65 = func_arg_5[for_iter_16]; 
      double arith_addf_66 = (arith_mulf_64 + memref_load_65); 
      func_arg_5[for_iter_16] = arith_addf_66; 
      double memref_load_67 = func_arg_4[for_iter_16][for_iter_61]; 
      double memref_load_68 = func_arg_6[for_iter_61]; 
      double arith_mulf_69 = (memref_load_67 * memref_load_68); 
      double memref_load_70 = func_arg_7[for_iter_16]; 
      double arith_addf_71 = (arith_mulf_69 + memref_load_70); 
      func_arg_7[for_iter_16] = arith_addf_71; 
    }
    double memref_load_72 = func_arg_5[for_iter_16]; 
    double arith_mulf_73 = (func_arg_1 * memref_load_72); 
    double memref_load_74 = func_arg_7[for_iter_16]; 
    double arith_mulf_75 = (func_arg_2 * memref_load_74); 
    double arith_addf_76 = (arith_mulf_73 + arith_mulf_75); 
    func_arg_7[for_iter_16] = arith_addf_76; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
