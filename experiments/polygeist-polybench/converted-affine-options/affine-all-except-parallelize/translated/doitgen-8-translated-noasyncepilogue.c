#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 2; 
  int arith_const_8 = 4; 
  int arith_const_9 = 8; 
  int arith_const_10 = -1; 
  int arith_const_11 = 31; 
  int arith_const_12 = 10; 
  int arith_const_13 = 7; 
  int arith_const_14 = -7; 
  int arith_const_15 = 32; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 3; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    int arith_muli_21 = (for_iter_20 * arith_const_15); 
    int arith_addi_22 = (arith_muli_21 + arith_const_14); 
    int arith_cmpi_23 = (arith_addi_22 <= arith_const_17); 
    int arith_subi_24 = (arith_const_17 - arith_addi_22); 
    int arith_subi_25 = (arith_addi_22 - arith_const_19); 
    int arith_select_26 = (arith_cmpi_23 ? arith_subi_24 : arith_subi_25); 
    int arith_divi_27 = (arith_select_26 / arith_const_13); 
    int arith_subi_28 = (arith_const_17 - arith_divi_27); 
    int arith_addi_29 = (arith_divi_27 + arith_const_19); 
    int arith_select_30 = (arith_cmpi_23 ? arith_subi_28 : arith_addi_29); 
    int arith_maxsi_31 = max(arith_select_30, arith_const_17); 
    int arith_muli_32 = (for_iter_20 * arith_const_15); 
    int arith_addi_33 = (arith_muli_32 + arith_const_11); 
    int arith_cmpi_34 = (arith_addi_33 < arith_const_17); 
    int arith_subi_35 = (arith_const_10 - arith_addi_33); 
    int arith_select_36 = (arith_cmpi_34 ? arith_subi_35 : arith_addi_33); 
    int arith_divi_37 = (arith_select_36 / arith_const_13); 
    int arith_subi_38 = (arith_const_10 - arith_divi_37); 
    int arith_select_39 = (arith_cmpi_34 ? arith_subi_38 : arith_divi_37); 
    int arith_addi_40 = (arith_select_39 + arith_const_19); 
    int arith_minsi_41 = min(arith_addi_40, arith_const_12); 
    for (int for_iter_42 = arith_maxsi_31; for_iter_42 < arith_minsi_41; for_iter_42 += arith_const_19) {
      int arith_muli_43 = (for_iter_20 * arith_const_15); 
      int arith_muli_44 = (for_iter_42 * arith_const_13); 
      int arith_maxsi_45 = max(arith_muli_43, arith_muli_44); 
      int arith_muli_46 = (for_iter_20 * arith_const_15); 
      int arith_addi_47 = (arith_muli_46 + arith_const_15); 
      int arith_muli_48 = (for_iter_42 * arith_const_13); 
      int arith_addi_49 = (arith_muli_48 + arith_const_9); 
      int arith_minsi_50 = min(arith_addi_47, arith_addi_49); 
      for (int for_iter_51 = arith_maxsi_45; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_19) {
        for (int for_iter_52 = arith_const_17; for_iter_52 < arith_const_18; for_iter_52 += arith_const_19) {
          int arith_muli_53 = (for_iter_52 * arith_const_8); 
          func_arg_5[arith_muli_53] = arith_const_16; 
          int arith_addi_54 = (arith_muli_53 + arith_const_19); 
          func_arg_5[arith_addi_54] = arith_const_16; 
          int arith_addi_55 = (arith_muli_53 + arith_const_7); 
          func_arg_5[arith_addi_55] = arith_const_16; 
          int arith_addi_56 = (arith_muli_53 + arith_const_18); 
          func_arg_5[arith_addi_56] = arith_const_16; 
        }
        for (int for_iter_57 = arith_const_17; for_iter_57 < arith_const_6; for_iter_57 += arith_const_19) {
          int arith_muli_58 = (for_iter_42 * arith_const_14); 
          int arith_addi_59 = (arith_muli_58 + for_iter_51); 
          double memref_load_60 = func_arg_3[for_iter_42][arith_addi_59][for_iter_57]; 
          int arith_muli_61 = (for_iter_42 * arith_const_14); 
          int arith_addi_62 = (arith_muli_61 + for_iter_51); 
          double memref_load_63 = func_arg_3[for_iter_42][arith_addi_62][for_iter_57]; 
          int arith_muli_64 = (for_iter_42 * arith_const_14); 
          int arith_addi_65 = (arith_muli_64 + for_iter_51); 
          double memref_load_66 = func_arg_3[for_iter_42][arith_addi_65][for_iter_57]; 
          int arith_muli_67 = (for_iter_42 * arith_const_14); 
          int arith_addi_68 = (arith_muli_67 + for_iter_51); 
          double memref_load_69 = func_arg_3[for_iter_42][arith_addi_68][for_iter_57]; 
          for (int for_iter_70 = arith_const_17; for_iter_70 < arith_const_18; for_iter_70 += arith_const_19) {
            int arith_muli_71 = (for_iter_70 * arith_const_8); 
            double memref_load_72 = func_arg_5[arith_muli_71]; 
            double memref_load_73 = func_arg_4[for_iter_57][arith_muli_71]; 
            double arith_mulf_74 = (memref_load_60 * memref_load_73); 
            double arith_addf_75 = (memref_load_72 + arith_mulf_74); 
            func_arg_5[arith_muli_71] = arith_addf_75; 
            int arith_addi_76 = (arith_muli_71 + arith_const_19); 
            double memref_load_77 = func_arg_5[arith_addi_76]; 
            double memref_load_78 = func_arg_4[for_iter_57][arith_addi_76]; 
            double arith_mulf_79 = (memref_load_63 * memref_load_78); 
            double arith_addf_80 = (memref_load_77 + arith_mulf_79); 
            func_arg_5[arith_addi_76] = arith_addf_80; 
            int arith_addi_81 = (arith_muli_71 + arith_const_7); 
            double memref_load_82 = func_arg_5[arith_addi_81]; 
            double memref_load_83 = func_arg_4[for_iter_57][arith_addi_81]; 
            double arith_mulf_84 = (memref_load_66 * memref_load_83); 
            double arith_addf_85 = (memref_load_82 + arith_mulf_84); 
            func_arg_5[arith_addi_81] = arith_addf_85; 
            int arith_addi_86 = (arith_muli_71 + arith_const_18); 
            double memref_load_87 = func_arg_5[arith_addi_86]; 
            double memref_load_88 = func_arg_4[for_iter_57][arith_addi_86]; 
            double arith_mulf_89 = (memref_load_69 * memref_load_88); 
            double arith_addf_90 = (memref_load_87 + arith_mulf_89); 
            func_arg_5[arith_addi_86] = arith_addf_90; 
          }
        }
        for (int for_iter_91 = arith_const_17; for_iter_91 < arith_const_18; for_iter_91 += arith_const_19) {
          int arith_muli_92 = (for_iter_91 * arith_const_8); 
          double memref_load_93 = func_arg_5[arith_muli_92]; 
          int arith_muli_94 = (for_iter_42 * arith_const_14); 
          int arith_addi_95 = (arith_muli_94 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_95][arith_muli_92] = memref_load_93; 
          int arith_addi_96 = (arith_muli_92 + arith_const_19); 
          double memref_load_97 = func_arg_5[arith_addi_96]; 
          int arith_muli_98 = (for_iter_42 * arith_const_14); 
          int arith_addi_99 = (arith_muli_98 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_99][arith_addi_96] = memref_load_97; 
          int arith_addi_100 = (arith_muli_92 + arith_const_7); 
          double memref_load_101 = func_arg_5[arith_addi_100]; 
          int arith_muli_102 = (for_iter_42 * arith_const_14); 
          int arith_addi_103 = (arith_muli_102 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_103][arith_addi_100] = memref_load_101; 
          int arith_addi_104 = (arith_muli_92 + arith_const_18); 
          double memref_load_105 = func_arg_5[arith_addi_104]; 
          int arith_muli_106 = (for_iter_42 * arith_const_14); 
          int arith_addi_107 = (arith_muli_106 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_107][arith_addi_104] = memref_load_105; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
