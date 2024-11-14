#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 0; 
  int arith_const_8 = 19; 
  int arith_const_9 = 20; 
  double arith_const_10 = 10.000000; 
  double arith_const_11 = -19.000000; 
  double arith_const_12 = -39.000000; 
  double arith_const_13 = -10.000000; 
  double arith_const_14 = -20.000000; 
  double arith_const_15 = 21.000000; 
  double arith_const_16 = 41.000000; 
  double arith_const_17 = 20.000000; 
  double arith_const_18 = 0.000000; 
  double arith_const_19 = 1.000000; 
  int arith_const_20 = 1; 
  int arith_const_21 = 21; 
  int arith_const_22 = 32; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    int arith_addi_24 = (for_iter_23 + arith_const_9); 
    for (int for_iter_25 = for_iter_23; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_20) {
      for (int for_iter_26 = arith_const_20; for_iter_26 < arith_const_8; for_iter_26 += arith_const_20) {
        func_arg_3[arith_const_7][for_iter_26] = arith_const_19; 
        func_arg_4[for_iter_26][arith_const_7] = arith_const_18; 
        double memref_load_27 = func_arg_3[arith_const_7][for_iter_26]; 
        func_arg_5[for_iter_26][arith_const_7] = memref_load_27; 
        for (int for_iter_28 = arith_const_20; for_iter_28 < arith_const_8; for_iter_28 += arith_const_20) {
          int arith_addi_29 = (for_iter_28 + arith_const_6); 
          double memref_load_30 = func_arg_4[for_iter_26][arith_addi_29]; 
          double arith_mulf_31 = (memref_load_30 * arith_const_14); 
          double arith_addf_32 = (arith_mulf_31 + arith_const_16); 
          double arith_divf_33 = (arith_const_17 / arith_addf_32); 
          func_arg_4[for_iter_26][for_iter_28] = arith_divf_33; 
          int arith_addi_34 = (for_iter_26 + arith_const_6); 
          double memref_load_35 = func_arg_2[for_iter_28][arith_addi_34]; 
          double arith_mulf_36 = (memref_load_35 * arith_const_10); 
          double memref_load_37 = func_arg_2[for_iter_28][for_iter_26]; 
          double arith_mulf_38 = (memref_load_37 * arith_const_11); 
          double arith_addf_39 = (arith_mulf_36 + arith_mulf_38); 
          int arith_addi_40 = (for_iter_26 + arith_const_20); 
          double memref_load_41 = func_arg_2[for_iter_28][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * arith_const_13); 
          double arith_subf_43 = (arith_addf_39 - arith_mulf_42); 
          int arith_addi_44 = (for_iter_28 + arith_const_6); 
          double memref_load_45 = func_arg_5[for_iter_26][arith_addi_44]; 
          double arith_mulf_46 = (memref_load_45 * arith_const_14); 
          double arith_subf_47 = (arith_subf_43 - arith_mulf_46); 
          double arith_divf_48 = (arith_subf_47 / arith_addf_32); 
          func_arg_5[for_iter_26][for_iter_28] = arith_divf_48; 
        }
        func_arg_3[arith_const_8][for_iter_26] = arith_const_19; 
        for (int for_iter_49 = arith_const_20; for_iter_49 < arith_const_8; for_iter_49 += arith_const_20) {
          int arith_muli_50 = (for_iter_49 * arith_const_6); 
          int arith_addi_51 = (arith_muli_50 + arith_const_8); 
          double memref_load_52 = func_arg_4[for_iter_26][arith_addi_51]; 
          int arith_muli_53 = (for_iter_49 * arith_const_6); 
          int arith_addi_54 = (arith_muli_53 + arith_const_9); 
          double memref_load_55 = func_arg_3[arith_addi_54][for_iter_26]; 
          double arith_mulf_56 = (memref_load_52 * memref_load_55); 
          int arith_muli_57 = (for_iter_49 * arith_const_6); 
          int arith_addi_58 = (arith_muli_57 + arith_const_8); 
          double memref_load_59 = func_arg_5[for_iter_26][arith_addi_58]; 
          double arith_addf_60 = (arith_mulf_56 + memref_load_59); 
          int arith_muli_61 = (for_iter_49 * arith_const_6); 
          int arith_addi_62 = (arith_muli_61 + arith_const_8); 
          func_arg_3[arith_addi_62][for_iter_26] = arith_addf_60; 
        }
      }
      for (int for_iter_63 = arith_const_20; for_iter_63 < arith_const_8; for_iter_63 += arith_const_20) {
        func_arg_2[for_iter_63][arith_const_7] = arith_const_19; 
        func_arg_4[for_iter_63][arith_const_7] = arith_const_18; 
        double memref_load_64 = func_arg_2[for_iter_63][arith_const_7]; 
        func_arg_5[for_iter_63][arith_const_7] = memref_load_64; 
        for (int for_iter_65 = arith_const_20; for_iter_65 < arith_const_8; for_iter_65 += arith_const_20) {
          int arith_addi_66 = (for_iter_65 + arith_const_6); 
          double memref_load_67 = func_arg_4[for_iter_63][arith_addi_66]; 
          double arith_mulf_68 = (memref_load_67 * arith_const_13); 
          double arith_addf_69 = (arith_mulf_68 + arith_const_15); 
          double arith_divf_70 = (arith_const_10 / arith_addf_69); 
          func_arg_4[for_iter_63][for_iter_65] = arith_divf_70; 
          int arith_addi_71 = (for_iter_63 + arith_const_6); 
          double memref_load_72 = func_arg_3[arith_addi_71][for_iter_65]; 
          double arith_mulf_73 = (memref_load_72 * arith_const_17); 
          double memref_load_74 = func_arg_3[for_iter_63][for_iter_65]; 
          double arith_mulf_75 = (memref_load_74 * arith_const_12); 
          double arith_addf_76 = (arith_mulf_73 + arith_mulf_75); 
          int arith_addi_77 = (for_iter_63 + arith_const_20); 
          double memref_load_78 = func_arg_3[arith_addi_77][for_iter_65]; 
          double arith_mulf_79 = (memref_load_78 * arith_const_14); 
          double arith_subf_80 = (arith_addf_76 - arith_mulf_79); 
          int arith_addi_81 = (for_iter_65 + arith_const_6); 
          double memref_load_82 = func_arg_5[for_iter_63][arith_addi_81]; 
          double arith_mulf_83 = (memref_load_82 * arith_const_13); 
          double arith_subf_84 = (arith_subf_80 - arith_mulf_83); 
          double arith_divf_85 = (arith_subf_84 / arith_addf_69); 
          func_arg_5[for_iter_63][for_iter_65] = arith_divf_85; 
        }
        func_arg_2[for_iter_63][arith_const_8] = arith_const_19; 
        for (int for_iter_86 = arith_const_20; for_iter_86 < arith_const_8; for_iter_86 += arith_const_20) {
          int arith_muli_87 = (for_iter_86 * arith_const_6); 
          int arith_addi_88 = (arith_muli_87 + arith_const_8); 
          double memref_load_89 = func_arg_4[for_iter_63][arith_addi_88]; 
          int arith_muli_90 = (for_iter_86 * arith_const_6); 
          int arith_addi_91 = (arith_muli_90 + arith_const_9); 
          double memref_load_92 = func_arg_2[for_iter_63][arith_addi_91]; 
          double arith_mulf_93 = (memref_load_89 * memref_load_92); 
          int arith_muli_94 = (for_iter_86 * arith_const_6); 
          int arith_addi_95 = (arith_muli_94 + arith_const_8); 
          double memref_load_96 = func_arg_5[for_iter_63][arith_addi_95]; 
          double arith_addf_97 = (arith_mulf_93 + memref_load_96); 
          int arith_muli_98 = (for_iter_86 * arith_const_6); 
          int arith_addi_99 = (arith_muli_98 + arith_const_8); 
          func_arg_2[for_iter_63][arith_addi_99] = arith_addf_97; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* u;
  double* v;
  double* p;
  double* q;


  kernel_adi(tsteps, n, u, v, p, q);

}

#pragma pocc-region-end
