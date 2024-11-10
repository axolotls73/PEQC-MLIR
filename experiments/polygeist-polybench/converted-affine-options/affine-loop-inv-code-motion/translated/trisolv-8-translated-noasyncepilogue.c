#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 39; 
  int arith_const_5 = -2; 
  int arith_const_6 = 33; 
  int arith_const_7 = 31; 
  int arith_const_8 = -1; 
  int arith_const_9 = 40; 
  int arith_const_10 = 32; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_muli_15 = (for_iter_14 * arith_const_10); 
    int arith_muli_16 = (for_iter_14 * arith_const_10); 
    int arith_addi_17 = (arith_muli_16 + arith_const_10); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_9); 
    for (int for_iter_19 = arith_muli_15; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_13) {
      double memref_load_20 = func_arg_3[for_iter_19]; 
      func_arg_2[for_iter_19] = memref_load_20; 
    }
  }
  for (int for_iter_21 = arith_const_11; for_iter_21 < arith_const_12; for_iter_21 += arith_const_13) {
    int arith_addi_22 = (for_iter_21 + arith_const_13); 
    for (int for_iter_23 = arith_const_11; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_13) {
      int arith_addi_24 = (for_iter_21 + arith_const_8); 
      int arith_cmpi_25 = (arith_addi_24 == arith_const_11); 
      int arith_addi_26 = (for_iter_23 + arith_const_8); 
      int arith_cmpi_27 = (arith_addi_26 == arith_const_11); 
      int arith_andi_28 = (arith_cmpi_25 & arith_cmpi_27); 
      if (arith_andi_28) {
        double memref_load_29 = func_arg_2[arith_const_10]; 
        double memref_load_30 = func_arg_1[arith_const_10][arith_const_7]; 
        double memref_load_31 = func_arg_2[arith_const_7]; 
        double arith_mulf_32 = (memref_load_30 * memref_load_31); 
        double arith_subf_33 = (memref_load_29 - arith_mulf_32); 
        func_arg_2[arith_const_10] = arith_subf_33; 
      }
      int arith_muli_34 = (for_iter_21 * arith_const_10); 
      int arith_muli_35 = (for_iter_23 * arith_const_10); 
      int arith_addi_36 = (arith_muli_35 + arith_const_13); 
      int arith_maxsi_37 = max(arith_muli_34, arith_addi_36); 
      int arith_muli_38 = (for_iter_21 * arith_const_10); 
      int arith_addi_39 = (arith_muli_38 + arith_const_10); 
      int arith_muli_40 = (for_iter_23 * arith_const_10); 
      int arith_addi_41 = (arith_muli_40 + arith_const_6); 
      int arith_minsi_42 = min(arith_addi_39, arith_const_9); 
      int arith_minsi_43 = min(arith_minsi_42, arith_addi_41); 
      for (int for_iter_44 = arith_maxsi_37; for_iter_44 < arith_minsi_43; for_iter_44 += arith_const_13) {
        int arith_muli_45 = (for_iter_23 * arith_const_10); 
        int arith_maxsi_46 = max(arith_muli_45, arith_const_13); 
        int arith_addi_47 = (for_iter_44 + arith_const_8); 
        for (int for_iter_48 = arith_maxsi_46; for_iter_48 < arith_addi_47; for_iter_48 += arith_const_13) {
          double memref_load_49 = func_arg_2[for_iter_44]; 
          int arith_addi_50 = (for_iter_48 + arith_const_8); 
          double memref_load_51 = func_arg_1[for_iter_44][arith_addi_50]; 
          int arith_addi_52 = (for_iter_48 + arith_const_8); 
          double memref_load_53 = func_arg_2[arith_addi_52]; 
          double arith_mulf_54 = (memref_load_51 * memref_load_53); 
          double arith_subf_55 = (memref_load_49 - arith_mulf_54); 
          func_arg_2[for_iter_44] = arith_subf_55; 
        }
        int arith_cmpi_56 = (for_iter_21 == arith_const_11); 
        int arith_cmpi_57 = (for_iter_23 == arith_const_11); 
        int arith_andi_58 = (arith_cmpi_56 & arith_cmpi_57); 
        int arith_addi_59 = (for_iter_44 + arith_const_8); 
        int arith_cmpi_60 = (arith_addi_59 == arith_const_11); 
        int arith_andi_61 = (arith_andi_58 & arith_cmpi_60); 
        if (arith_andi_61) {
          double memref_load_62 = func_arg_2[arith_const_11]; 
          double memref_load_63 = func_arg_1[arith_const_11][arith_const_11]; 
          double arith_divf_64 = (memref_load_62 / memref_load_63); 
          func_arg_2[arith_const_11] = arith_divf_64; 
        }
        int arith_addi_65 = (for_iter_44 + arith_const_5); 
        int arith_cmpi_66 = (arith_addi_65 >= arith_const_11); 
        if (arith_cmpi_66) {
          int arith_addi_67 = (for_iter_44 + arith_const_8); 
          double memref_load_68 = func_arg_2[arith_addi_67]; 
          int arith_addi_69 = (for_iter_44 + arith_const_8); 
          int arith_addi_70 = (for_iter_44 + arith_const_8); 
          double memref_load_71 = func_arg_1[arith_addi_69][arith_addi_70]; 
          double arith_divf_72 = (memref_load_68 / memref_load_71); 
          int arith_addi_73 = (for_iter_44 + arith_const_8); 
          func_arg_2[arith_addi_73] = arith_divf_72; 
          double memref_load_74 = func_arg_2[for_iter_44]; 
          int arith_addi_75 = (for_iter_44 + arith_const_5); 
          double memref_load_76 = func_arg_1[for_iter_44][arith_addi_75]; 
          int arith_addi_77 = (for_iter_44 + arith_const_5); 
          double memref_load_78 = func_arg_2[arith_addi_77]; 
          double arith_mulf_79 = (memref_load_76 * memref_load_78); 
          double arith_subf_80 = (memref_load_74 - arith_mulf_79); 
          func_arg_2[for_iter_44] = arith_subf_80; 
        }
        int arith_muli_81 = (for_iter_23 * arith_const_8); 
        int arith_addi_82 = (for_iter_21 + arith_muli_81); 
        int arith_cmpi_83 = (arith_addi_82 == arith_const_11); 
        if (arith_cmpi_83) {
          double memref_load_84 = func_arg_2[for_iter_44]; 
          int arith_addi_85 = (for_iter_44 + arith_const_8); 
          double memref_load_86 = func_arg_1[for_iter_44][arith_addi_85]; 
          int arith_addi_87 = (for_iter_44 + arith_const_8); 
          double memref_load_88 = func_arg_2[arith_addi_87]; 
          double arith_mulf_89 = (memref_load_86 * memref_load_88); 
          double arith_subf_90 = (memref_load_84 - arith_mulf_89); 
          func_arg_2[for_iter_44] = arith_subf_90; 
        }
      }
      int arith_addi_91 = (for_iter_21 + arith_const_8); 
      int arith_cmpi_92 = (arith_addi_91 == arith_const_11); 
      int arith_cmpi_93 = (for_iter_23 == arith_const_11); 
      int arith_andi_94 = (arith_cmpi_92 & arith_cmpi_93); 
      if (arith_andi_94) {
        for (int for_iter_95 = arith_const_6; for_iter_95 < arith_const_9; for_iter_95 += arith_const_13) {
          for (int for_iter_96 = arith_const_13; for_iter_96 < arith_const_10; for_iter_96 += arith_const_13) {
            double memref_load_97 = func_arg_2[for_iter_95]; 
            int arith_addi_98 = (for_iter_96 + arith_const_8); 
            double memref_load_99 = func_arg_1[for_iter_95][arith_addi_98]; 
            int arith_addi_100 = (for_iter_96 + arith_const_8); 
            double memref_load_101 = func_arg_2[arith_addi_100]; 
            double arith_mulf_102 = (memref_load_99 * memref_load_101); 
            double arith_subf_103 = (memref_load_97 - arith_mulf_102); 
            func_arg_2[for_iter_95] = arith_subf_103; 
          }
        }
      }
      int arith_addi_104 = (for_iter_21 + arith_const_8); 
      int arith_cmpi_105 = (arith_addi_104 == arith_const_11); 
      int arith_addi_106 = (for_iter_23 + arith_const_8); 
      int arith_cmpi_107 = (arith_addi_106 == arith_const_11); 
      int arith_andi_108 = (arith_cmpi_105 & arith_cmpi_107); 
      if (arith_andi_108) {
        double memref_load_109 = func_arg_2[arith_const_4]; 
        double memref_load_110 = func_arg_1[arith_const_4][arith_const_4]; 
        double arith_divf_111 = (memref_load_109 / memref_load_110); 
        func_arg_2[arith_const_4] = arith_divf_111; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;


  kernel_trisolv(n, L, x, b);

}

#pragma pocc-region-end
