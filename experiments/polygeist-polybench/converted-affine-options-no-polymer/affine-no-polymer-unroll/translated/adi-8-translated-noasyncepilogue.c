#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 20; 
  int arith_const_8 = -1; 
  int arith_const_9 = 4; 
  int arith_const_10 = 17; 
  int arith_const_11 = 19; 
  int arith_const_12 = 2; 
  double arith_const_13 = 10.000000; 
  double arith_const_14 = -19.000000; 
  double arith_const_15 = -10.000000; 
  double arith_const_16 = -20.000000; 
  double arith_const_17 = 41.000000; 
  double arith_const_18 = 20.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 1.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  func_arg_3[arith_const_21][arith_const_22] = arith_const_20; 
  func_arg_4[arith_const_22][arith_const_21] = arith_const_19; 
  double memref_load_23 = func_arg_3[arith_const_21][arith_const_22]; 
  func_arg_5[arith_const_22][arith_const_21] = memref_load_23; 
  double memref_load_24 = func_arg_4[arith_const_22][arith_const_21]; 
  double arith_mulf_25 = (memref_load_24 * arith_const_16); 
  double arith_addf_26 = (arith_mulf_25 + arith_const_17); 
  double arith_divf_27 = (arith_const_18 / arith_addf_26); 
  func_arg_4[arith_const_22][arith_const_22] = arith_divf_27; 
  double memref_load_28 = func_arg_2[arith_const_22][arith_const_21]; 
  double arith_mulf_29 = (memref_load_28 * arith_const_13); 
  double memref_load_30 = func_arg_2[arith_const_22][arith_const_22]; 
  double arith_mulf_31 = (memref_load_30 * arith_const_14); 
  double arith_addf_32 = (arith_mulf_29 + arith_mulf_31); 
  double memref_load_33 = func_arg_2[arith_const_22][arith_const_12]; 
  double arith_mulf_34 = (memref_load_33 * arith_const_15); 
  double arith_subf_35 = (arith_addf_32 - arith_mulf_34); 
  double memref_load_36 = func_arg_5[arith_const_22][arith_const_21]; 
  double arith_mulf_37 = (memref_load_36 * arith_const_16); 
  double arith_subf_38 = (arith_subf_35 - arith_mulf_37); 
  double arith_divf_39 = (arith_subf_38 / arith_addf_26); 
  func_arg_5[arith_const_22][arith_const_22] = arith_divf_39; 
  func_arg_3[arith_const_11][arith_const_22] = arith_const_20; 
  for (int for_iter_40 = arith_const_22; for_iter_40 < arith_const_10; for_iter_40 += arith_const_9) {
    int arith_muli_41 = (for_iter_40 * arith_const_8); 
    int arith_addi_42 = (arith_muli_41 + arith_const_11); 
    double memref_load_43 = func_arg_4[arith_const_22][arith_addi_42]; 
    int arith_muli_44 = (for_iter_40 * arith_const_8); 
    int arith_addi_45 = (arith_muli_44 + arith_const_7); 
    double memref_load_46 = func_arg_3[arith_addi_45][arith_const_22]; 
    double arith_mulf_47 = (memref_load_43 * memref_load_46); 
    int arith_muli_48 = (for_iter_40 * arith_const_8); 
    int arith_addi_49 = (arith_muli_48 + arith_const_11); 
    double memref_load_50 = func_arg_5[arith_const_22][arith_addi_49]; 
    double arith_addf_51 = (arith_mulf_47 + memref_load_50); 
    int arith_muli_52 = (for_iter_40 * arith_const_8); 
    int arith_addi_53 = (arith_muli_52 + arith_const_11); 
    func_arg_3[arith_addi_53][arith_const_22] = arith_addf_51; 
    int arith_addi_54 = (for_iter_40 + arith_const_22); 
    int arith_muli_55 = (arith_addi_54 * arith_const_8); 
    int arith_addi_56 = (arith_muli_55 + arith_const_11); 
    double memref_load_57 = func_arg_4[arith_const_22][arith_addi_56]; 
    int arith_muli_58 = (arith_addi_54 * arith_const_8); 
    int arith_addi_59 = (arith_muli_58 + arith_const_7); 
    double memref_load_60 = func_arg_3[arith_addi_59][arith_const_22]; 
    double arith_mulf_61 = (memref_load_57 * memref_load_60); 
    int arith_muli_62 = (arith_addi_54 * arith_const_8); 
    int arith_addi_63 = (arith_muli_62 + arith_const_11); 
    double memref_load_64 = func_arg_5[arith_const_22][arith_addi_63]; 
    double arith_addf_65 = (arith_mulf_61 + memref_load_64); 
    int arith_muli_66 = (arith_addi_54 * arith_const_8); 
    int arith_addi_67 = (arith_muli_66 + arith_const_11); 
    func_arg_3[arith_addi_67][arith_const_22] = arith_addf_65; 
    int arith_addi_68 = (for_iter_40 + arith_const_12); 
    int arith_muli_69 = (arith_addi_68 * arith_const_8); 
    int arith_addi_70 = (arith_muli_69 + arith_const_11); 
    double memref_load_71 = func_arg_4[arith_const_22][arith_addi_70]; 
    int arith_muli_72 = (arith_addi_68 * arith_const_8); 
    int arith_addi_73 = (arith_muli_72 + arith_const_7); 
    double memref_load_74 = func_arg_3[arith_addi_73][arith_const_22]; 
    double arith_mulf_75 = (memref_load_71 * memref_load_74); 
    int arith_muli_76 = (arith_addi_68 * arith_const_8); 
    int arith_addi_77 = (arith_muli_76 + arith_const_11); 
    double memref_load_78 = func_arg_5[arith_const_22][arith_addi_77]; 
    double arith_addf_79 = (arith_mulf_75 + memref_load_78); 
    int arith_muli_80 = (arith_addi_68 * arith_const_8); 
    int arith_addi_81 = (arith_muli_80 + arith_const_11); 
    func_arg_3[arith_addi_81][arith_const_22] = arith_addf_79; 
    int arith_addi_82 = (for_iter_40 + arith_const_6); 
    int arith_muli_83 = (arith_addi_82 * arith_const_8); 
    int arith_addi_84 = (arith_muli_83 + arith_const_11); 
    double memref_load_85 = func_arg_4[arith_const_22][arith_addi_84]; 
    int arith_muli_86 = (arith_addi_82 * arith_const_8); 
    int arith_addi_87 = (arith_muli_86 + arith_const_7); 
    double memref_load_88 = func_arg_3[arith_addi_87][arith_const_22]; 
    double arith_mulf_89 = (memref_load_85 * memref_load_88); 
    int arith_muli_90 = (arith_addi_82 * arith_const_8); 
    int arith_addi_91 = (arith_muli_90 + arith_const_11); 
    double memref_load_92 = func_arg_5[arith_const_22][arith_addi_91]; 
    double arith_addf_93 = (arith_mulf_89 + memref_load_92); 
    int arith_muli_94 = (arith_addi_82 * arith_const_8); 
    int arith_addi_95 = (arith_muli_94 + arith_const_11); 
    func_arg_3[arith_addi_95][arith_const_22] = arith_addf_93; 
  }
  for (int for_iter_96 = arith_const_10; for_iter_96 < arith_const_11; for_iter_96 += arith_const_22) {
    int arith_muli_97 = (for_iter_96 * arith_const_8); 
    int arith_addi_98 = (arith_muli_97 + arith_const_11); 
    double memref_load_99 = func_arg_4[arith_const_22][arith_addi_98]; 
    int arith_muli_100 = (for_iter_96 * arith_const_8); 
    int arith_addi_101 = (arith_muli_100 + arith_const_7); 
    double memref_load_102 = func_arg_3[arith_addi_101][arith_const_22]; 
    double arith_mulf_103 = (memref_load_99 * memref_load_102); 
    int arith_muli_104 = (for_iter_96 * arith_const_8); 
    int arith_addi_105 = (arith_muli_104 + arith_const_11); 
    double memref_load_106 = func_arg_5[arith_const_22][arith_addi_105]; 
    double arith_addf_107 = (arith_mulf_103 + memref_load_106); 
    int arith_muli_108 = (for_iter_96 * arith_const_8); 
    int arith_addi_109 = (arith_muli_108 + arith_const_11); 
    func_arg_3[arith_addi_109][arith_const_22] = arith_addf_107; 
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
