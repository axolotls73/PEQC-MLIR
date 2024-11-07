#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = 27; 
  int arith_const_6 = -2; 
  int arith_const_7 = 29; 
  int arith_const_8 = 32; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 15; 
  int arith_const_12 = 20; 
  int arith_const_13 = -14; 
  int arith_const_14 = 16; 
  double arith_const_15 = 0.333330; 
  int arith_const_16 = 0; 
  int arith_const_17 = 3; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_14); 
    int arith_addi_21 = (arith_muli_20 + arith_const_13); 
    int arith_maxsi_22 = max(arith_addi_21, arith_const_16); 
    int arith_muli_23 = (for_iter_19 * arith_const_14); 
    int arith_addi_24 = (arith_muli_23 + arith_const_11); 
    int arith_minsi_25 = min(arith_addi_24, arith_const_12); 
    for (int for_iter_26 = arith_maxsi_22; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_18) {
      int arith_cmpi_27 = ((for_iter_26 < arith_const_16) ? 1 : 0); 
      int arith_subi_28 = (arith_const_10 - for_iter_26); 
      int arith_select_29 = (arith_cmpi_27 ? arith_subi_28 : for_iter_26); 
      int arith_divi_30 = (arith_select_29 / arith_const_14); 
      int arith_subi_31 = (arith_const_10 - arith_divi_30); 
      int arith_select_32 = (arith_cmpi_27 ? arith_subi_31 : arith_divi_30); 
      int arith_muli_33 = (for_iter_19 * arith_const_10); 
      int arith_addi_34 = (arith_select_32 + arith_muli_33); 
      int arith_cmpi_35 = ((arith_addi_34 >= arith_const_16) ? 1 : 0); 
      if (arith_cmpi_35) {
        double memref_load_36 = func_arg_2[arith_const_16]; 
        double memref_load_37 = func_arg_2[arith_const_18]; 
        double arith_addf_38 = (memref_load_36 + memref_load_37); 
        double memref_load_39 = func_arg_2[arith_const_9]; 
        double arith_addf_40 = (arith_addf_38 + memref_load_39); 
        double arith_mulf_41 = (arith_addf_40 * arith_const_15); 
        func_arg_3[arith_const_18] = arith_mulf_41; 
      }
      int arith_muli_42 = (for_iter_19 * arith_const_8); 
      int arith_muli_43 = (for_iter_26 * arith_const_9); 
      int arith_addi_44 = (arith_muli_43 + arith_const_9); 
      int arith_maxsi_45 = max(arith_muli_42, arith_addi_44); 
      int arith_muli_46 = (for_iter_19 * arith_const_8); 
      int arith_addi_47 = (arith_muli_46 + arith_const_8); 
      int arith_muli_48 = (for_iter_26 * arith_const_9); 
      int arith_addi_49 = (arith_muli_48 + arith_const_7); 
      int arith_minsi_50 = min(arith_addi_47, arith_addi_49); 
      for (int for_iter_51 = arith_maxsi_45; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_18) {
        int arith_muli_52 = (for_iter_26 * arith_const_6); 
        int arith_addi_53 = (arith_muli_52 + for_iter_51); 
        int arith_addi_54 = (arith_addi_53 + arith_const_10); 
        double memref_load_55 = func_arg_2[arith_addi_54]; 
        int arith_muli_56 = (for_iter_26 * arith_const_6); 
        int arith_addi_57 = (arith_muli_56 + for_iter_51); 
        double memref_load_58 = func_arg_2[arith_addi_57]; 
        double arith_addf_59 = (memref_load_55 + memref_load_58); 
        int arith_muli_60 = (for_iter_26 * arith_const_6); 
        int arith_addi_61 = (arith_muli_60 + for_iter_51); 
        int arith_addi_62 = (arith_addi_61 + arith_const_18); 
        double memref_load_63 = func_arg_2[arith_addi_62]; 
        double arith_addf_64 = (arith_addf_59 + memref_load_63); 
        double arith_mulf_65 = (arith_addf_64 * arith_const_15); 
        int arith_muli_66 = (for_iter_26 * arith_const_6); 
        int arith_addi_67 = (arith_muli_66 + for_iter_51); 
        func_arg_3[arith_addi_67] = arith_mulf_65; 
        int arith_muli_68 = (for_iter_26 * arith_const_6); 
        int arith_addi_69 = (arith_muli_68 + for_iter_51); 
        int arith_addi_70 = (arith_addi_69 + arith_const_6); 
        double memref_load_71 = func_arg_3[arith_addi_70]; 
        int arith_muli_72 = (for_iter_26 * arith_const_6); 
        int arith_addi_73 = (arith_muli_72 + for_iter_51); 
        int arith_addi_74 = (arith_addi_73 + arith_const_10); 
        double memref_load_75 = func_arg_3[arith_addi_74]; 
        double arith_addf_76 = (memref_load_71 + memref_load_75); 
        int arith_muli_77 = (for_iter_26 * arith_const_6); 
        int arith_addi_78 = (arith_muli_77 + for_iter_51); 
        double memref_load_79 = func_arg_3[arith_addi_78]; 
        double arith_addf_80 = (arith_addf_76 + memref_load_79); 
        double arith_mulf_81 = (arith_addf_80 * arith_const_15); 
        int arith_muli_82 = (for_iter_26 * arith_const_6); 
        int arith_addi_83 = (arith_muli_82 + for_iter_51); 
        int arith_addi_84 = (arith_addi_83 + arith_const_10); 
        func_arg_2[arith_addi_84] = arith_mulf_81; 
      }
      int arith_addi_85 = (for_iter_26 + arith_const_10); 
      int arith_cmpi_86 = ((arith_addi_85 <= arith_const_16) ? 1 : 0); 
      int arith_subi_87 = (arith_const_16 - arith_addi_85); 
      int arith_subi_88 = (arith_addi_85 - arith_const_18); 
      int arith_select_89 = (arith_cmpi_86 ? arith_subi_87 : arith_subi_88); 
      int arith_divi_90 = (arith_select_89 / arith_const_14); 
      int arith_subi_91 = (arith_const_16 - arith_divi_90); 
      int arith_addi_92 = (arith_divi_90 + arith_const_18); 
      int arith_select_93 = (arith_cmpi_86 ? arith_subi_91 : arith_addi_92); 
      int arith_muli_94 = (arith_select_93 * arith_const_10); 
      int arith_addi_95 = (for_iter_19 + arith_muli_94); 
      int arith_cmpi_96 = ((arith_addi_95 >= arith_const_16) ? 1 : 0); 
      if (arith_cmpi_96) {
        double memref_load_97 = func_arg_3[arith_const_5]; 
        double memref_load_98 = func_arg_3[arith_const_4]; 
        double arith_addf_99 = (memref_load_97 + memref_load_98); 
        double memref_load_100 = func_arg_3[arith_const_7]; 
        double arith_addf_101 = (arith_addf_99 + memref_load_100); 
        double arith_mulf_102 = (arith_addf_101 * arith_const_15); 
        func_arg_2[arith_const_4] = arith_mulf_102; 
      }
    }
    int arith_cmpi_103 = ((for_iter_19 == arith_const_16) ? 1 : 0); 
    if (arith_cmpi_103) {
      double memref_load_104 = func_arg_2[arith_const_16]; 
      double memref_load_105 = func_arg_2[arith_const_18]; 
      double arith_addf_106 = (memref_load_104 + memref_load_105); 
      double memref_load_107 = func_arg_2[arith_const_9]; 
      double arith_addf_108 = (arith_addf_106 + memref_load_107); 
      double arith_mulf_109 = (arith_addf_108 * arith_const_15); 
      func_arg_3[arith_const_18] = arith_mulf_109; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_1d(tsteps, n, A, B);

}

#pragma pocc-region-end
