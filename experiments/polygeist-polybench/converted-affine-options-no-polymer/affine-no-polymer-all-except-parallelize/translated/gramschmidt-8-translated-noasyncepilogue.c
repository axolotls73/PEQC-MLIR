#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -32; 
  int arith_const_7 = -1; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 5; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 1; 
  int arith_const_15 = 0; 
  double arith_const_16 = 0.000000; 
  double* memref_alloca_17; 
  double _18; 
  memref_alloca_17[0] = _18; 
  for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_14; for_iter_19 += arith_const_14) {
    int arith_muli_20 = (for_iter_19 * arith_const_13); 
    for (int for_iter_21 = arith_const_15; for_iter_21 < arith_const_12; for_iter_21 += arith_const_14) {
      int arith_addi_22 = (arith_muli_20 + for_iter_21); 
      memref_alloca_17[0] = arith_const_16; 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_11; for_iter_23 += arith_const_14) {
        int arith_muli_24 = (for_iter_23 * arith_const_10); 
        double memref_load_25 = func_arg_2[arith_muli_24][arith_addi_22]; 
        double arith_mulf_26 = (memref_load_25 * memref_load_25); 
        double memref_load_27 = memref_alloca_17[0]; 
        double arith_addf_28 = (memref_load_27 + arith_mulf_26); 
        memref_alloca_17[0] = arith_addf_28; 
        int arith_addi_29 = (arith_muli_24 + arith_const_14); 
        double memref_load_30 = func_arg_2[arith_addi_29][arith_addi_22]; 
        double arith_mulf_31 = (memref_load_30 * memref_load_30); 
        double memref_load_32 = memref_alloca_17[0]; 
        double arith_addf_33 = (memref_load_32 + arith_mulf_31); 
        memref_alloca_17[0] = arith_addf_33; 
        int arith_addi_34 = (arith_muli_24 + arith_const_9); 
        double memref_load_35 = func_arg_2[arith_addi_34][arith_addi_22]; 
        double arith_mulf_36 = (memref_load_35 * memref_load_35); 
        double memref_load_37 = memref_alloca_17[0]; 
        double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
        memref_alloca_17[0] = arith_addf_38; 
        int arith_addi_39 = (arith_muli_24 + arith_const_8); 
        double memref_load_40 = func_arg_2[arith_addi_39][arith_addi_22]; 
        double arith_mulf_41 = (memref_load_40 * memref_load_40); 
        double memref_load_42 = memref_alloca_17[0]; 
        double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
        memref_alloca_17[0] = arith_addf_43; 
      }
      double memref_load_44 = memref_alloca_17[0]; 
      double math_sqrt_45 = sqrt(memref_load_44); 
      func_arg_3[arith_addi_22][arith_addi_22] = math_sqrt_45; 
      double memref_load_46 = func_arg_3[arith_addi_22][arith_addi_22]; 
      double memref_load_47 = func_arg_3[arith_addi_22][arith_addi_22]; 
      double memref_load_48 = func_arg_3[arith_addi_22][arith_addi_22]; 
      double memref_load_49 = func_arg_3[arith_addi_22][arith_addi_22]; 
      for (int for_iter_50 = arith_const_15; for_iter_50 < arith_const_11; for_iter_50 += arith_const_14) {
        int arith_muli_51 = (for_iter_50 * arith_const_10); 
        double memref_load_52 = func_arg_2[arith_muli_51][arith_addi_22]; 
        double arith_divf_53 = (memref_load_52 / memref_load_46); 
        func_arg_4[arith_muli_51][arith_addi_22] = arith_divf_53; 
        int arith_addi_54 = (arith_muli_51 + arith_const_14); 
        double memref_load_55 = func_arg_2[arith_addi_54][arith_addi_22]; 
        double arith_divf_56 = (memref_load_55 / memref_load_47); 
        func_arg_4[arith_addi_54][arith_addi_22] = arith_divf_56; 
        int arith_addi_57 = (arith_muli_51 + arith_const_9); 
        double memref_load_58 = func_arg_2[arith_addi_57][arith_addi_22]; 
        double arith_divf_59 = (memref_load_58 / memref_load_48); 
        func_arg_4[arith_addi_57][arith_addi_22] = arith_divf_59; 
        int arith_addi_60 = (arith_muli_51 + arith_const_8); 
        double memref_load_61 = func_arg_2[arith_addi_60][arith_addi_22]; 
        double arith_divf_62 = (memref_load_61 / memref_load_49); 
        func_arg_4[arith_addi_60][arith_addi_22] = arith_divf_62; 
      }
      int arith_muli_63 = (for_iter_21 * arith_const_7); 
      int arith_muli_64 = (for_iter_19 * arith_const_6); 
      int arith_addi_65 = (arith_muli_63 + arith_muli_64); 
      int arith_addi_66 = (arith_addi_65 + arith_const_5); 
      for (int for_iter_67 = arith_const_15; for_iter_67 < arith_addi_66; for_iter_67 += arith_const_14) {
        int arith_addi_68 = (arith_addi_22 + for_iter_67); 
        int arith_addi_69 = (arith_addi_68 + arith_const_14); 
        func_arg_3[arith_addi_22][arith_addi_69] = arith_const_16; 
        for (int for_iter_70 = arith_const_15; for_iter_70 < arith_const_11; for_iter_70 += arith_const_14) {
          int arith_muli_71 = (for_iter_70 * arith_const_10); 
          double memref_load_72 = func_arg_4[arith_muli_71][arith_addi_22]; 
          double memref_load_73 = func_arg_2[arith_muli_71][arith_addi_69]; 
          double arith_mulf_74 = (memref_load_72 * memref_load_73); 
          double memref_load_75 = func_arg_3[arith_addi_22][arith_addi_69]; 
          double arith_addf_76 = (memref_load_75 + arith_mulf_74); 
          func_arg_3[arith_addi_22][arith_addi_69] = arith_addf_76; 
          int arith_addi_77 = (arith_muli_71 + arith_const_14); 
          double memref_load_78 = func_arg_4[arith_addi_77][arith_addi_22]; 
          double memref_load_79 = func_arg_2[arith_addi_77][arith_addi_69]; 
          double arith_mulf_80 = (memref_load_78 * memref_load_79); 
          double memref_load_81 = func_arg_3[arith_addi_22][arith_addi_69]; 
          double arith_addf_82 = (memref_load_81 + arith_mulf_80); 
          func_arg_3[arith_addi_22][arith_addi_69] = arith_addf_82; 
          int arith_addi_83 = (arith_muli_71 + arith_const_9); 
          double memref_load_84 = func_arg_4[arith_addi_83][arith_addi_22]; 
          double memref_load_85 = func_arg_2[arith_addi_83][arith_addi_69]; 
          double arith_mulf_86 = (memref_load_84 * memref_load_85); 
          double memref_load_87 = func_arg_3[arith_addi_22][arith_addi_69]; 
          double arith_addf_88 = (memref_load_87 + arith_mulf_86); 
          func_arg_3[arith_addi_22][arith_addi_69] = arith_addf_88; 
          int arith_addi_89 = (arith_muli_71 + arith_const_8); 
          double memref_load_90 = func_arg_4[arith_addi_89][arith_addi_22]; 
          double memref_load_91 = func_arg_2[arith_addi_89][arith_addi_69]; 
          double arith_mulf_92 = (memref_load_90 * memref_load_91); 
          double memref_load_93 = func_arg_3[arith_addi_22][arith_addi_69]; 
          double arith_addf_94 = (memref_load_93 + arith_mulf_92); 
          func_arg_3[arith_addi_22][arith_addi_69] = arith_addf_94; 
        }
        double memref_load_95 = func_arg_3[arith_addi_22][arith_addi_69]; 
        double memref_load_96 = func_arg_3[arith_addi_22][arith_addi_69]; 
        double memref_load_97 = func_arg_3[arith_addi_22][arith_addi_69]; 
        double memref_load_98 = func_arg_3[arith_addi_22][arith_addi_69]; 
        for (int for_iter_99 = arith_const_15; for_iter_99 < arith_const_11; for_iter_99 += arith_const_14) {
          int arith_muli_100 = (for_iter_99 * arith_const_10); 
          double memref_load_101 = func_arg_2[arith_muli_100][arith_addi_69]; 
          double memref_load_102 = func_arg_4[arith_muli_100][arith_addi_22]; 
          double arith_mulf_103 = (memref_load_102 * memref_load_95); 
          double arith_subf_104 = (memref_load_101 - arith_mulf_103); 
          func_arg_2[arith_muli_100][arith_addi_69] = arith_subf_104; 
          int arith_addi_105 = (arith_muli_100 + arith_const_14); 
          double memref_load_106 = func_arg_2[arith_addi_105][arith_addi_69]; 
          double memref_load_107 = func_arg_4[arith_addi_105][arith_addi_22]; 
          double arith_mulf_108 = (memref_load_107 * memref_load_96); 
          double arith_subf_109 = (memref_load_106 - arith_mulf_108); 
          func_arg_2[arith_addi_105][arith_addi_69] = arith_subf_109; 
          int arith_addi_110 = (arith_muli_100 + arith_const_9); 
          double memref_load_111 = func_arg_2[arith_addi_110][arith_addi_69]; 
          double memref_load_112 = func_arg_4[arith_addi_110][arith_addi_22]; 
          double arith_mulf_113 = (memref_load_112 * memref_load_97); 
          double arith_subf_114 = (memref_load_111 - arith_mulf_113); 
          func_arg_2[arith_addi_110][arith_addi_69] = arith_subf_114; 
          int arith_addi_115 = (arith_muli_100 + arith_const_8); 
          double memref_load_116 = func_arg_2[arith_addi_115][arith_addi_69]; 
          double memref_load_117 = func_arg_4[arith_addi_115][arith_addi_22]; 
          double arith_mulf_118 = (memref_load_117 * memref_load_98); 
          double arith_subf_119 = (memref_load_116 - arith_mulf_118); 
          func_arg_2[arith_addi_115][arith_addi_69] = arith_subf_119; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* R;
  double* Q;


  kernel_gramschmidt(m, n, A, R, Q);

}

#pragma pocc-region-end
