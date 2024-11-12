#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 39; 
  int arith_const_5 = 7; 
  int arith_const_6 = -2; 
  int arith_const_7 = 33; 
  int arith_const_8 = 31; 
  int arith_const_9 = -1; 
  int arith_const_10 = 32; 
  int arith_const_11 = 40; 
  int arith_const_12 = -32; 
  int arith_const_13 = 0; 
  int arith_const_14 = 2; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_12); 
    int arith_addi_18 = (arith_muli_17 + arith_const_11); 
    int arith_minsi_19 = min(arith_addi_18, arith_const_10); 
    for (int for_iter_20 = arith_const_13; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_15) {
      int arith_muli_21 = (for_iter_16 * arith_const_10); 
      int arith_addi_22 = (arith_muli_21 + for_iter_20); 
      double memref_load_23 = func_arg_3[arith_addi_22]; 
      int arith_muli_24 = (for_iter_16 * arith_const_10); 
      int arith_addi_25 = (arith_muli_24 + for_iter_20); 
      func_arg_2[arith_addi_25] = memref_load_23; 
    }
  }
  for (int for_iter_26 = arith_const_13; for_iter_26 < arith_const_14; for_iter_26 += arith_const_15) {
    int arith_addi_27 = (for_iter_26 + arith_const_15); 
    for (int for_iter_28 = arith_const_13; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_15) {
      int arith_addi_29 = (for_iter_26 + arith_const_9); 
      int arith_cmpi_30 = (arith_addi_29 == arith_const_13); 
      int arith_addi_31 = (for_iter_28 + arith_const_9); 
      int arith_cmpi_32 = (arith_addi_31 == arith_const_13); 
      int arith_andi_33 = (arith_cmpi_30 & arith_cmpi_32); 
      if (arith_andi_33) {
        double memref_load_34 = func_arg_2[arith_const_10]; 
        double memref_load_35 = func_arg_1[arith_const_10][arith_const_8]; 
        double memref_load_36 = func_arg_2[arith_const_8]; 
        double arith_mulf_37 = (memref_load_35 * memref_load_36); 
        double arith_subf_38 = (memref_load_34 - arith_mulf_37); 
        func_arg_2[arith_const_10] = arith_subf_38; 
      }
      int arith_muli_39 = (for_iter_26 * arith_const_10); 
      int arith_muli_40 = (for_iter_28 * arith_const_10); 
      int arith_addi_41 = (arith_muli_40 + arith_const_15); 
      int arith_maxsi_42 = max(arith_muli_39, arith_addi_41); 
      int arith_muli_43 = (for_iter_26 * arith_const_10); 
      int arith_addi_44 = (arith_muli_43 + arith_const_10); 
      int arith_muli_45 = (for_iter_28 * arith_const_10); 
      int arith_addi_46 = (arith_muli_45 + arith_const_7); 
      int arith_minsi_47 = min(arith_addi_44, arith_const_11); 
      int arith_minsi_48 = min(arith_minsi_47, arith_addi_46); 
      for (int for_iter_49 = arith_maxsi_42; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_15) {
        int arith_muli_50 = (for_iter_28 * arith_const_10); 
        int arith_maxsi_51 = max(arith_muli_50, arith_const_15); 
        int arith_addi_52 = (for_iter_49 + arith_const_9); 
        for (int for_iter_53 = arith_maxsi_51; for_iter_53 < arith_addi_52; for_iter_53 += arith_const_15) {
          double memref_load_54 = func_arg_2[for_iter_49]; 
          int arith_addi_55 = (for_iter_53 + arith_const_9); 
          double memref_load_56 = func_arg_1[for_iter_49][arith_addi_55]; 
          int arith_addi_57 = (for_iter_53 + arith_const_9); 
          double memref_load_58 = func_arg_2[arith_addi_57]; 
          double arith_mulf_59 = (memref_load_56 * memref_load_58); 
          double arith_subf_60 = (memref_load_54 - arith_mulf_59); 
          func_arg_2[for_iter_49] = arith_subf_60; 
        }
        int arith_cmpi_61 = (for_iter_26 == arith_const_13); 
        int arith_cmpi_62 = (for_iter_28 == arith_const_13); 
        int arith_andi_63 = (arith_cmpi_61 & arith_cmpi_62); 
        int arith_addi_64 = (for_iter_49 + arith_const_9); 
        int arith_cmpi_65 = (arith_addi_64 == arith_const_13); 
        int arith_andi_66 = (arith_andi_63 & arith_cmpi_65); 
        if (arith_andi_66) {
          double memref_load_67 = func_arg_2[arith_const_13]; 
          double memref_load_68 = func_arg_1[arith_const_13][arith_const_13]; 
          double arith_divf_69 = (memref_load_67 / memref_load_68); 
          func_arg_2[arith_const_13] = arith_divf_69; 
        }
        int arith_addi_70 = (for_iter_49 + arith_const_6); 
        int arith_cmpi_71 = (arith_addi_70 >= arith_const_13); 
        if (arith_cmpi_71) {
          int arith_addi_72 = (for_iter_49 + arith_const_9); 
          double memref_load_73 = func_arg_2[arith_addi_72]; 
          int arith_addi_74 = (for_iter_49 + arith_const_9); 
          int arith_addi_75 = (for_iter_49 + arith_const_9); 
          double memref_load_76 = func_arg_1[arith_addi_74][arith_addi_75]; 
          double arith_divf_77 = (memref_load_73 / memref_load_76); 
          int arith_addi_78 = (for_iter_49 + arith_const_9); 
          func_arg_2[arith_addi_78] = arith_divf_77; 
          double memref_load_79 = func_arg_2[for_iter_49]; 
          int arith_addi_80 = (for_iter_49 + arith_const_6); 
          double memref_load_81 = func_arg_1[for_iter_49][arith_addi_80]; 
          int arith_addi_82 = (for_iter_49 + arith_const_6); 
          double memref_load_83 = func_arg_2[arith_addi_82]; 
          double arith_mulf_84 = (memref_load_81 * memref_load_83); 
          double arith_subf_85 = (memref_load_79 - arith_mulf_84); 
          func_arg_2[for_iter_49] = arith_subf_85; 
        }
        int arith_muli_86 = (for_iter_28 * arith_const_9); 
        int arith_addi_87 = (for_iter_26 + arith_muli_86); 
        int arith_cmpi_88 = (arith_addi_87 == arith_const_13); 
        if (arith_cmpi_88) {
          double memref_load_89 = func_arg_2[for_iter_49]; 
          int arith_addi_90 = (for_iter_49 + arith_const_9); 
          double memref_load_91 = func_arg_1[for_iter_49][arith_addi_90]; 
          int arith_addi_92 = (for_iter_49 + arith_const_9); 
          double memref_load_93 = func_arg_2[arith_addi_92]; 
          double arith_mulf_94 = (memref_load_91 * memref_load_93); 
          double arith_subf_95 = (memref_load_89 - arith_mulf_94); 
          func_arg_2[for_iter_49] = arith_subf_95; 
        }
      }
      int arith_addi_96 = (for_iter_26 + arith_const_9); 
      int arith_cmpi_97 = (arith_addi_96 == arith_const_13); 
      int arith_cmpi_98 = (for_iter_28 == arith_const_13); 
      int arith_andi_99 = (arith_cmpi_97 & arith_cmpi_98); 
      if (arith_andi_99) {
        for (int for_iter_100 = arith_const_13; for_iter_100 < arith_const_5; for_iter_100 += arith_const_15) {
          for (int for_iter_101 = arith_const_13; for_iter_101 < arith_const_8; for_iter_101 += arith_const_15) {
            int arith_addi_102 = (for_iter_100 + arith_const_7); 
            double memref_load_103 = func_arg_2[arith_addi_102]; 
            int arith_addi_104 = (for_iter_100 + arith_const_7); 
            double memref_load_105 = func_arg_1[arith_addi_104][for_iter_101]; 
            double memref_load_106 = func_arg_2[for_iter_101]; 
            double arith_mulf_107 = (memref_load_105 * memref_load_106); 
            double arith_subf_108 = (memref_load_103 - arith_mulf_107); 
            int arith_addi_109 = (for_iter_100 + arith_const_7); 
            func_arg_2[arith_addi_109] = arith_subf_108; 
          }
        }
      }
      int arith_addi_110 = (for_iter_26 + arith_const_9); 
      int arith_cmpi_111 = (arith_addi_110 == arith_const_13); 
      int arith_addi_112 = (for_iter_28 + arith_const_9); 
      int arith_cmpi_113 = (arith_addi_112 == arith_const_13); 
      int arith_andi_114 = (arith_cmpi_111 & arith_cmpi_113); 
      if (arith_andi_114) {
        double memref_load_115 = func_arg_2[arith_const_4]; 
        double memref_load_116 = func_arg_1[arith_const_4][arith_const_4]; 
        double arith_divf_117 = (memref_load_115 / memref_load_116); 
        func_arg_2[arith_const_4] = arith_divf_117; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;


  kernel_trisolv(n, L, x, b);

}

#pragma pocc-region-end
