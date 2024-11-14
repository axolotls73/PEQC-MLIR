#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = 27; 
  int arith_const_6 = -2; 
  int arith_const_7 = 29; 
  int arith_const_8 = 1024; 
  int arith_const_9 = 2; 
  int arith_const_10 = -32; 
  int arith_const_11 = -1; 
  int arith_const_12 = 15; 
  int arith_const_13 = 20; 
  int arith_const_14 = -14; 
  int arith_const_15 = 512; 
  int arith_const_16 = 16; 
  int arith_const_17 = 3; 
  int arith_const_18 = 32; 
  double arith_const_19 = 0.333330; 
  int arith_const_20 = 0; 
  int arith_const_21 = 1; 
  for (int for_iter_22 = arith_const_20; for_iter_22 < arith_const_21; for_iter_22 += arith_const_21) {
    for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_17; for_iter_23 += arith_const_21) {
      int arith_muli_24 = (for_iter_23 * arith_const_16); 
      int arith_muli_25 = (for_iter_22 * arith_const_15); 
      int arith_addi_26 = (arith_muli_24 + arith_muli_25); 
      int arith_addi_27 = (arith_addi_26 + arith_const_14); 
      int arith_maxsi_28 = max(arith_addi_27, arith_const_20); 
      int arith_muli_29 = (for_iter_23 * arith_const_16); 
      int arith_muli_30 = (for_iter_22 * arith_const_15); 
      int arith_addi_31 = (arith_muli_29 + arith_muli_30); 
      int arith_addi_32 = (arith_addi_31 + arith_const_12); 
      int arith_minsi_33 = min(arith_addi_32, arith_const_13); 
      for (int for_iter_34 = arith_maxsi_28; for_iter_34 < arith_minsi_33; for_iter_34 += arith_const_21) {
        int arith_muli_35 = (for_iter_23 * arith_const_11); 
        int arith_muli_36 = (for_iter_22 * arith_const_10); 
        int arith_addi_37 = (arith_muli_35 + arith_muli_36); 
        int arith_cmpi_38 = (for_iter_34 < arith_const_20); 
        int arith_subi_39 = (arith_const_11 - for_iter_34); 
        int arith_select_40 = (arith_cmpi_38 ? arith_subi_39 : for_iter_34); 
        int arith_divi_41 = (arith_select_40 / arith_const_16); 
        int arith_subi_42 = (arith_const_11 - arith_divi_41); 
        int arith_select_43 = (arith_cmpi_38 ? arith_subi_42 : arith_divi_41); 
        int arith_addi_44 = (arith_addi_37 + arith_select_43); 
        int arith_cmpi_45 = (arith_addi_44 >= arith_const_20); 
        if (arith_cmpi_45) {
          double memref_load_46 = func_arg_2[arith_const_20]; 
          double memref_load_47 = func_arg_2[arith_const_21]; 
          double arith_addf_48 = (memref_load_46 + memref_load_47); 
          double memref_load_49 = func_arg_2[arith_const_9]; 
          double arith_addf_50 = (arith_addf_48 + memref_load_49); 
          double arith_mulf_51 = (arith_addf_50 * arith_const_19); 
          func_arg_3[arith_const_21] = arith_mulf_51; 
        }
        int arith_muli_52 = (for_iter_23 * arith_const_18); 
        int arith_muli_53 = (for_iter_22 * arith_const_8); 
        int arith_addi_54 = (arith_muli_52 + arith_muli_53); 
        int arith_muli_55 = (for_iter_34 * arith_const_9); 
        int arith_addi_56 = (arith_muli_55 + arith_const_9); 
        int arith_maxsi_57 = max(arith_addi_54, arith_addi_56); 
        int arith_muli_58 = (for_iter_23 * arith_const_18); 
        int arith_muli_59 = (for_iter_22 * arith_const_8); 
        int arith_addi_60 = (arith_muli_58 + arith_muli_59); 
        int arith_addi_61 = (arith_addi_60 + arith_const_18); 
        int arith_muli_62 = (for_iter_34 * arith_const_9); 
        int arith_addi_63 = (arith_muli_62 + arith_const_7); 
        int arith_minsi_64 = min(arith_addi_61, arith_addi_63); 
        for (int for_iter_65 = arith_maxsi_57; for_iter_65 < arith_minsi_64; for_iter_65 += arith_const_21) {
          int arith_muli_66 = (for_iter_34 * arith_const_6); 
          int arith_addi_67 = (arith_muli_66 + for_iter_65); 
          int arith_addi_68 = (arith_addi_67 + arith_const_11); 
          double memref_load_69 = func_arg_2[arith_addi_68]; 
          int arith_muli_70 = (for_iter_34 * arith_const_6); 
          int arith_addi_71 = (arith_muli_70 + for_iter_65); 
          double memref_load_72 = func_arg_2[arith_addi_71]; 
          double arith_addf_73 = (memref_load_69 + memref_load_72); 
          int arith_muli_74 = (for_iter_34 * arith_const_6); 
          int arith_addi_75 = (arith_muli_74 + for_iter_65); 
          int arith_addi_76 = (arith_addi_75 + arith_const_21); 
          double memref_load_77 = func_arg_2[arith_addi_76]; 
          double arith_addf_78 = (arith_addf_73 + memref_load_77); 
          double arith_mulf_79 = (arith_addf_78 * arith_const_19); 
          int arith_muli_80 = (for_iter_34 * arith_const_6); 
          int arith_addi_81 = (arith_muli_80 + for_iter_65); 
          func_arg_3[arith_addi_81] = arith_mulf_79; 
          int arith_muli_82 = (for_iter_34 * arith_const_6); 
          int arith_addi_83 = (arith_muli_82 + for_iter_65); 
          int arith_addi_84 = (arith_addi_83 + arith_const_6); 
          double memref_load_85 = func_arg_3[arith_addi_84]; 
          int arith_muli_86 = (for_iter_34 * arith_const_6); 
          int arith_addi_87 = (arith_muli_86 + for_iter_65); 
          int arith_addi_88 = (arith_addi_87 + arith_const_11); 
          double memref_load_89 = func_arg_3[arith_addi_88]; 
          double arith_addf_90 = (memref_load_85 + memref_load_89); 
          int arith_muli_91 = (for_iter_34 * arith_const_6); 
          int arith_addi_92 = (arith_muli_91 + for_iter_65); 
          double memref_load_93 = func_arg_3[arith_addi_92]; 
          double arith_addf_94 = (arith_addf_90 + memref_load_93); 
          double arith_mulf_95 = (arith_addf_94 * arith_const_19); 
          int arith_muli_96 = (for_iter_34 * arith_const_6); 
          int arith_addi_97 = (arith_muli_96 + for_iter_65); 
          int arith_addi_98 = (arith_addi_97 + arith_const_11); 
          func_arg_2[arith_addi_98] = arith_mulf_95; 
        }
        int arith_muli_99 = (for_iter_22 * arith_const_18); 
        int arith_addi_100 = (for_iter_23 + arith_muli_99); 
        int arith_addi_101 = (for_iter_34 + arith_const_11); 
        int arith_cmpi_102 = (arith_addi_101 <= arith_const_20); 
        int arith_subi_103 = (arith_const_20 - arith_addi_101); 
        int arith_subi_104 = (arith_addi_101 - arith_const_21); 
        int arith_select_105 = (arith_cmpi_102 ? arith_subi_103 : arith_subi_104); 
        int arith_divi_106 = (arith_select_105 / arith_const_16); 
        int arith_subi_107 = (arith_const_20 - arith_divi_106); 
        int arith_addi_108 = (arith_divi_106 + arith_const_21); 
        int arith_select_109 = (arith_cmpi_102 ? arith_subi_107 : arith_addi_108); 
        int arith_muli_110 = (arith_select_109 * arith_const_11); 
        int arith_addi_111 = (arith_addi_100 + arith_muli_110); 
        int arith_cmpi_112 = (arith_addi_111 >= arith_const_20); 
        if (arith_cmpi_112) {
          double memref_load_113 = func_arg_3[arith_const_5]; 
          double memref_load_114 = func_arg_3[arith_const_4]; 
          double arith_addf_115 = (memref_load_113 + memref_load_114); 
          double memref_load_116 = func_arg_3[arith_const_7]; 
          double arith_addf_117 = (arith_addf_115 + memref_load_116); 
          double arith_mulf_118 = (arith_addf_117 * arith_const_19); 
          func_arg_2[arith_const_4] = arith_mulf_118; 
        }
      }
      int arith_muli_119 = (for_iter_22 * arith_const_18); 
      int arith_addi_120 = (for_iter_23 + arith_muli_119); 
      int arith_cmpi_121 = (arith_addi_120 == arith_const_20); 
      if (arith_cmpi_121) {
        double memref_load_122 = func_arg_2[arith_const_20]; 
        double memref_load_123 = func_arg_2[arith_const_21]; 
        double arith_addf_124 = (memref_load_122 + memref_load_123); 
        double memref_load_125 = func_arg_2[arith_const_9]; 
        double arith_addf_126 = (arith_addf_124 + memref_load_125); 
        double arith_mulf_127 = (arith_addf_126 * arith_const_19); 
        func_arg_3[arith_const_21] = arith_mulf_127; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_1d(tsteps, n, A, B);

}

#pragma pocc-region-end
