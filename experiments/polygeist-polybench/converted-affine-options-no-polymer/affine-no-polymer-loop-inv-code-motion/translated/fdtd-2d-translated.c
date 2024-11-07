#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 29; 
  int arith_const_8 = 19; 
  int arith_const_9 = -1; 
  int arith_const_10 = 30; 
  double arith_const_11 = 0.700000; 
  double arith_const_12 = 0.500000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    double memref_load_17 = func_arg_6[for_iter_16]; 
    for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_10; for_iter_18 += arith_const_15) {
      func_arg_4[arith_const_13][for_iter_18] = memref_load_17; 
    }
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_14; for_iter_19 += arith_const_15) {
      for (int for_iter_20 = arith_const_13; for_iter_20 < arith_const_10; for_iter_20 += arith_const_15) {
        double memref_load_21 = func_arg_4[for_iter_19][for_iter_20]; 
        double memref_load_22 = func_arg_5[for_iter_19][for_iter_20]; 
        int arith_addi_23 = (for_iter_19 + arith_const_9); 
        double memref_load_24 = func_arg_5[arith_addi_23][for_iter_20]; 
        double arith_subf_25 = (memref_load_22 - memref_load_24); 
        double arith_mulf_26 = (arith_subf_25 * arith_const_12); 
        double arith_subf_27 = (memref_load_21 - arith_mulf_26); 
        func_arg_4[for_iter_19][for_iter_20] = arith_subf_27; 
      }
    }
    for (int for_iter_28 = arith_const_13; for_iter_28 < arith_const_14; for_iter_28 += arith_const_15) {
      for (int for_iter_29 = arith_const_15; for_iter_29 < arith_const_10; for_iter_29 += arith_const_15) {
        double memref_load_30 = func_arg_3[for_iter_28][for_iter_29]; 
        double memref_load_31 = func_arg_5[for_iter_28][for_iter_29]; 
        int arith_addi_32 = (for_iter_29 + arith_const_9); 
        double memref_load_33 = func_arg_5[for_iter_28][arith_addi_32]; 
        double arith_subf_34 = (memref_load_31 - memref_load_33); 
        double arith_mulf_35 = (arith_subf_34 * arith_const_12); 
        double arith_subf_36 = (memref_load_30 - arith_mulf_35); 
        func_arg_3[for_iter_28][for_iter_29] = arith_subf_36; 
      }
    }
    for (int for_iter_37 = arith_const_13; for_iter_37 < arith_const_8; for_iter_37 += arith_const_15) {
      for (int for_iter_38 = arith_const_13; for_iter_38 < arith_const_7; for_iter_38 += arith_const_15) {
        double memref_load_39 = func_arg_5[for_iter_37][for_iter_38]; 
        int arith_addi_40 = (for_iter_38 + arith_const_15); 
        double memref_load_41 = func_arg_3[for_iter_37][arith_addi_40]; 
        double memref_load_42 = func_arg_3[for_iter_37][for_iter_38]; 
        double arith_subf_43 = (memref_load_41 - memref_load_42); 
        int arith_addi_44 = (for_iter_37 + arith_const_15); 
        double memref_load_45 = func_arg_4[arith_addi_44][for_iter_38]; 
        double arith_addf_46 = (arith_subf_43 + memref_load_45); 
        double memref_load_47 = func_arg_4[for_iter_37][for_iter_38]; 
        double arith_subf_48 = (arith_addf_46 - memref_load_47); 
        double arith_mulf_49 = (arith_subf_48 * arith_const_11); 
        double arith_subf_50 = (memref_load_39 - arith_mulf_49); 
        func_arg_5[for_iter_37][for_iter_38] = arith_subf_50; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}

#pragma pocc-region-end
