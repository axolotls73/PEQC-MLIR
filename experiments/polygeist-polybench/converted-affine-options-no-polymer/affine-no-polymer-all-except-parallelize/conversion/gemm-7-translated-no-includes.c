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
      for (int for_iter_35 = arith_const_14; for_iter_35 < arith_const_8; for_iter_35 += arith_const_16) {
        double memref_load_36 = func_arg_6[arith_addi_19][for_iter_35]; 
        double arith_mulf_37 = (func_arg_3 * memref_load_36); 
        double memref_load_38 = func_arg_6[arith_addi_19][for_iter_35]; 
        double arith_mulf_39 = (func_arg_3 * memref_load_38); 
        double memref_load_40 = func_arg_6[arith_addi_19][for_iter_35]; 
        double arith_mulf_41 = (func_arg_3 * memref_load_40); 
        double memref_load_42 = func_arg_6[arith_addi_19][for_iter_35]; 
        double arith_mulf_43 = (func_arg_3 * memref_load_42); 
        for (int for_iter_44 = arith_const_14; for_iter_44 < arith_const_12; for_iter_44 += arith_const_16) {
          int arith_muli_45 = (for_iter_44 * arith_const_11); 
          double memref_load_46 = func_arg_7[for_iter_35][arith_muli_45]; 
          double arith_mulf_47 = (arith_mulf_37 * memref_load_46); 
          double memref_load_48 = func_arg_5[arith_addi_19][arith_muli_45]; 
          double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
          func_arg_5[arith_addi_19][arith_muli_45] = arith_addf_49; 
          int arith_addi_50 = (arith_muli_45 + arith_const_16); 
          double memref_load_51 = func_arg_7[for_iter_35][arith_addi_50]; 
          double arith_mulf_52 = (arith_mulf_39 * memref_load_51); 
          double memref_load_53 = func_arg_5[arith_addi_19][arith_addi_50]; 
          double arith_addf_54 = (memref_load_53 + arith_mulf_52); 
          func_arg_5[arith_addi_19][arith_addi_50] = arith_addf_54; 
          int arith_addi_55 = (arith_muli_45 + arith_const_10); 
          double memref_load_56 = func_arg_7[for_iter_35][arith_addi_55]; 
          double arith_mulf_57 = (arith_mulf_41 * memref_load_56); 
          double memref_load_58 = func_arg_5[arith_addi_19][arith_addi_55]; 
          double arith_addf_59 = (memref_load_58 + arith_mulf_57); 
          func_arg_5[arith_addi_19][arith_addi_55] = arith_addf_59; 
          int arith_addi_60 = (arith_muli_45 + arith_const_9); 
          double memref_load_61 = func_arg_7[for_iter_35][arith_addi_60]; 
          double arith_mulf_62 = (arith_mulf_43 * memref_load_61); 
          double memref_load_63 = func_arg_5[arith_addi_19][arith_addi_60]; 
          double arith_addf_64 = (memref_load_63 + arith_mulf_62); 
          func_arg_5[arith_addi_19][arith_addi_60] = arith_addf_64; 
        }
        double memref_load_65 = func_arg_6[arith_addi_19][for_iter_35]; 
        double arith_mulf_66 = (func_arg_3 * memref_load_65); 
        double memref_load_67 = func_arg_7[for_iter_35][arith_const_13]; 
        double arith_mulf_68 = (arith_mulf_66 * memref_load_67); 
        double memref_load_69 = func_arg_5[arith_addi_19][arith_const_13]; 
        double arith_addf_70 = (memref_load_69 + arith_mulf_68); 
        func_arg_5[arith_addi_19][arith_const_13] = arith_addf_70; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
