#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
    int arith_addi_20 = (for_iter_19 + arith_const_18); 
    for (int for_iter_21 = for_iter_19; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_18) {
      int arith_muli_22 = (for_iter_21 * arith_const_14); 
      int arith_addi_23 = (arith_muli_22 + arith_const_13); 
      int arith_maxsi_24 = max(arith_addi_23, arith_const_16); 
      int arith_muli_25 = (for_iter_21 * arith_const_14); 
      int arith_addi_26 = (arith_muli_25 + arith_const_11); 
      int arith_minsi_27 = min(arith_addi_26, arith_const_12); 
      for (int for_iter_28 = arith_maxsi_24; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_18) {
        int arith_cmpi_29 = ((for_iter_28 < arith_const_16) ? 1 : 0); 
        int arith_subi_30 = (arith_const_10 - for_iter_28); 
        int arith_select_31 = (arith_cmpi_29 ? arith_subi_30 : for_iter_28); 
        int arith_divi_32 = (arith_select_31 / arith_const_14); 
        int arith_subi_33 = (arith_const_10 - arith_divi_32); 
        int arith_select_34 = (arith_cmpi_29 ? arith_subi_33 : arith_divi_32); 
        int arith_muli_35 = (for_iter_21 * arith_const_10); 
        int arith_addi_36 = (arith_select_34 + arith_muli_35); 
        int arith_cmpi_37 = ((arith_addi_36 >= arith_const_16) ? 1 : 0); 
        if (arith_cmpi_37) {
          double memref_load_38 = func_arg_2[arith_const_16]; 
          double memref_load_39 = func_arg_2[arith_const_18]; 
          double arith_addf_40 = (memref_load_38 + memref_load_39); 
          double memref_load_41 = func_arg_2[arith_const_9]; 
          double arith_addf_42 = (arith_addf_40 + memref_load_41); 
          double arith_mulf_43 = (arith_addf_42 * arith_const_15); 
          func_arg_3[arith_const_18] = arith_mulf_43; 
        }
        int arith_muli_44 = (for_iter_21 * arith_const_8); 
        int arith_muli_45 = (for_iter_28 * arith_const_9); 
        int arith_addi_46 = (arith_muli_45 + arith_const_9); 
        int arith_maxsi_47 = max(arith_muli_44, arith_addi_46); 
        int arith_muli_48 = (for_iter_21 * arith_const_8); 
        int arith_addi_49 = (arith_muli_48 + arith_const_8); 
        int arith_muli_50 = (for_iter_28 * arith_const_9); 
        int arith_addi_51 = (arith_muli_50 + arith_const_7); 
        int arith_minsi_52 = min(arith_addi_49, arith_addi_51); 
        for (int for_iter_53 = arith_maxsi_47; for_iter_53 < arith_minsi_52; for_iter_53 += arith_const_18) {
          int arith_muli_54 = (for_iter_28 * arith_const_6); 
          int arith_addi_55 = (arith_muli_54 + for_iter_53); 
          int arith_addi_56 = (arith_addi_55 + arith_const_10); 
          double memref_load_57 = func_arg_2[arith_addi_56]; 
          int arith_muli_58 = (for_iter_28 * arith_const_6); 
          int arith_addi_59 = (arith_muli_58 + for_iter_53); 
          double memref_load_60 = func_arg_2[arith_addi_59]; 
          double arith_addf_61 = (memref_load_57 + memref_load_60); 
          int arith_muli_62 = (for_iter_28 * arith_const_6); 
          int arith_addi_63 = (arith_muli_62 + for_iter_53); 
          int arith_addi_64 = (arith_addi_63 + arith_const_18); 
          double memref_load_65 = func_arg_2[arith_addi_64]; 
          double arith_addf_66 = (arith_addf_61 + memref_load_65); 
          double arith_mulf_67 = (arith_addf_66 * arith_const_15); 
          int arith_muli_68 = (for_iter_28 * arith_const_6); 
          int arith_addi_69 = (arith_muli_68 + for_iter_53); 
          func_arg_3[arith_addi_69] = arith_mulf_67; 
          int arith_muli_70 = (for_iter_28 * arith_const_6); 
          int arith_addi_71 = (arith_muli_70 + for_iter_53); 
          int arith_addi_72 = (arith_addi_71 + arith_const_6); 
          double memref_load_73 = func_arg_3[arith_addi_72]; 
          int arith_muli_74 = (for_iter_28 * arith_const_6); 
          int arith_addi_75 = (arith_muli_74 + for_iter_53); 
          int arith_addi_76 = (arith_addi_75 + arith_const_10); 
          double memref_load_77 = func_arg_3[arith_addi_76]; 
          double arith_addf_78 = (memref_load_73 + memref_load_77); 
          int arith_muli_79 = (for_iter_28 * arith_const_6); 
          int arith_addi_80 = (arith_muli_79 + for_iter_53); 
          double memref_load_81 = func_arg_3[arith_addi_80]; 
          double arith_addf_82 = (arith_addf_78 + memref_load_81); 
          double arith_mulf_83 = (arith_addf_82 * arith_const_15); 
          int arith_muli_84 = (for_iter_28 * arith_const_6); 
          int arith_addi_85 = (arith_muli_84 + for_iter_53); 
          int arith_addi_86 = (arith_addi_85 + arith_const_10); 
          func_arg_2[arith_addi_86] = arith_mulf_83; 
        }
        int arith_addi_87 = (for_iter_28 + arith_const_10); 
        int arith_cmpi_88 = ((arith_addi_87 <= arith_const_16) ? 1 : 0); 
        int arith_subi_89 = (arith_const_16 - arith_addi_87); 
        int arith_subi_90 = (arith_addi_87 - arith_const_18); 
        int arith_select_91 = (arith_cmpi_88 ? arith_subi_89 : arith_subi_90); 
        int arith_divi_92 = (arith_select_91 / arith_const_14); 
        int arith_subi_93 = (arith_const_16 - arith_divi_92); 
        int arith_addi_94 = (arith_divi_92 + arith_const_18); 
        int arith_select_95 = (arith_cmpi_88 ? arith_subi_93 : arith_addi_94); 
        int arith_muli_96 = (arith_select_95 * arith_const_10); 
        int arith_addi_97 = (for_iter_21 + arith_muli_96); 
        int arith_cmpi_98 = ((arith_addi_97 >= arith_const_16) ? 1 : 0); 
        if (arith_cmpi_98) {
          double memref_load_99 = func_arg_3[arith_const_5]; 
          double memref_load_100 = func_arg_3[arith_const_4]; 
          double arith_addf_101 = (memref_load_99 + memref_load_100); 
          double memref_load_102 = func_arg_3[arith_const_7]; 
          double arith_addf_103 = (arith_addf_101 + memref_load_102); 
          double arith_mulf_104 = (arith_addf_103 * arith_const_15); 
          func_arg_2[arith_const_4] = arith_mulf_104; 
        }
      }
      int arith_cmpi_105 = ((for_iter_21 == arith_const_16) ? 1 : 0); 
      if (arith_cmpi_105) {
        double memref_load_106 = func_arg_2[arith_const_16]; 
        double memref_load_107 = func_arg_2[arith_const_18]; 
        double arith_addf_108 = (memref_load_106 + memref_load_107); 
        double memref_load_109 = func_arg_2[arith_const_9]; 
        double arith_addf_110 = (arith_addf_108 + memref_load_109); 
        double arith_mulf_111 = (arith_addf_110 * arith_const_15); 
        func_arg_3[arith_const_18] = arith_mulf_111; 
      }
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

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
