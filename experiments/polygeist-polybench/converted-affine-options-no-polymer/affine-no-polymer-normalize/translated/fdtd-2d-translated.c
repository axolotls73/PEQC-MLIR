#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 29; 
  int arith_const_8 = -1; 
  int arith_const_9 = 19; 
  int arith_const_10 = 30; 
  double arith_const_11 = 0.700000; 
  double arith_const_12 = 0.500000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_10; for_iter_17 += arith_const_15) {
      double memref_load_18 = func_arg_6[for_iter_16]; 
      func_arg_4[arith_const_13][for_iter_17] = memref_load_18; 
    }
    for (int for_iter_19 = arith_const_13; for_iter_19 < arith_const_9; for_iter_19 += arith_const_15) {
      int arith_addi_20 = (for_iter_19 + arith_const_15); 
      for (int for_iter_21 = arith_const_13; for_iter_21 < arith_const_10; for_iter_21 += arith_const_15) {
        double memref_load_22 = func_arg_4[arith_addi_20][for_iter_21]; 
        double memref_load_23 = func_arg_5[arith_addi_20][for_iter_21]; 
        int arith_addi_24 = (arith_addi_20 + arith_const_8); 
        double memref_load_25 = func_arg_5[arith_addi_24][for_iter_21]; 
        double arith_subf_26 = (memref_load_23 - memref_load_25); 
        double arith_mulf_27 = (arith_subf_26 * arith_const_12); 
        double arith_subf_28 = (memref_load_22 - arith_mulf_27); 
        func_arg_4[arith_addi_20][for_iter_21] = arith_subf_28; 
      }
    }
    for (int for_iter_29 = arith_const_13; for_iter_29 < arith_const_14; for_iter_29 += arith_const_15) {
      for (int for_iter_30 = arith_const_13; for_iter_30 < arith_const_7; for_iter_30 += arith_const_15) {
        int arith_addi_31 = (for_iter_30 + arith_const_15); 
        double memref_load_32 = func_arg_3[for_iter_29][arith_addi_31]; 
        double memref_load_33 = func_arg_5[for_iter_29][arith_addi_31]; 
        int arith_addi_34 = (arith_addi_31 + arith_const_8); 
        double memref_load_35 = func_arg_5[for_iter_29][arith_addi_34]; 
        double arith_subf_36 = (memref_load_33 - memref_load_35); 
        double arith_mulf_37 = (arith_subf_36 * arith_const_12); 
        double arith_subf_38 = (memref_load_32 - arith_mulf_37); 
        func_arg_3[for_iter_29][arith_addi_31] = arith_subf_38; 
      }
    }
    for (int for_iter_39 = arith_const_13; for_iter_39 < arith_const_9; for_iter_39 += arith_const_15) {
      for (int for_iter_40 = arith_const_13; for_iter_40 < arith_const_7; for_iter_40 += arith_const_15) {
        double memref_load_41 = func_arg_5[for_iter_39][for_iter_40]; 
        int arith_addi_42 = (for_iter_40 + arith_const_15); 
        double memref_load_43 = func_arg_3[for_iter_39][arith_addi_42]; 
        double memref_load_44 = func_arg_3[for_iter_39][for_iter_40]; 
        double arith_subf_45 = (memref_load_43 - memref_load_44); 
        int arith_addi_46 = (for_iter_39 + arith_const_15); 
        double memref_load_47 = func_arg_4[arith_addi_46][for_iter_40]; 
        double arith_addf_48 = (arith_subf_45 + memref_load_47); 
        double memref_load_49 = func_arg_4[for_iter_39][for_iter_40]; 
        double arith_subf_50 = (arith_addf_48 - memref_load_49); 
        double arith_mulf_51 = (arith_subf_50 * arith_const_11); 
        double arith_subf_52 = (memref_load_41 - arith_mulf_51); 
        func_arg_5[for_iter_39][for_iter_40] = arith_subf_52; 
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
