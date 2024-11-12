#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 6; 
  int arith_const_13 = 22; 
  int arith_const_14 = 3; 
  int arith_const_15 = 2; 
  int arith_const_16 = 4; 
  int arith_const_17 = 5; 
  int arith_const_18 = 18; 
  double arith_const_19 = 0.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 16; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_18; for_iter_24 += arith_const_22) {
      for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_22; for_iter_25 += arith_const_22) {
        int arith_addi_26 = (for_iter_23 + for_iter_25); 
        for (int for_iter_27 = arith_const_20; for_iter_27 < arith_const_22; for_iter_27 += arith_const_22) {
          int arith_addi_28 = (for_iter_24 + for_iter_27); 
          func_arg_5[arith_addi_26][arith_addi_28] = arith_const_19; 
          for (int for_iter_29 = arith_const_20; for_iter_29 < arith_const_17; for_iter_29 += arith_const_22) {
            int arith_muli_30 = (for_iter_29 * arith_const_16); 
            double memref_load_31 = func_arg_6[arith_addi_26][arith_muli_30]; 
            double memref_load_32 = func_arg_7[arith_muli_30][arith_addi_28]; 
            double arith_mulf_33 = (memref_load_31 * memref_load_32); 
            double memref_load_34 = func_arg_5[arith_addi_26][arith_addi_28]; 
            double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
            func_arg_5[arith_addi_26][arith_addi_28] = arith_addf_35; 
            int arith_addi_36 = (arith_muli_30 + arith_const_22); 
            double memref_load_37 = func_arg_6[arith_addi_26][arith_addi_36]; 
            double memref_load_38 = func_arg_7[arith_addi_36][arith_addi_28]; 
            double arith_mulf_39 = (memref_load_37 * memref_load_38); 
            double memref_load_40 = func_arg_5[arith_addi_26][arith_addi_28]; 
            double arith_addf_41 = (memref_load_40 + arith_mulf_39); 
            func_arg_5[arith_addi_26][arith_addi_28] = arith_addf_41; 
            int arith_addi_42 = (arith_muli_30 + arith_const_15); 
            double memref_load_43 = func_arg_6[arith_addi_26][arith_addi_42]; 
            double memref_load_44 = func_arg_7[arith_addi_42][arith_addi_28]; 
            double arith_mulf_45 = (memref_load_43 * memref_load_44); 
            double memref_load_46 = func_arg_5[arith_addi_26][arith_addi_28]; 
            double arith_addf_47 = (memref_load_46 + arith_mulf_45); 
            func_arg_5[arith_addi_26][arith_addi_28] = arith_addf_47; 
            int arith_addi_48 = (arith_muli_30 + arith_const_14); 
            double memref_load_49 = func_arg_6[arith_addi_26][arith_addi_48]; 
            double memref_load_50 = func_arg_7[arith_addi_48][arith_addi_28]; 
            double arith_mulf_51 = (memref_load_49 * memref_load_50); 
            double memref_load_52 = func_arg_5[arith_addi_26][arith_addi_28]; 
            double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
            func_arg_5[arith_addi_26][arith_addi_28] = arith_addf_53; 
          }
        }
      }
    }
  }
  for (int for_iter_54 = arith_const_20; for_iter_54 < arith_const_18; for_iter_54 += arith_const_22) {
    for (int for_iter_55 = arith_const_20; for_iter_55 < arith_const_13; for_iter_55 += arith_const_22) {
      for (int for_iter_56 = arith_const_20; for_iter_56 < arith_const_22; for_iter_56 += arith_const_22) {
        int arith_addi_57 = (for_iter_54 + for_iter_56); 
        for (int for_iter_58 = arith_const_20; for_iter_58 < arith_const_22; for_iter_58 += arith_const_22) {
          int arith_addi_59 = (for_iter_55 + for_iter_58); 
          func_arg_8[arith_addi_57][arith_addi_59] = arith_const_19; 
          for (int for_iter_60 = arith_const_20; for_iter_60 < arith_const_12; for_iter_60 += arith_const_22) {
            int arith_muli_61 = (for_iter_60 * arith_const_16); 
            double memref_load_62 = func_arg_9[arith_addi_57][arith_muli_61]; 
            double memref_load_63 = func_arg_10[arith_muli_61][arith_addi_59]; 
            double arith_mulf_64 = (memref_load_62 * memref_load_63); 
            double memref_load_65 = func_arg_8[arith_addi_57][arith_addi_59]; 
            double arith_addf_66 = (memref_load_65 + arith_mulf_64); 
            func_arg_8[arith_addi_57][arith_addi_59] = arith_addf_66; 
            int arith_addi_67 = (arith_muli_61 + arith_const_22); 
            double memref_load_68 = func_arg_9[arith_addi_57][arith_addi_67]; 
            double memref_load_69 = func_arg_10[arith_addi_67][arith_addi_59]; 
            double arith_mulf_70 = (memref_load_68 * memref_load_69); 
            double memref_load_71 = func_arg_8[arith_addi_57][arith_addi_59]; 
            double arith_addf_72 = (memref_load_71 + arith_mulf_70); 
            func_arg_8[arith_addi_57][arith_addi_59] = arith_addf_72; 
            int arith_addi_73 = (arith_muli_61 + arith_const_15); 
            double memref_load_74 = func_arg_9[arith_addi_57][arith_addi_73]; 
            double memref_load_75 = func_arg_10[arith_addi_73][arith_addi_59]; 
            double arith_mulf_76 = (memref_load_74 * memref_load_75); 
            double memref_load_77 = func_arg_8[arith_addi_57][arith_addi_59]; 
            double arith_addf_78 = (memref_load_77 + arith_mulf_76); 
            func_arg_8[arith_addi_57][arith_addi_59] = arith_addf_78; 
            int arith_addi_79 = (arith_muli_61 + arith_const_14); 
            double memref_load_80 = func_arg_9[arith_addi_57][arith_addi_79]; 
            double memref_load_81 = func_arg_10[arith_addi_79][arith_addi_59]; 
            double arith_mulf_82 = (memref_load_80 * memref_load_81); 
            double memref_load_83 = func_arg_8[arith_addi_57][arith_addi_59]; 
            double arith_addf_84 = (memref_load_83 + arith_mulf_82); 
            func_arg_8[arith_addi_57][arith_addi_59] = arith_addf_84; 
          }
        }
      }
    }
  }
  for (int for_iter_85 = arith_const_20; for_iter_85 < arith_const_21; for_iter_85 += arith_const_22) {
    for (int for_iter_86 = arith_const_20; for_iter_86 < arith_const_13; for_iter_86 += arith_const_22) {
      for (int for_iter_87 = arith_const_20; for_iter_87 < arith_const_22; for_iter_87 += arith_const_22) {
        int arith_addi_88 = (for_iter_85 + for_iter_87); 
        for (int for_iter_89 = arith_const_20; for_iter_89 < arith_const_22; for_iter_89 += arith_const_22) {
          int arith_addi_90 = (for_iter_86 + for_iter_89); 
          func_arg_11[arith_addi_88][arith_addi_90] = arith_const_19; 
          for (int for_iter_91 = arith_const_20; for_iter_91 < arith_const_16; for_iter_91 += arith_const_22) {
            int arith_muli_92 = (for_iter_91 * arith_const_16); 
            double memref_load_93 = func_arg_5[arith_addi_88][arith_muli_92]; 
            double memref_load_94 = func_arg_8[arith_muli_92][arith_addi_90]; 
            double arith_mulf_95 = (memref_load_93 * memref_load_94); 
            double memref_load_96 = func_arg_11[arith_addi_88][arith_addi_90]; 
            double arith_addf_97 = (memref_load_96 + arith_mulf_95); 
            func_arg_11[arith_addi_88][arith_addi_90] = arith_addf_97; 
            int arith_addi_98 = (arith_muli_92 + arith_const_22); 
            double memref_load_99 = func_arg_5[arith_addi_88][arith_addi_98]; 
            double memref_load_100 = func_arg_8[arith_addi_98][arith_addi_90]; 
            double arith_mulf_101 = (memref_load_99 * memref_load_100); 
            double memref_load_102 = func_arg_11[arith_addi_88][arith_addi_90]; 
            double arith_addf_103 = (memref_load_102 + arith_mulf_101); 
            func_arg_11[arith_addi_88][arith_addi_90] = arith_addf_103; 
            int arith_addi_104 = (arith_muli_92 + arith_const_15); 
            double memref_load_105 = func_arg_5[arith_addi_88][arith_addi_104]; 
            double memref_load_106 = func_arg_8[arith_addi_104][arith_addi_90]; 
            double arith_mulf_107 = (memref_load_105 * memref_load_106); 
            double memref_load_108 = func_arg_11[arith_addi_88][arith_addi_90]; 
            double arith_addf_109 = (memref_load_108 + arith_mulf_107); 
            func_arg_11[arith_addi_88][arith_addi_90] = arith_addf_109; 
            int arith_addi_110 = (arith_muli_92 + arith_const_14); 
            double memref_load_111 = func_arg_5[arith_addi_88][arith_addi_110]; 
            double memref_load_112 = func_arg_8[arith_addi_110][arith_addi_90]; 
            double arith_mulf_113 = (memref_load_111 * memref_load_112); 
            double memref_load_114 = func_arg_11[arith_addi_88][arith_addi_90]; 
            double arith_addf_115 = (memref_load_114 + arith_mulf_113); 
            func_arg_11[arith_addi_88][arith_addi_90] = arith_addf_115; 
          }
          for (int for_iter_116 = arith_const_20; for_iter_116 < arith_const_15; for_iter_116 += arith_const_22) {
            int arith_addi_117 = (for_iter_116 + arith_const_21); 
            double memref_load_118 = func_arg_5[arith_addi_88][arith_addi_117]; 
            double memref_load_119 = func_arg_8[arith_addi_117][arith_addi_90]; 
            double arith_mulf_120 = (memref_load_118 * memref_load_119); 
            double memref_load_121 = func_arg_11[arith_addi_88][arith_addi_90]; 
            double arith_addf_122 = (memref_load_121 + arith_mulf_120); 
            func_arg_11[arith_addi_88][arith_addi_90] = arith_addf_122; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;


  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);

}

#pragma pocc-region-end
