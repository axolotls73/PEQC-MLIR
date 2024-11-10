#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 20; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 5; 
  int arith_const_17 = 18; 
  double arith_const_18 = 0.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 16; 
  int arith_const_21 = 1; 
  for (int for_iter_22 = arith_const_19; for_iter_22 < arith_const_20; for_iter_22 += arith_const_21) {
    for (int for_iter_23 = arith_const_19; for_iter_23 < arith_const_17; for_iter_23 += arith_const_21) {
      for (int for_iter_24 = arith_const_19; for_iter_24 < arith_const_21; for_iter_24 += arith_const_21) {
        int arith_addi_25 = (for_iter_22 + for_iter_24); 
        for (int for_iter_26 = arith_const_19; for_iter_26 < arith_const_21; for_iter_26 += arith_const_21) {
          int arith_addi_27 = (for_iter_23 + for_iter_26); 
          func_arg_6[arith_addi_25][arith_addi_27] = arith_const_18; 
          for (int for_iter_28 = arith_const_19; for_iter_28 < arith_const_16; for_iter_28 += arith_const_21) {
            int arith_muli_29 = (for_iter_28 * arith_const_15); 
            double memref_load_30 = func_arg_7[arith_addi_25][arith_muli_29]; 
            double arith_mulf_31 = (func_arg_4 * memref_load_30); 
            double memref_load_32 = func_arg_8[arith_muli_29][arith_addi_27]; 
            double arith_mulf_33 = (arith_mulf_31 * memref_load_32); 
            double memref_load_34 = func_arg_6[arith_addi_25][arith_addi_27]; 
            double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
            func_arg_6[arith_addi_25][arith_addi_27] = arith_addf_35; 
            int arith_addi_36 = (arith_muli_29 + arith_const_21); 
            double memref_load_37 = func_arg_7[arith_addi_25][arith_addi_36]; 
            double arith_mulf_38 = (func_arg_4 * memref_load_37); 
            double memref_load_39 = func_arg_8[arith_addi_36][arith_addi_27]; 
            double arith_mulf_40 = (arith_mulf_38 * memref_load_39); 
            double memref_load_41 = func_arg_6[arith_addi_25][arith_addi_27]; 
            double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
            func_arg_6[arith_addi_25][arith_addi_27] = arith_addf_42; 
            int arith_addi_43 = (arith_muli_29 + arith_const_14); 
            double memref_load_44 = func_arg_7[arith_addi_25][arith_addi_43]; 
            double arith_mulf_45 = (func_arg_4 * memref_load_44); 
            double memref_load_46 = func_arg_8[arith_addi_43][arith_addi_27]; 
            double arith_mulf_47 = (arith_mulf_45 * memref_load_46); 
            double memref_load_48 = func_arg_6[arith_addi_25][arith_addi_27]; 
            double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
            func_arg_6[arith_addi_25][arith_addi_27] = arith_addf_49; 
            int arith_addi_50 = (arith_muli_29 + arith_const_13); 
            double memref_load_51 = func_arg_7[arith_addi_25][arith_addi_50]; 
            double arith_mulf_52 = (func_arg_4 * memref_load_51); 
            double memref_load_53 = func_arg_8[arith_addi_50][arith_addi_27]; 
            double arith_mulf_54 = (arith_mulf_52 * memref_load_53); 
            double memref_load_55 = func_arg_6[arith_addi_25][arith_addi_27]; 
            double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
            func_arg_6[arith_addi_25][arith_addi_27] = arith_addf_56; 
          }
          for (int for_iter_57 = arith_const_19; for_iter_57 < arith_const_14; for_iter_57 += arith_const_21) {
            int arith_addi_58 = (for_iter_57 + arith_const_12); 
            double memref_load_59 = func_arg_7[arith_addi_25][arith_addi_58]; 
            double arith_mulf_60 = (func_arg_4 * memref_load_59); 
            double memref_load_61 = func_arg_8[arith_addi_58][arith_addi_27]; 
            double arith_mulf_62 = (arith_mulf_60 * memref_load_61); 
            double memref_load_63 = func_arg_6[arith_addi_25][arith_addi_27]; 
            double arith_addf_64 = (memref_load_63 + arith_mulf_62); 
            func_arg_6[arith_addi_25][arith_addi_27] = arith_addf_64; 
          }
        }
      }
    }
  }
  for (int for_iter_65 = arith_const_19; for_iter_65 < arith_const_20; for_iter_65 += arith_const_21) {
    for (int for_iter_66 = arith_const_19; for_iter_66 < arith_const_11; for_iter_66 += arith_const_21) {
      for (int for_iter_67 = arith_const_19; for_iter_67 < arith_const_21; for_iter_67 += arith_const_21) {
        int arith_addi_68 = (for_iter_65 + for_iter_67); 
        for (int for_iter_69 = arith_const_19; for_iter_69 < arith_const_21; for_iter_69 += arith_const_21) {
          int arith_addi_70 = (for_iter_66 + for_iter_69); 
          double memref_load_71 = func_arg_10[arith_addi_68][arith_addi_70]; 
          double arith_mulf_72 = (memref_load_71 * func_arg_5); 
          func_arg_10[arith_addi_68][arith_addi_70] = arith_mulf_72; 
          for (int for_iter_73 = arith_const_19; for_iter_73 < arith_const_15; for_iter_73 += arith_const_21) {
            int arith_muli_74 = (for_iter_73 * arith_const_15); 
            double memref_load_75 = func_arg_6[arith_addi_68][arith_muli_74]; 
            double memref_load_76 = func_arg_9[arith_muli_74][arith_addi_70]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double memref_load_78 = func_arg_10[arith_addi_68][arith_addi_70]; 
            double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
            func_arg_10[arith_addi_68][arith_addi_70] = arith_addf_79; 
            int arith_addi_80 = (arith_muli_74 + arith_const_21); 
            double memref_load_81 = func_arg_6[arith_addi_68][arith_addi_80]; 
            double memref_load_82 = func_arg_9[arith_addi_80][arith_addi_70]; 
            double arith_mulf_83 = (memref_load_81 * memref_load_82); 
            double memref_load_84 = func_arg_10[arith_addi_68][arith_addi_70]; 
            double arith_addf_85 = (memref_load_84 + arith_mulf_83); 
            func_arg_10[arith_addi_68][arith_addi_70] = arith_addf_85; 
            int arith_addi_86 = (arith_muli_74 + arith_const_14); 
            double memref_load_87 = func_arg_6[arith_addi_68][arith_addi_86]; 
            double memref_load_88 = func_arg_9[arith_addi_86][arith_addi_70]; 
            double arith_mulf_89 = (memref_load_87 * memref_load_88); 
            double memref_load_90 = func_arg_10[arith_addi_68][arith_addi_70]; 
            double arith_addf_91 = (memref_load_90 + arith_mulf_89); 
            func_arg_10[arith_addi_68][arith_addi_70] = arith_addf_91; 
            int arith_addi_92 = (arith_muli_74 + arith_const_13); 
            double memref_load_93 = func_arg_6[arith_addi_68][arith_addi_92]; 
            double memref_load_94 = func_arg_9[arith_addi_92][arith_addi_70]; 
            double arith_mulf_95 = (memref_load_93 * memref_load_94); 
            double memref_load_96 = func_arg_10[arith_addi_68][arith_addi_70]; 
            double arith_addf_97 = (memref_load_96 + arith_mulf_95); 
            func_arg_10[arith_addi_68][arith_addi_70] = arith_addf_97; 
          }
          for (int for_iter_98 = arith_const_19; for_iter_98 < arith_const_14; for_iter_98 += arith_const_21) {
            int arith_addi_99 = (for_iter_98 + arith_const_20); 
            double memref_load_100 = func_arg_6[arith_addi_68][arith_addi_99]; 
            double memref_load_101 = func_arg_9[arith_addi_99][arith_addi_70]; 
            double arith_mulf_102 = (memref_load_100 * memref_load_101); 
            double memref_load_103 = func_arg_10[arith_addi_68][arith_addi_70]; 
            double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
            func_arg_10[arith_addi_68][arith_addi_70] = arith_addf_104; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}

#pragma pocc-region-end
