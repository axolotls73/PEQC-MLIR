#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 240; 
  int arith_const_12 = 200; 
  int arith_const_13 = -32; 
  int arith_const_14 = 8; 
  int arith_const_15 = 32; 
  int arith_const_16 = 1; 
  int arith_const_17 = 7; 
  int arith_const_18 = 0; 
  double arith_const_19 = 0.000000; 
  double* memref_alloca_20; 
  memref_alloca_20[0] = arith_const_19; 
  for (int for_iter_21 = arith_const_18; for_iter_21 < arith_const_17; for_iter_21 += arith_const_16) {
    int arith_muli_22 = (for_iter_21 * arith_const_15); 
    for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_14; for_iter_23 += arith_const_16) {
      int arith_muli_24 = (for_iter_23 * arith_const_15); 
      int arith_muli_25 = (for_iter_21 * arith_const_13); 
      int arith_addi_26 = (arith_muli_25 + arith_const_12); 
      int arith_minsi_27 = min(arith_addi_26, arith_const_15); 
      for (int for_iter_28 = arith_const_18; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_16) {
        int arith_addi_29 = (arith_muli_22 + for_iter_28); 
        double memref_load_30 = func_arg_5[arith_addi_29][arith_addi_29]; 
        int arith_muli_31 = (for_iter_23 * arith_const_13); 
        int arith_addi_32 = (arith_muli_31 + arith_const_11); 
        int arith_minsi_33 = min(arith_addi_32, arith_const_15); 
        for (int for_iter_34 = arith_const_18; for_iter_34 < arith_minsi_33; for_iter_34 += arith_const_16) {
          int arith_addi_35 = (arith_muli_24 + for_iter_34); 
          memref_alloca_20[0] = arith_const_19; 
          double memref_load_36 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_37 = (func_arg_2 * memref_load_36); 
          double memref_load_38 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_39 = (func_arg_2 * memref_load_38); 
          double memref_load_40 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_41 = (func_arg_2 * memref_load_40); 
          double memref_load_42 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_43 = (func_arg_2 * memref_load_42); 
          int arith_muli_44 = (for_iter_21 * arith_const_14); 
          int arith_cmpi_45 = (for_iter_28 < arith_const_18); 
          int arith_subi_46 = (arith_const_9 - for_iter_28); 
          int arith_select_47 = (arith_cmpi_45 ? arith_subi_46 : for_iter_28); 
          int arith_divi_48 = (arith_select_47 / arith_const_10); 
          int arith_subi_49 = (arith_const_9 - arith_divi_48); 
          int arith_select_50 = (arith_cmpi_45 ? arith_subi_49 : arith_divi_48); 
          int arith_addi_51 = (arith_muli_44 + arith_select_50); 
          for (int for_iter_52 = arith_const_18; for_iter_52 < arith_addi_51; for_iter_52 += arith_const_16) {
            int arith_muli_53 = (for_iter_52 * arith_const_10); 
            double memref_load_54 = func_arg_5[arith_addi_29][arith_muli_53]; 
            double arith_mulf_55 = (arith_mulf_37 * memref_load_54); 
            double memref_load_56 = func_arg_4[arith_muli_53][arith_addi_35]; 
            double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
            func_arg_4[arith_muli_53][arith_addi_35] = arith_addf_57; 
            double memref_load_58 = func_arg_6[arith_muli_53][arith_addi_35]; 
            double memref_load_59 = func_arg_5[arith_addi_29][arith_muli_53]; 
            double arith_mulf_60 = (memref_load_58 * memref_load_59); 
            double memref_load_61 = memref_alloca_20[0]; 
            double arith_addf_62 = (memref_load_61 + arith_mulf_60); 
            memref_alloca_20[0] = arith_addf_62; 
            int arith_addi_63 = (arith_muli_53 + arith_const_16); 
            double memref_load_64 = func_arg_5[arith_addi_29][arith_addi_63]; 
            double arith_mulf_65 = (arith_mulf_39 * memref_load_64); 
            double memref_load_66 = func_arg_4[arith_addi_63][arith_addi_35]; 
            double arith_addf_67 = (memref_load_66 + arith_mulf_65); 
            func_arg_4[arith_addi_63][arith_addi_35] = arith_addf_67; 
            double memref_load_68 = func_arg_6[arith_addi_63][arith_addi_35]; 
            double memref_load_69 = func_arg_5[arith_addi_29][arith_addi_63]; 
            double arith_mulf_70 = (memref_load_68 * memref_load_69); 
            double memref_load_71 = memref_alloca_20[0]; 
            double arith_addf_72 = (memref_load_71 + arith_mulf_70); 
            memref_alloca_20[0] = arith_addf_72; 
            int arith_addi_73 = (arith_muli_53 + arith_const_8); 
            double memref_load_74 = func_arg_5[arith_addi_29][arith_addi_73]; 
            double arith_mulf_75 = (arith_mulf_41 * memref_load_74); 
            double memref_load_76 = func_arg_4[arith_addi_73][arith_addi_35]; 
            double arith_addf_77 = (memref_load_76 + arith_mulf_75); 
            func_arg_4[arith_addi_73][arith_addi_35] = arith_addf_77; 
            double memref_load_78 = func_arg_6[arith_addi_73][arith_addi_35]; 
            double memref_load_79 = func_arg_5[arith_addi_29][arith_addi_73]; 
            double arith_mulf_80 = (memref_load_78 * memref_load_79); 
            double memref_load_81 = memref_alloca_20[0]; 
            double arith_addf_82 = (memref_load_81 + arith_mulf_80); 
            memref_alloca_20[0] = arith_addf_82; 
            int arith_addi_83 = (arith_muli_53 + arith_const_7); 
            double memref_load_84 = func_arg_5[arith_addi_29][arith_addi_83]; 
            double arith_mulf_85 = (arith_mulf_43 * memref_load_84); 
            double memref_load_86 = func_arg_4[arith_addi_83][arith_addi_35]; 
            double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
            func_arg_4[arith_addi_83][arith_addi_35] = arith_addf_87; 
            double memref_load_88 = func_arg_6[arith_addi_83][arith_addi_35]; 
            double memref_load_89 = func_arg_5[arith_addi_29][arith_addi_83]; 
            double arith_mulf_90 = (memref_load_88 * memref_load_89); 
            double memref_load_91 = memref_alloca_20[0]; 
            double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
            memref_alloca_20[0] = arith_addf_92; 
          }
          double memref_load_93 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_94 = (func_arg_2 * memref_load_93); 
          int arith_remsi_95 = (arith_addi_29 % arith_const_10); 
          int arith_cmpi_96 = (arith_remsi_95 < arith_const_18); 
          int arith_addi_97 = (arith_remsi_95 + arith_const_10); 
          int arith_select_98 = (arith_cmpi_96 ? arith_addi_97 : arith_remsi_95); 
          for (int for_iter_99 = arith_const_18; for_iter_99 < arith_select_98; for_iter_99 += arith_const_16) {
            int arith_cmpi_100 = (arith_addi_29 < arith_const_18); 
            int arith_subi_101 = (arith_const_9 - arith_addi_29); 
            int arith_select_102 = (arith_cmpi_100 ? arith_subi_101 : arith_addi_29); 
            int arith_divi_103 = (arith_select_102 / arith_const_10); 
            int arith_subi_104 = (arith_const_9 - arith_divi_103); 
            int arith_select_105 = (arith_cmpi_100 ? arith_subi_104 : arith_divi_103); 
            int arith_muli_106 = (arith_select_105 * arith_const_10); 
            int arith_addi_107 = (for_iter_99 + arith_muli_106); 
            double memref_load_108 = func_arg_5[arith_addi_29][arith_addi_107]; 
            double arith_mulf_109 = (arith_mulf_94 * memref_load_108); 
            double memref_load_110 = func_arg_4[arith_addi_107][arith_addi_35]; 
            double arith_addf_111 = (memref_load_110 + arith_mulf_109); 
            func_arg_4[arith_addi_107][arith_addi_35] = arith_addf_111; 
            double memref_load_112 = func_arg_6[arith_addi_107][arith_addi_35]; 
            double memref_load_113 = func_arg_5[arith_addi_29][arith_addi_107]; 
            double arith_mulf_114 = (memref_load_112 * memref_load_113); 
            double memref_load_115 = memref_alloca_20[0]; 
            double arith_addf_116 = (memref_load_115 + arith_mulf_114); 
            memref_alloca_20[0] = arith_addf_116; 
          }
          double memref_load_117 = func_arg_4[arith_addi_29][arith_addi_35]; 
          double arith_mulf_118 = (func_arg_3 * memref_load_117); 
          double memref_load_119 = func_arg_6[arith_addi_29][arith_addi_35]; 
          double arith_mulf_120 = (func_arg_2 * memref_load_119); 
          double arith_mulf_121 = (arith_mulf_120 * memref_load_30); 
          double arith_addf_122 = (arith_mulf_118 + arith_mulf_121); 
          double memref_load_123 = memref_alloca_20[0]; 
          double arith_mulf_124 = (func_arg_2 * memref_load_123); 
          double arith_addf_125 = (arith_addf_122 + arith_mulf_124); 
          func_arg_4[arith_addi_29][arith_addi_35] = arith_addf_125; 
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
