#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 29; 
  int arith_const_8 = 19; 
  int arith_const_9 = -1; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  double arith_const_12 = 0.700000; 
  double arith_const_13 = 0.500000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 20; 
  int arith_const_16 = 32; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    int arith_addi_18 = (for_iter_17 + arith_const_15); 
    for (int for_iter_19 = for_iter_17; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_11) {
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_10; for_iter_20 += arith_const_11) {
        double memref_load_21 = func_arg_6[for_iter_19]; 
        func_arg_4[arith_const_14][for_iter_20] = memref_load_21; 
      }
      for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_15; for_iter_22 += arith_const_11) {
        for (int for_iter_23 = arith_const_14; for_iter_23 < arith_const_10; for_iter_23 += arith_const_11) {
          double memref_load_24 = func_arg_4[for_iter_22][for_iter_23]; 
          double memref_load_25 = func_arg_5[for_iter_22][for_iter_23]; 
          int arith_addi_26 = (for_iter_22 + arith_const_9); 
          double memref_load_27 = func_arg_5[arith_addi_26][for_iter_23]; 
          double arith_subf_28 = (memref_load_25 - memref_load_27); 
          double arith_mulf_29 = (arith_subf_28 * arith_const_13); 
          double arith_subf_30 = (memref_load_24 - arith_mulf_29); 
          func_arg_4[for_iter_22][for_iter_23] = arith_subf_30; 
        }
      }
      for (int for_iter_31 = arith_const_14; for_iter_31 < arith_const_15; for_iter_31 += arith_const_11) {
        for (int for_iter_32 = arith_const_11; for_iter_32 < arith_const_10; for_iter_32 += arith_const_11) {
          double memref_load_33 = func_arg_3[for_iter_31][for_iter_32]; 
          double memref_load_34 = func_arg_5[for_iter_31][for_iter_32]; 
          int arith_addi_35 = (for_iter_32 + arith_const_9); 
          double memref_load_36 = func_arg_5[for_iter_31][arith_addi_35]; 
          double arith_subf_37 = (memref_load_34 - memref_load_36); 
          double arith_mulf_38 = (arith_subf_37 * arith_const_13); 
          double arith_subf_39 = (memref_load_33 - arith_mulf_38); 
          func_arg_3[for_iter_31][for_iter_32] = arith_subf_39; 
        }
      }
      for (int for_iter_40 = arith_const_14; for_iter_40 < arith_const_8; for_iter_40 += arith_const_11) {
        for (int for_iter_41 = arith_const_14; for_iter_41 < arith_const_7; for_iter_41 += arith_const_11) {
          double memref_load_42 = func_arg_5[for_iter_40][for_iter_41]; 
          int arith_addi_43 = (for_iter_41 + arith_const_11); 
          double memref_load_44 = func_arg_3[for_iter_40][arith_addi_43]; 
          double memref_load_45 = func_arg_3[for_iter_40][for_iter_41]; 
          double arith_subf_46 = (memref_load_44 - memref_load_45); 
          int arith_addi_47 = (for_iter_40 + arith_const_11); 
          double memref_load_48 = func_arg_4[arith_addi_47][for_iter_41]; 
          double arith_addf_49 = (arith_subf_46 + memref_load_48); 
          double memref_load_50 = func_arg_4[for_iter_40][for_iter_41]; 
          double arith_subf_51 = (arith_addf_49 - memref_load_50); 
          double arith_mulf_52 = (arith_subf_51 * arith_const_12); 
          double arith_subf_53 = (memref_load_42 - arith_mulf_52); 
          func_arg_5[for_iter_40][for_iter_41] = arith_subf_53; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}

#pragma pocc-region-end
