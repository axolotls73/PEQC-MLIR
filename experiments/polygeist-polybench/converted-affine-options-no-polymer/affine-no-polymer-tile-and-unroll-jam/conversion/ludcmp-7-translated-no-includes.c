#pragma pocc-region-start
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = 32; 
  int arith_const_7 = -1; 
  int arith_const_8 = 1; 
  int arith_const_9 = 40; 
  int arith_const_10 = 0; 
  double _11; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = _11; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_9; for_iter_13 += arith_const_8) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < for_iter_13; for_iter_14 += arith_const_8) {
      double memref_load_15 = func_arg_1[for_iter_13][for_iter_14]; 
      memref_alloca_12[0] = memref_load_15; 
      for (int for_iter_16 = arith_const_10; for_iter_16 < for_iter_14; for_iter_16 += arith_const_8) {
        double memref_load_17 = func_arg_1[for_iter_13][for_iter_16]; 
        double memref_load_18 = func_arg_1[for_iter_16][for_iter_14]; 
        double arith_mulf_19 = (memref_load_17 * memref_load_18); 
        double memref_load_20 = memref_alloca_12[0]; 
        double arith_subf_21 = (memref_load_20 - arith_mulf_19); 
        memref_alloca_12[0] = arith_subf_21; 
      }
      double memref_load_22 = memref_alloca_12[0]; 
      double memref_load_23 = func_arg_1[for_iter_14][for_iter_14]; 
      double arith_divf_24 = (memref_load_22 / memref_load_23); 
      func_arg_1[for_iter_13][for_iter_14] = arith_divf_24; 
    }
    int arith_muli_25 = (for_iter_13 * arith_const_7); 
    int arith_addi_26 = (arith_muli_25 + arith_const_9); 
    for (int for_iter_27 = arith_const_10; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_8) {
      int arith_addi_28 = (for_iter_13 + for_iter_27); 
      double memref_load_29 = func_arg_1[for_iter_13][arith_addi_28]; 
      memref_alloca_12[0] = memref_load_29; 
      for (int for_iter_30 = arith_const_10; for_iter_30 < for_iter_13; for_iter_30 += arith_const_8) {
        double memref_load_31 = func_arg_1[for_iter_13][for_iter_30]; 
        int arith_addi_32 = (for_iter_13 + for_iter_27); 
        double memref_load_33 = func_arg_1[for_iter_30][arith_addi_32]; 
        double arith_mulf_34 = (memref_load_31 * memref_load_33); 
        double memref_load_35 = memref_alloca_12[0]; 
        double arith_subf_36 = (memref_load_35 - arith_mulf_34); 
        memref_alloca_12[0] = arith_subf_36; 
      }
      double memref_load_37 = memref_alloca_12[0]; 
      int arith_addi_38 = (for_iter_13 + for_iter_27); 
      func_arg_1[for_iter_13][arith_addi_38] = memref_load_37; 
    }
  }
  for (int for_iter_39 = arith_const_10; for_iter_39 < arith_const_9; for_iter_39 += arith_const_6) {
    int arith_addi_40 = (for_iter_39 + arith_const_6); 
    int arith_minsi_41 = min(arith_addi_40, arith_const_9); 
    for (int for_iter_42 = for_iter_39; for_iter_42 < arith_minsi_41; for_iter_42 += arith_const_8) {
      double memref_load_43 = func_arg_2[for_iter_42]; 
      memref_alloca_12[0] = memref_load_43; 
      for (int for_iter_44 = arith_const_10; for_iter_44 < for_iter_42; for_iter_44 += arith_const_8) {
        double memref_load_45 = func_arg_1[for_iter_42][for_iter_44]; 
        double memref_load_46 = func_arg_4[for_iter_44]; 
        double arith_mulf_47 = (memref_load_45 * memref_load_46); 
        double memref_load_48 = memref_alloca_12[0]; 
        double arith_subf_49 = (memref_load_48 - arith_mulf_47); 
        memref_alloca_12[0] = arith_subf_49; 
      }
      double memref_load_50 = memref_alloca_12[0]; 
      func_arg_4[for_iter_42] = memref_load_50; 
    }
  }
  for (int for_iter_51 = arith_const_10; for_iter_51 < arith_const_9; for_iter_51 += arith_const_6) {
    int arith_addi_52 = (for_iter_51 + arith_const_6); 
    int arith_minsi_53 = min(arith_addi_52, arith_const_9); 
    for (int for_iter_54 = for_iter_51; for_iter_54 < arith_minsi_53; for_iter_54 += arith_const_8) {
      int arith_muli_55 = (for_iter_54 * arith_const_7); 
      int arith_addi_56 = (arith_muli_55 + arith_const_5); 
      double memref_load_57 = func_arg_4[arith_addi_56]; 
      memref_alloca_12[0] = memref_load_57; 
      for (int for_iter_58 = arith_const_10; for_iter_58 < for_iter_54; for_iter_58 += arith_const_8) {
        int arith_muli_59 = (for_iter_54 * arith_const_7); 
        int arith_addi_60 = (arith_muli_59 + arith_const_5); 
        int arith_muli_61 = (for_iter_54 * arith_const_7); 
        int arith_addi_62 = (arith_muli_61 + for_iter_58); 
        int arith_addi_63 = (arith_addi_62 + arith_const_9); 
        double memref_load_64 = func_arg_1[arith_addi_60][arith_addi_63]; 
        int arith_muli_65 = (for_iter_54 * arith_const_7); 
        int arith_addi_66 = (arith_muli_65 + for_iter_58); 
        int arith_addi_67 = (arith_addi_66 + arith_const_9); 
        double memref_load_68 = func_arg_3[arith_addi_67]; 
        double arith_mulf_69 = (memref_load_64 * memref_load_68); 
        double memref_load_70 = memref_alloca_12[0]; 
        double arith_subf_71 = (memref_load_70 - arith_mulf_69); 
        memref_alloca_12[0] = arith_subf_71; 
      }
      double memref_load_72 = memref_alloca_12[0]; 
      int arith_muli_73 = (for_iter_54 * arith_const_7); 
      int arith_addi_74 = (arith_muli_73 + arith_const_5); 
      int arith_muli_75 = (for_iter_54 * arith_const_7); 
      int arith_addi_76 = (arith_muli_75 + arith_const_5); 
      double memref_load_77 = func_arg_1[arith_addi_74][arith_addi_76]; 
      double arith_divf_78 = (memref_load_72 / memref_load_77); 
      int arith_muli_79 = (for_iter_54 * arith_const_7); 
      int arith_addi_80 = (arith_muli_79 + arith_const_5); 
      func_arg_3[arith_addi_80] = arith_divf_78; 
    }
  }
  return; 

}
#pragma pocc-region-end
