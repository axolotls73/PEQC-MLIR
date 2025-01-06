#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 3; 
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 20; 
  int arith_const_9 = 1; 
  int arith_const_10 = 30; 
  int arith_const_11 = 0; 
  double _12; 
  double arith_const_13 = 0.000000; 
  double* memref_alloca_14; 
  memref_alloca_14[0] = _12; 
  for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_10; for_iter_15 += arith_const_9) {
    memref_alloca_14[0] = arith_const_13; 
    for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_8; for_iter_16 += arith_const_7) {
      double memref_load_17 = func_arg_2[for_iter_16][for_iter_15]; 
      double arith_mulf_18 = (memref_load_17 * memref_load_17); 
      double memref_load_19 = memref_alloca_14[0]; 
      double arith_addf_20 = (memref_load_19 + arith_mulf_18); 
      memref_alloca_14[0] = arith_addf_20; 
      int arith_addi_21 = (for_iter_16 + arith_const_9); 
      double memref_load_22 = func_arg_2[arith_addi_21][for_iter_15]; 
      double arith_mulf_23 = (memref_load_22 * memref_load_22); 
      double memref_load_24 = memref_alloca_14[0]; 
      double arith_addf_25 = (memref_load_24 + arith_mulf_23); 
      memref_alloca_14[0] = arith_addf_25; 
      int arith_addi_26 = (for_iter_16 + arith_const_6); 
      double memref_load_27 = func_arg_2[arith_addi_26][for_iter_15]; 
      double arith_mulf_28 = (memref_load_27 * memref_load_27); 
      double memref_load_29 = memref_alloca_14[0]; 
      double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
      memref_alloca_14[0] = arith_addf_30; 
      int arith_addi_31 = (for_iter_16 + arith_const_5); 
      double memref_load_32 = func_arg_2[arith_addi_31][for_iter_15]; 
      double arith_mulf_33 = (memref_load_32 * memref_load_32); 
      double memref_load_34 = memref_alloca_14[0]; 
      double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
      memref_alloca_14[0] = arith_addf_35; 
    }
    double memref_load_36 = memref_alloca_14[0]; 
    double math_sqrt_37 = sqrt(memref_load_36); 
    func_arg_3[for_iter_15][for_iter_15] = math_sqrt_37; 
    for (int for_iter_38 = arith_const_11; for_iter_38 < arith_const_8; for_iter_38 += arith_const_7) {
      double memref_load_39 = func_arg_2[for_iter_38][for_iter_15]; 
      double memref_load_40 = func_arg_3[for_iter_15][for_iter_15]; 
      double arith_divf_41 = (memref_load_39 / memref_load_40); 
      func_arg_4[for_iter_38][for_iter_15] = arith_divf_41; 
      int arith_addi_42 = (for_iter_38 + arith_const_9); 
      double memref_load_43 = func_arg_2[arith_addi_42][for_iter_15]; 
      double memref_load_44 = func_arg_3[for_iter_15][for_iter_15]; 
      double arith_divf_45 = (memref_load_43 / memref_load_44); 
      func_arg_4[arith_addi_42][for_iter_15] = arith_divf_45; 
      int arith_addi_46 = (for_iter_38 + arith_const_6); 
      double memref_load_47 = func_arg_2[arith_addi_46][for_iter_15]; 
      double memref_load_48 = func_arg_3[for_iter_15][for_iter_15]; 
      double arith_divf_49 = (memref_load_47 / memref_load_48); 
      func_arg_4[arith_addi_46][for_iter_15] = arith_divf_49; 
      int arith_addi_50 = (for_iter_38 + arith_const_5); 
      double memref_load_51 = func_arg_2[arith_addi_50][for_iter_15]; 
      double memref_load_52 = func_arg_3[for_iter_15][for_iter_15]; 
      double arith_divf_53 = (memref_load_51 / memref_load_52); 
      func_arg_4[arith_addi_50][for_iter_15] = arith_divf_53; 
    }
    int arith_addi_54 = (for_iter_15 + arith_const_9); 
    for (int for_iter_55 = arith_addi_54; for_iter_55 < arith_const_10; for_iter_55 += arith_const_9) {
      func_arg_3[for_iter_15][for_iter_55] = arith_const_13; 
      for (int for_iter_56 = arith_const_11; for_iter_56 < arith_const_8; for_iter_56 += arith_const_7) {
        double memref_load_57 = func_arg_4[for_iter_56][for_iter_15]; 
        double memref_load_58 = func_arg_2[for_iter_56][for_iter_55]; 
        double arith_mulf_59 = (memref_load_57 * memref_load_58); 
        double memref_load_60 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_addf_61 = (memref_load_60 + arith_mulf_59); 
        func_arg_3[for_iter_15][for_iter_55] = arith_addf_61; 
        int arith_addi_62 = (for_iter_56 + arith_const_9); 
        double memref_load_63 = func_arg_4[arith_addi_62][for_iter_15]; 
        double memref_load_64 = func_arg_2[arith_addi_62][for_iter_55]; 
        double arith_mulf_65 = (memref_load_63 * memref_load_64); 
        double memref_load_66 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_addf_67 = (memref_load_66 + arith_mulf_65); 
        func_arg_3[for_iter_15][for_iter_55] = arith_addf_67; 
        int arith_addi_68 = (for_iter_56 + arith_const_6); 
        double memref_load_69 = func_arg_4[arith_addi_68][for_iter_15]; 
        double memref_load_70 = func_arg_2[arith_addi_68][for_iter_55]; 
        double arith_mulf_71 = (memref_load_69 * memref_load_70); 
        double memref_load_72 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
        func_arg_3[for_iter_15][for_iter_55] = arith_addf_73; 
        int arith_addi_74 = (for_iter_56 + arith_const_5); 
        double memref_load_75 = func_arg_4[arith_addi_74][for_iter_15]; 
        double memref_load_76 = func_arg_2[arith_addi_74][for_iter_55]; 
        double arith_mulf_77 = (memref_load_75 * memref_load_76); 
        double memref_load_78 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
        func_arg_3[for_iter_15][for_iter_55] = arith_addf_79; 
      }
      for (int for_iter_80 = arith_const_11; for_iter_80 < arith_const_8; for_iter_80 += arith_const_7) {
        double memref_load_81 = func_arg_2[for_iter_80][for_iter_55]; 
        double memref_load_82 = func_arg_4[for_iter_80][for_iter_15]; 
        double memref_load_83 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_mulf_84 = (memref_load_82 * memref_load_83); 
        double arith_subf_85 = (memref_load_81 - arith_mulf_84); 
        func_arg_2[for_iter_80][for_iter_55] = arith_subf_85; 
        int arith_addi_86 = (for_iter_80 + arith_const_9); 
        double memref_load_87 = func_arg_2[arith_addi_86][for_iter_55]; 
        double memref_load_88 = func_arg_4[arith_addi_86][for_iter_15]; 
        double memref_load_89 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_mulf_90 = (memref_load_88 * memref_load_89); 
        double arith_subf_91 = (memref_load_87 - arith_mulf_90); 
        func_arg_2[arith_addi_86][for_iter_55] = arith_subf_91; 
        int arith_addi_92 = (for_iter_80 + arith_const_6); 
        double memref_load_93 = func_arg_2[arith_addi_92][for_iter_55]; 
        double memref_load_94 = func_arg_4[arith_addi_92][for_iter_15]; 
        double memref_load_95 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_mulf_96 = (memref_load_94 * memref_load_95); 
        double arith_subf_97 = (memref_load_93 - arith_mulf_96); 
        func_arg_2[arith_addi_92][for_iter_55] = arith_subf_97; 
        int arith_addi_98 = (for_iter_80 + arith_const_5); 
        double memref_load_99 = func_arg_2[arith_addi_98][for_iter_55]; 
        double memref_load_100 = func_arg_4[arith_addi_98][for_iter_15]; 
        double memref_load_101 = func_arg_3[for_iter_15][for_iter_55]; 
        double arith_mulf_102 = (memref_load_100 * memref_load_101); 
        double arith_subf_103 = (memref_load_99 - arith_mulf_102); 
        func_arg_2[arith_addi_98][for_iter_55] = arith_subf_103; 
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
