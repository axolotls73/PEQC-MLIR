#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 32; 
  int arith_const_7 = 28; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 7; 
  int arith_const_12 = -1; 
  int arith_const_13 = 0; 
  int arith_const_14 = 19; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_12); 
    int arith_addi_18 = (arith_muli_17 + arith_const_14); 
    for (int for_iter_19 = arith_const_13; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_15) {
      int arith_addi_20 = (for_iter_16 + for_iter_19); 
      int arith_addi_21 = (arith_addi_20 + arith_const_15); 
      double memref_load_22 = func_arg_3[arith_addi_21][for_iter_16]; 
      double memref_load_23 = func_arg_3[arith_addi_21][for_iter_16]; 
      double memref_load_24 = func_arg_3[arith_addi_21][for_iter_16]; 
      double memref_load_25 = func_arg_3[arith_addi_21][for_iter_16]; 
      for (int for_iter_26 = arith_const_13; for_iter_26 < arith_const_11; for_iter_26 += arith_const_15) {
        int arith_muli_27 = (for_iter_26 * arith_const_10); 
        double memref_load_28 = func_arg_4[for_iter_16][arith_muli_27]; 
        double memref_load_29 = func_arg_4[arith_addi_21][arith_muli_27]; 
        double arith_mulf_30 = (memref_load_22 * memref_load_29); 
        double arith_addf_31 = (memref_load_28 + arith_mulf_30); 
        func_arg_4[for_iter_16][arith_muli_27] = arith_addf_31; 
        int arith_addi_32 = (arith_muli_27 + arith_const_15); 
        double memref_load_33 = func_arg_4[for_iter_16][arith_addi_32]; 
        double memref_load_34 = func_arg_4[arith_addi_21][arith_addi_32]; 
        double arith_mulf_35 = (memref_load_23 * memref_load_34); 
        double arith_addf_36 = (memref_load_33 + arith_mulf_35); 
        func_arg_4[for_iter_16][arith_addi_32] = arith_addf_36; 
        int arith_addi_37 = (arith_muli_27 + arith_const_9); 
        double memref_load_38 = func_arg_4[for_iter_16][arith_addi_37]; 
        double memref_load_39 = func_arg_4[arith_addi_21][arith_addi_37]; 
        double arith_mulf_40 = (memref_load_24 * memref_load_39); 
        double arith_addf_41 = (memref_load_38 + arith_mulf_40); 
        func_arg_4[for_iter_16][arith_addi_37] = arith_addf_41; 
        int arith_addi_42 = (arith_muli_27 + arith_const_8); 
        double memref_load_43 = func_arg_4[for_iter_16][arith_addi_42]; 
        double memref_load_44 = func_arg_4[arith_addi_21][arith_addi_42]; 
        double arith_mulf_45 = (memref_load_25 * memref_load_44); 
        double arith_addf_46 = (memref_load_43 + arith_mulf_45); 
        func_arg_4[for_iter_16][arith_addi_42] = arith_addf_46; 
      }
      double memref_load_47 = func_arg_3[arith_addi_21][for_iter_16]; 
      for (int for_iter_48 = arith_const_13; for_iter_48 < arith_const_9; for_iter_48 += arith_const_15) {
        int arith_addi_49 = (for_iter_48 + arith_const_7); 
        double memref_load_50 = func_arg_4[for_iter_16][arith_addi_49]; 
        double memref_load_51 = func_arg_4[arith_addi_21][arith_addi_49]; 
        double arith_mulf_52 = (memref_load_47 * memref_load_51); 
        double arith_addf_53 = (memref_load_50 + arith_mulf_52); 
        func_arg_4[for_iter_16][arith_addi_49] = arith_addf_53; 
      }
    }
  }
  for (int for_iter_54 = arith_const_13; for_iter_54 < arith_const_15; for_iter_54 += arith_const_15) {
    int arith_muli_55 = (for_iter_54 * arith_const_6); 
    for (int for_iter_56 = arith_const_13; for_iter_56 < arith_const_5; for_iter_56 += arith_const_15) {
      int arith_addi_57 = (arith_muli_55 + for_iter_56); 
      for (int for_iter_58 = arith_const_13; for_iter_58 < arith_const_11; for_iter_58 += arith_const_15) {
        int arith_muli_59 = (for_iter_58 * arith_const_10); 
        double memref_load_60 = func_arg_4[arith_addi_57][arith_muli_59]; 
        double arith_mulf_61 = (func_arg_2 * memref_load_60); 
        func_arg_4[arith_addi_57][arith_muli_59] = arith_mulf_61; 
        int arith_addi_62 = (arith_muli_59 + arith_const_15); 
        double memref_load_63 = func_arg_4[arith_addi_57][arith_addi_62]; 
        double arith_mulf_64 = (func_arg_2 * memref_load_63); 
        func_arg_4[arith_addi_57][arith_addi_62] = arith_mulf_64; 
        int arith_addi_65 = (arith_muli_59 + arith_const_9); 
        double memref_load_66 = func_arg_4[arith_addi_57][arith_addi_65]; 
        double arith_mulf_67 = (func_arg_2 * memref_load_66); 
        func_arg_4[arith_addi_57][arith_addi_65] = arith_mulf_67; 
        int arith_addi_68 = (arith_muli_59 + arith_const_8); 
        double memref_load_69 = func_arg_4[arith_addi_57][arith_addi_68]; 
        double arith_mulf_70 = (func_arg_2 * memref_load_69); 
        func_arg_4[arith_addi_57][arith_addi_68] = arith_mulf_70; 
      }
      for (int for_iter_71 = arith_const_13; for_iter_71 < arith_const_9; for_iter_71 += arith_const_15) {
        int arith_addi_72 = (for_iter_71 + arith_const_7); 
        double memref_load_73 = func_arg_4[arith_addi_57][arith_addi_72]; 
        double arith_mulf_74 = (func_arg_2 * memref_load_73); 
        func_arg_4[arith_addi_57][arith_addi_72] = arith_mulf_74; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
