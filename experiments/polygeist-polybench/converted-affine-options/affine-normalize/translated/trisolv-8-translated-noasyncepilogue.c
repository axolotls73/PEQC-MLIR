#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 39; 
  int arith_const_5 = 7; 
  int arith_const_6 = -2; 
  int arith_const_7 = 33; 
  int arith_const_8 = 31; 
  int arith_const_9 = -1; 
  int arith_const_10 = 32; 
  int arith_const_11 = 40; 
  int arith_const_12 = -32; 
  int arith_const_13 = 0; 
  int arith_const_14 = 2; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_12); 
    int arith_addi_18 = (arith_muli_17 + arith_const_11); 
    int arith_minsi_19 = min(arith_addi_18, arith_const_10); 
    for (int for_iter_20 = arith_const_13; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_15) {
      int arith_muli_21 = (for_iter_16 * arith_const_10); 
      int arith_addi_22 = (arith_muli_21 + for_iter_20); 
      double memref_load_23 = func_arg_3[arith_addi_22]; 
      func_arg_2[arith_addi_22] = memref_load_23; 
    }
  }
  for (int for_iter_24 = arith_const_13; for_iter_24 < arith_const_14; for_iter_24 += arith_const_15) {
    int arith_addi_25 = (for_iter_24 + arith_const_15); 
    for (int for_iter_26 = arith_const_13; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_15) {
      int arith_addi_27 = (for_iter_24 + arith_const_9); 
      int arith_cmpi_28 = ((arith_addi_27 == arith_const_13) ? 1 : 0); 
      int arith_addi_29 = (for_iter_26 + arith_const_9); 
      int arith_cmpi_30 = ((arith_addi_29 == arith_const_13) ? 1 : 0); 
      int arith_andi_31 = (arith_cmpi_28 & arith_cmpi_30); 
      if (arith_andi_31) {
        double memref_load_32 = func_arg_2[arith_const_10]; 
        double memref_load_33 = func_arg_1[arith_const_10][arith_const_8]; 
        double memref_load_34 = func_arg_2[arith_const_8]; 
        double arith_mulf_35 = (memref_load_33 * memref_load_34); 
        double arith_subf_36 = (memref_load_32 - arith_mulf_35); 
        func_arg_2[arith_const_10] = arith_subf_36; 
      }
      int arith_muli_37 = (for_iter_24 * arith_const_10); 
      int arith_muli_38 = (for_iter_26 * arith_const_10); 
      int arith_addi_39 = (arith_muli_38 + arith_const_15); 
      int arith_maxsi_40 = max(arith_muli_37, arith_addi_39); 
      int arith_muli_41 = (for_iter_24 * arith_const_10); 
      int arith_addi_42 = (arith_muli_41 + arith_const_10); 
      int arith_muli_43 = (for_iter_26 * arith_const_10); 
      int arith_addi_44 = (arith_muli_43 + arith_const_7); 
      int arith_minsi_45 = min(arith_addi_42, arith_const_11); 
      int arith_minsi_46 = min(arith_minsi_45, arith_addi_44); 
      for (int for_iter_47 = arith_maxsi_40; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_15) {
        int arith_muli_48 = (for_iter_26 * arith_const_10); 
        int arith_maxsi_49 = max(arith_muli_48, arith_const_15); 
        int arith_addi_50 = (for_iter_47 + arith_const_9); 
        for (int for_iter_51 = arith_maxsi_49; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_15) {
          double memref_load_52 = func_arg_2[for_iter_47]; 
          int arith_addi_53 = (for_iter_51 + arith_const_9); 
          double memref_load_54 = func_arg_1[for_iter_47][arith_addi_53]; 
          int arith_addi_55 = (for_iter_51 + arith_const_9); 
          double memref_load_56 = func_arg_2[arith_addi_55]; 
          double arith_mulf_57 = (memref_load_54 * memref_load_56); 
          double arith_subf_58 = (memref_load_52 - arith_mulf_57); 
          func_arg_2[for_iter_47] = arith_subf_58; 
        }
        int arith_cmpi_59 = ((for_iter_24 == arith_const_13) ? 1 : 0); 
        int arith_cmpi_60 = ((for_iter_26 == arith_const_13) ? 1 : 0); 
        int arith_andi_61 = (arith_cmpi_59 & arith_cmpi_60); 
        int arith_addi_62 = (for_iter_47 + arith_const_9); 
        int arith_cmpi_63 = ((arith_addi_62 == arith_const_13) ? 1 : 0); 
        int arith_andi_64 = (arith_andi_61 & arith_cmpi_63); 
        if (arith_andi_64) {
          double memref_load_65 = func_arg_2[arith_const_13]; 
          double memref_load_66 = func_arg_1[arith_const_13][arith_const_13]; 
          double arith_divf_67 = (memref_load_65 / memref_load_66); 
          func_arg_2[arith_const_13] = arith_divf_67; 
        }
        int arith_addi_68 = (for_iter_47 + arith_const_6); 
        int arith_cmpi_69 = ((arith_addi_68 >= arith_const_13) ? 1 : 0); 
        if (arith_cmpi_69) {
          int arith_addi_70 = (for_iter_47 + arith_const_9); 
          double memref_load_71 = func_arg_2[arith_addi_70]; 
          int arith_addi_72 = (for_iter_47 + arith_const_9); 
          int arith_addi_73 = (for_iter_47 + arith_const_9); 
          double memref_load_74 = func_arg_1[arith_addi_72][arith_addi_73]; 
          double arith_divf_75 = (memref_load_71 / memref_load_74); 
          int arith_addi_76 = (for_iter_47 + arith_const_9); 
          func_arg_2[arith_addi_76] = arith_divf_75; 
          double memref_load_77 = func_arg_2[for_iter_47]; 
          int arith_addi_78 = (for_iter_47 + arith_const_6); 
          double memref_load_79 = func_arg_1[for_iter_47][arith_addi_78]; 
          int arith_addi_80 = (for_iter_47 + arith_const_6); 
          double memref_load_81 = func_arg_2[arith_addi_80]; 
          double arith_mulf_82 = (memref_load_79 * memref_load_81); 
          double arith_subf_83 = (memref_load_77 - arith_mulf_82); 
          func_arg_2[for_iter_47] = arith_subf_83; 
        }
        int arith_muli_84 = (for_iter_26 * arith_const_9); 
        int arith_addi_85 = (for_iter_24 + arith_muli_84); 
        int arith_cmpi_86 = ((arith_addi_85 == arith_const_13) ? 1 : 0); 
        if (arith_cmpi_86) {
          double memref_load_87 = func_arg_2[for_iter_47]; 
          int arith_addi_88 = (for_iter_47 + arith_const_9); 
          double memref_load_89 = func_arg_1[for_iter_47][arith_addi_88]; 
          int arith_addi_90 = (for_iter_47 + arith_const_9); 
          double memref_load_91 = func_arg_2[arith_addi_90]; 
          double arith_mulf_92 = (memref_load_89 * memref_load_91); 
          double arith_subf_93 = (memref_load_87 - arith_mulf_92); 
          func_arg_2[for_iter_47] = arith_subf_93; 
        }
      }
      int arith_addi_94 = (for_iter_24 + arith_const_9); 
      int arith_cmpi_95 = ((arith_addi_94 == arith_const_13) ? 1 : 0); 
      int arith_cmpi_96 = ((for_iter_26 == arith_const_13) ? 1 : 0); 
      int arith_andi_97 = (arith_cmpi_95 & arith_cmpi_96); 
      if (arith_andi_97) {
        for (int for_iter_98 = arith_const_13; for_iter_98 < arith_const_5; for_iter_98 += arith_const_15) {
          int arith_addi_99 = (for_iter_98 + arith_const_7); 
          for (int for_iter_100 = arith_const_13; for_iter_100 < arith_const_8; for_iter_100 += arith_const_15) {
            int arith_addi_101 = (for_iter_100 + arith_const_15); 
            double memref_load_102 = func_arg_2[arith_addi_99]; 
            int arith_addi_103 = (arith_addi_101 + arith_const_9); 
            double memref_load_104 = func_arg_1[arith_addi_99][arith_addi_103]; 
            int arith_addi_105 = (arith_addi_101 + arith_const_9); 
            double memref_load_106 = func_arg_2[arith_addi_105]; 
            double arith_mulf_107 = (memref_load_104 * memref_load_106); 
            double arith_subf_108 = (memref_load_102 - arith_mulf_107); 
            func_arg_2[arith_addi_99] = arith_subf_108; 
          }
        }
      }
      int arith_addi_109 = (for_iter_24 + arith_const_9); 
      int arith_cmpi_110 = ((arith_addi_109 == arith_const_13) ? 1 : 0); 
      int arith_addi_111 = (for_iter_26 + arith_const_9); 
      int arith_cmpi_112 = ((arith_addi_111 == arith_const_13) ? 1 : 0); 
      int arith_andi_113 = (arith_cmpi_110 & arith_cmpi_112); 
      if (arith_andi_113) {
        double memref_load_114 = func_arg_2[arith_const_4]; 
        double memref_load_115 = func_arg_1[arith_const_4][arith_const_4]; 
        double arith_divf_116 = (memref_load_114 / memref_load_115); 
        func_arg_2[arith_const_4] = arith_divf_116; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;


  kernel_trisolv(n, L, x, b);

}

#pragma pocc-region-end
