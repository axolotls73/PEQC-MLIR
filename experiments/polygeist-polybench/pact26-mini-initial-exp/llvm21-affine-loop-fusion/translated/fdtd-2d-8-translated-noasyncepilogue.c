#pragma pocc-region-start
#include "/opt/peqc-mlir-volume/peqc-mlir-objfifo-pristine/PEQC-MLIR/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_19_7 = 19; 
  int arith_const_29_8 = 29; 
  int arith_const_neg_1_9 = -1; 
  int arith_const_30_10 = 30; 
  double arith_const_16_11 = 0.700000; 
  double arith_const_16_12 = 0.500000; 
  int arith_const_0_13 = 0; 
  int arith_const_20_14 = 20; 
  int arith_const_1_15 = 1; 
  for (int for_iter_16 = arith_const_0_13; for_iter_16 < arith_const_20_14; for_iter_16 += arith_const_1_15) {
    for (int for_iter_17 = arith_const_0_13; for_iter_17 < arith_const_30_10; for_iter_17 += arith_const_1_15) {
      double memref_load_18 = func_arg_6[for_iter_16]; 
      func_arg_4[arith_const_0_13][for_iter_17] = memref_load_18; 
    }
    for (int for_iter_19 = arith_const_0_13; for_iter_19 < arith_const_20_14; for_iter_19 += arith_const_1_15) {
      for (int for_iter_20 = arith_const_1_15; for_iter_20 < arith_const_30_10; for_iter_20 += arith_const_1_15) {
        double memref_load_21 = func_arg_3[for_iter_19][for_iter_20]; 
        double memref_load_22 = func_arg_5[for_iter_19][for_iter_20]; 
        int arith_addi_23 = (for_iter_20 + arith_const_neg_1_9); 
        double memref_load_24 = func_arg_5[for_iter_19][arith_addi_23]; 
        double arith_subf_25 = (memref_load_22 - memref_load_24); 
        double arith_mulf_26 = (arith_subf_25 * arith_const_16_12); 
        double arith_subf_27 = (memref_load_21 - arith_mulf_26); 
        func_arg_3[for_iter_19][for_iter_20] = arith_subf_27; 
      }
    }
    for (int for_iter_28 = arith_const_0_13; for_iter_28 < arith_const_29_8; for_iter_28 += arith_const_1_15) {
      for (int for_iter_29 = arith_const_1_15; for_iter_29 < arith_const_20_14; for_iter_29 += arith_const_1_15) {
        double memref_load_30 = func_arg_4[for_iter_29][for_iter_28]; 
        double memref_load_31 = func_arg_5[for_iter_29][for_iter_28]; 
        int arith_addi_32 = (for_iter_29 + arith_const_neg_1_9); 
        double memref_load_33 = func_arg_5[arith_addi_32][for_iter_28]; 
        double arith_subf_34 = (memref_load_31 - memref_load_33); 
        double arith_mulf_35 = (arith_subf_34 * arith_const_16_12); 
        double arith_subf_36 = (memref_load_30 - arith_mulf_35); 
        func_arg_4[for_iter_29][for_iter_28] = arith_subf_36; 
      }
      for (int for_iter_37 = arith_const_0_13; for_iter_37 < arith_const_19_7; for_iter_37 += arith_const_1_15) {
        double memref_load_38 = func_arg_5[for_iter_37][for_iter_28]; 
        int arith_addi_39 = (for_iter_28 + arith_const_1_15); 
        double memref_load_40 = func_arg_3[for_iter_37][arith_addi_39]; 
        double memref_load_41 = func_arg_3[for_iter_37][for_iter_28]; 
        double arith_subf_42 = (memref_load_40 - memref_load_41); 
        int arith_addi_43 = (for_iter_37 + arith_const_1_15); 
        double memref_load_44 = func_arg_4[arith_addi_43][for_iter_28]; 
        double arith_addf_45 = (arith_subf_42 + memref_load_44); 
        double memref_load_46 = func_arg_4[for_iter_37][for_iter_28]; 
        double arith_subf_47 = (arith_addf_45 - memref_load_46); 
        double arith_mulf_48 = (arith_subf_47 * arith_const_16_11); 
        double arith_subf_49 = (memref_load_38 - arith_mulf_48); 
        func_arg_5[for_iter_37][for_iter_28] = arith_subf_49; 
      }
    }
  }
  return; 

}


{
#include "/opt/peqc-mlir-volume/peqc-mlir-objfifo-pristine/PEQC-MLIR/experiments/polygeist-polybench/script/prologue.h"
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
