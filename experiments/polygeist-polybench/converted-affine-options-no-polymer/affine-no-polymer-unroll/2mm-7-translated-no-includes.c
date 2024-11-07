#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 20; 
  int arith_const_17 = 18; 
  double arith_const_18 = 0.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 16; 
  int arith_const_21 = 1; 
  for (int for_iter_22 = arith_const_19; for_iter_22 < arith_const_20; for_iter_22 += arith_const_21) {
    for (int for_iter_23 = arith_const_19; for_iter_23 < arith_const_17; for_iter_23 += arith_const_21) {
      func_arg_6[for_iter_22][for_iter_23] = arith_const_18; 
      for (int for_iter_24 = arith_const_19; for_iter_24 < arith_const_16; for_iter_24 += arith_const_15) {
        double memref_load_25 = func_arg_7[for_iter_22][for_iter_24]; 
        double arith_mulf_26 = (func_arg_4 * memref_load_25); 
        double memref_load_27 = func_arg_8[for_iter_24][for_iter_23]; 
        double arith_mulf_28 = (arith_mulf_26 * memref_load_27); 
        double memref_load_29 = func_arg_6[for_iter_22][for_iter_23]; 
        double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
        func_arg_6[for_iter_22][for_iter_23] = arith_addf_30; 
        int arith_addi_31 = (for_iter_24 + arith_const_21); 
        double memref_load_32 = func_arg_7[for_iter_22][arith_addi_31]; 
        double arith_mulf_33 = (func_arg_4 * memref_load_32); 
        double memref_load_34 = func_arg_8[arith_addi_31][for_iter_23]; 
        double arith_mulf_35 = (arith_mulf_33 * memref_load_34); 
        double memref_load_36 = func_arg_6[for_iter_22][for_iter_23]; 
        double arith_addf_37 = (memref_load_36 + arith_mulf_35); 
        func_arg_6[for_iter_22][for_iter_23] = arith_addf_37; 
        int arith_addi_38 = (for_iter_24 + arith_const_14); 
        double memref_load_39 = func_arg_7[for_iter_22][arith_addi_38]; 
        double arith_mulf_40 = (func_arg_4 * memref_load_39); 
        double memref_load_41 = func_arg_8[arith_addi_38][for_iter_23]; 
        double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
        double memref_load_43 = func_arg_6[for_iter_22][for_iter_23]; 
        double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
        func_arg_6[for_iter_22][for_iter_23] = arith_addf_44; 
        int arith_addi_45 = (for_iter_24 + arith_const_13); 
        double memref_load_46 = func_arg_7[for_iter_22][arith_addi_45]; 
        double arith_mulf_47 = (func_arg_4 * memref_load_46); 
        double memref_load_48 = func_arg_8[arith_addi_45][for_iter_23]; 
        double arith_mulf_49 = (arith_mulf_47 * memref_load_48); 
        double memref_load_50 = func_arg_6[for_iter_22][for_iter_23]; 
        double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
        func_arg_6[for_iter_22][for_iter_23] = arith_addf_51; 
      }
      for (int for_iter_52 = arith_const_16; for_iter_52 < arith_const_12; for_iter_52 += arith_const_21) {
        double memref_load_53 = func_arg_7[for_iter_22][for_iter_52]; 
        double arith_mulf_54 = (func_arg_4 * memref_load_53); 
        double memref_load_55 = func_arg_8[for_iter_52][for_iter_23]; 
        double arith_mulf_56 = (arith_mulf_54 * memref_load_55); 
        double memref_load_57 = func_arg_6[for_iter_22][for_iter_23]; 
        double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
        func_arg_6[for_iter_22][for_iter_23] = arith_addf_58; 
      }
    }
  }
  for (int for_iter_59 = arith_const_19; for_iter_59 < arith_const_20; for_iter_59 += arith_const_21) {
    for (int for_iter_60 = arith_const_19; for_iter_60 < arith_const_11; for_iter_60 += arith_const_21) {
      double memref_load_61 = func_arg_10[for_iter_59][for_iter_60]; 
      double arith_mulf_62 = (memref_load_61 * func_arg_5); 
      func_arg_10[for_iter_59][for_iter_60] = arith_mulf_62; 
      for (int for_iter_63 = arith_const_19; for_iter_63 < arith_const_20; for_iter_63 += arith_const_15) {
        double memref_load_64 = func_arg_6[for_iter_59][for_iter_63]; 
        double memref_load_65 = func_arg_9[for_iter_63][for_iter_60]; 
        double arith_mulf_66 = (memref_load_64 * memref_load_65); 
        double memref_load_67 = func_arg_10[for_iter_59][for_iter_60]; 
        double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
        func_arg_10[for_iter_59][for_iter_60] = arith_addf_68; 
        int arith_addi_69 = (for_iter_63 + arith_const_21); 
        double memref_load_70 = func_arg_6[for_iter_59][arith_addi_69]; 
        double memref_load_71 = func_arg_9[arith_addi_69][for_iter_60]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double memref_load_73 = func_arg_10[for_iter_59][for_iter_60]; 
        double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
        func_arg_10[for_iter_59][for_iter_60] = arith_addf_74; 
        int arith_addi_75 = (for_iter_63 + arith_const_14); 
        double memref_load_76 = func_arg_6[for_iter_59][arith_addi_75]; 
        double memref_load_77 = func_arg_9[arith_addi_75][for_iter_60]; 
        double arith_mulf_78 = (memref_load_76 * memref_load_77); 
        double memref_load_79 = func_arg_10[for_iter_59][for_iter_60]; 
        double arith_addf_80 = (memref_load_79 + arith_mulf_78); 
        func_arg_10[for_iter_59][for_iter_60] = arith_addf_80; 
        int arith_addi_81 = (for_iter_63 + arith_const_13); 
        double memref_load_82 = func_arg_6[for_iter_59][arith_addi_81]; 
        double memref_load_83 = func_arg_9[arith_addi_81][for_iter_60]; 
        double arith_mulf_84 = (memref_load_82 * memref_load_83); 
        double memref_load_85 = func_arg_10[for_iter_59][for_iter_60]; 
        double arith_addf_86 = (memref_load_85 + arith_mulf_84); 
        func_arg_10[for_iter_59][for_iter_60] = arith_addf_86; 
      }
      for (int for_iter_87 = arith_const_20; for_iter_87 < arith_const_17; for_iter_87 += arith_const_21) {
        double memref_load_88 = func_arg_6[for_iter_59][for_iter_87]; 
        double memref_load_89 = func_arg_9[for_iter_87][for_iter_60]; 
        double arith_mulf_90 = (memref_load_88 * memref_load_89); 
        double memref_load_91 = func_arg_10[for_iter_59][for_iter_60]; 
        double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
        func_arg_10[for_iter_59][for_iter_60] = arith_addf_92; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
