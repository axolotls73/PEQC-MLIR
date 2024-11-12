#pragma pocc-region-start
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 30; 
  int arith_const_12 = 1; 
  int arith_const_13 = 20; 
  int arith_const_14 = 0; 
  double arith_const_15 = 0.000000; 
  double* memref_alloca_16; 
  memref_alloca_16[0] = arith_const_15; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_13; for_iter_17 += arith_const_12) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_11; for_iter_18 += arith_const_12) {
      for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_12; for_iter_19 += arith_const_12) {
        int arith_addi_20 = (for_iter_17 + for_iter_19); 
        double memref_load_21 = func_arg_5[arith_addi_20][arith_addi_20]; 
        for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_12; for_iter_22 += arith_const_12) {
          int arith_addi_23 = (for_iter_18 + for_iter_22); 
          memref_alloca_16[0] = arith_const_15; 
          double memref_load_24 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_25 = (func_arg_2 * memref_load_24); 
          double memref_load_26 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_27 = (func_arg_2 * memref_load_26); 
          double memref_load_28 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_29 = (func_arg_2 * memref_load_28); 
          double memref_load_30 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_31 = (func_arg_2 * memref_load_30); 
          int arith_addi_32 = (for_iter_17 + for_iter_19); 
          int arith_cmpi_33 = (arith_addi_32 < arith_const_14); 
          int arith_subi_34 = (arith_const_9 - arith_addi_32); 
          int arith_select_35 = (arith_cmpi_33 ? arith_subi_34 : arith_addi_32); 
          int arith_divi_36 = (arith_select_35 / arith_const_10); 
          int arith_subi_37 = (arith_const_9 - arith_divi_36); 
          int arith_select_38 = (arith_cmpi_33 ? arith_subi_37 : arith_divi_36); 
          for (int for_iter_39 = arith_const_14; for_iter_39 < arith_select_38; for_iter_39 += arith_const_12) {
            int arith_muli_40 = (for_iter_39 * arith_const_10); 
            double memref_load_41 = func_arg_5[arith_addi_20][arith_muli_40]; 
            double arith_mulf_42 = (arith_mulf_25 * memref_load_41); 
            double memref_load_43 = func_arg_4[arith_muli_40][arith_addi_23]; 
            double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
            func_arg_4[arith_muli_40][arith_addi_23] = arith_addf_44; 
            double memref_load_45 = func_arg_6[arith_muli_40][arith_addi_23]; 
            double memref_load_46 = func_arg_5[arith_addi_20][arith_muli_40]; 
            double arith_mulf_47 = (memref_load_45 * memref_load_46); 
            double memref_load_48 = memref_alloca_16[0]; 
            double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
            memref_alloca_16[0] = arith_addf_49; 
            int arith_addi_50 = (arith_muli_40 + arith_const_12); 
            double memref_load_51 = func_arg_5[arith_addi_20][arith_addi_50]; 
            double arith_mulf_52 = (arith_mulf_27 * memref_load_51); 
            double memref_load_53 = func_arg_4[arith_addi_50][arith_addi_23]; 
            double arith_addf_54 = (memref_load_53 + arith_mulf_52); 
            func_arg_4[arith_addi_50][arith_addi_23] = arith_addf_54; 
            double memref_load_55 = func_arg_6[arith_addi_50][arith_addi_23]; 
            double memref_load_56 = func_arg_5[arith_addi_20][arith_addi_50]; 
            double arith_mulf_57 = (memref_load_55 * memref_load_56); 
            double memref_load_58 = memref_alloca_16[0]; 
            double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
            memref_alloca_16[0] = arith_addf_59; 
            int arith_addi_60 = (arith_muli_40 + arith_const_8); 
            double memref_load_61 = func_arg_5[arith_addi_20][arith_addi_60]; 
            double arith_mulf_62 = (arith_mulf_29 * memref_load_61); 
            double memref_load_63 = func_arg_4[arith_addi_60][arith_addi_23]; 
            double arith_addf_64 = (memref_load_63 + arith_mulf_62); 
            func_arg_4[arith_addi_60][arith_addi_23] = arith_addf_64; 
            double memref_load_65 = func_arg_6[arith_addi_60][arith_addi_23]; 
            double memref_load_66 = func_arg_5[arith_addi_20][arith_addi_60]; 
            double arith_mulf_67 = (memref_load_65 * memref_load_66); 
            double memref_load_68 = memref_alloca_16[0]; 
            double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
            memref_alloca_16[0] = arith_addf_69; 
            int arith_addi_70 = (arith_muli_40 + arith_const_7); 
            double memref_load_71 = func_arg_5[arith_addi_20][arith_addi_70]; 
            double arith_mulf_72 = (arith_mulf_31 * memref_load_71); 
            double memref_load_73 = func_arg_4[arith_addi_70][arith_addi_23]; 
            double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
            func_arg_4[arith_addi_70][arith_addi_23] = arith_addf_74; 
            double memref_load_75 = func_arg_6[arith_addi_70][arith_addi_23]; 
            double memref_load_76 = func_arg_5[arith_addi_20][arith_addi_70]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double memref_load_78 = memref_alloca_16[0]; 
            double arith_addf_79 = (memref_load_78 + arith_mulf_77); 
            memref_alloca_16[0] = arith_addf_79; 
          }
          double memref_load_80 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_81 = (func_arg_2 * memref_load_80); 
          int arith_addi_82 = (for_iter_17 + for_iter_19); 
          int arith_remsi_83 = (arith_addi_82 % arith_const_10); 
          int arith_cmpi_84 = (arith_remsi_83 < arith_const_14); 
          int arith_addi_85 = (arith_remsi_83 + arith_const_10); 
          int arith_select_86 = (arith_cmpi_84 ? arith_addi_85 : arith_remsi_83); 
          for (int for_iter_87 = arith_const_14; for_iter_87 < arith_select_86; for_iter_87 += arith_const_12) {
            int arith_cmpi_88 = (arith_addi_20 < arith_const_14); 
            int arith_subi_89 = (arith_const_9 - arith_addi_20); 
            int arith_select_90 = (arith_cmpi_88 ? arith_subi_89 : arith_addi_20); 
            int arith_divi_91 = (arith_select_90 / arith_const_10); 
            int arith_subi_92 = (arith_const_9 - arith_divi_91); 
            int arith_select_93 = (arith_cmpi_88 ? arith_subi_92 : arith_divi_91); 
            int arith_muli_94 = (arith_select_93 * arith_const_10); 
            int arith_addi_95 = (for_iter_87 + arith_muli_94); 
            double memref_load_96 = func_arg_5[arith_addi_20][arith_addi_95]; 
            double arith_mulf_97 = (arith_mulf_81 * memref_load_96); 
            double memref_load_98 = func_arg_4[arith_addi_95][arith_addi_23]; 
            double arith_addf_99 = (memref_load_98 + arith_mulf_97); 
            func_arg_4[arith_addi_95][arith_addi_23] = arith_addf_99; 
            double memref_load_100 = func_arg_6[arith_addi_95][arith_addi_23]; 
            double memref_load_101 = func_arg_5[arith_addi_20][arith_addi_95]; 
            double arith_mulf_102 = (memref_load_100 * memref_load_101); 
            double memref_load_103 = memref_alloca_16[0]; 
            double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
            memref_alloca_16[0] = arith_addf_104; 
          }
          double memref_load_105 = func_arg_4[arith_addi_20][arith_addi_23]; 
          double arith_mulf_106 = (func_arg_3 * memref_load_105); 
          double memref_load_107 = func_arg_6[arith_addi_20][arith_addi_23]; 
          double arith_mulf_108 = (func_arg_2 * memref_load_107); 
          double arith_mulf_109 = (arith_mulf_108 * memref_load_21); 
          double arith_addf_110 = (arith_mulf_106 + arith_mulf_109); 
          double memref_load_111 = memref_alloca_16[0]; 
          double arith_mulf_112 = (func_arg_2 * memref_load_111); 
          double arith_addf_113 = (arith_addf_110 + arith_mulf_112); 
          func_arg_4[arith_addi_20][arith_addi_23] = arith_addf_113; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
