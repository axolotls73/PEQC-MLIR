#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 8; 
  int arith_const_8 = -1; 
  int arith_const_9 = 31; 
  int arith_const_10 = 10; 
  int arith_const_11 = 7; 
  int arith_const_12 = -7; 
  int arith_const_13 = 32; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 3; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    int arith_muli_19 = (for_iter_18 * arith_const_13); 
    int arith_addi_20 = (arith_muli_19 + arith_const_12); 
    int arith_cmpi_21 = ((arith_addi_20 <= arith_const_15) ? 1 : 0); 
    int arith_subi_22 = (arith_const_15 - arith_addi_20); 
    int arith_subi_23 = (arith_addi_20 - arith_const_17); 
    int arith_select_24 = (arith_cmpi_21 ? arith_subi_22 : arith_subi_23); 
    int arith_divi_25 = (arith_select_24 / arith_const_11); 
    int arith_subi_26 = (arith_const_15 - arith_divi_25); 
    int arith_addi_27 = (arith_divi_25 + arith_const_17); 
    int arith_select_28 = (arith_cmpi_21 ? arith_subi_26 : arith_addi_27); 
    int arith_maxsi_29 = max(arith_select_28, arith_const_15); 
    int arith_muli_30 = (for_iter_18 * arith_const_13); 
    int arith_addi_31 = (arith_muli_30 + arith_const_9); 
    int arith_cmpi_32 = ((arith_addi_31 < arith_const_15) ? 1 : 0); 
    int arith_subi_33 = (arith_const_8 - arith_addi_31); 
    int arith_select_34 = (arith_cmpi_32 ? arith_subi_33 : arith_addi_31); 
    int arith_divi_35 = (arith_select_34 / arith_const_11); 
    int arith_subi_36 = (arith_const_8 - arith_divi_35); 
    int arith_select_37 = (arith_cmpi_32 ? arith_subi_36 : arith_divi_35); 
    int arith_addi_38 = (arith_select_37 + arith_const_17); 
    int arith_minsi_39 = min(arith_addi_38, arith_const_10); 
    for (int for_iter_40 = arith_maxsi_29; for_iter_40 < arith_minsi_39; for_iter_40 += arith_const_17) {
      int arith_muli_41 = (for_iter_18 * arith_const_13); 
      int arith_muli_42 = (for_iter_40 * arith_const_11); 
      int arith_maxsi_43 = max(arith_muli_41, arith_muli_42); 
      int arith_muli_44 = (for_iter_18 * arith_const_13); 
      int arith_addi_45 = (arith_muli_44 + arith_const_13); 
      int arith_muli_46 = (for_iter_40 * arith_const_11); 
      int arith_addi_47 = (arith_muli_46 + arith_const_7); 
      int arith_minsi_48 = min(arith_addi_45, arith_addi_47); 
      for (int for_iter_49 = arith_maxsi_43; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_17) {
        for (int for_iter_50 = arith_const_15; for_iter_50 < arith_const_6; for_iter_50 += arith_const_17) {
          func_arg_5[for_iter_50] = arith_const_14; 
        }
        for (int for_iter_51 = arith_const_15; for_iter_51 < arith_const_6; for_iter_51 += arith_const_17) {
          for (int for_iter_52 = arith_const_15; for_iter_52 < arith_const_6; for_iter_52 += arith_const_17) {
            double memref_load_53 = func_arg_5[for_iter_52]; 
            int arith_muli_54 = (for_iter_40 * arith_const_12); 
            int arith_addi_55 = (arith_muli_54 + for_iter_49); 
            double memref_load_56 = func_arg_3[for_iter_40][arith_addi_55][for_iter_51]; 
            double memref_load_57 = func_arg_4[for_iter_51][for_iter_52]; 
            double arith_mulf_58 = (memref_load_56 * memref_load_57); 
            double arith_addf_59 = (memref_load_53 + arith_mulf_58); 
            func_arg_5[for_iter_52] = arith_addf_59; 
          }
        }
        for (int for_iter_60 = arith_const_15; for_iter_60 < arith_const_6; for_iter_60 += arith_const_17) {
          double memref_load_61 = func_arg_5[for_iter_60]; 
          int arith_muli_62 = (for_iter_40 * arith_const_12); 
          int arith_addi_63 = (arith_muli_62 + for_iter_49); 
          func_arg_3[for_iter_40][arith_addi_63][for_iter_60] = memref_load_61; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}

#pragma pocc-region-end
