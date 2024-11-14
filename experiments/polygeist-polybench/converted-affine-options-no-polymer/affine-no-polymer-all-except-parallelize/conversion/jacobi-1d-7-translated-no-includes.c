#pragma pocc-region-start
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 7; 
  int arith_const_9 = 20; 
  double arith_const_10 = 0.333330; 
  int arith_const_11 = 0; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_11; for_iter_13 < arith_const_12; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_9; for_iter_14 += arith_const_12) {
      for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_8; for_iter_15 += arith_const_12) {
        int arith_muli_16 = (for_iter_15 * arith_const_7); 
        int arith_addi_17 = (arith_muli_16 + arith_const_12); 
        int arith_addi_18 = (arith_addi_17 + arith_const_6); 
        double memref_load_19 = func_arg_2[arith_addi_18]; 
        double memref_load_20 = func_arg_2[arith_addi_17]; 
        double arith_addf_21 = (memref_load_19 + memref_load_20); 
        int arith_addi_22 = (arith_addi_17 + arith_const_12); 
        double memref_load_23 = func_arg_2[arith_addi_22]; 
        double arith_addf_24 = (arith_addf_21 + memref_load_23); 
        double arith_mulf_25 = (arith_addf_24 * arith_const_10); 
        func_arg_3[arith_addi_17] = arith_mulf_25; 
        int arith_addi_26 = (arith_addi_17 + arith_const_12); 
        int arith_addi_27 = (arith_addi_26 + arith_const_6); 
        double memref_load_28 = func_arg_2[arith_addi_27]; 
        double memref_load_29 = func_arg_2[arith_addi_26]; 
        double arith_addf_30 = (memref_load_28 + memref_load_29); 
        int arith_addi_31 = (arith_addi_26 + arith_const_12); 
        double memref_load_32 = func_arg_2[arith_addi_31]; 
        double arith_addf_33 = (arith_addf_30 + memref_load_32); 
        double arith_mulf_34 = (arith_addf_33 * arith_const_10); 
        func_arg_3[arith_addi_26] = arith_mulf_34; 
        int arith_addi_35 = (arith_addi_17 + arith_const_5); 
        int arith_addi_36 = (arith_addi_35 + arith_const_6); 
        double memref_load_37 = func_arg_2[arith_addi_36]; 
        double memref_load_38 = func_arg_2[arith_addi_35]; 
        double arith_addf_39 = (memref_load_37 + memref_load_38); 
        int arith_addi_40 = (arith_addi_35 + arith_const_12); 
        double memref_load_41 = func_arg_2[arith_addi_40]; 
        double arith_addf_42 = (arith_addf_39 + memref_load_41); 
        double arith_mulf_43 = (arith_addf_42 * arith_const_10); 
        func_arg_3[arith_addi_35] = arith_mulf_43; 
        int arith_addi_44 = (arith_addi_17 + arith_const_4); 
        int arith_addi_45 = (arith_addi_44 + arith_const_6); 
        double memref_load_46 = func_arg_2[arith_addi_45]; 
        double memref_load_47 = func_arg_2[arith_addi_44]; 
        double arith_addf_48 = (memref_load_46 + memref_load_47); 
        int arith_addi_49 = (arith_addi_44 + arith_const_12); 
        double memref_load_50 = func_arg_2[arith_addi_49]; 
        double arith_addf_51 = (arith_addf_48 + memref_load_50); 
        double arith_mulf_52 = (arith_addf_51 * arith_const_10); 
        func_arg_3[arith_addi_44] = arith_mulf_52; 
      }
      for (int for_iter_53 = arith_const_11; for_iter_53 < arith_const_8; for_iter_53 += arith_const_12) {
        int arith_muli_54 = (for_iter_53 * arith_const_7); 
        int arith_addi_55 = (arith_muli_54 + arith_const_12); 
        int arith_addi_56 = (arith_addi_55 + arith_const_6); 
        double memref_load_57 = func_arg_3[arith_addi_56]; 
        double memref_load_58 = func_arg_3[arith_addi_55]; 
        double arith_addf_59 = (memref_load_57 + memref_load_58); 
        int arith_addi_60 = (arith_addi_55 + arith_const_12); 
        double memref_load_61 = func_arg_3[arith_addi_60]; 
        double arith_addf_62 = (arith_addf_59 + memref_load_61); 
        double arith_mulf_63 = (arith_addf_62 * arith_const_10); 
        func_arg_2[arith_addi_55] = arith_mulf_63; 
        int arith_addi_64 = (arith_addi_55 + arith_const_12); 
        int arith_addi_65 = (arith_addi_64 + arith_const_6); 
        double memref_load_66 = func_arg_3[arith_addi_65]; 
        double memref_load_67 = func_arg_3[arith_addi_64]; 
        double arith_addf_68 = (memref_load_66 + memref_load_67); 
        int arith_addi_69 = (arith_addi_64 + arith_const_12); 
        double memref_load_70 = func_arg_3[arith_addi_69]; 
        double arith_addf_71 = (arith_addf_68 + memref_load_70); 
        double arith_mulf_72 = (arith_addf_71 * arith_const_10); 
        func_arg_2[arith_addi_64] = arith_mulf_72; 
        int arith_addi_73 = (arith_addi_55 + arith_const_5); 
        int arith_addi_74 = (arith_addi_73 + arith_const_6); 
        double memref_load_75 = func_arg_3[arith_addi_74]; 
        double memref_load_76 = func_arg_3[arith_addi_73]; 
        double arith_addf_77 = (memref_load_75 + memref_load_76); 
        int arith_addi_78 = (arith_addi_73 + arith_const_12); 
        double memref_load_79 = func_arg_3[arith_addi_78]; 
        double arith_addf_80 = (arith_addf_77 + memref_load_79); 
        double arith_mulf_81 = (arith_addf_80 * arith_const_10); 
        func_arg_2[arith_addi_73] = arith_mulf_81; 
        int arith_addi_82 = (arith_addi_55 + arith_const_4); 
        int arith_addi_83 = (arith_addi_82 + arith_const_6); 
        double memref_load_84 = func_arg_3[arith_addi_83]; 
        double memref_load_85 = func_arg_3[arith_addi_82]; 
        double arith_addf_86 = (memref_load_84 + memref_load_85); 
        int arith_addi_87 = (arith_addi_82 + arith_const_12); 
        double memref_load_88 = func_arg_3[arith_addi_87]; 
        double arith_addf_89 = (arith_addf_86 + memref_load_88); 
        double arith_mulf_90 = (arith_addf_89 * arith_const_10); 
        func_arg_2[arith_addi_82] = arith_mulf_90; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
