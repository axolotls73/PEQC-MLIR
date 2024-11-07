#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 29; 
  double arith_const_9 = 0.333330; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_12; for_iter_14 < arith_const_8; for_iter_14 += arith_const_7) {
      int arith_addi_15 = (for_iter_14 + arith_const_6); 
      double memref_load_16 = func_arg_2[arith_addi_15]; 
      double memref_load_17 = func_arg_2[for_iter_14]; 
      double arith_addf_18 = (memref_load_16 + memref_load_17); 
      int arith_addi_19 = (for_iter_14 + arith_const_12); 
      double memref_load_20 = func_arg_2[arith_addi_19]; 
      double arith_addf_21 = (arith_addf_18 + memref_load_20); 
      double arith_mulf_22 = (arith_addf_21 * arith_const_9); 
      func_arg_3[for_iter_14] = arith_mulf_22; 
      int arith_addi_23 = (for_iter_14 + arith_const_12); 
      int arith_addi_24 = (arith_addi_23 + arith_const_6); 
      double memref_load_25 = func_arg_2[arith_addi_24]; 
      double memref_load_26 = func_arg_2[arith_addi_23]; 
      double arith_addf_27 = (memref_load_25 + memref_load_26); 
      int arith_addi_28 = (arith_addi_23 + arith_const_12); 
      double memref_load_29 = func_arg_2[arith_addi_28]; 
      double arith_addf_30 = (arith_addf_27 + memref_load_29); 
      double arith_mulf_31 = (arith_addf_30 * arith_const_9); 
      func_arg_3[arith_addi_23] = arith_mulf_31; 
      int arith_addi_32 = (for_iter_14 + arith_const_5); 
      int arith_addi_33 = (arith_addi_32 + arith_const_6); 
      double memref_load_34 = func_arg_2[arith_addi_33]; 
      double memref_load_35 = func_arg_2[arith_addi_32]; 
      double arith_addf_36 = (memref_load_34 + memref_load_35); 
      int arith_addi_37 = (arith_addi_32 + arith_const_12); 
      double memref_load_38 = func_arg_2[arith_addi_37]; 
      double arith_addf_39 = (arith_addf_36 + memref_load_38); 
      double arith_mulf_40 = (arith_addf_39 * arith_const_9); 
      func_arg_3[arith_addi_32] = arith_mulf_40; 
      int arith_addi_41 = (for_iter_14 + arith_const_4); 
      int arith_addi_42 = (arith_addi_41 + arith_const_6); 
      double memref_load_43 = func_arg_2[arith_addi_42]; 
      double memref_load_44 = func_arg_2[arith_addi_41]; 
      double arith_addf_45 = (memref_load_43 + memref_load_44); 
      int arith_addi_46 = (arith_addi_41 + arith_const_12); 
      double memref_load_47 = func_arg_2[arith_addi_46]; 
      double arith_addf_48 = (arith_addf_45 + memref_load_47); 
      double arith_mulf_49 = (arith_addf_48 * arith_const_9); 
      func_arg_3[arith_addi_41] = arith_mulf_49; 
    }
    for (int for_iter_50 = arith_const_12; for_iter_50 < arith_const_8; for_iter_50 += arith_const_7) {
      int arith_addi_51 = (for_iter_50 + arith_const_6); 
      double memref_load_52 = func_arg_3[arith_addi_51]; 
      double memref_load_53 = func_arg_3[for_iter_50]; 
      double arith_addf_54 = (memref_load_52 + memref_load_53); 
      int arith_addi_55 = (for_iter_50 + arith_const_12); 
      double memref_load_56 = func_arg_3[arith_addi_55]; 
      double arith_addf_57 = (arith_addf_54 + memref_load_56); 
      double arith_mulf_58 = (arith_addf_57 * arith_const_9); 
      func_arg_2[for_iter_50] = arith_mulf_58; 
      int arith_addi_59 = (for_iter_50 + arith_const_12); 
      int arith_addi_60 = (arith_addi_59 + arith_const_6); 
      double memref_load_61 = func_arg_3[arith_addi_60]; 
      double memref_load_62 = func_arg_3[arith_addi_59]; 
      double arith_addf_63 = (memref_load_61 + memref_load_62); 
      int arith_addi_64 = (arith_addi_59 + arith_const_12); 
      double memref_load_65 = func_arg_3[arith_addi_64]; 
      double arith_addf_66 = (arith_addf_63 + memref_load_65); 
      double arith_mulf_67 = (arith_addf_66 * arith_const_9); 
      func_arg_2[arith_addi_59] = arith_mulf_67; 
      int arith_addi_68 = (for_iter_50 + arith_const_5); 
      int arith_addi_69 = (arith_addi_68 + arith_const_6); 
      double memref_load_70 = func_arg_3[arith_addi_69]; 
      double memref_load_71 = func_arg_3[arith_addi_68]; 
      double arith_addf_72 = (memref_load_70 + memref_load_71); 
      int arith_addi_73 = (arith_addi_68 + arith_const_12); 
      double memref_load_74 = func_arg_3[arith_addi_73]; 
      double arith_addf_75 = (arith_addf_72 + memref_load_74); 
      double arith_mulf_76 = (arith_addf_75 * arith_const_9); 
      func_arg_2[arith_addi_68] = arith_mulf_76; 
      int arith_addi_77 = (for_iter_50 + arith_const_4); 
      int arith_addi_78 = (arith_addi_77 + arith_const_6); 
      double memref_load_79 = func_arg_3[arith_addi_78]; 
      double memref_load_80 = func_arg_3[arith_addi_77]; 
      double arith_addf_81 = (memref_load_79 + memref_load_80); 
      int arith_addi_82 = (arith_addi_77 + arith_const_12); 
      double memref_load_83 = func_arg_3[arith_addi_82]; 
      double arith_addf_84 = (arith_addf_81 + memref_load_83); 
      double arith_mulf_85 = (arith_addf_84 * arith_const_9); 
      func_arg_2[arith_addi_77] = arith_mulf_85; 
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


  kernel_jacobi_1d(tsteps, n, A, B);

}

#pragma pocc-region-end
