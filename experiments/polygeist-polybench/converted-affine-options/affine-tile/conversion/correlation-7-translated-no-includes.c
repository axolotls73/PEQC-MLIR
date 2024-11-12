#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 28; 
  int arith_const_9 = 1; 
  int arith_const_10 = 0; 
  int arith_const_11 = 27; 
  double arith_const_12 = 0.100000; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 1.000000; 
  double* memref_alloca_15; 
  func_arg_4[arith_const_11][arith_const_11] = arith_const_14; 
  for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_11; for_iter_16 += arith_const_9) {
    int arith_addi_17 = (for_iter_16 + arith_const_9); 
    for (int for_iter_18 = arith_addi_17; for_iter_18 < arith_const_8; for_iter_18 += arith_const_9) {
      func_arg_4[for_iter_16][for_iter_18] = arith_const_13; 
    }
  }
  for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_11; for_iter_19 += arith_const_7) {
    int arith_addi_20 = (for_iter_19 + arith_const_11); 
    for (int for_iter_21 = for_iter_19; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_9) {
      func_arg_4[for_iter_21][for_iter_21] = arith_const_14; 
    }
  }
  double math_sqrt_22 = sqrt(func_arg_2); 
  memref_alloca_15[arith_const_10] = math_sqrt_22; 
  for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_8; for_iter_23 += arith_const_7) {
    int arith_addi_24 = (for_iter_23 + arith_const_8); 
    for (int for_iter_25 = for_iter_23; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_9) {
      func_arg_6[for_iter_25] = arith_const_13; 
      func_arg_5[for_iter_25] = arith_const_13; 
    }
  }
  for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_7; for_iter_26 += arith_const_7) {
    for (int for_iter_27 = arith_const_10; for_iter_27 < arith_const_8; for_iter_27 += arith_const_7) {
      int arith_addi_28 = (for_iter_26 + arith_const_7); 
      for (int for_iter_29 = for_iter_26; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_9) {
        int arith_addi_30 = (for_iter_27 + arith_const_8); 
        for (int for_iter_31 = for_iter_27; for_iter_31 < arith_addi_30; for_iter_31 += arith_const_9) {
          double memref_load_32 = func_arg_5[for_iter_31]; 
          double memref_load_33 = func_arg_3[for_iter_29][for_iter_31]; 
          double arith_addf_34 = (memref_load_32 + memref_load_33); 
          func_arg_5[for_iter_31] = arith_addf_34; 
        }
      }
    }
  }
  for (int for_iter_35 = arith_const_10; for_iter_35 < arith_const_8; for_iter_35 += arith_const_7) {
    int arith_addi_36 = (for_iter_35 + arith_const_8); 
    for (int for_iter_37 = for_iter_35; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_9) {
      double memref_load_38 = func_arg_5[for_iter_37]; 
      double arith_divf_39 = (memref_load_38 / func_arg_2); 
      func_arg_5[for_iter_37] = arith_divf_39; 
    }
  }
  for (int for_iter_40 = arith_const_10; for_iter_40 < arith_const_7; for_iter_40 += arith_const_7) {
    for (int for_iter_41 = arith_const_10; for_iter_41 < arith_const_8; for_iter_41 += arith_const_7) {
      int arith_addi_42 = (for_iter_40 + arith_const_7); 
      for (int for_iter_43 = for_iter_40; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_9) {
        int arith_addi_44 = (for_iter_41 + arith_const_8); 
        for (int for_iter_45 = for_iter_41; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_9) {
          double memref_load_46 = func_arg_6[for_iter_45]; 
          double memref_load_47 = func_arg_3[for_iter_43][for_iter_45]; 
          double memref_load_48 = func_arg_5[for_iter_45]; 
          double arith_subf_49 = (memref_load_47 - memref_load_48); 
          double arith_mulf_50 = (arith_subf_49 * arith_subf_49); 
          double arith_addf_51 = (memref_load_46 + arith_mulf_50); 
          func_arg_6[for_iter_45] = arith_addf_51; 
          double memref_load_52 = func_arg_3[for_iter_43][for_iter_45]; 
          double memref_load_53 = func_arg_5[for_iter_45]; 
          double arith_subf_54 = (memref_load_52 - memref_load_53); 
          func_arg_3[for_iter_43][for_iter_45] = arith_subf_54; 
        }
      }
    }
  }
  for (int for_iter_55 = arith_const_10; for_iter_55 < arith_const_8; for_iter_55 += arith_const_7) {
    int arith_addi_56 = (for_iter_55 + arith_const_8); 
    for (int for_iter_57 = for_iter_55; for_iter_57 < arith_addi_56; for_iter_57 += arith_const_9) {
      double memref_load_58 = func_arg_6[for_iter_57]; 
      double arith_divf_59 = (memref_load_58 / func_arg_2); 
      double math_sqrt_60 = sqrt(arith_divf_59); 
      int arith_cmpi_61 = (math_sqrt_60 <= arith_const_12); 
      double arith_select_62 = (arith_cmpi_61 ? arith_const_14 : math_sqrt_60); 
      func_arg_6[for_iter_57] = arith_select_62; 
    }
  }
  for (int for_iter_63 = arith_const_10; for_iter_63 < arith_const_7; for_iter_63 += arith_const_7) {
    for (int for_iter_64 = arith_const_10; for_iter_64 < arith_const_8; for_iter_64 += arith_const_7) {
      int arith_addi_65 = (for_iter_63 + arith_const_7); 
      for (int for_iter_66 = for_iter_63; for_iter_66 < arith_addi_65; for_iter_66 += arith_const_9) {
        int arith_addi_67 = (for_iter_64 + arith_const_8); 
        for (int for_iter_68 = for_iter_64; for_iter_68 < arith_addi_67; for_iter_68 += arith_const_9) {
          double memref_load_69 = func_arg_3[for_iter_66][for_iter_68]; 
          double memref_load_70 = memref_alloca_15[arith_const_10]; 
          double memref_load_71 = func_arg_6[for_iter_68]; 
          double arith_mulf_72 = (memref_load_70 * memref_load_71); 
          double arith_divf_73 = (memref_load_69 / arith_mulf_72); 
          func_arg_3[for_iter_66][for_iter_68] = arith_divf_73; 
        }
      }
    }
  }
  for (int for_iter_74 = arith_const_10; for_iter_74 < arith_const_11; for_iter_74 += arith_const_9) {
    for (int for_iter_75 = arith_const_10; for_iter_75 < arith_const_7; for_iter_75 += arith_const_9) {
      int arith_addi_76 = (for_iter_74 + arith_const_9); 
      for (int for_iter_77 = arith_addi_76; for_iter_77 < arith_const_8; for_iter_77 += arith_const_9) {
        double memref_load_78 = func_arg_4[for_iter_74][for_iter_77]; 
        double memref_load_79 = func_arg_3[for_iter_75][for_iter_74]; 
        double memref_load_80 = func_arg_3[for_iter_75][for_iter_77]; 
        double arith_mulf_81 = (memref_load_79 * memref_load_80); 
        double arith_addf_82 = (memref_load_78 + arith_mulf_81); 
        func_arg_4[for_iter_74][for_iter_77] = arith_addf_82; 
      }
    }
  }
  for (int for_iter_83 = arith_const_10; for_iter_83 < arith_const_11; for_iter_83 += arith_const_9) {
    int arith_addi_84 = (for_iter_83 + arith_const_9); 
    for (int for_iter_85 = arith_addi_84; for_iter_85 < arith_const_8; for_iter_85 += arith_const_9) {
      double memref_load_86 = func_arg_4[for_iter_83][for_iter_85]; 
      func_arg_4[for_iter_85][for_iter_83] = memref_load_86; 
    }
  }
  return; 

}
#pragma pocc-region-end
