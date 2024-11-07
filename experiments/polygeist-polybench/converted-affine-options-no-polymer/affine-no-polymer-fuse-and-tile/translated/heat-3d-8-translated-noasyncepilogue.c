#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 2; 
  int arith_const_5 = 8; 
  int arith_const_6 = 1; 
  double arith_const_7 = 2.000000; 
  double arith_const_8 = 0.125000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 20; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_10); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_6) {
      for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_5; for_iter_15 += arith_const_6) {
        for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_5; for_iter_16 += arith_const_6) {
          for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_5; for_iter_17 += arith_const_6) {
            int arith_addi_18 = (for_iter_16 + arith_const_4); 
            int arith_addi_19 = (for_iter_17 + arith_const_6); 
            int arith_addi_20 = (for_iter_15 + arith_const_6); 
            double memref_load_21 = func_arg_2[arith_addi_18][arith_addi_19][arith_addi_20]; 
            int arith_addi_22 = (for_iter_16 + arith_const_6); 
            int arith_addi_23 = (for_iter_17 + arith_const_6); 
            int arith_addi_24 = (for_iter_15 + arith_const_6); 
            double memref_load_25 = func_arg_2[arith_addi_22][arith_addi_23][arith_addi_24]; 
            double arith_mulf_26 = (memref_load_25 * arith_const_7); 
            double arith_subf_27 = (memref_load_21 - arith_mulf_26); 
            int arith_addi_28 = (for_iter_17 + arith_const_6); 
            int arith_addi_29 = (for_iter_15 + arith_const_6); 
            double memref_load_30 = func_arg_2[for_iter_16][arith_addi_28][arith_addi_29]; 
            double arith_addf_31 = (arith_subf_27 + memref_load_30); 
            double arith_mulf_32 = (arith_addf_31 * arith_const_8); 
            int arith_addi_33 = (for_iter_16 + arith_const_6); 
            int arith_addi_34 = (for_iter_17 + arith_const_4); 
            int arith_addi_35 = (for_iter_15 + arith_const_6); 
            double memref_load_36 = func_arg_2[arith_addi_33][arith_addi_34][arith_addi_35]; 
            double arith_subf_37 = (memref_load_36 - arith_mulf_26); 
            int arith_addi_38 = (for_iter_16 + arith_const_6); 
            int arith_addi_39 = (for_iter_15 + arith_const_6); 
            double memref_load_40 = func_arg_2[arith_addi_38][for_iter_17][arith_addi_39]; 
            double arith_addf_41 = (arith_subf_37 + memref_load_40); 
            double arith_mulf_42 = (arith_addf_41 * arith_const_8); 
            double arith_addf_43 = (arith_mulf_32 + arith_mulf_42); 
            int arith_addi_44 = (for_iter_16 + arith_const_6); 
            int arith_addi_45 = (for_iter_17 + arith_const_6); 
            int arith_addi_46 = (for_iter_15 + arith_const_4); 
            double memref_load_47 = func_arg_2[arith_addi_44][arith_addi_45][arith_addi_46]; 
            double arith_subf_48 = (memref_load_47 - arith_mulf_26); 
            int arith_addi_49 = (for_iter_16 + arith_const_6); 
            int arith_addi_50 = (for_iter_17 + arith_const_6); 
            double memref_load_51 = func_arg_2[arith_addi_49][arith_addi_50][for_iter_15]; 
            double arith_addf_52 = (arith_subf_48 + memref_load_51); 
            double arith_mulf_53 = (arith_addf_52 * arith_const_8); 
            double arith_addf_54 = (arith_addf_43 + arith_mulf_53); 
            double arith_addf_55 = (arith_addf_54 + memref_load_25); 
            int arith_addi_56 = (for_iter_16 + arith_const_6); 
            int arith_addi_57 = (for_iter_17 + arith_const_6); 
            int arith_addi_58 = (for_iter_15 + arith_const_6); 
            func_arg_3[arith_addi_56][arith_addi_57][arith_addi_58] = arith_addf_55; 
          }
        }
      }
      for (int for_iter_59 = arith_const_9; for_iter_59 < arith_const_5; for_iter_59 += arith_const_6) {
        for (int for_iter_60 = arith_const_9; for_iter_60 < arith_const_5; for_iter_60 += arith_const_6) {
          for (int for_iter_61 = arith_const_9; for_iter_61 < arith_const_5; for_iter_61 += arith_const_6) {
            int arith_addi_62 = (for_iter_60 + arith_const_4); 
            int arith_addi_63 = (for_iter_61 + arith_const_6); 
            int arith_addi_64 = (for_iter_59 + arith_const_6); 
            double memref_load_65 = func_arg_3[arith_addi_62][arith_addi_63][arith_addi_64]; 
            int arith_addi_66 = (for_iter_60 + arith_const_6); 
            int arith_addi_67 = (for_iter_61 + arith_const_6); 
            int arith_addi_68 = (for_iter_59 + arith_const_6); 
            double memref_load_69 = func_arg_3[arith_addi_66][arith_addi_67][arith_addi_68]; 
            double arith_mulf_70 = (memref_load_69 * arith_const_7); 
            double arith_subf_71 = (memref_load_65 - arith_mulf_70); 
            int arith_addi_72 = (for_iter_61 + arith_const_6); 
            int arith_addi_73 = (for_iter_59 + arith_const_6); 
            double memref_load_74 = func_arg_3[for_iter_60][arith_addi_72][arith_addi_73]; 
            double arith_addf_75 = (arith_subf_71 + memref_load_74); 
            double arith_mulf_76 = (arith_addf_75 * arith_const_8); 
            int arith_addi_77 = (for_iter_60 + arith_const_6); 
            int arith_addi_78 = (for_iter_61 + arith_const_4); 
            int arith_addi_79 = (for_iter_59 + arith_const_6); 
            double memref_load_80 = func_arg_3[arith_addi_77][arith_addi_78][arith_addi_79]; 
            double arith_subf_81 = (memref_load_80 - arith_mulf_70); 
            int arith_addi_82 = (for_iter_60 + arith_const_6); 
            int arith_addi_83 = (for_iter_59 + arith_const_6); 
            double memref_load_84 = func_arg_3[arith_addi_82][for_iter_61][arith_addi_83]; 
            double arith_addf_85 = (arith_subf_81 + memref_load_84); 
            double arith_mulf_86 = (arith_addf_85 * arith_const_8); 
            double arith_addf_87 = (arith_mulf_76 + arith_mulf_86); 
            int arith_addi_88 = (for_iter_60 + arith_const_6); 
            int arith_addi_89 = (for_iter_61 + arith_const_6); 
            int arith_addi_90 = (for_iter_59 + arith_const_4); 
            double memref_load_91 = func_arg_3[arith_addi_88][arith_addi_89][arith_addi_90]; 
            double arith_subf_92 = (memref_load_91 - arith_mulf_70); 
            int arith_addi_93 = (for_iter_60 + arith_const_6); 
            int arith_addi_94 = (for_iter_61 + arith_const_6); 
            double memref_load_95 = func_arg_3[arith_addi_93][arith_addi_94][for_iter_59]; 
            double arith_addf_96 = (arith_subf_92 + memref_load_95); 
            double arith_mulf_97 = (arith_addf_96 * arith_const_8); 
            double arith_addf_98 = (arith_addf_87 + arith_mulf_97); 
            double arith_addf_99 = (arith_addf_98 + memref_load_69); 
            int arith_addi_100 = (for_iter_60 + arith_const_6); 
            int arith_addi_101 = (for_iter_61 + arith_const_6); 
            int arith_addi_102 = (for_iter_59 + arith_const_6); 
            func_arg_2[arith_addi_100][arith_addi_101][arith_addi_102] = arith_addf_99; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_heat_3d(tsteps, n, A, B);

}

#pragma pocc-region-end
