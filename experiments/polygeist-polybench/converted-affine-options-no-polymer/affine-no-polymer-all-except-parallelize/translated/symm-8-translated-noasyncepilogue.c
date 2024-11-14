#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 8; 
  int arith_const_12 = 30; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 1; 
  int arith_const_16 = 0; 
  double arith_const_17 = 0.000000; 
  double* memref_alloca_18; 
  memref_alloca_18[0] = arith_const_17; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_15; for_iter_19 += arith_const_15) {
    int arith_muli_20 = (for_iter_19 * arith_const_14); 
    for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_15; for_iter_21 += arith_const_15) {
      int arith_muli_22 = (for_iter_21 * arith_const_14); 
      for (int for_iter_23 = arith_const_16; for_iter_23 < arith_const_13; for_iter_23 += arith_const_15) {
        int arith_addi_24 = (arith_muli_20 + for_iter_23); 
        double memref_load_25 = func_arg_5[arith_addi_24][arith_addi_24]; 
        for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_12; for_iter_26 += arith_const_15) {
          int arith_addi_27 = (arith_muli_22 + for_iter_26); 
          memref_alloca_18[0] = arith_const_17; 
          double memref_load_28 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_29 = (func_arg_2 * memref_load_28); 
          double memref_load_30 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_31 = (func_arg_2 * memref_load_30); 
          double memref_load_32 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_33 = (func_arg_2 * memref_load_32); 
          double memref_load_34 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_35 = (func_arg_2 * memref_load_34); 
          int arith_muli_36 = (for_iter_19 * arith_const_11); 
          int arith_cmpi_37 = (for_iter_23 < arith_const_16); 
          int arith_subi_38 = (arith_const_9 - for_iter_23); 
          int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : for_iter_23); 
          int arith_divi_40 = (arith_select_39 / arith_const_10); 
          int arith_subi_41 = (arith_const_9 - arith_divi_40); 
          int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
          int arith_addi_43 = (arith_muli_36 + arith_select_42); 
          for (int for_iter_44 = arith_const_16; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_15) {
            int arith_muli_45 = (for_iter_44 * arith_const_10); 
            double memref_load_46 = func_arg_5[arith_addi_24][arith_muli_45]; 
            double arith_mulf_47 = (arith_mulf_29 * memref_load_46); 
            double memref_load_48 = func_arg_4[arith_muli_45][arith_addi_27]; 
            double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
            func_arg_4[arith_muli_45][arith_addi_27] = arith_addf_49; 
            double memref_load_50 = func_arg_6[arith_muli_45][arith_addi_27]; 
            double memref_load_51 = func_arg_5[arith_addi_24][arith_muli_45]; 
            double arith_mulf_52 = (memref_load_50 * memref_load_51); 
            double memref_load_53 = memref_alloca_18[0]; 
            double arith_addf_54 = (memref_load_53 + arith_mulf_52); 
            memref_alloca_18[0] = arith_addf_54; 
            int arith_addi_55 = (arith_muli_45 + arith_const_15); 
            double memref_load_56 = func_arg_5[arith_addi_24][arith_addi_55]; 
            double arith_mulf_57 = (arith_mulf_31 * memref_load_56); 
            double memref_load_58 = func_arg_4[arith_addi_55][arith_addi_27]; 
            double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
            func_arg_4[arith_addi_55][arith_addi_27] = arith_addf_59; 
            double memref_load_60 = func_arg_6[arith_addi_55][arith_addi_27]; 
            double memref_load_61 = func_arg_5[arith_addi_24][arith_addi_55]; 
            double arith_mulf_62 = (memref_load_60 * memref_load_61); 
            double memref_load_63 = memref_alloca_18[0]; 
            double arith_addf_64 = (memref_load_63 + arith_mulf_62); 
            memref_alloca_18[0] = arith_addf_64; 
            int arith_addi_65 = (arith_muli_45 + arith_const_8); 
            double memref_load_66 = func_arg_5[arith_addi_24][arith_addi_65]; 
            double arith_mulf_67 = (arith_mulf_33 * memref_load_66); 
            double memref_load_68 = func_arg_4[arith_addi_65][arith_addi_27]; 
            double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
            func_arg_4[arith_addi_65][arith_addi_27] = arith_addf_69; 
            double memref_load_70 = func_arg_6[arith_addi_65][arith_addi_27]; 
            double memref_load_71 = func_arg_5[arith_addi_24][arith_addi_65]; 
            double arith_mulf_72 = (memref_load_70 * memref_load_71); 
            double memref_load_73 = memref_alloca_18[0]; 
            double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
            memref_alloca_18[0] = arith_addf_74; 
            int arith_addi_75 = (arith_muli_45 + arith_const_7); 
            double memref_load_76 = func_arg_5[arith_addi_24][arith_addi_75]; 
            double arith_mulf_77 = (arith_mulf_35 * memref_load_76); 
            double memref_load_78 = func_arg_4[arith_addi_75][arith_addi_27]; 
            double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
            func_arg_4[arith_addi_75][arith_addi_27] = arith_addf_79; 
            double memref_load_80 = func_arg_6[arith_addi_75][arith_addi_27]; 
            double memref_load_81 = func_arg_5[arith_addi_24][arith_addi_75]; 
            double arith_mulf_82 = (memref_load_80 * memref_load_81); 
            double memref_load_83 = memref_alloca_18[0]; 
            double arith_addf_84 = (memref_load_83 + arith_mulf_82); 
            memref_alloca_18[0] = arith_addf_84; 
          }
          double memref_load_85 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_86 = (func_arg_2 * memref_load_85); 
          int arith_remsi_87 = (arith_addi_24 % arith_const_10); 
          int arith_cmpi_88 = (arith_remsi_87 < arith_const_16); 
          int arith_addi_89 = (arith_remsi_87 + arith_const_10); 
          int arith_select_90 = (arith_cmpi_88 ? arith_addi_89 : arith_remsi_87); 
          for (int for_iter_91 = arith_const_16; for_iter_91 < arith_select_90; for_iter_91 += arith_const_15) {
            int arith_cmpi_92 = (arith_addi_24 < arith_const_16); 
            int arith_subi_93 = (arith_const_9 - arith_addi_24); 
            int arith_select_94 = (arith_cmpi_92 ? arith_subi_93 : arith_addi_24); 
            int arith_divi_95 = (arith_select_94 / arith_const_10); 
            int arith_subi_96 = (arith_const_9 - arith_divi_95); 
            int arith_select_97 = (arith_cmpi_92 ? arith_subi_96 : arith_divi_95); 
            int arith_muli_98 = (arith_select_97 * arith_const_10); 
            int arith_addi_99 = (for_iter_91 + arith_muli_98); 
            double memref_load_100 = func_arg_5[arith_addi_24][arith_addi_99]; 
            double arith_mulf_101 = (arith_mulf_86 * memref_load_100); 
            double memref_load_102 = func_arg_4[arith_addi_99][arith_addi_27]; 
            double arith_addf_103 = (memref_load_102 + arith_mulf_101); 
            func_arg_4[arith_addi_99][arith_addi_27] = arith_addf_103; 
            double memref_load_104 = func_arg_6[arith_addi_99][arith_addi_27]; 
            double memref_load_105 = func_arg_5[arith_addi_24][arith_addi_99]; 
            double arith_mulf_106 = (memref_load_104 * memref_load_105); 
            double memref_load_107 = memref_alloca_18[0]; 
            double arith_addf_108 = (memref_load_107 + arith_mulf_106); 
            memref_alloca_18[0] = arith_addf_108; 
          }
          double memref_load_109 = func_arg_4[arith_addi_24][arith_addi_27]; 
          double arith_mulf_110 = (func_arg_3 * memref_load_109); 
          double memref_load_111 = func_arg_6[arith_addi_24][arith_addi_27]; 
          double arith_mulf_112 = (func_arg_2 * memref_load_111); 
          double arith_mulf_113 = (arith_mulf_112 * memref_load_25); 
          double arith_addf_114 = (arith_mulf_110 + arith_mulf_113); 
          double memref_load_115 = memref_alloca_18[0]; 
          double arith_mulf_116 = (func_arg_2 * memref_load_115); 
          double arith_addf_117 = (arith_addf_114 + arith_mulf_116); 
          func_arg_4[arith_addi_24][arith_addi_27] = arith_addf_117; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
