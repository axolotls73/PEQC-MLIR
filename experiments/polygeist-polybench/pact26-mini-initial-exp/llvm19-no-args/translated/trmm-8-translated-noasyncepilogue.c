#pragma pocc-region-start
#include "/opt/peqc-mlir-volume/peqc-mlir-objfifo-pristine/PEQC-MLIR/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_30_5 = 30; 
  int arith_const_0_6 = 0; 
  int arith_const_20_7 = 20; 
  int arith_const_1_8 = 1; 
  for (int for_iter_9 = arith_const_0_6; for_iter_9 < arith_const_20_7; for_iter_9 += arith_const_1_8) {
    for (int for_iter_10 = arith_const_0_6; for_iter_10 < arith_const_30_5; for_iter_10 += arith_const_1_8) {
      int arith_addi_11 = (for_iter_9 + arith_const_1_8); 
      for (int for_iter_12 = arith_addi_11; for_iter_12 < arith_const_20_7; for_iter_12 += arith_const_1_8) {
        double memref_load_13 = func_arg_3[for_iter_12][for_iter_9]; 
        double memref_load_14 = func_arg_4[for_iter_12][for_iter_10]; 
        double arith_mulf_15 = (memref_load_13 * memref_load_14); 
        double memref_load_16 = func_arg_4[for_iter_9][for_iter_10]; 
        double arith_addf_17 = (memref_load_16 + arith_mulf_15); 
        func_arg_4[for_iter_9][for_iter_10] = arith_addf_17; 
      }
      double memref_load_18 = func_arg_4[for_iter_9][for_iter_10]; 
      double arith_mulf_19 = (func_arg_2 * memref_load_18); 
      func_arg_4[for_iter_9][for_iter_10] = arith_mulf_19; 
    }
  }
  return; 

}


{
#include "/opt/peqc-mlir-volume/peqc-mlir-objfifo-pristine/PEQC-MLIR/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
