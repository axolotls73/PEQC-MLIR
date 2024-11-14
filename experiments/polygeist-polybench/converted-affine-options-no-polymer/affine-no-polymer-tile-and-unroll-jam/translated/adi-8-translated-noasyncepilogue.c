#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 19; 
  int arith_const_8 = 2; 
  int arith_const_9 = 18; 
  int arith_const_10 = 1; 
  double arith_const_11 = 10.000000; 
  double arith_const_12 = -19.000000; 
  double arith_const_13 = -39.000000; 
  double arith_const_14 = -10.000000; 
  double arith_const_15 = -20.000000; 
  double arith_const_16 = 21.000000; 
  double arith_const_17 = 41.000000; 
  double arith_const_18 = 20.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 1.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 20; 
  int arith_const_23 = 32; 
  for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_22; for_iter_24 += arith_const_23) {
    int arith_addi_25 = (for_iter_24 + arith_const_22); 
    for (int for_iter_26 = for_iter_24; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_10) {
      for (int for_iter_27 = arith_const_21; for_iter_27 < arith_const_9; for_iter_27 += arith_const_10) {
        int arith_addi_28 = (for_iter_27 + arith_const_10); 
        func_arg_3[arith_const_21][arith_addi_28] = arith_const_20; 
        int arith_addi_29 = (for_iter_27 + arith_const_10); 
        func_arg_4[arith_addi_29][arith_const_21] = arith_const_19; 
        int arith_addi_30 = (for_iter_27 + arith_const_10); 
        double memref_load_31 = func_arg_3[arith_const_21][arith_addi_30]; 
        int arith_addi_32 = (for_iter_27 + arith_const_10); 
        func_arg_5[arith_addi_32][arith_const_21] = memref_load_31; 
        for (int for_iter_33 = arith_const_21; for_iter_33 < arith_const_9; for_iter_33 += arith_const_10) {
          int arith_addi_34 = (for_iter_27 + arith_const_10); 
          double memref_load_35 = func_arg_4[arith_addi_34][for_iter_33]; 
          double arith_mulf_36 = (memref_load_35 * arith_const_15); 
          double arith_addf_37 = (arith_mulf_36 + arith_const_17); 
          double arith_divf_38 = (arith_const_18 / arith_addf_37); 
          int arith_addi_39 = (for_iter_27 + arith_const_10); 
          int arith_addi_40 = (for_iter_33 + arith_const_10); 
          func_arg_4[arith_addi_39][arith_addi_40] = arith_divf_38; 
          int arith_addi_41 = (for_iter_33 + arith_const_10); 
          double memref_load_42 = func_arg_2[arith_addi_41][for_iter_27]; 
          double arith_mulf_43 = (memref_load_42 * arith_const_11); 
          int arith_addi_44 = (for_iter_33 + arith_const_10); 
          int arith_addi_45 = (for_iter_27 + arith_const_10); 
          double memref_load_46 = func_arg_2[arith_addi_44][arith_addi_45]; 
          double arith_mulf_47 = (memref_load_46 * arith_const_12); 
          double arith_addf_48 = (arith_mulf_43 + arith_mulf_47); 
          int arith_addi_49 = (for_iter_33 + arith_const_10); 
          int arith_addi_50 = (for_iter_27 + arith_const_8); 
          double memref_load_51 = func_arg_2[arith_addi_49][arith_addi_50]; 
          double arith_mulf_52 = (memref_load_51 * arith_const_14); 
          double arith_subf_53 = (arith_addf_48 - arith_mulf_52); 
          int arith_addi_54 = (for_iter_27 + arith_const_10); 
          double memref_load_55 = func_arg_5[arith_addi_54][for_iter_33]; 
          double arith_mulf_56 = (memref_load_55 * arith_const_15); 
          double arith_subf_57 = (arith_subf_53 - arith_mulf_56); 
          double arith_divf_58 = (arith_subf_57 / arith_addf_37); 
          int arith_addi_59 = (for_iter_27 + arith_const_10); 
          int arith_addi_60 = (for_iter_33 + arith_const_10); 
          func_arg_5[arith_addi_59][arith_addi_60] = arith_divf_58; 
        }
        int arith_addi_61 = (for_iter_27 + arith_const_10); 
        func_arg_3[arith_const_7][arith_addi_61] = arith_const_20; 
        for (int for_iter_62 = arith_const_21; for_iter_62 < arith_const_9; for_iter_62 += arith_const_10) {
          int arith_addi_63 = (for_iter_27 + arith_const_10); 
          int arith_muli_64 = (for_iter_62 * arith_const_6); 
          int arith_addi_65 = (arith_muli_64 + arith_const_9); 
          double memref_load_66 = func_arg_4[arith_addi_63][arith_addi_65]; 
          int arith_muli_67 = (for_iter_62 * arith_const_6); 
          int arith_addi_68 = (arith_muli_67 + arith_const_7); 
          int arith_addi_69 = (for_iter_27 + arith_const_10); 
          double memref_load_70 = func_arg_3[arith_addi_68][arith_addi_69]; 
          double arith_mulf_71 = (memref_load_66 * memref_load_70); 
          int arith_addi_72 = (for_iter_27 + arith_const_10); 
          int arith_muli_73 = (for_iter_62 * arith_const_6); 
          int arith_addi_74 = (arith_muli_73 + arith_const_9); 
          double memref_load_75 = func_arg_5[arith_addi_72][arith_addi_74]; 
          double arith_addf_76 = (arith_mulf_71 + memref_load_75); 
          int arith_muli_77 = (for_iter_62 * arith_const_6); 
          int arith_addi_78 = (arith_muli_77 + arith_const_9); 
          int arith_addi_79 = (for_iter_27 + arith_const_10); 
          func_arg_3[arith_addi_78][arith_addi_79] = arith_addf_76; 
        }
      }
      for (int for_iter_80 = arith_const_21; for_iter_80 < arith_const_9; for_iter_80 += arith_const_10) {
        int arith_addi_81 = (for_iter_80 + arith_const_10); 
        func_arg_2[arith_addi_81][arith_const_21] = arith_const_20; 
        int arith_addi_82 = (for_iter_80 + arith_const_10); 
        func_arg_4[arith_addi_82][arith_const_21] = arith_const_19; 
        int arith_addi_83 = (for_iter_80 + arith_const_10); 
        double memref_load_84 = func_arg_2[arith_addi_83][arith_const_21]; 
        int arith_addi_85 = (for_iter_80 + arith_const_10); 
        func_arg_5[arith_addi_85][arith_const_21] = memref_load_84; 
        for (int for_iter_86 = arith_const_21; for_iter_86 < arith_const_9; for_iter_86 += arith_const_10) {
          int arith_addi_87 = (for_iter_80 + arith_const_10); 
          double memref_load_88 = func_arg_4[arith_addi_87][for_iter_86]; 
          double arith_mulf_89 = (memref_load_88 * arith_const_14); 
          double arith_addf_90 = (arith_mulf_89 + arith_const_16); 
          double arith_divf_91 = (arith_const_11 / arith_addf_90); 
          int arith_addi_92 = (for_iter_80 + arith_const_10); 
          int arith_addi_93 = (for_iter_86 + arith_const_10); 
          func_arg_4[arith_addi_92][arith_addi_93] = arith_divf_91; 
          int arith_addi_94 = (for_iter_86 + arith_const_10); 
          double memref_load_95 = func_arg_3[for_iter_80][arith_addi_94]; 
          double arith_mulf_96 = (memref_load_95 * arith_const_18); 
          int arith_addi_97 = (for_iter_80 + arith_const_10); 
          int arith_addi_98 = (for_iter_86 + arith_const_10); 
          double memref_load_99 = func_arg_3[arith_addi_97][arith_addi_98]; 
          double arith_mulf_100 = (memref_load_99 * arith_const_13); 
          double arith_addf_101 = (arith_mulf_96 + arith_mulf_100); 
          int arith_addi_102 = (for_iter_80 + arith_const_8); 
          int arith_addi_103 = (for_iter_86 + arith_const_10); 
          double memref_load_104 = func_arg_3[arith_addi_102][arith_addi_103]; 
          double arith_mulf_105 = (memref_load_104 * arith_const_15); 
          double arith_subf_106 = (arith_addf_101 - arith_mulf_105); 
          int arith_addi_107 = (for_iter_80 + arith_const_10); 
          double memref_load_108 = func_arg_5[arith_addi_107][for_iter_86]; 
          double arith_mulf_109 = (memref_load_108 * arith_const_14); 
          double arith_subf_110 = (arith_subf_106 - arith_mulf_109); 
          double arith_divf_111 = (arith_subf_110 / arith_addf_90); 
          int arith_addi_112 = (for_iter_80 + arith_const_10); 
          int arith_addi_113 = (for_iter_86 + arith_const_10); 
          func_arg_5[arith_addi_112][arith_addi_113] = arith_divf_111; 
        }
        int arith_addi_114 = (for_iter_80 + arith_const_10); 
        func_arg_2[arith_addi_114][arith_const_7] = arith_const_20; 
        for (int for_iter_115 = arith_const_21; for_iter_115 < arith_const_9; for_iter_115 += arith_const_10) {
          int arith_addi_116 = (for_iter_80 + arith_const_10); 
          int arith_muli_117 = (for_iter_115 * arith_const_6); 
          int arith_addi_118 = (arith_muli_117 + arith_const_9); 
          double memref_load_119 = func_arg_4[arith_addi_116][arith_addi_118]; 
          int arith_addi_120 = (for_iter_80 + arith_const_10); 
          int arith_muli_121 = (for_iter_115 * arith_const_6); 
          int arith_addi_122 = (arith_muli_121 + arith_const_7); 
          double memref_load_123 = func_arg_2[arith_addi_120][arith_addi_122]; 
          double arith_mulf_124 = (memref_load_119 * memref_load_123); 
          int arith_addi_125 = (for_iter_80 + arith_const_10); 
          int arith_muli_126 = (for_iter_115 * arith_const_6); 
          int arith_addi_127 = (arith_muli_126 + arith_const_9); 
          double memref_load_128 = func_arg_5[arith_addi_125][arith_addi_127]; 
          double arith_addf_129 = (arith_mulf_124 + memref_load_128); 
          int arith_addi_130 = (for_iter_80 + arith_const_10); 
          int arith_muli_131 = (for_iter_115 * arith_const_6); 
          int arith_addi_132 = (arith_muli_131 + arith_const_9); 
          func_arg_2[arith_addi_130][arith_addi_132] = arith_addf_129; 
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
