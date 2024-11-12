#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 29; 
  int arith_const_6 = -1; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = 4; 
  int arith_const_10 = 5; 
  int arith_const_11 = 1; 
  int arith_const_12 = 30; 
  int arith_const_13 = 0; 
  double arith_const_14 = 0.000000; 
  double* memref_alloca_15; 
  double _16; 
  memref_alloca_15[0] = _16; 
  for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_12; for_iter_17 += arith_const_11) {
    for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_11; for_iter_18 += arith_const_11) {
      int arith_addi_19 = (for_iter_17 + for_iter_18); 
      memref_alloca_15[0] = arith_const_14; 
      for (int for_iter_20 = arith_const_13; for_iter_20 < arith_const_10; for_iter_20 += arith_const_11) {
        int arith_muli_21 = (for_iter_20 * arith_const_9); 
        double memref_load_22 = func_arg_2[arith_muli_21][arith_addi_19]; 
        double arith_mulf_23 = (memref_load_22 * memref_load_22); 
        double memref_load_24 = memref_alloca_15[0]; 
        double arith_addf_25 = (memref_load_24 + arith_mulf_23); 
        memref_alloca_15[0] = arith_addf_25; 
        int arith_addi_26 = (arith_muli_21 + arith_const_11); 
        double memref_load_27 = func_arg_2[arith_addi_26][arith_addi_19]; 
        double arith_mulf_28 = (memref_load_27 * memref_load_27); 
        double memref_load_29 = memref_alloca_15[0]; 
        double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
        memref_alloca_15[0] = arith_addf_30; 
        int arith_addi_31 = (arith_muli_21 + arith_const_8); 
        double memref_load_32 = func_arg_2[arith_addi_31][arith_addi_19]; 
        double arith_mulf_33 = (memref_load_32 * memref_load_32); 
        double memref_load_34 = memref_alloca_15[0]; 
        double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
        memref_alloca_15[0] = arith_addf_35; 
        int arith_addi_36 = (arith_muli_21 + arith_const_7); 
        double memref_load_37 = func_arg_2[arith_addi_36][arith_addi_19]; 
        double arith_mulf_38 = (memref_load_37 * memref_load_37); 
        double memref_load_39 = memref_alloca_15[0]; 
        double arith_addf_40 = (memref_load_39 + arith_mulf_38); 
        memref_alloca_15[0] = arith_addf_40; 
      }
      double memref_load_41 = memref_alloca_15[0]; 
      double math_sqrt_42 = sqrt(memref_load_41); 
      func_arg_3[arith_addi_19][arith_addi_19] = math_sqrt_42; 
      double memref_load_43 = func_arg_3[arith_addi_19][arith_addi_19]; 
      double memref_load_44 = func_arg_3[arith_addi_19][arith_addi_19]; 
      double memref_load_45 = func_arg_3[arith_addi_19][arith_addi_19]; 
      double memref_load_46 = func_arg_3[arith_addi_19][arith_addi_19]; 
      for (int for_iter_47 = arith_const_13; for_iter_47 < arith_const_10; for_iter_47 += arith_const_11) {
        int arith_muli_48 = (for_iter_47 * arith_const_9); 
        double memref_load_49 = func_arg_2[arith_muli_48][arith_addi_19]; 
        double arith_divf_50 = (memref_load_49 / memref_load_43); 
        func_arg_4[arith_muli_48][arith_addi_19] = arith_divf_50; 
        int arith_addi_51 = (arith_muli_48 + arith_const_11); 
        double memref_load_52 = func_arg_2[arith_addi_51][arith_addi_19]; 
        double arith_divf_53 = (memref_load_52 / memref_load_44); 
        func_arg_4[arith_addi_51][arith_addi_19] = arith_divf_53; 
        int arith_addi_54 = (arith_muli_48 + arith_const_8); 
        double memref_load_55 = func_arg_2[arith_addi_54][arith_addi_19]; 
        double arith_divf_56 = (memref_load_55 / memref_load_45); 
        func_arg_4[arith_addi_54][arith_addi_19] = arith_divf_56; 
        int arith_addi_57 = (arith_muli_48 + arith_const_7); 
        double memref_load_58 = func_arg_2[arith_addi_57][arith_addi_19]; 
        double arith_divf_59 = (memref_load_58 / memref_load_46); 
        func_arg_4[arith_addi_57][arith_addi_19] = arith_divf_59; 
      }
      int arith_muli_60 = (for_iter_17 * arith_const_6); 
      int arith_muli_61 = (for_iter_18 * arith_const_6); 
      int arith_addi_62 = (arith_muli_60 + arith_muli_61); 
      int arith_addi_63 = (arith_addi_62 + arith_const_5); 
      for (int for_iter_64 = arith_const_13; for_iter_64 < arith_addi_63; for_iter_64 += arith_const_11) {
        int arith_addi_65 = (arith_addi_19 + for_iter_64); 
        int arith_addi_66 = (arith_addi_65 + arith_const_11); 
        func_arg_3[arith_addi_19][arith_addi_66] = arith_const_14; 
        for (int for_iter_67 = arith_const_13; for_iter_67 < arith_const_10; for_iter_67 += arith_const_11) {
          int arith_muli_68 = (for_iter_67 * arith_const_9); 
          double memref_load_69 = func_arg_4[arith_muli_68][arith_addi_19]; 
          double memref_load_70 = func_arg_2[arith_muli_68][arith_addi_66]; 
          double arith_mulf_71 = (memref_load_69 * memref_load_70); 
          double memref_load_72 = func_arg_3[arith_addi_19][arith_addi_66]; 
          double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
          func_arg_3[arith_addi_19][arith_addi_66] = arith_addf_73; 
          int arith_addi_74 = (arith_muli_68 + arith_const_11); 
          double memref_load_75 = func_arg_4[arith_addi_74][arith_addi_19]; 
          double memref_load_76 = func_arg_2[arith_addi_74][arith_addi_66]; 
          double arith_mulf_77 = (memref_load_75 * memref_load_76); 
          double memref_load_78 = func_arg_3[arith_addi_19][arith_addi_66]; 
          double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
          func_arg_3[arith_addi_19][arith_addi_66] = arith_addf_79; 
          int arith_addi_80 = (arith_muli_68 + arith_const_8); 
          double memref_load_81 = func_arg_4[arith_addi_80][arith_addi_19]; 
          double memref_load_82 = func_arg_2[arith_addi_80][arith_addi_66]; 
          double arith_mulf_83 = (memref_load_81 * memref_load_82); 
          double memref_load_84 = func_arg_3[arith_addi_19][arith_addi_66]; 
          double arith_addf_85 = (memref_load_84 + arith_mulf_83); 
          func_arg_3[arith_addi_19][arith_addi_66] = arith_addf_85; 
          int arith_addi_86 = (arith_muli_68 + arith_const_7); 
          double memref_load_87 = func_arg_4[arith_addi_86][arith_addi_19]; 
          double memref_load_88 = func_arg_2[arith_addi_86][arith_addi_66]; 
          double arith_mulf_89 = (memref_load_87 * memref_load_88); 
          double memref_load_90 = func_arg_3[arith_addi_19][arith_addi_66]; 
          double arith_addf_91 = (memref_load_90 + arith_mulf_89); 
          func_arg_3[arith_addi_19][arith_addi_66] = arith_addf_91; 
        }
        double memref_load_92 = func_arg_3[arith_addi_19][arith_addi_66]; 
        double memref_load_93 = func_arg_3[arith_addi_19][arith_addi_66]; 
        double memref_load_94 = func_arg_3[arith_addi_19][arith_addi_66]; 
        double memref_load_95 = func_arg_3[arith_addi_19][arith_addi_66]; 
        for (int for_iter_96 = arith_const_13; for_iter_96 < arith_const_10; for_iter_96 += arith_const_11) {
          int arith_muli_97 = (for_iter_96 * arith_const_9); 
          double memref_load_98 = func_arg_2[arith_muli_97][arith_addi_66]; 
          double memref_load_99 = func_arg_4[arith_muli_97][arith_addi_19]; 
          double arith_mulf_100 = (memref_load_99 * memref_load_92); 
          double arith_subf_101 = (memref_load_98 - arith_mulf_100); 
          func_arg_2[arith_muli_97][arith_addi_66] = arith_subf_101; 
          int arith_addi_102 = (arith_muli_97 + arith_const_11); 
          double memref_load_103 = func_arg_2[arith_addi_102][arith_addi_66]; 
          double memref_load_104 = func_arg_4[arith_addi_102][arith_addi_19]; 
          double arith_mulf_105 = (memref_load_104 * memref_load_93); 
          double arith_subf_106 = (memref_load_103 - arith_mulf_105); 
          func_arg_2[arith_addi_102][arith_addi_66] = arith_subf_106; 
          int arith_addi_107 = (arith_muli_97 + arith_const_8); 
          double memref_load_108 = func_arg_2[arith_addi_107][arith_addi_66]; 
          double memref_load_109 = func_arg_4[arith_addi_107][arith_addi_19]; 
          double arith_mulf_110 = (memref_load_109 * memref_load_94); 
          double arith_subf_111 = (memref_load_108 - arith_mulf_110); 
          func_arg_2[arith_addi_107][arith_addi_66] = arith_subf_111; 
          int arith_addi_112 = (arith_muli_97 + arith_const_7); 
          double memref_load_113 = func_arg_2[arith_addi_112][arith_addi_66]; 
          double memref_load_114 = func_arg_4[arith_addi_112][arith_addi_19]; 
          double arith_mulf_115 = (memref_load_114 * memref_load_95); 
          double arith_subf_116 = (memref_load_113 - arith_mulf_115); 
          func_arg_2[arith_addi_112][arith_addi_66] = arith_subf_116; 
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
