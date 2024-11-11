#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 30; 
  int arith_const_12 = 1; 
  int arith_const_13 = 20; 
  int arith_const_14 = 0; 
  double arith_const_15 = 0.000000; 
  double* memref_alloca_16; 
  memref_alloca_16[0] = arith_const_15; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_13; for_iter_17 += arith_const_12) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_11; for_iter_18 += arith_const_12) {
      memref_alloca_16[0] = arith_const_15; 
      int arith_cmpi_19 = (for_iter_17 < arith_const_14); 
      int arith_subi_20 = (arith_const_9 - for_iter_17); 
      int arith_select_21 = (arith_cmpi_19 ? arith_subi_20 : for_iter_17); 
      int arith_divi_22 = (arith_select_21 / arith_const_10); 
      int arith_subi_23 = (arith_const_9 - arith_divi_22); 
      int arith_select_24 = (arith_cmpi_19 ? arith_subi_23 : arith_divi_22); 
      int arith_muli_25 = (arith_select_24 * arith_const_10); 
      for (int for_iter_26 = arith_const_14; for_iter_26 < arith_muli_25; for_iter_26 += arith_const_10) {
        double memref_load_27 = func_arg_6[for_iter_17][for_iter_18]; 
        double arith_mulf_28 = (func_arg_2 * memref_load_27); 
        double memref_load_29 = func_arg_5[for_iter_17][for_iter_26]; 
        double arith_mulf_30 = (arith_mulf_28 * memref_load_29); 
        double memref_load_31 = func_arg_4[for_iter_26][for_iter_18]; 
        double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
        func_arg_4[for_iter_26][for_iter_18] = arith_addf_32; 
        double memref_load_33 = func_arg_6[for_iter_26][for_iter_18]; 
        double memref_load_34 = func_arg_5[for_iter_17][for_iter_26]; 
        double arith_mulf_35 = (memref_load_33 * memref_load_34); 
        double memref_load_36 = memref_alloca_16[0]; 
        double arith_addf_37 = (memref_load_36 + arith_mulf_35); 
        memref_alloca_16[0] = arith_addf_37; 
        int arith_addi_38 = (for_iter_26 + arith_const_12); 
        double memref_load_39 = func_arg_6[for_iter_17][for_iter_18]; 
        double arith_mulf_40 = (func_arg_2 * memref_load_39); 
        double memref_load_41 = func_arg_5[for_iter_17][arith_addi_38]; 
        double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
        double memref_load_43 = func_arg_4[arith_addi_38][for_iter_18]; 
        double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
        func_arg_4[arith_addi_38][for_iter_18] = arith_addf_44; 
        double memref_load_45 = func_arg_6[arith_addi_38][for_iter_18]; 
        double memref_load_46 = func_arg_5[for_iter_17][arith_addi_38]; 
        double arith_mulf_47 = (memref_load_45 * memref_load_46); 
        double memref_load_48 = memref_alloca_16[0]; 
        double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
        memref_alloca_16[0] = arith_addf_49; 
        int arith_addi_50 = (for_iter_26 + arith_const_8); 
        double memref_load_51 = func_arg_6[for_iter_17][for_iter_18]; 
        double arith_mulf_52 = (func_arg_2 * memref_load_51); 
        double memref_load_53 = func_arg_5[for_iter_17][arith_addi_50]; 
        double arith_mulf_54 = (arith_mulf_52 * memref_load_53); 
        double memref_load_55 = func_arg_4[arith_addi_50][for_iter_18]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        func_arg_4[arith_addi_50][for_iter_18] = arith_addf_56; 
        double memref_load_57 = func_arg_6[arith_addi_50][for_iter_18]; 
        double memref_load_58 = func_arg_5[for_iter_17][arith_addi_50]; 
        double arith_mulf_59 = (memref_load_57 * memref_load_58); 
        double memref_load_60 = memref_alloca_16[0]; 
        double arith_addf_61 = (memref_load_60 + arith_mulf_59); 
        memref_alloca_16[0] = arith_addf_61; 
        int arith_addi_62 = (for_iter_26 + arith_const_7); 
        double memref_load_63 = func_arg_6[for_iter_17][for_iter_18]; 
        double arith_mulf_64 = (func_arg_2 * memref_load_63); 
        double memref_load_65 = func_arg_5[for_iter_17][arith_addi_62]; 
        double arith_mulf_66 = (arith_mulf_64 * memref_load_65); 
        double memref_load_67 = func_arg_4[arith_addi_62][for_iter_18]; 
        double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
        func_arg_4[arith_addi_62][for_iter_18] = arith_addf_68; 
        double memref_load_69 = func_arg_6[arith_addi_62][for_iter_18]; 
        double memref_load_70 = func_arg_5[for_iter_17][arith_addi_62]; 
        double arith_mulf_71 = (memref_load_69 * memref_load_70); 
        double memref_load_72 = memref_alloca_16[0]; 
        double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
        memref_alloca_16[0] = arith_addf_73; 
      }
      int arith_cmpi_74 = (for_iter_17 < arith_const_14); 
      int arith_subi_75 = (arith_const_9 - for_iter_17); 
      int arith_select_76 = (arith_cmpi_74 ? arith_subi_75 : for_iter_17); 
      int arith_divi_77 = (arith_select_76 / arith_const_10); 
      int arith_subi_78 = (arith_const_9 - arith_divi_77); 
      int arith_select_79 = (arith_cmpi_74 ? arith_subi_78 : arith_divi_77); 
      int arith_muli_80 = (arith_select_79 * arith_const_10); 
      for (int for_iter_81 = arith_muli_80; for_iter_81 < for_iter_17; for_iter_81 += arith_const_12) {
        double memref_load_82 = func_arg_6[for_iter_17][for_iter_18]; 
        double arith_mulf_83 = (func_arg_2 * memref_load_82); 
        double memref_load_84 = func_arg_5[for_iter_17][for_iter_81]; 
        double arith_mulf_85 = (arith_mulf_83 * memref_load_84); 
        double memref_load_86 = func_arg_4[for_iter_81][for_iter_18]; 
        double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
        func_arg_4[for_iter_81][for_iter_18] = arith_addf_87; 
        double memref_load_88 = func_arg_6[for_iter_81][for_iter_18]; 
        double memref_load_89 = func_arg_5[for_iter_17][for_iter_81]; 
        double arith_mulf_90 = (memref_load_88 * memref_load_89); 
        double memref_load_91 = memref_alloca_16[0]; 
        double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
        memref_alloca_16[0] = arith_addf_92; 
      }
      double memref_load_93 = func_arg_4[for_iter_17][for_iter_18]; 
      double arith_mulf_94 = (func_arg_3 * memref_load_93); 
      double memref_load_95 = func_arg_6[for_iter_17][for_iter_18]; 
      double arith_mulf_96 = (func_arg_2 * memref_load_95); 
      double memref_load_97 = func_arg_5[for_iter_17][for_iter_17]; 
      double arith_mulf_98 = (arith_mulf_96 * memref_load_97); 
      double arith_addf_99 = (arith_mulf_94 + arith_mulf_98); 
      double memref_load_100 = memref_alloca_16[0]; 
      double arith_mulf_101 = (func_arg_2 * memref_load_100); 
      double arith_addf_102 = (arith_addf_99 + arith_mulf_101); 
      func_arg_4[for_iter_17][for_iter_18] = arith_addf_102; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_symm(m, n, alpha, beta, C, A, B);

}

#pragma pocc-region-end
