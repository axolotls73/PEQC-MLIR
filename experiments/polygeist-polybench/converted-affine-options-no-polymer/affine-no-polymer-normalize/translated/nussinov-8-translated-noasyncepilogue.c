#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_nussinov(int func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 59; 
  int arith_const_4 = -1; 
  int arith_const_5 = 3; 
  int arith_const_6 = 0; 
  int arith_const_7 = 60; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < for_iter_9; for_iter_10 += arith_const_8) {
      int arith_muli_11 = (for_iter_9 * arith_const_4); 
      int arith_addi_12 = (arith_muli_11 + for_iter_10); 
      int arith_addi_13 = (arith_addi_12 + arith_const_7); 
      int arith_muli_14 = (for_iter_9 * arith_const_4); 
      int arith_addi_15 = (arith_muli_14 + for_iter_10); 
      int arith_addi_16 = (arith_addi_15 + arith_const_3); 
      int arith_cmpi_17 = (arith_addi_16 >= arith_const_6); 
      if (arith_cmpi_17) {
        int arith_muli_18 = (for_iter_9 * arith_const_4); 
        int arith_addi_19 = (arith_muli_18 + arith_const_3); 
        int memref_load_20 = func_arg_2[arith_addi_19][arith_addi_13]; 
        int arith_muli_21 = (for_iter_9 * arith_const_4); 
        int arith_addi_22 = (arith_muli_21 + arith_const_3); 
        int arith_addi_23 = (arith_addi_13 + arith_const_4); 
        int memref_load_24 = func_arg_2[arith_addi_22][arith_addi_23]; 
        int arith_cmpi_25 = (memref_load_20 >= memref_load_24); 
        int arith_select_26 = (arith_cmpi_25 ? memref_load_20 : memref_load_24); 
        int arith_muli_27 = (for_iter_9 * arith_const_4); 
        int arith_addi_28 = (arith_muli_27 + arith_const_3); 
        func_arg_2[arith_addi_28][arith_addi_13] = arith_select_26; 
      }
      int arith_addi_29 = (for_iter_9 + arith_const_4); 
      int arith_cmpi_30 = (arith_addi_29 >= arith_const_6); 
      if (arith_cmpi_30) {
        int arith_muli_31 = (for_iter_9 * arith_const_4); 
        int arith_addi_32 = (arith_muli_31 + arith_const_3); 
        int memref_load_33 = func_arg_2[arith_addi_32][arith_addi_13]; 
        int arith_muli_34 = (for_iter_9 * arith_const_4); 
        int arith_addi_35 = (arith_muli_34 + arith_const_7); 
        int memref_load_36 = func_arg_2[arith_addi_35][arith_addi_13]; 
        int arith_cmpi_37 = (memref_load_33 >= memref_load_36); 
        int arith_select_38 = (arith_cmpi_37 ? memref_load_33 : memref_load_36); 
        int arith_muli_39 = (for_iter_9 * arith_const_4); 
        int arith_addi_40 = (arith_muli_39 + arith_const_3); 
        func_arg_2[arith_addi_40][arith_addi_13] = arith_select_38; 
      }
      int arith_muli_41 = (for_iter_9 * arith_const_4); 
      int arith_addi_42 = (arith_muli_41 + for_iter_10); 
      int arith_addi_43 = (arith_addi_42 + arith_const_3); 
      int arith_cmpi_44 = (arith_addi_43 >= arith_const_6); 
      int arith_addi_45 = (for_iter_9 + arith_const_4); 
      int arith_cmpi_46 = (arith_addi_45 >= arith_const_6); 
      int arith_andi_47 = (arith_cmpi_44 & arith_cmpi_46); 
      if (arith_andi_47) {
        int arith_addi_48 = (for_iter_10 + arith_const_4); 
        int arith_cmpi_49 = (arith_addi_48 >= arith_const_6); 
        if (arith_cmpi_49) {
          int arith_muli_61 = (for_iter_9 * arith_const_4); 
          int arith_addi_62 = (arith_muli_61 + arith_const_3); 
          int memref_load_63 = func_arg_2[arith_addi_62][arith_addi_13]; 
          int arith_muli_64 = (for_iter_9 * arith_const_4); 
          int arith_addi_65 = (arith_muli_64 + arith_const_7); 
          int arith_addi_66 = (arith_addi_13 + arith_const_4); 
          int memref_load_67 = func_arg_2[arith_addi_65][arith_addi_66]; 
          int arith_muli_68 = (for_iter_9 * arith_const_4); 
          int arith_addi_69 = (arith_muli_68 + arith_const_3); 
          int memref_load_70 = func_arg_1[arith_addi_69]; 
          int memref_load_71 = func_arg_1[arith_addi_13]; 
          int arith_addi_72 = (memref_load_70 + memref_load_71); 
          int arith_cmpi_73 = (arith_addi_72 == arith_const_5); 
          int arith_extui_74 = arith_cmpi_73; 
          int arith_addi_75 = (memref_load_67 + arith_extui_74); 
          int arith_cmpi_76 = (memref_load_63 >= arith_addi_75); 
          int arith_select_77 = (arith_cmpi_76 ? memref_load_63 : arith_addi_75); 
          int arith_muli_78 = (for_iter_9 * arith_const_4); 
          int arith_addi_79 = (arith_muli_78 + arith_const_3); 
          func_arg_2[arith_addi_79][arith_addi_13] = arith_select_77; 
        }
        else {
          int arith_muli_50 = (for_iter_9 * arith_const_4); 
          int arith_addi_51 = (arith_muli_50 + arith_const_3); 
          int memref_load_52 = func_arg_2[arith_addi_51][arith_addi_13]; 
          int arith_muli_53 = (for_iter_9 * arith_const_4); 
          int arith_addi_54 = (arith_muli_53 + arith_const_7); 
          int arith_addi_55 = (arith_addi_13 + arith_const_4); 
          int memref_load_56 = func_arg_2[arith_addi_54][arith_addi_55]; 
          int arith_cmpi_57 = (memref_load_52 >= memref_load_56); 
          int arith_select_58 = (arith_cmpi_57 ? memref_load_52 : memref_load_56); 
          int arith_muli_59 = (for_iter_9 * arith_const_4); 
          int arith_addi_60 = (arith_muli_59 + arith_const_3); 
          func_arg_2[arith_addi_60][arith_addi_13] = arith_select_58; 
        }
      }
      for (int for_iter_80 = arith_const_6; for_iter_80 < for_iter_10; for_iter_80 += arith_const_8) {
        int arith_muli_81 = (for_iter_9 * arith_const_4); 
        int arith_addi_82 = (arith_muli_81 + for_iter_80); 
        int arith_addi_83 = (arith_addi_82 + arith_const_7); 
        int arith_muli_84 = (for_iter_9 * arith_const_4); 
        int arith_addi_85 = (arith_muli_84 + arith_const_3); 
        int memref_load_86 = func_arg_2[arith_addi_85][arith_addi_13]; 
        int arith_muli_87 = (for_iter_9 * arith_const_4); 
        int arith_addi_88 = (arith_muli_87 + arith_const_3); 
        int memref_load_89 = func_arg_2[arith_addi_88][arith_addi_83]; 
        int arith_addi_90 = (arith_addi_83 + arith_const_8); 
        int memref_load_91 = func_arg_2[arith_addi_90][arith_addi_13]; 
        int arith_addi_92 = (memref_load_89 + memref_load_91); 
        int arith_cmpi_93 = (memref_load_86 >= arith_addi_92); 
        int arith_select_94 = (arith_cmpi_93 ? memref_load_86 : arith_addi_92); 
        int arith_muli_95 = (for_iter_9 * arith_const_4); 
        int arith_addi_96 = (arith_muli_95 + arith_const_3); 
        func_arg_2[arith_addi_96][arith_addi_13] = arith_select_94; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int* seq;
  int* table;


  kernel_nussinov(n, seq, table);

}

#pragma pocc-region-end
