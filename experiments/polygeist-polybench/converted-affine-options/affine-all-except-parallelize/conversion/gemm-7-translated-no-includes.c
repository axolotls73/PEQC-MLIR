#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 24; 
  int arith_const_14 = 0; 
  int arith_const_15 = 20; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_16; for_iter_18 += arith_const_16) {
      int arith_addi_19 = (for_iter_17 + for_iter_18); 
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_12; for_iter_20 += arith_const_16) {
        int arith_muli_21 = (for_iter_20 * arith_const_11); 
        double memref_load_22 = func_arg_5[arith_addi_19][arith_muli_21]; 
        double arith_mulf_23 = (memref_load_22 * func_arg_4); 
        func_arg_5[arith_addi_19][arith_muli_21] = arith_mulf_23; 
        int arith_addi_24 = (arith_muli_21 + arith_const_16); 
        double memref_load_25 = func_arg_5[arith_addi_19][arith_addi_24]; 
        double arith_mulf_26 = (memref_load_25 * func_arg_4); 
        func_arg_5[arith_addi_19][arith_addi_24] = arith_mulf_26; 
        int arith_addi_27 = (arith_muli_21 + arith_const_10); 
        double memref_load_28 = func_arg_5[arith_addi_19][arith_addi_27]; 
        double arith_mulf_29 = (memref_load_28 * func_arg_4); 
        func_arg_5[arith_addi_19][arith_addi_27] = arith_mulf_29; 
        int arith_addi_30 = (arith_muli_21 + arith_const_9); 
        double memref_load_31 = func_arg_5[arith_addi_19][arith_addi_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_4); 
        func_arg_5[arith_addi_19][arith_addi_30] = arith_mulf_32; 
      }
      double memref_load_33 = func_arg_5[arith_addi_19][arith_const_13]; 
      double arith_mulf_34 = (memref_load_33 * func_arg_4); 
      func_arg_5[arith_addi_19][arith_const_13] = arith_mulf_34; 
    }
  }
  for (int for_iter_35 = arith_const_14; for_iter_35 < arith_const_15; for_iter_35 += arith_const_16) {
    for (int for_iter_36 = arith_const_14; for_iter_36 < arith_const_16; for_iter_36 += arith_const_16) {
      int arith_addi_37 = (for_iter_35 + for_iter_36); 
      for (int for_iter_38 = arith_const_14; for_iter_38 < arith_const_8; for_iter_38 += arith_const_16) {
        for (int for_iter_39 = arith_const_14; for_iter_39 < arith_const_16; for_iter_39 += arith_const_16) {
          int arith_addi_40 = (for_iter_38 + for_iter_39); 
          double memref_load_41 = func_arg_6[arith_addi_37][arith_addi_40]; 
          double arith_mulf_42 = (func_arg_3 * memref_load_41); 
          double memref_load_43 = func_arg_6[arith_addi_37][arith_addi_40]; 
          double arith_mulf_44 = (func_arg_3 * memref_load_43); 
          double memref_load_45 = func_arg_6[arith_addi_37][arith_addi_40]; 
          double arith_mulf_46 = (func_arg_3 * memref_load_45); 
          double memref_load_47 = func_arg_6[arith_addi_37][arith_addi_40]; 
          double arith_mulf_48 = (func_arg_3 * memref_load_47); 
          for (int for_iter_49 = arith_const_14; for_iter_49 < arith_const_12; for_iter_49 += arith_const_16) {
            int arith_muli_50 = (for_iter_49 * arith_const_11); 
            double memref_load_51 = func_arg_5[arith_addi_37][arith_muli_50]; 
            double memref_load_52 = func_arg_7[arith_addi_40][arith_muli_50]; 
            double arith_mulf_53 = (arith_mulf_42 * memref_load_52); 
            double arith_addf_54 = (memref_load_51 + arith_mulf_53); 
            func_arg_5[arith_addi_37][arith_muli_50] = arith_addf_54; 
            int arith_addi_55 = (arith_muli_50 + arith_const_16); 
            double memref_load_56 = func_arg_5[arith_addi_37][arith_addi_55]; 
            double memref_load_57 = func_arg_7[arith_addi_40][arith_addi_55]; 
            double arith_mulf_58 = (arith_mulf_44 * memref_load_57); 
            double arith_addf_59 = (memref_load_56 + arith_mulf_58); 
            func_arg_5[arith_addi_37][arith_addi_55] = arith_addf_59; 
            int arith_addi_60 = (arith_muli_50 + arith_const_10); 
            double memref_load_61 = func_arg_5[arith_addi_37][arith_addi_60]; 
            double memref_load_62 = func_arg_7[arith_addi_40][arith_addi_60]; 
            double arith_mulf_63 = (arith_mulf_46 * memref_load_62); 
            double arith_addf_64 = (memref_load_61 + arith_mulf_63); 
            func_arg_5[arith_addi_37][arith_addi_60] = arith_addf_64; 
            int arith_addi_65 = (arith_muli_50 + arith_const_9); 
            double memref_load_66 = func_arg_5[arith_addi_37][arith_addi_65]; 
            double memref_load_67 = func_arg_7[arith_addi_40][arith_addi_65]; 
            double arith_mulf_68 = (arith_mulf_48 * memref_load_67); 
            double arith_addf_69 = (memref_load_66 + arith_mulf_68); 
            func_arg_5[arith_addi_37][arith_addi_65] = arith_addf_69; 
          }
          double memref_load_70 = func_arg_5[arith_addi_37][arith_const_13]; 
          double memref_load_71 = func_arg_6[arith_addi_37][arith_addi_40]; 
          double arith_mulf_72 = (func_arg_3 * memref_load_71); 
          double memref_load_73 = func_arg_7[arith_addi_40][arith_const_13]; 
          double arith_mulf_74 = (arith_mulf_72 * memref_load_73); 
          double arith_addf_75 = (memref_load_70 + arith_mulf_74); 
          func_arg_5[arith_addi_37][arith_const_13] = arith_addf_75; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
