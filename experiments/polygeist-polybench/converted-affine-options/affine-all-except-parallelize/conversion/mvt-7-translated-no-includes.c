#pragma pocc-region-start
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 4; 
  int arith_const_8 = 8; 
  int arith_const_9 = 10; 
  int arith_const_10 = -8; 
  int arith_const_11 = 32; 
  int arith_const_12 = 40; 
  int arith_const_13 = -32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_16) {
      int arith_muli_19 = (for_iter_17 * arith_const_13); 
      int arith_addi_20 = (arith_muli_19 + arith_const_12); 
      int arith_minsi_21 = min(arith_addi_20, arith_const_11); 
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_16) {
        int arith_muli_23 = (for_iter_17 * arith_const_11); 
        int arith_addi_24 = (arith_muli_23 + for_iter_22); 
        int arith_muli_25 = (for_iter_18 * arith_const_10); 
        int arith_addi_26 = (arith_muli_25 + arith_const_9); 
        int arith_minsi_27 = min(arith_addi_26, arith_const_8); 
        for (int for_iter_28 = arith_const_14; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_16) {
          int arith_muli_29 = (for_iter_18 * arith_const_11); 
          int arith_muli_30 = (for_iter_28 * arith_const_7); 
          int arith_addi_31 = (arith_muli_29 + arith_muli_30); 
          double memref_load_32 = func_arg_1[arith_addi_24]; 
          double memref_load_33 = func_arg_5[arith_addi_24][arith_addi_31]; 
          double memref_load_34 = func_arg_3[arith_addi_31]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
          func_arg_1[arith_addi_24] = arith_addf_36; 
          double memref_load_37 = func_arg_2[arith_addi_24]; 
          double memref_load_38 = func_arg_5[arith_addi_31][arith_addi_24]; 
          double memref_load_39 = func_arg_4[arith_addi_31]; 
          double arith_mulf_40 = (memref_load_38 * memref_load_39); 
          double arith_addf_41 = (memref_load_37 + arith_mulf_40); 
          func_arg_2[arith_addi_24] = arith_addf_41; 
          int arith_addi_42 = (arith_addi_31 + arith_const_16); 
          double memref_load_43 = func_arg_1[arith_addi_24]; 
          double memref_load_44 = func_arg_5[arith_addi_24][arith_addi_42]; 
          double memref_load_45 = func_arg_3[arith_addi_42]; 
          double arith_mulf_46 = (memref_load_44 * memref_load_45); 
          double arith_addf_47 = (memref_load_43 + arith_mulf_46); 
          func_arg_1[arith_addi_24] = arith_addf_47; 
          double memref_load_48 = func_arg_2[arith_addi_24]; 
          double memref_load_49 = func_arg_5[arith_addi_42][arith_addi_24]; 
          double memref_load_50 = func_arg_4[arith_addi_42]; 
          double arith_mulf_51 = (memref_load_49 * memref_load_50); 
          double arith_addf_52 = (memref_load_48 + arith_mulf_51); 
          func_arg_2[arith_addi_24] = arith_addf_52; 
          int arith_addi_53 = (arith_addi_31 + arith_const_15); 
          double memref_load_54 = func_arg_1[arith_addi_24]; 
          double memref_load_55 = func_arg_5[arith_addi_24][arith_addi_53]; 
          double memref_load_56 = func_arg_3[arith_addi_53]; 
          double arith_mulf_57 = (memref_load_55 * memref_load_56); 
          double arith_addf_58 = (memref_load_54 + arith_mulf_57); 
          func_arg_1[arith_addi_24] = arith_addf_58; 
          double memref_load_59 = func_arg_2[arith_addi_24]; 
          double memref_load_60 = func_arg_5[arith_addi_53][arith_addi_24]; 
          double memref_load_61 = func_arg_4[arith_addi_53]; 
          double arith_mulf_62 = (memref_load_60 * memref_load_61); 
          double arith_addf_63 = (memref_load_59 + arith_mulf_62); 
          func_arg_2[arith_addi_24] = arith_addf_63; 
          int arith_addi_64 = (arith_addi_31 + arith_const_6); 
          double memref_load_65 = func_arg_1[arith_addi_24]; 
          double memref_load_66 = func_arg_5[arith_addi_24][arith_addi_64]; 
          double memref_load_67 = func_arg_3[arith_addi_64]; 
          double arith_mulf_68 = (memref_load_66 * memref_load_67); 
          double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
          func_arg_1[arith_addi_24] = arith_addf_69; 
          double memref_load_70 = func_arg_2[arith_addi_24]; 
          double memref_load_71 = func_arg_5[arith_addi_64][arith_addi_24]; 
          double memref_load_72 = func_arg_4[arith_addi_64]; 
          double arith_mulf_73 = (memref_load_71 * memref_load_72); 
          double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
          func_arg_2[arith_addi_24] = arith_addf_74; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
