#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 20; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 5; 
  int arith_const_17 = 18; 
  int arith_const_18 = 16; 
  int arith_const_19 = 32; 
  double arith_const_20 = 0.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_21; for_iter_23 < arith_const_22; for_iter_23 += arith_const_22) {
    int arith_muli_24 = (for_iter_23 * arith_const_19); 
    for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_22; for_iter_25 += arith_const_22) {
      int arith_muli_26 = (for_iter_25 * arith_const_19); 
      for (int for_iter_27 = arith_const_21; for_iter_27 < arith_const_18; for_iter_27 += arith_const_22) {
        int arith_addi_28 = (arith_muli_24 + for_iter_27); 
        for (int for_iter_29 = arith_const_21; for_iter_29 < arith_const_17; for_iter_29 += arith_const_22) {
          int arith_addi_30 = (arith_muli_26 + for_iter_29); 
          func_arg_6[arith_addi_28][arith_addi_30] = arith_const_20; 
          for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_16; for_iter_31 += arith_const_22) {
            int arith_muli_32 = (for_iter_31 * arith_const_15); 
            double memref_load_33 = func_arg_7[arith_addi_28][arith_muli_32]; 
            double arith_mulf_34 = (func_arg_4 * memref_load_33); 
            double memref_load_35 = func_arg_8[arith_muli_32][arith_addi_30]; 
            double arith_mulf_36 = (arith_mulf_34 * memref_load_35); 
            double memref_load_37 = func_arg_6[arith_addi_28][arith_addi_30]; 
            double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
            func_arg_6[arith_addi_28][arith_addi_30] = arith_addf_38; 
            int arith_addi_39 = (arith_muli_32 + arith_const_22); 
            double memref_load_40 = func_arg_7[arith_addi_28][arith_addi_39]; 
            double arith_mulf_41 = (func_arg_4 * memref_load_40); 
            double memref_load_42 = func_arg_8[arith_addi_39][arith_addi_30]; 
            double arith_mulf_43 = (arith_mulf_41 * memref_load_42); 
            double memref_load_44 = func_arg_6[arith_addi_28][arith_addi_30]; 
            double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
            func_arg_6[arith_addi_28][arith_addi_30] = arith_addf_45; 
            int arith_addi_46 = (arith_muli_32 + arith_const_14); 
            double memref_load_47 = func_arg_7[arith_addi_28][arith_addi_46]; 
            double arith_mulf_48 = (func_arg_4 * memref_load_47); 
            double memref_load_49 = func_arg_8[arith_addi_46][arith_addi_30]; 
            double arith_mulf_50 = (arith_mulf_48 * memref_load_49); 
            double memref_load_51 = func_arg_6[arith_addi_28][arith_addi_30]; 
            double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
            func_arg_6[arith_addi_28][arith_addi_30] = arith_addf_52; 
            int arith_addi_53 = (arith_muli_32 + arith_const_13); 
            double memref_load_54 = func_arg_7[arith_addi_28][arith_addi_53]; 
            double arith_mulf_55 = (func_arg_4 * memref_load_54); 
            double memref_load_56 = func_arg_8[arith_addi_53][arith_addi_30]; 
            double arith_mulf_57 = (arith_mulf_55 * memref_load_56); 
            double memref_load_58 = func_arg_6[arith_addi_28][arith_addi_30]; 
            double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
            func_arg_6[arith_addi_28][arith_addi_30] = arith_addf_59; 
          }
          for (int for_iter_60 = arith_const_21; for_iter_60 < arith_const_14; for_iter_60 += arith_const_22) {
            int arith_addi_61 = (for_iter_60 + arith_const_12); 
            double memref_load_62 = func_arg_7[arith_addi_28][arith_addi_61]; 
            double arith_mulf_63 = (func_arg_4 * memref_load_62); 
            double memref_load_64 = func_arg_8[arith_addi_61][arith_addi_30]; 
            double arith_mulf_65 = (arith_mulf_63 * memref_load_64); 
            double memref_load_66 = func_arg_6[arith_addi_28][arith_addi_30]; 
            double arith_addf_67 = (memref_load_66 + arith_mulf_65); 
            func_arg_6[arith_addi_28][arith_addi_30] = arith_addf_67; 
          }
        }
      }
    }
  }
  for (int for_iter_68 = arith_const_21; for_iter_68 < arith_const_22; for_iter_68 += arith_const_22) {
    int arith_muli_69 = (for_iter_68 * arith_const_19); 
    for (int for_iter_70 = arith_const_21; for_iter_70 < arith_const_22; for_iter_70 += arith_const_22) {
      int arith_muli_71 = (for_iter_70 * arith_const_19); 
      for (int for_iter_72 = arith_const_21; for_iter_72 < arith_const_18; for_iter_72 += arith_const_22) {
        int arith_addi_73 = (arith_muli_69 + for_iter_72); 
        for (int for_iter_74 = arith_const_21; for_iter_74 < arith_const_11; for_iter_74 += arith_const_22) {
          int arith_addi_75 = (arith_muli_71 + for_iter_74); 
          double memref_load_76 = func_arg_10[arith_addi_73][arith_addi_75]; 
          double arith_mulf_77 = (memref_load_76 * func_arg_5); 
          func_arg_10[arith_addi_73][arith_addi_75] = arith_mulf_77; 
          for (int for_iter_78 = arith_const_21; for_iter_78 < arith_const_15; for_iter_78 += arith_const_22) {
            int arith_muli_79 = (for_iter_78 * arith_const_15); 
            double memref_load_80 = func_arg_6[arith_addi_73][arith_muli_79]; 
            double memref_load_81 = func_arg_9[arith_muli_79][arith_addi_75]; 
            double arith_mulf_82 = (memref_load_80 * memref_load_81); 
            double memref_load_83 = func_arg_10[arith_addi_73][arith_addi_75]; 
            double arith_addf_84 = (memref_load_83 + arith_mulf_82); 
            func_arg_10[arith_addi_73][arith_addi_75] = arith_addf_84; 
            int arith_addi_85 = (arith_muli_79 + arith_const_22); 
            double memref_load_86 = func_arg_6[arith_addi_73][arith_addi_85]; 
            double memref_load_87 = func_arg_9[arith_addi_85][arith_addi_75]; 
            double arith_mulf_88 = (memref_load_86 * memref_load_87); 
            double memref_load_89 = func_arg_10[arith_addi_73][arith_addi_75]; 
            double arith_addf_90 = (memref_load_89 + arith_mulf_88); 
            func_arg_10[arith_addi_73][arith_addi_75] = arith_addf_90; 
            int arith_addi_91 = (arith_muli_79 + arith_const_14); 
            double memref_load_92 = func_arg_6[arith_addi_73][arith_addi_91]; 
            double memref_load_93 = func_arg_9[arith_addi_91][arith_addi_75]; 
            double arith_mulf_94 = (memref_load_92 * memref_load_93); 
            double memref_load_95 = func_arg_10[arith_addi_73][arith_addi_75]; 
            double arith_addf_96 = (memref_load_95 + arith_mulf_94); 
            func_arg_10[arith_addi_73][arith_addi_75] = arith_addf_96; 
            int arith_addi_97 = (arith_muli_79 + arith_const_13); 
            double memref_load_98 = func_arg_6[arith_addi_73][arith_addi_97]; 
            double memref_load_99 = func_arg_9[arith_addi_97][arith_addi_75]; 
            double arith_mulf_100 = (memref_load_98 * memref_load_99); 
            double memref_load_101 = func_arg_10[arith_addi_73][arith_addi_75]; 
            double arith_addf_102 = (memref_load_101 + arith_mulf_100); 
            func_arg_10[arith_addi_73][arith_addi_75] = arith_addf_102; 
          }
          for (int for_iter_103 = arith_const_21; for_iter_103 < arith_const_14; for_iter_103 += arith_const_22) {
            int arith_addi_104 = (for_iter_103 + arith_const_18); 
            double memref_load_105 = func_arg_6[arith_addi_73][arith_addi_104]; 
            double memref_load_106 = func_arg_9[arith_addi_104][arith_addi_75]; 
            double arith_mulf_107 = (memref_load_105 * memref_load_106); 
            double memref_load_108 = func_arg_10[arith_addi_73][arith_addi_75]; 
            double arith_addf_109 = (memref_load_108 + arith_mulf_107); 
            func_arg_10[arith_addi_73][arith_addi_75] = arith_addf_109; 
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
