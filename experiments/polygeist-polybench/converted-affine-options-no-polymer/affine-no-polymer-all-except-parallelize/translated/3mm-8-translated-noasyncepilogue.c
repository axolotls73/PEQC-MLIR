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
  int arith_const_19 = 16; 
  int arith_const_20 = 32; 
  double arith_const_21 = 0.000000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 1; 
  for (int for_iter_24 = arith_const_22; for_iter_24 < arith_const_23; for_iter_24 += arith_const_23) {
    int arith_muli_25 = (for_iter_24 * arith_const_20); 
    for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_23; for_iter_26 += arith_const_23) {
      int arith_muli_27 = (for_iter_26 * arith_const_20); 
      for (int for_iter_28 = arith_const_22; for_iter_28 < arith_const_19; for_iter_28 += arith_const_23) {
        int arith_addi_29 = (arith_muli_25 + for_iter_28); 
        for (int for_iter_30 = arith_const_22; for_iter_30 < arith_const_18; for_iter_30 += arith_const_23) {
          int arith_addi_31 = (arith_muli_27 + for_iter_30); 
          func_arg_5[arith_addi_29][arith_addi_31] = arith_const_21; 
          for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_17; for_iter_32 += arith_const_23) {
            int arith_muli_33 = (for_iter_32 * arith_const_16); 
            double memref_load_34 = func_arg_6[arith_addi_29][arith_muli_33]; 
            double memref_load_35 = func_arg_7[arith_muli_33][arith_addi_31]; 
            double arith_mulf_36 = (memref_load_34 * memref_load_35); 
            double memref_load_37 = func_arg_5[arith_addi_29][arith_addi_31]; 
            double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
            func_arg_5[arith_addi_29][arith_addi_31] = arith_addf_38; 
            int arith_addi_39 = (arith_muli_33 + arith_const_23); 
            double memref_load_40 = func_arg_6[arith_addi_29][arith_addi_39]; 
            double memref_load_41 = func_arg_7[arith_addi_39][arith_addi_31]; 
            double arith_mulf_42 = (memref_load_40 * memref_load_41); 
            double memref_load_43 = func_arg_5[arith_addi_29][arith_addi_31]; 
            double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
            func_arg_5[arith_addi_29][arith_addi_31] = arith_addf_44; 
            int arith_addi_45 = (arith_muli_33 + arith_const_15); 
            double memref_load_46 = func_arg_6[arith_addi_29][arith_addi_45]; 
            double memref_load_47 = func_arg_7[arith_addi_45][arith_addi_31]; 
            double arith_mulf_48 = (memref_load_46 * memref_load_47); 
            double memref_load_49 = func_arg_5[arith_addi_29][arith_addi_31]; 
            double arith_addf_50 = (memref_load_49 + arith_mulf_48); 
            func_arg_5[arith_addi_29][arith_addi_31] = arith_addf_50; 
            int arith_addi_51 = (arith_muli_33 + arith_const_14); 
            double memref_load_52 = func_arg_6[arith_addi_29][arith_addi_51]; 
            double memref_load_53 = func_arg_7[arith_addi_51][arith_addi_31]; 
            double arith_mulf_54 = (memref_load_52 * memref_load_53); 
            double memref_load_55 = func_arg_5[arith_addi_29][arith_addi_31]; 
            double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
            func_arg_5[arith_addi_29][arith_addi_31] = arith_addf_56; 
          }
        }
      }
    }
  }
  for (int for_iter_57 = arith_const_22; for_iter_57 < arith_const_23; for_iter_57 += arith_const_23) {
    int arith_muli_58 = (for_iter_57 * arith_const_20); 
    for (int for_iter_59 = arith_const_22; for_iter_59 < arith_const_23; for_iter_59 += arith_const_23) {
      int arith_muli_60 = (for_iter_59 * arith_const_20); 
      for (int for_iter_61 = arith_const_22; for_iter_61 < arith_const_18; for_iter_61 += arith_const_23) {
        int arith_addi_62 = (arith_muli_58 + for_iter_61); 
        for (int for_iter_63 = arith_const_22; for_iter_63 < arith_const_13; for_iter_63 += arith_const_23) {
          int arith_addi_64 = (arith_muli_60 + for_iter_63); 
          func_arg_8[arith_addi_62][arith_addi_64] = arith_const_21; 
          for (int for_iter_65 = arith_const_22; for_iter_65 < arith_const_12; for_iter_65 += arith_const_23) {
            int arith_muli_66 = (for_iter_65 * arith_const_16); 
            double memref_load_67 = func_arg_9[arith_addi_62][arith_muli_66]; 
            double memref_load_68 = func_arg_10[arith_muli_66][arith_addi_64]; 
            double arith_mulf_69 = (memref_load_67 * memref_load_68); 
            double memref_load_70 = func_arg_8[arith_addi_62][arith_addi_64]; 
            double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
            func_arg_8[arith_addi_62][arith_addi_64] = arith_addf_71; 
            int arith_addi_72 = (arith_muli_66 + arith_const_23); 
            double memref_load_73 = func_arg_9[arith_addi_62][arith_addi_72]; 
            double memref_load_74 = func_arg_10[arith_addi_72][arith_addi_64]; 
            double arith_mulf_75 = (memref_load_73 * memref_load_74); 
            double memref_load_76 = func_arg_8[arith_addi_62][arith_addi_64]; 
            double arith_addf_77 = (memref_load_76 + arith_mulf_75); 
            func_arg_8[arith_addi_62][arith_addi_64] = arith_addf_77; 
            int arith_addi_78 = (arith_muli_66 + arith_const_15); 
            double memref_load_79 = func_arg_9[arith_addi_62][arith_addi_78]; 
            double memref_load_80 = func_arg_10[arith_addi_78][arith_addi_64]; 
            double arith_mulf_81 = (memref_load_79 * memref_load_80); 
            double memref_load_82 = func_arg_8[arith_addi_62][arith_addi_64]; 
            double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
            func_arg_8[arith_addi_62][arith_addi_64] = arith_addf_83; 
            int arith_addi_84 = (arith_muli_66 + arith_const_14); 
            double memref_load_85 = func_arg_9[arith_addi_62][arith_addi_84]; 
            double memref_load_86 = func_arg_10[arith_addi_84][arith_addi_64]; 
            double arith_mulf_87 = (memref_load_85 * memref_load_86); 
            double memref_load_88 = func_arg_8[arith_addi_62][arith_addi_64]; 
            double arith_addf_89 = (memref_load_88 + arith_mulf_87); 
            func_arg_8[arith_addi_62][arith_addi_64] = arith_addf_89; 
          }
        }
      }
    }
  }
  for (int for_iter_90 = arith_const_22; for_iter_90 < arith_const_23; for_iter_90 += arith_const_23) {
    int arith_muli_91 = (for_iter_90 * arith_const_20); 
    for (int for_iter_92 = arith_const_22; for_iter_92 < arith_const_23; for_iter_92 += arith_const_23) {
      int arith_muli_93 = (for_iter_92 * arith_const_20); 
      for (int for_iter_94 = arith_const_22; for_iter_94 < arith_const_19; for_iter_94 += arith_const_23) {
        int arith_addi_95 = (arith_muli_91 + for_iter_94); 
        for (int for_iter_96 = arith_const_22; for_iter_96 < arith_const_13; for_iter_96 += arith_const_23) {
          int arith_addi_97 = (arith_muli_93 + for_iter_96); 
          func_arg_11[arith_addi_95][arith_addi_97] = arith_const_21; 
          for (int for_iter_98 = arith_const_22; for_iter_98 < arith_const_16; for_iter_98 += arith_const_23) {
            int arith_muli_99 = (for_iter_98 * arith_const_16); 
            double memref_load_100 = func_arg_5[arith_addi_95][arith_muli_99]; 
            double memref_load_101 = func_arg_8[arith_muli_99][arith_addi_97]; 
            double arith_mulf_102 = (memref_load_100 * memref_load_101); 
            double memref_load_103 = func_arg_11[arith_addi_95][arith_addi_97]; 
            double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
            func_arg_11[arith_addi_95][arith_addi_97] = arith_addf_104; 
            int arith_addi_105 = (arith_muli_99 + arith_const_23); 
            double memref_load_106 = func_arg_5[arith_addi_95][arith_addi_105]; 
            double memref_load_107 = func_arg_8[arith_addi_105][arith_addi_97]; 
            double arith_mulf_108 = (memref_load_106 * memref_load_107); 
            double memref_load_109 = func_arg_11[arith_addi_95][arith_addi_97]; 
            double arith_addf_110 = (memref_load_109 + arith_mulf_108); 
            func_arg_11[arith_addi_95][arith_addi_97] = arith_addf_110; 
            int arith_addi_111 = (arith_muli_99 + arith_const_15); 
            double memref_load_112 = func_arg_5[arith_addi_95][arith_addi_111]; 
            double memref_load_113 = func_arg_8[arith_addi_111][arith_addi_97]; 
            double arith_mulf_114 = (memref_load_112 * memref_load_113); 
            double memref_load_115 = func_arg_11[arith_addi_95][arith_addi_97]; 
            double arith_addf_116 = (memref_load_115 + arith_mulf_114); 
            func_arg_11[arith_addi_95][arith_addi_97] = arith_addf_116; 
            int arith_addi_117 = (arith_muli_99 + arith_const_14); 
            double memref_load_118 = func_arg_5[arith_addi_95][arith_addi_117]; 
            double memref_load_119 = func_arg_8[arith_addi_117][arith_addi_97]; 
            double arith_mulf_120 = (memref_load_118 * memref_load_119); 
            double memref_load_121 = func_arg_11[arith_addi_95][arith_addi_97]; 
            double arith_addf_122 = (memref_load_121 + arith_mulf_120); 
            func_arg_11[arith_addi_95][arith_addi_97] = arith_addf_122; 
          }
          for (int for_iter_123 = arith_const_22; for_iter_123 < arith_const_15; for_iter_123 += arith_const_23) {
            int arith_addi_124 = (for_iter_123 + arith_const_19); 
            double memref_load_125 = func_arg_5[arith_addi_95][arith_addi_124]; 
            double memref_load_126 = func_arg_8[arith_addi_124][arith_addi_97]; 
            double arith_mulf_127 = (memref_load_125 * memref_load_126); 
            double memref_load_128 = func_arg_11[arith_addi_95][arith_addi_97]; 
            double arith_addf_129 = (memref_load_128 + arith_mulf_127); 
            func_arg_11[arith_addi_95][arith_addi_97] = arith_addf_129; 
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
