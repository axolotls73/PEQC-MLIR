#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 12; 
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
        for (int for_iter_52 = arith_const_17; for_iter_52 < arith_const_8; for_iter_52 += arith_const_7) {
          func_arg_5[for_iter_52] = arith_const_16; 
          int arith_addi_53 = (for_iter_52 + arith_const_19); 
          func_arg_5[arith_addi_53] = arith_const_16; 
          int arith_addi_54 = (for_iter_52 + arith_const_6); 
          func_arg_5[arith_addi_54] = arith_const_16; 
          int arith_addi_55 = (for_iter_52 + arith_const_18); 
          func_arg_5[arith_addi_55] = arith_const_16; 
        }
        for (int for_iter_56 = arith_const_17; for_iter_56 < arith_const_8; for_iter_56 += arith_const_19) {
          for (int for_iter_57 = arith_const_17; for_iter_57 < arith_const_8; for_iter_57 += arith_const_7) {
            double memref_load_58 = func_arg_5[for_iter_57]; 
            int arith_muli_59 = (for_iter_42 * arith_const_14); 
            int arith_addi_60 = (arith_muli_59 + for_iter_51); 
            double memref_load_61 = func_arg_3[for_iter_42][arith_addi_60][for_iter_56]; 
            double memref_load_62 = func_arg_4[for_iter_56][for_iter_57]; 
            double arith_mulf_63 = (memref_load_61 * memref_load_62); 
            double arith_addf_64 = (memref_load_58 + arith_mulf_63); 
            func_arg_5[for_iter_57] = arith_addf_64; 
            int arith_addi_65 = (for_iter_57 + arith_const_19); 
            double memref_load_66 = func_arg_5[arith_addi_65]; 
            int arith_muli_67 = (for_iter_42 * arith_const_14); 
            int arith_addi_68 = (arith_muli_67 + for_iter_51); 
            double memref_load_69 = func_arg_3[for_iter_42][arith_addi_68][for_iter_56]; 
            double memref_load_70 = func_arg_4[for_iter_56][arith_addi_65]; 
            double arith_mulf_71 = (memref_load_69 * memref_load_70); 
            double arith_addf_72 = (memref_load_66 + arith_mulf_71); 
            func_arg_5[arith_addi_65] = arith_addf_72; 
            int arith_addi_73 = (for_iter_57 + arith_const_6); 
            double memref_load_74 = func_arg_5[arith_addi_73]; 
            int arith_muli_75 = (for_iter_42 * arith_const_14); 
            int arith_addi_76 = (arith_muli_75 + for_iter_51); 
            double memref_load_77 = func_arg_3[for_iter_42][arith_addi_76][for_iter_56]; 
            double memref_load_78 = func_arg_4[for_iter_56][arith_addi_73]; 
            double arith_mulf_79 = (memref_load_77 * memref_load_78); 
            double arith_addf_80 = (memref_load_74 + arith_mulf_79); 
            func_arg_5[arith_addi_73] = arith_addf_80; 
            int arith_addi_81 = (for_iter_57 + arith_const_18); 
            double memref_load_82 = func_arg_5[arith_addi_81]; 
            int arith_muli_83 = (for_iter_42 * arith_const_14); 
            int arith_addi_84 = (arith_muli_83 + for_iter_51); 
            double memref_load_85 = func_arg_3[for_iter_42][arith_addi_84][for_iter_56]; 
            double memref_load_86 = func_arg_4[for_iter_56][arith_addi_81]; 
            double arith_mulf_87 = (memref_load_85 * memref_load_86); 
            double arith_addf_88 = (memref_load_82 + arith_mulf_87); 
            func_arg_5[arith_addi_81] = arith_addf_88; 
          }
        }
        for (int for_iter_89 = arith_const_17; for_iter_89 < arith_const_8; for_iter_89 += arith_const_7) {
          double memref_load_90 = func_arg_5[for_iter_89]; 
          int arith_muli_91 = (for_iter_42 * arith_const_14); 
          int arith_addi_92 = (arith_muli_91 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_92][for_iter_89] = memref_load_90; 
          int arith_addi_93 = (for_iter_89 + arith_const_19); 
          double memref_load_94 = func_arg_5[arith_addi_93]; 
          int arith_muli_95 = (for_iter_42 * arith_const_14); 
          int arith_addi_96 = (arith_muli_95 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_96][arith_addi_93] = memref_load_94; 
          int arith_addi_97 = (for_iter_89 + arith_const_6); 
          double memref_load_98 = func_arg_5[arith_addi_97]; 
          int arith_muli_99 = (for_iter_42 * arith_const_14); 
          int arith_addi_100 = (arith_muli_99 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_100][arith_addi_97] = memref_load_98; 
          int arith_addi_101 = (for_iter_89 + arith_const_18); 
          double memref_load_102 = func_arg_5[arith_addi_101]; 
          int arith_muli_103 = (for_iter_42 * arith_const_14); 
          int arith_addi_104 = (arith_muli_103 + for_iter_51); 
          func_arg_3[for_iter_42][arith_addi_104][arith_addi_101] = memref_load_102; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
