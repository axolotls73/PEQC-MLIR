#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  int arith_const_8 = 32; 
  int arith_const_9 = 28; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 1.000000; 
  double* memref_alloc_13; 
  for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_9; for_iter_14 += arith_const_8) {
    int arith_addi_15 = (for_iter_14 + arith_const_9); 
    for (int for_iter_16 = for_iter_14; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_7) {
      func_arg_5[for_iter_16] = arith_const_11; 
      for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_8; for_iter_17 += arith_const_7) {
        double memref_load_18 = func_arg_3[for_iter_17][for_iter_16]; 
        double memref_load_19 = func_arg_5[for_iter_16]; 
        double arith_addf_20 = (memref_load_19 + memref_load_18); 
        func_arg_5[for_iter_16] = arith_addf_20; 
      }
      double memref_load_21 = func_arg_5[for_iter_16]; 
      double arith_divf_22 = (memref_load_21 / func_arg_2); 
      func_arg_5[for_iter_16] = arith_divf_22; 
    }
  }
  for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_8; for_iter_23 += arith_const_8) {
    for (int for_iter_24 = arith_const_10; for_iter_24 < arith_const_9; for_iter_24 += arith_const_8) {
      int arith_addi_25 = (for_iter_23 + arith_const_8); 
      for (int for_iter_26 = for_iter_23; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_7) {
        int arith_addi_27 = (for_iter_24 + arith_const_9); 
        for (int for_iter_28 = for_iter_24; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_7) {
          memref_alloc_13[arith_const_10] = arith_const_11; 
          for (int for_iter_29 = arith_const_10; for_iter_29 < arith_const_8; for_iter_29 += arith_const_7) {
            double memref_load_30 = func_arg_3[for_iter_29][for_iter_28]; 
            double memref_load_31 = memref_alloc_13[arith_const_10]; 
            double arith_addf_32 = (memref_load_31 + memref_load_30); 
            memref_alloc_13[arith_const_10] = arith_addf_32; 
          }
          double memref_load_33 = memref_alloc_13[arith_const_10]; 
          double arith_divf_34 = (memref_load_33 / func_arg_2); 
          memref_alloc_13[arith_const_10] = arith_divf_34; 
          double memref_load_35 = memref_alloc_13[arith_const_10]; 
          double memref_load_36 = func_arg_3[for_iter_26][for_iter_28]; 
          double arith_subf_37 = (memref_load_36 - memref_load_35); 
          func_arg_3[for_iter_26][for_iter_28] = arith_subf_37; 
        }
      }
    }
  }
  double arith_subf_38 = (func_arg_2 - arith_const_12); 
  for (int for_iter_39 = arith_const_10; for_iter_39 < arith_const_9; for_iter_39 += arith_const_7) {
    int arith_muli_40 = (for_iter_39 * arith_const_6); 
    int arith_addi_41 = (arith_muli_40 + arith_const_9); 
    for (int for_iter_42 = arith_const_10; for_iter_42 < arith_addi_41; for_iter_42 += arith_const_7) {
      int arith_addi_43 = (for_iter_39 + for_iter_42); 
      func_arg_4[for_iter_39][arith_addi_43] = arith_const_11; 
      for (int for_iter_44 = arith_const_10; for_iter_44 < arith_const_8; for_iter_44 += arith_const_7) {
        double memref_load_45 = func_arg_3[for_iter_44][for_iter_39]; 
        int arith_addi_46 = (for_iter_39 + for_iter_42); 
        double memref_load_47 = func_arg_3[for_iter_44][arith_addi_46]; 
        double arith_mulf_48 = (memref_load_45 * memref_load_47); 
        int arith_addi_49 = (for_iter_39 + for_iter_42); 
        double memref_load_50 = func_arg_4[for_iter_39][arith_addi_49]; 
        double arith_addf_51 = (memref_load_50 + arith_mulf_48); 
        int arith_addi_52 = (for_iter_39 + for_iter_42); 
        func_arg_4[for_iter_39][arith_addi_52] = arith_addf_51; 
      }
      int arith_addi_53 = (for_iter_39 + for_iter_42); 
      double memref_load_54 = func_arg_4[for_iter_39][arith_addi_53]; 
      double arith_divf_55 = (memref_load_54 / arith_subf_38); 
      int arith_addi_56 = (for_iter_39 + for_iter_42); 
      func_arg_4[for_iter_39][arith_addi_56] = arith_divf_55; 
      int arith_addi_57 = (for_iter_39 + for_iter_42); 
      func_arg_4[arith_addi_57][for_iter_39] = arith_divf_55; 
    }
  }
  return; 

}
#pragma pocc-region-end
