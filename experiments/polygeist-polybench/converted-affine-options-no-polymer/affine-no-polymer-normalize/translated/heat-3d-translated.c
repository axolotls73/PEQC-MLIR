#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 8; 
  double arith_const_6 = 2.000000; 
  double arith_const_7 = 0.125000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_5; for_iter_12 += arith_const_10) {
      int arith_addi_13 = (for_iter_12 + arith_const_10); 
      for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_5; for_iter_14 += arith_const_10) {
        int arith_addi_15 = (for_iter_14 + arith_const_10); 
        for (int for_iter_16 = arith_const_8; for_iter_16 < arith_const_5; for_iter_16 += arith_const_10) {
          int arith_addi_17 = (for_iter_16 + arith_const_10); 
          int arith_addi_18 = (arith_addi_13 + arith_const_10); 
          double memref_load_19 = func_arg_2[arith_addi_18][arith_addi_15][arith_addi_17]; 
          double memref_load_20 = func_arg_2[arith_addi_13][arith_addi_15][arith_addi_17]; 
          double arith_mulf_21 = (memref_load_20 * arith_const_6); 
          double arith_subf_22 = (memref_load_19 - arith_mulf_21); 
          int arith_addi_23 = (arith_addi_13 + arith_const_4); 
          double memref_load_24 = func_arg_2[arith_addi_23][arith_addi_15][arith_addi_17]; 
          double arith_addf_25 = (arith_subf_22 + memref_load_24); 
          double arith_mulf_26 = (arith_addf_25 * arith_const_7); 
          int arith_addi_27 = (arith_addi_15 + arith_const_10); 
          double memref_load_28 = func_arg_2[arith_addi_13][arith_addi_27][arith_addi_17]; 
          double arith_subf_29 = (memref_load_28 - arith_mulf_21); 
          int arith_addi_30 = (arith_addi_15 + arith_const_4); 
          double memref_load_31 = func_arg_2[arith_addi_13][arith_addi_30][arith_addi_17]; 
          double arith_addf_32 = (arith_subf_29 + memref_load_31); 
          double arith_mulf_33 = (arith_addf_32 * arith_const_7); 
          double arith_addf_34 = (arith_mulf_26 + arith_mulf_33); 
          int arith_addi_35 = (arith_addi_17 + arith_const_10); 
          double memref_load_36 = func_arg_2[arith_addi_13][arith_addi_15][arith_addi_35]; 
          double arith_subf_37 = (memref_load_36 - arith_mulf_21); 
          int arith_addi_38 = (arith_addi_17 + arith_const_4); 
          double memref_load_39 = func_arg_2[arith_addi_13][arith_addi_15][arith_addi_38]; 
          double arith_addf_40 = (arith_subf_37 + memref_load_39); 
          double arith_mulf_41 = (arith_addf_40 * arith_const_7); 
          double arith_addf_42 = (arith_addf_34 + arith_mulf_41); 
          double arith_addf_43 = (arith_addf_42 + memref_load_20); 
          func_arg_3[arith_addi_13][arith_addi_15][arith_addi_17] = arith_addf_43; 
        }
      }
    }
    for (int for_iter_44 = arith_const_8; for_iter_44 < arith_const_5; for_iter_44 += arith_const_10) {
      int arith_addi_45 = (for_iter_44 + arith_const_10); 
      for (int for_iter_46 = arith_const_8; for_iter_46 < arith_const_5; for_iter_46 += arith_const_10) {
        int arith_addi_47 = (for_iter_46 + arith_const_10); 
        for (int for_iter_48 = arith_const_8; for_iter_48 < arith_const_5; for_iter_48 += arith_const_10) {
          int arith_addi_49 = (for_iter_48 + arith_const_10); 
          int arith_addi_50 = (arith_addi_45 + arith_const_10); 
          double memref_load_51 = func_arg_3[arith_addi_50][arith_addi_47][arith_addi_49]; 
          double memref_load_52 = func_arg_3[arith_addi_45][arith_addi_47][arith_addi_49]; 
          double arith_mulf_53 = (memref_load_52 * arith_const_6); 
          double arith_subf_54 = (memref_load_51 - arith_mulf_53); 
          int arith_addi_55 = (arith_addi_45 + arith_const_4); 
          double memref_load_56 = func_arg_3[arith_addi_55][arith_addi_47][arith_addi_49]; 
          double arith_addf_57 = (arith_subf_54 + memref_load_56); 
          double arith_mulf_58 = (arith_addf_57 * arith_const_7); 
          int arith_addi_59 = (arith_addi_47 + arith_const_10); 
          double memref_load_60 = func_arg_3[arith_addi_45][arith_addi_59][arith_addi_49]; 
          double arith_subf_61 = (memref_load_60 - arith_mulf_53); 
          int arith_addi_62 = (arith_addi_47 + arith_const_4); 
          double memref_load_63 = func_arg_3[arith_addi_45][arith_addi_62][arith_addi_49]; 
          double arith_addf_64 = (arith_subf_61 + memref_load_63); 
          double arith_mulf_65 = (arith_addf_64 * arith_const_7); 
          double arith_addf_66 = (arith_mulf_58 + arith_mulf_65); 
          int arith_addi_67 = (arith_addi_49 + arith_const_10); 
          double memref_load_68 = func_arg_3[arith_addi_45][arith_addi_47][arith_addi_67]; 
          double arith_subf_69 = (memref_load_68 - arith_mulf_53); 
          int arith_addi_70 = (arith_addi_49 + arith_const_4); 
          double memref_load_71 = func_arg_3[arith_addi_45][arith_addi_47][arith_addi_70]; 
          double arith_addf_72 = (arith_subf_69 + memref_load_71); 
          double arith_mulf_73 = (arith_addf_72 * arith_const_7); 
          double arith_addf_74 = (arith_addf_66 + arith_mulf_73); 
          double arith_addf_75 = (arith_addf_74 + memref_load_52); 
          func_arg_2[arith_addi_45][arith_addi_47][arith_addi_49] = arith_addf_75; 
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

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
