#pragma pocc-region-start
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 3; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  int arith_const_15 = 0; 
  int arith_const_16 = 40; 
  int arith_const_17 = 4; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_14) {
      double memref_load_20 = func_arg_3[for_iter_18][for_iter_19]; 
      double memref_load_21 = func_arg_4[for_iter_18]; 
      double memref_load_22 = func_arg_5[for_iter_19]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double arith_addf_24 = (memref_load_20 + arith_mulf_23); 
      double memref_load_25 = func_arg_6[for_iter_18]; 
      double memref_load_26 = func_arg_7[for_iter_19]; 
      double arith_mulf_27 = (memref_load_25 * memref_load_26); 
      double arith_addf_28 = (arith_addf_24 + arith_mulf_27); 
      func_arg_3[for_iter_18][for_iter_19] = arith_addf_28; 
      int arith_addi_29 = (for_iter_18 + arith_const_14); 
      double memref_load_30 = func_arg_3[arith_addi_29][for_iter_19]; 
      double memref_load_31 = func_arg_4[arith_addi_29]; 
      double memref_load_32 = func_arg_5[for_iter_19]; 
      double arith_mulf_33 = (memref_load_31 * memref_load_32); 
      double arith_addf_34 = (memref_load_30 + arith_mulf_33); 
      double memref_load_35 = func_arg_6[arith_addi_29]; 
      double memref_load_36 = func_arg_7[for_iter_19]; 
      double arith_mulf_37 = (memref_load_35 * memref_load_36); 
      double arith_addf_38 = (arith_addf_34 + arith_mulf_37); 
      func_arg_3[arith_addi_29][for_iter_19] = arith_addf_38; 
      int arith_addi_39 = (for_iter_18 + arith_const_13); 
      double memref_load_40 = func_arg_3[arith_addi_39][for_iter_19]; 
      double memref_load_41 = func_arg_4[arith_addi_39]; 
      double memref_load_42 = func_arg_5[for_iter_19]; 
      double arith_mulf_43 = (memref_load_41 * memref_load_42); 
      double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
      double memref_load_45 = func_arg_6[arith_addi_39]; 
      double memref_load_46 = func_arg_7[for_iter_19]; 
      double arith_mulf_47 = (memref_load_45 * memref_load_46); 
      double arith_addf_48 = (arith_addf_44 + arith_mulf_47); 
      func_arg_3[arith_addi_39][for_iter_19] = arith_addf_48; 
      int arith_addi_49 = (for_iter_18 + arith_const_12); 
      double memref_load_50 = func_arg_3[arith_addi_49][for_iter_19]; 
      double memref_load_51 = func_arg_4[arith_addi_49]; 
      double memref_load_52 = func_arg_5[for_iter_19]; 
      double arith_mulf_53 = (memref_load_51 * memref_load_52); 
      double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
      double memref_load_55 = func_arg_6[arith_addi_49]; 
      double memref_load_56 = func_arg_7[for_iter_19]; 
      double arith_mulf_57 = (memref_load_55 * memref_load_56); 
      double arith_addf_58 = (arith_addf_54 + arith_mulf_57); 
      func_arg_3[arith_addi_49][for_iter_19] = arith_addf_58; 
    }
  }
  for (int for_iter_59 = arith_const_15; for_iter_59 < arith_const_16; for_iter_59 += arith_const_14) {
    for (int for_iter_60 = arith_const_15; for_iter_60 < arith_const_16; for_iter_60 += arith_const_14) {
      double memref_load_61 = func_arg_9[for_iter_59]; 
      double memref_load_62 = func_arg_3[for_iter_60][for_iter_59]; 
      double arith_mulf_63 = (func_arg_2 * memref_load_62); 
      double memref_load_64 = func_arg_10[for_iter_60]; 
      double arith_mulf_65 = (arith_mulf_63 * memref_load_64); 
      double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
      func_arg_9[for_iter_59] = arith_addf_66; 
    }
  }
  for (int for_iter_67 = arith_const_15; for_iter_67 < arith_const_16; for_iter_67 += arith_const_14) {
    double memref_load_68 = func_arg_9[for_iter_67]; 
    double memref_load_69 = func_arg_11[for_iter_67]; 
    double arith_addf_70 = (memref_load_68 + memref_load_69); 
    func_arg_9[for_iter_67] = arith_addf_70; 
  }
  for (int for_iter_71 = arith_const_15; for_iter_71 < arith_const_16; for_iter_71 += arith_const_14) {
    for (int for_iter_72 = arith_const_15; for_iter_72 < arith_const_16; for_iter_72 += arith_const_14) {
      double memref_load_73 = func_arg_8[for_iter_71]; 
      double memref_load_74 = func_arg_3[for_iter_71][for_iter_72]; 
      double arith_mulf_75 = (func_arg_1 * memref_load_74); 
      double memref_load_76 = func_arg_9[for_iter_72]; 
      double arith_mulf_77 = (arith_mulf_75 * memref_load_76); 
      double arith_addf_78 = (memref_load_73 + arith_mulf_77); 
      func_arg_8[for_iter_71] = arith_addf_78; 
    }
  }
  return; 

}
#pragma pocc-region-end
