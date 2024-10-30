#pragma pocc-region-start
#include "interp_macros.h"
void forward(int* func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 4; 
  int* memref_alloc_4; 
  int arith_const_5 = 0; 
  int arith_const_6 = 1; 
  "scf.parallel(%2, %2, %0, %0, %3, %3) <{operandSegmentSizes = array<i32: 2, 2, 2, 0>}> "; 
  {
    int arith_const_7 = 1; 
    int arith_const_8 = 4; 
    int arith_const_9 = 2; 
    int arith_const_10 = 0; 
    int arith_const_11 = 16; 
    int arith_const_12 = 8; 
    int arith_muli_14 = (var_13 * arith_const_8); 
    int arith_muli_16 = (var_15 * arith_const_8); 
    int* memref_alloc_17; 
    for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_11; for_iter_18 += arith_const_12) {
      int* memref_alloc_19; 
      int* memref_alloc_20; 
      int arith_const_21 = 1; 
      int* subview_22; 
      _past_array_copy_2d(func_arg_0, arith_muli_14, for_iter_18, 1, 1, subview_22, 0, 0, 1, 1, 4, 8); 
      _past_array_copy_2d(subview_22, 0, 0, 1, 1, memref_alloc_19, 0, 0, 1, 1, 4, 8); 
      int arith_const_23 = 1; 
      int* subview_24; 
      _past_array_copy_2d(func_arg_1, for_iter_18, arith_muli_16, 1, 1, subview_24, 0, 0, 1, 1, 8, 4); 
      _past_array_copy_2d(subview_24, 0, 0, 1, 1, memref_alloc_20, 0, 0, 1, 1, 8, 4); 
      int arith_const_25 = 0; 
      int arith_const_26 = 1; 
      "scf.parallel(%27, %27, %6, %6, %28, %28) <{operandSegmentSizes = array<i32: 2, 2, 2, 0>}> "; 
      {
        int arith_const_27 = 4; 
        int arith_const_28 = 1; 
        int arith_const_29 = 0; 
        int arith_const_30 = 0; 
        int arith_const_31 = 8; 
        int arith_const_32 = 2; 
        int arith_muli_34 = (var_33 * arith_const_32); 
        int arith_muli_36 = (var_35 * arith_const_32); 
        int* memref_alloc_37; 
        for (int for_iter_38 = arith_const_30; for_iter_38 < arith_const_32; for_iter_38 += arith_const_28) {
          for (int for_iter_39 = arith_const_30; for_iter_39 < arith_const_32; for_iter_39 += arith_const_28) {
            memref_alloc_37[for_iter_38][for_iter_39] = arith_const_29; 
          }
        }
        for (int for_iter_40 = arith_const_30; for_iter_40 < arith_const_31; for_iter_40 += arith_const_32) {
          int* memref_alloc_41; 
          int* memref_alloc_42; 
          int arith_const_43 = 1; 
          int* subview_44; 
          _past_array_copy_2d(memref_alloc_19, arith_muli_34, for_iter_40, 1, 1, subview_44, 0, 0, 1, 1, 2, 2); 
          _past_array_copy_2d(subview_44, 0, 0, 1, 1, memref_alloc_41, 0, 0, 1, 1, 2, 2); 
          int arith_const_45 = 1; 
          int* subview_46; 
          _past_array_copy_2d(memref_alloc_20, for_iter_40, arith_muli_36, 1, 1, subview_46, 0, 0, 1, 1, 2, 2); 
          _past_array_copy_2d(subview_46, 0, 0, 1, 1, memref_alloc_42, 0, 0, 1, 1, 2, 2); 
          for (int for_iter_47 = arith_const_30; for_iter_47 < arith_const_32; for_iter_47 += arith_const_28) {
            for (int for_iter_48 = arith_const_30; for_iter_48 < arith_const_32; for_iter_48 += arith_const_28) {
              for (int for_iter_49 = arith_const_30; for_iter_49 < arith_const_32; for_iter_49 += arith_const_28) {
                int memref_load_50 = memref_alloc_41[for_iter_47][for_iter_49]; 
                int memref_load_51 = memref_alloc_42[for_iter_49][for_iter_48]; 
                int memref_load_52 = memref_alloc_37[for_iter_47][for_iter_48]; 
                int arith_muli_53 = (memref_load_50 * memref_load_51); 
                int arith_addi_54 = (memref_load_52 + arith_muli_53); 
                memref_alloc_37[for_iter_47][for_iter_48] = arith_addi_54; 
              }
            }
          }
        }
        int arith_const_55 = 1; 
        int* subview_56; 
        _past_array_copy_2d(memref_alloc_17, arith_muli_34, arith_muli_36, 1, 1, subview_56, 0, 0, 1, 1, 2, 2); 
        _past_array_copy_2d(memref_alloc_37, 0, 0, 1, 1, subview_56, 0, 0, 1, 1, 2, 2); 
        "scf.reduce() : () -> ()"; 
        _past_array_copy_2d(subview_56, 0, 0, 1, 1, memref_alloc_17, arith_muli_34, arith_muli_36, 1, 1, 2, 2); 
      }
    }
    int arith_const_57 = 1; 
    int* subview_58; 
    _past_array_copy_2d(memref_alloc_4, arith_muli_14, arith_muli_16, 1, 1, subview_58, 0, 0, 1, 1, 4, 4); 
    _past_array_copy_2d(memref_alloc_17, 0, 0, 1, 1, subview_58, 0, 0, 1, 1, 4, 4); 
    "scf.reduce() : () -> ()"; 
    _past_array_copy_2d(subview_58, 0, 0, 1, 1, memref_alloc_4, arith_muli_14, arith_muli_16, 1, 1, 4, 4); 
  }
  _past_array_copy_2d(memref_alloc_4, 0, 0, 1, 1, func_arg_2, 0, 0, 1, 1, 16, 16); 
  return; 

}


{
#include "prologue.h"
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}


#pragma pocc-region-end
