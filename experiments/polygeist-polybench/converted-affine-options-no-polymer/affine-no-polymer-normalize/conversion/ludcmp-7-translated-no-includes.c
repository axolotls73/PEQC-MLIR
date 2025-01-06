#pragma pocc-region-start
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = -1; 
  int arith_const_7 = 1; 
  int arith_const_8 = 40; 
  int arith_const_9 = 0; 
  double _10; 
  double* memref_alloca_11; 
  memref_alloca_11[0] = _10; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_8; for_iter_12 += arith_const_7) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < for_iter_12; for_iter_13 += arith_const_7) {
      double memref_load_14 = func_arg_1[for_iter_12][for_iter_13]; 
      memref_alloca_11[0] = memref_load_14; 
      for (int for_iter_15 = arith_const_9; for_iter_15 < for_iter_13; for_iter_15 += arith_const_7) {
        double memref_load_16 = func_arg_1[for_iter_12][for_iter_15]; 
        double memref_load_17 = func_arg_1[for_iter_15][for_iter_13]; 
        double arith_mulf_18 = (memref_load_16 * memref_load_17); 
        double memref_load_19 = memref_alloca_11[0]; 
        double arith_subf_20 = (memref_load_19 - arith_mulf_18); 
        memref_alloca_11[0] = arith_subf_20; 
      }
      double memref_load_21 = memref_alloca_11[0]; 
      double memref_load_22 = func_arg_1[for_iter_13][for_iter_13]; 
      double arith_divf_23 = (memref_load_21 / memref_load_22); 
      func_arg_1[for_iter_12][for_iter_13] = arith_divf_23; 
    }
    int arith_muli_24 = (for_iter_12 * arith_const_6); 
    int arith_addi_25 = (arith_muli_24 + arith_const_8); 
    for (int for_iter_26 = arith_const_9; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_7) {
      int arith_addi_27 = (for_iter_12 + for_iter_26); 
      double memref_load_28 = func_arg_1[for_iter_12][arith_addi_27]; 
      memref_alloca_11[0] = memref_load_28; 
      for (int for_iter_29 = arith_const_9; for_iter_29 < for_iter_12; for_iter_29 += arith_const_7) {
        double memref_load_30 = func_arg_1[for_iter_12][for_iter_29]; 
        double memref_load_31 = func_arg_1[for_iter_29][arith_addi_27]; 
        double arith_mulf_32 = (memref_load_30 * memref_load_31); 
        double memref_load_33 = memref_alloca_11[0]; 
        double arith_subf_34 = (memref_load_33 - arith_mulf_32); 
        memref_alloca_11[0] = arith_subf_34; 
      }
      double memref_load_35 = memref_alloca_11[0]; 
      func_arg_1[for_iter_12][arith_addi_27] = memref_load_35; 
    }
  }
  for (int for_iter_36 = arith_const_9; for_iter_36 < arith_const_8; for_iter_36 += arith_const_7) {
    double memref_load_37 = func_arg_2[for_iter_36]; 
    memref_alloca_11[0] = memref_load_37; 
    for (int for_iter_38 = arith_const_9; for_iter_38 < for_iter_36; for_iter_38 += arith_const_7) {
      double memref_load_39 = func_arg_1[for_iter_36][for_iter_38]; 
      double memref_load_40 = func_arg_4[for_iter_38]; 
      double arith_mulf_41 = (memref_load_39 * memref_load_40); 
      double memref_load_42 = memref_alloca_11[0]; 
      double arith_subf_43 = (memref_load_42 - arith_mulf_41); 
      memref_alloca_11[0] = arith_subf_43; 
    }
    double memref_load_44 = memref_alloca_11[0]; 
    func_arg_4[for_iter_36] = memref_load_44; 
  }
  for (int for_iter_45 = arith_const_9; for_iter_45 < arith_const_8; for_iter_45 += arith_const_7) {
    int arith_muli_46 = (for_iter_45 * arith_const_6); 
    int arith_addi_47 = (arith_muli_46 + arith_const_5); 
    double memref_load_48 = func_arg_4[arith_addi_47]; 
    memref_alloca_11[0] = memref_load_48; 
    for (int for_iter_49 = arith_const_9; for_iter_49 < for_iter_45; for_iter_49 += arith_const_7) {
      int arith_muli_50 = (for_iter_45 * arith_const_6); 
      int arith_addi_51 = (arith_muli_50 + for_iter_49); 
      int arith_addi_52 = (arith_addi_51 + arith_const_8); 
      int arith_muli_53 = (for_iter_45 * arith_const_6); 
      int arith_addi_54 = (arith_muli_53 + arith_const_5); 
      double memref_load_55 = func_arg_1[arith_addi_54][arith_addi_52]; 
      double memref_load_56 = func_arg_3[arith_addi_52]; 
      double arith_mulf_57 = (memref_load_55 * memref_load_56); 
      double memref_load_58 = memref_alloca_11[0]; 
      double arith_subf_59 = (memref_load_58 - arith_mulf_57); 
      memref_alloca_11[0] = arith_subf_59; 
    }
    double memref_load_60 = memref_alloca_11[0]; 
    int arith_muli_61 = (for_iter_45 * arith_const_6); 
    int arith_addi_62 = (arith_muli_61 + arith_const_5); 
    int arith_muli_63 = (for_iter_45 * arith_const_6); 
    int arith_addi_64 = (arith_muli_63 + arith_const_5); 
    double memref_load_65 = func_arg_1[arith_addi_62][arith_addi_64]; 
    double arith_divf_66 = (memref_load_60 / memref_load_65); 
    int arith_muli_67 = (for_iter_45 * arith_const_6); 
    int arith_addi_68 = (arith_muli_67 + arith_const_5); 
    func_arg_3[arith_addi_68] = arith_divf_66; 
  }
  return; 

}
#pragma pocc-region-end
