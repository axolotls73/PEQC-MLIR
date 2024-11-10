#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 45; 
  int arith_const_12 = -1; 
  int arith_const_13 = -21; 
  int arith_const_14 = 21; 
  int arith_const_15 = 22; 
  int arith_const_16 = 2; 
  int arith_const_17 = 24; 
  int arith_const_18 = 18; 
  int arith_const_19 = 1; 
  double arith_const_20 = 0.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 16; 
  int arith_const_23 = 32; 
  for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_22; for_iter_24 += arith_const_23) {
    int arith_addi_25 = (for_iter_24 + arith_const_22); 
    for (int for_iter_26 = for_iter_24; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_19) {
      for (int for_iter_27 = arith_const_21; for_iter_27 < arith_const_18; for_iter_27 += arith_const_19) {
        double memref_load_28 = func_arg_10[for_iter_26][for_iter_27]; 
        double arith_mulf_29 = (memref_load_28 * func_arg_5); 
        func_arg_10[for_iter_26][for_iter_27] = arith_mulf_29; 
        func_arg_6[for_iter_26][for_iter_27] = arith_const_20; 
      }
      for (int for_iter_30 = arith_const_18; for_iter_30 < arith_const_17; for_iter_30 += arith_const_19) {
        double memref_load_31 = func_arg_10[for_iter_26][for_iter_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_5); 
        func_arg_10[for_iter_26][for_iter_30] = arith_mulf_32; 
      }
    }
  }
  for (int for_iter_33 = arith_const_21; for_iter_33 < arith_const_16; for_iter_33 += arith_const_23) {
    int arith_addi_34 = (for_iter_33 + arith_const_16); 
    for (int for_iter_35 = for_iter_33; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_19) {
      int arith_cmpi_36 = (for_iter_35 == arith_const_21); 
      if (arith_cmpi_36) {
        for (int for_iter_37 = arith_const_21; for_iter_37 < arith_const_22; for_iter_37 += arith_const_19) {
          for (int for_iter_38 = arith_const_21; for_iter_38 < arith_const_18; for_iter_38 += arith_const_19) {
            for (int for_iter_39 = arith_const_21; for_iter_39 < arith_const_15; for_iter_39 += arith_const_19) {
              double memref_load_40 = func_arg_6[for_iter_37][for_iter_38]; 
              double memref_load_41 = func_arg_7[for_iter_37][for_iter_39]; 
              double arith_mulf_42 = (func_arg_4 * memref_load_41); 
              double memref_load_43 = func_arg_8[for_iter_39][for_iter_38]; 
              double arith_mulf_44 = (arith_mulf_42 * memref_load_43); 
              double arith_addf_45 = (memref_load_40 + arith_mulf_44); 
              func_arg_6[for_iter_37][for_iter_38] = arith_addf_45; 
            }
            for (int for_iter_46 = arith_const_14; for_iter_46 < arith_const_23; for_iter_46 += arith_const_19) {
              int arith_addi_47 = (for_iter_46 + arith_const_13); 
              double memref_load_48 = func_arg_10[for_iter_37][arith_addi_47]; 
              double memref_load_49 = func_arg_6[for_iter_37][for_iter_38]; 
              int arith_addi_50 = (for_iter_46 + arith_const_13); 
              double memref_load_51 = func_arg_9[for_iter_38][arith_addi_50]; 
              double arith_mulf_52 = (memref_load_49 * memref_load_51); 
              double arith_addf_53 = (memref_load_48 + arith_mulf_52); 
              int arith_addi_54 = (for_iter_46 + arith_const_13); 
              func_arg_10[for_iter_37][arith_addi_54] = arith_addf_53; 
            }
          }
        }
      }
      int arith_addi_55 = (for_iter_35 + arith_const_12); 
      int arith_cmpi_56 = (arith_addi_55 == arith_const_21); 
      if (arith_cmpi_56) {
        for (int for_iter_57 = arith_const_21; for_iter_57 < arith_const_22; for_iter_57 += arith_const_19) {
          for (int for_iter_58 = arith_const_21; for_iter_58 < arith_const_18; for_iter_58 += arith_const_19) {
            for (int for_iter_59 = arith_const_23; for_iter_59 < arith_const_11; for_iter_59 += arith_const_19) {
              int arith_addi_60 = (for_iter_59 + arith_const_13); 
              double memref_load_61 = func_arg_10[for_iter_57][arith_addi_60]; 
              double memref_load_62 = func_arg_6[for_iter_57][for_iter_58]; 
              int arith_addi_63 = (for_iter_59 + arith_const_13); 
              double memref_load_64 = func_arg_9[for_iter_58][arith_addi_63]; 
              double arith_mulf_65 = (memref_load_62 * memref_load_64); 
              double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
              int arith_addi_67 = (for_iter_59 + arith_const_13); 
              func_arg_10[for_iter_57][arith_addi_67] = arith_addf_66; 
            }
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
