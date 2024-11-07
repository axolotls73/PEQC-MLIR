#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 9; 
  double arith_const_6 = 2.000000; 
  double arith_const_7 = 0.125000; 
  int arith_const_8 = 1; 
  int arith_const_9 = 21; 
  for (int for_iter_10 = arith_const_8; for_iter_10 < arith_const_9; for_iter_10 += arith_const_8) {
    int arith_addi_11 = (for_iter_10 + arith_const_8); 
    for (int for_iter_12 = for_iter_10; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_8) {
      for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_5; for_iter_13 += arith_const_8) {
        for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_5; for_iter_14 += arith_const_8) {
          for (int for_iter_15 = arith_const_8; for_iter_15 < arith_const_5; for_iter_15 += arith_const_8) {
            int arith_addi_16 = (for_iter_13 + arith_const_8); 
            double memref_load_17 = func_arg_2[arith_addi_16][for_iter_14][for_iter_15]; 
            double memref_load_18 = func_arg_2[for_iter_13][for_iter_14][for_iter_15]; 
            double arith_mulf_19 = (memref_load_18 * arith_const_6); 
            double arith_subf_20 = (memref_load_17 - arith_mulf_19); 
            int arith_addi_21 = (for_iter_13 + arith_const_4); 
            double memref_load_22 = func_arg_2[arith_addi_21][for_iter_14][for_iter_15]; 
            double arith_addf_23 = (arith_subf_20 + memref_load_22); 
            double arith_mulf_24 = (arith_addf_23 * arith_const_7); 
            int arith_addi_25 = (for_iter_14 + arith_const_8); 
            double memref_load_26 = func_arg_2[for_iter_13][arith_addi_25][for_iter_15]; 
            double arith_subf_27 = (memref_load_26 - arith_mulf_19); 
            int arith_addi_28 = (for_iter_14 + arith_const_4); 
            double memref_load_29 = func_arg_2[for_iter_13][arith_addi_28][for_iter_15]; 
            double arith_addf_30 = (arith_subf_27 + memref_load_29); 
            double arith_mulf_31 = (arith_addf_30 * arith_const_7); 
            double arith_addf_32 = (arith_mulf_24 + arith_mulf_31); 
            int arith_addi_33 = (for_iter_15 + arith_const_8); 
            double memref_load_34 = func_arg_2[for_iter_13][for_iter_14][arith_addi_33]; 
            double arith_subf_35 = (memref_load_34 - arith_mulf_19); 
            int arith_addi_36 = (for_iter_15 + arith_const_4); 
            double memref_load_37 = func_arg_2[for_iter_13][for_iter_14][arith_addi_36]; 
            double arith_addf_38 = (arith_subf_35 + memref_load_37); 
            double arith_mulf_39 = (arith_addf_38 * arith_const_7); 
            double arith_addf_40 = (arith_addf_32 + arith_mulf_39); 
            double arith_addf_41 = (arith_addf_40 + memref_load_18); 
            func_arg_3[for_iter_13][for_iter_14][for_iter_15] = arith_addf_41; 
          }
        }
      }
      for (int for_iter_42 = arith_const_8; for_iter_42 < arith_const_5; for_iter_42 += arith_const_8) {
        for (int for_iter_43 = arith_const_8; for_iter_43 < arith_const_5; for_iter_43 += arith_const_8) {
          for (int for_iter_44 = arith_const_8; for_iter_44 < arith_const_5; for_iter_44 += arith_const_8) {
            int arith_addi_45 = (for_iter_42 + arith_const_8); 
            double memref_load_46 = func_arg_3[arith_addi_45][for_iter_43][for_iter_44]; 
            double memref_load_47 = func_arg_3[for_iter_42][for_iter_43][for_iter_44]; 
            double arith_mulf_48 = (memref_load_47 * arith_const_6); 
            double arith_subf_49 = (memref_load_46 - arith_mulf_48); 
            int arith_addi_50 = (for_iter_42 + arith_const_4); 
            double memref_load_51 = func_arg_3[arith_addi_50][for_iter_43][for_iter_44]; 
            double arith_addf_52 = (arith_subf_49 + memref_load_51); 
            double arith_mulf_53 = (arith_addf_52 * arith_const_7); 
            int arith_addi_54 = (for_iter_43 + arith_const_8); 
            double memref_load_55 = func_arg_3[for_iter_42][arith_addi_54][for_iter_44]; 
            double arith_subf_56 = (memref_load_55 - arith_mulf_48); 
            int arith_addi_57 = (for_iter_43 + arith_const_4); 
            double memref_load_58 = func_arg_3[for_iter_42][arith_addi_57][for_iter_44]; 
            double arith_addf_59 = (arith_subf_56 + memref_load_58); 
            double arith_mulf_60 = (arith_addf_59 * arith_const_7); 
            double arith_addf_61 = (arith_mulf_53 + arith_mulf_60); 
            int arith_addi_62 = (for_iter_44 + arith_const_8); 
            double memref_load_63 = func_arg_3[for_iter_42][for_iter_43][arith_addi_62]; 
            double arith_subf_64 = (memref_load_63 - arith_mulf_48); 
            int arith_addi_65 = (for_iter_44 + arith_const_4); 
            double memref_load_66 = func_arg_3[for_iter_42][for_iter_43][arith_addi_65]; 
            double arith_addf_67 = (arith_subf_64 + memref_load_66); 
            double arith_mulf_68 = (arith_addf_67 * arith_const_7); 
            double arith_addf_69 = (arith_addf_61 + arith_mulf_68); 
            double arith_addf_70 = (arith_addf_69 + memref_load_47); 
            func_arg_2[for_iter_42][for_iter_43][for_iter_44] = arith_addf_70; 
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
