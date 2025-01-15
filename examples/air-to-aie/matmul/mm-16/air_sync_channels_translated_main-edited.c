#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/scripts/interp_macros.h"

void forward(int* func_arg_48, int* func_arg_49, int* func_arg_50)
{
  int arith_const_0 = 2;
  int arith_const_1 = 1;
  int arith_const_2 = 0;
  void memref_global_3;
  int* nested_alloc_4;
  memref_global_3[0][0] = nested_alloc_4;
  int* memref_global_5;
  for (int for_iter_6 = arith_const_2; for_iter_6 < arith_const_1; for_iter_6 += arith_const_1) {
    for (int for_iter_7 = arith_const_2; for_iter_7 < arith_const_1; for_iter_7 += arith_const_1) {
      int verif_semaphore_8;
      PAST_NEW_SEMAPHORE(verif_semaphore_8);
      PAST_SET_SEMAPHORE(verif_semaphore_8, arith_const_2);
      memref_global_5[for_iter_6][for_iter_7] = verif_semaphore_8;
    }
  }
  void memref_global_9;
  int* nested_alloc_10;
  memref_global_9[0][0] = nested_alloc_10;
  int* memref_global_11;
  for (int for_iter_12 = arith_const_2; for_iter_12 < arith_const_1; for_iter_12 += arith_const_1) {
    for (int for_iter_13 = arith_const_2; for_iter_13 < arith_const_1; for_iter_13 += arith_const_1) {
      int verif_semaphore_14;
      PAST_NEW_SEMAPHORE(verif_semaphore_14);
      PAST_SET_SEMAPHORE(verif_semaphore_14, arith_const_2);
      memref_global_11[for_iter_12][for_iter_13] = verif_semaphore_14;
    }
  }
  void memref_global_15;
  int* nested_alloc_16;
  memref_global_15[0][0] = nested_alloc_16;
  int* nested_alloc_17;
  memref_global_15[0][1] = nested_alloc_17;
  int* nested_alloc_18;
  memref_global_15[1][0] = nested_alloc_18;
  int* nested_alloc_19;
  memref_global_15[1][1] = nested_alloc_19;
  int* memref_global_20;
  for (int for_iter_21 = arith_const_2; for_iter_21 < arith_const_0; for_iter_21 += arith_const_1) {
    for (int for_iter_22 = arith_const_2; for_iter_22 < arith_const_0; for_iter_22 += arith_const_1) {
      int verif_semaphore_23;
      PAST_NEW_SEMAPHORE(verif_semaphore_23);
      PAST_SET_SEMAPHORE(verif_semaphore_23, arith_const_2);
      memref_global_20[for_iter_21][for_iter_22] = verif_semaphore_23;
    }
  }
  void memref_global_24;
  int* nested_alloc_25;
  memref_global_24[0][0] = nested_alloc_25;
  int* nested_alloc_26;
  memref_global_24[0][1] = nested_alloc_26;
  int* nested_alloc_27;
  memref_global_24[1][0] = nested_alloc_27;
  int* nested_alloc_28;
  memref_global_24[1][1] = nested_alloc_28;
  int* memref_global_29;
  for (int for_iter_30 = arith_const_2; for_iter_30 < arith_const_0; for_iter_30 += arith_const_1) {
    for (int for_iter_31 = arith_const_2; for_iter_31 < arith_const_0; for_iter_31 += arith_const_1) {
      int verif_semaphore_32;
      PAST_NEW_SEMAPHORE(verif_semaphore_32);
      PAST_SET_SEMAPHORE(verif_semaphore_32, arith_const_2);
      memref_global_29[for_iter_30][for_iter_31] = verif_semaphore_32;
    }
  }
  void memref_global_33;
  int* nested_alloc_34;
  memref_global_33[0][0] = nested_alloc_34;
  int* nested_alloc_35;
  memref_global_33[0][1] = nested_alloc_35;
  int* nested_alloc_36;
  memref_global_33[1][0] = nested_alloc_36;
  int* nested_alloc_37;
  memref_global_33[1][1] = nested_alloc_37;
  int* memref_global_38;
  for (int for_iter_39 = arith_const_2; for_iter_39 < arith_const_0; for_iter_39 += arith_const_1) {
    for (int for_iter_40 = arith_const_2; for_iter_40 < arith_const_0; for_iter_40 += arith_const_1) {
      int verif_semaphore_41;
      PAST_NEW_SEMAPHORE(verif_semaphore_41);
      PAST_SET_SEMAPHORE(verif_semaphore_41, arith_const_2);
      memref_global_38[for_iter_39][for_iter_40] = verif_semaphore_41;
    }
  }
  void memref_global_42;
  int* nested_alloc_43;
  memref_global_42[0][0] = nested_alloc_43;
  int* memref_global_44;
  for (int for_iter_45 = arith_const_2; for_iter_45 < arith_const_1; for_iter_45 += arith_const_1) {
    for (int for_iter_46 = arith_const_2; for_iter_46 < arith_const_1; for_iter_46 += arith_const_1) {
      int verif_semaphore_47;
      PAST_NEW_SEMAPHORE(verif_semaphore_47);
      PAST_SET_SEMAPHORE(verif_semaphore_47, arith_const_2);
      memref_global_44[for_iter_45][for_iter_46] = verif_semaphore_47;
    }
  }


    int arith_const_51 = 0;
    int arith_const_52 = 4;
    int arith_const_53 = 8;
    int arith_const_54 = 16;
    int arith_const_55 = 1;
    int arith_const_56 = 0;
    int arith_const_57 = 2;
    int arith_const_58 = 1;
    int* memref_alloc_59;
    PAST_NEW_SEMAPHORE(execute_token_60);
    #pragma peqc async_execute
    {
      PAST_SET_SEMAPHORE(execute_token_60, PAST_TASK_FINISHED);
    }
    PAST_NEW_SEMAPHORE(execute_token_61);
    #pragma peqc async_execute
    {
      PAST_WAIT_SEMAPHORE(execute_token_60, PAST_TASK_FINISHED);
      int* async_group_62;
      int async_group_index_63 = 0;
      int for_iter_arg_65 = arith_const_56;
      for (int for_iter_64 = arith_const_56; for_iter_64 < arith_const_57; for_iter_64 += arith_const_55) {
        int for_iter_arg_67 = for_iter_arg_65;
        for (int for_iter_66 = arith_const_56; for_iter_66 < arith_const_57; for_iter_66 += arith_const_55) {
          PAST_NEW_SEMAPHORE(execute_token_68);
          #pragma peqc async_execute
          {
            int arith_const_69 = 1;
            int* memref_alloc_70;
            PAST_NEW_SEMAPHORE(execute_token_71);
            #pragma peqc async_execute
            {
              int arith_muli_72 = (for_iter_64 * arith_const_53);
              memref_alloc_70[arith_const_69] = arith_muli_72;
              PAST_SET_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED);
            }
            PAST_NEW_SEMAPHORE(execute_token_73);
            #pragma peqc async_execute
            {
              PAST_WAIT_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED);
              int memref_load_74 = memref_alloc_70[arith_const_69];
              int* subview_75;
              _past_array_copy_2d(func_arg_48, memref_load_74, 0, 1, 1, subview_75, 0, 0, 1, 1, 8, 16);
              int memref_load_76 = memref_global_5[arith_const_56][arith_const_56];
              PAST_WAIT_SEMAPHORE(memref_load_76, arith_const_56);
              int* memref_load_77 = memref_global_3[arith_const_56][arith_const_56];
              _past_array_copy_2d(subview_75, 0, 0, 1, 1, memref_load_77, 0, 0, 1, 1, 8, 16);
              PAST_SET_SEMAPHORE(memref_load_76, arith_const_55);
              PAST_SET_SEMAPHORE(execute_token_73, PAST_TASK_FINISHED);
            }
            int arith_const_78 = 1;
            int* memref_alloc_79;
            PAST_NEW_SEMAPHORE(execute_token_80);
            #pragma peqc async_execute
            {
              int arith_muli_81 = (for_iter_66 * arith_const_53);
              memref_alloc_79[arith_const_78] = arith_muli_81;
              PAST_SET_SEMAPHORE(execute_token_80, PAST_TASK_FINISHED);
            }
            PAST_NEW_SEMAPHORE(execute_token_82);
            #pragma peqc async_execute
            {
              PAST_WAIT_SEMAPHORE(execute_token_80, PAST_TASK_FINISHED);
              int memref_load_83 = memref_alloc_79[arith_const_78];
              int* subview_84;
              _past_array_copy_2d(func_arg_49, 0, memref_load_83, 1, 1, subview_84, 0, 0, 1, 1, 16, 8);
              int memref_load_85 = memref_global_11[arith_const_56][arith_const_56];
              PAST_WAIT_SEMAPHORE(memref_load_85, arith_const_56);
              int* memref_load_86 = memref_global_9[arith_const_56][arith_const_56];
              _past_array_copy_2d(subview_84, 0, 0, 1, 1, memref_load_86, 0, 0, 1, 1, 16, 8);
              PAST_SET_SEMAPHORE(memref_load_85, arith_const_55);
              PAST_SET_SEMAPHORE(execute_token_82, PAST_TASK_FINISHED);
            }
            int arith_const_87 = 1;
            int* memref_alloc_88;
            PAST_NEW_SEMAPHORE(execute_token_89);
            #pragma peqc async_execute
            {
              int arith_muli_90 = (for_iter_66 * arith_const_53);
              memref_alloc_88[arith_const_87] = arith_muli_90;
              PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED);
            }
            int arith_const_91 = 1;
            int* memref_alloc_92;
            PAST_NEW_SEMAPHORE(execute_token_93);
            #pragma peqc async_execute
            {
              int arith_muli_94 = (for_iter_64 * arith_const_53);
              memref_alloc_92[arith_const_91] = arith_muli_94;
              PAST_SET_SEMAPHORE(execute_token_93, PAST_TASK_FINISHED);
            }
            PAST_NEW_SEMAPHORE(execute_token_95);
            #pragma peqc async_execute
            {
              PAST_WAIT_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED);
              PAST_WAIT_SEMAPHORE(execute_token_93, PAST_TASK_FINISHED);
              int memref_load_96 = memref_alloc_88[arith_const_87];
              int memref_load_97 = memref_alloc_92[arith_const_91];
              int* subview_98;
              _past_array_copy_2d(memref_alloc_59, memref_load_97, memref_load_96, 1, 1, subview_98, 0, 0, 1, 1, 8, 8);
              int memref_load_99 = memref_global_44[arith_const_56][arith_const_56];
              PAST_WAIT_SEMAPHORE(memref_load_99, arith_const_55);
              int* memref_load_100 = memref_global_42[arith_const_56][arith_const_56];
              _past_array_copy_2d(memref_load_100, 0, 0, 1, 1, subview_98, 0, 0, 1, 1, 8, 8);
              PAST_SET_SEMAPHORE(memref_load_99, arith_const_56);
              _past_array_copy_2d(subview_98, 0, 0, 1, 1, memref_alloc_59, memref_load_97, memref_load_96, 1, 1, 8, 8);
              PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED);
            }
            PAST_NEW_SEMAPHORE(execute_token_101);
            #pragma peqc async_execute
            {
              PAST_NEW_SEMAPHORE(execute_token_102);
              #pragma peqc async_execute
              {
                PAST_SET_SEMAPHORE(execute_token_102, PAST_TASK_FINISHED);
              }
              PAST_NEW_SEMAPHORE(execute_token_103);
              #pragma peqc async_execute
              {
                PAST_SET_SEMAPHORE(execute_token_103, PAST_TASK_FINISHED);
              }
              int arith_const_104 = 1;
              int* memref_alloc_105;
              PAST_NEW_SEMAPHORE(execute_token_106);
              #pragma peqc async_execute
              {
                PAST_SET_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED);
              }
              int arith_const_107 = 1;
              int* memref_alloc_108;
              PAST_NEW_SEMAPHORE(execute_token_109);
              #pragma peqc async_execute
              {
                PAST_SET_SEMAPHORE(execute_token_109, PAST_TASK_FINISHED);
              }
              int arith_const_110 = 1;
              int* memref_alloc_111;
              PAST_NEW_SEMAPHORE(execute_token_112);
              #pragma peqc async_execute
              {
                PAST_SET_SEMAPHORE(execute_token_112, PAST_TASK_FINISHED);
              }
              PAST_NEW_SEMAPHORE(execute_token_113);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_103, PAST_TASK_FINISHED);
                PAST_WAIT_SEMAPHORE(execute_token_109, PAST_TASK_FINISHED);
                int memref_load_114 = memref_global_5[arith_const_56][arith_const_56];
                PAST_WAIT_SEMAPHORE(memref_load_114, arith_const_55);
                int* memref_load_115 = memref_global_3[arith_const_56][arith_const_56];
                _past_array_copy_2d(memref_load_115, 0, 0, 1, 1, memref_alloc_108, 0, 0, 1, 1, 8, 16);
                PAST_SET_SEMAPHORE(memref_load_114, arith_const_56);
                PAST_SET_SEMAPHORE(execute_token_113, PAST_TASK_FINISHED);
              }
              PAST_NEW_SEMAPHORE(execute_token_116);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_102, PAST_TASK_FINISHED);
                PAST_WAIT_SEMAPHORE(execute_token_112, PAST_TASK_FINISHED);
                int memref_load_117 = memref_global_11[arith_const_56][arith_const_56];
                PAST_WAIT_SEMAPHORE(memref_load_117, arith_const_55);
                int* memref_load_118 = memref_global_9[arith_const_56][arith_const_56];
                _past_array_copy_2d(memref_load_118, 0, 0, 1, 1, memref_alloc_111, 0, 0, 1, 1, 16, 8);
                PAST_SET_SEMAPHORE(memref_load_117, arith_const_56);
                PAST_SET_SEMAPHORE(execute_token_116, PAST_TASK_FINISHED);
              }
              PAST_NEW_SEMAPHORE(execute_token_119);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_113, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_119, PAST_TASK_FINISHED);
              }
              int arith_const_120 = 0;
              int* async_group_121;
              int async_group_index_122 = 0;
              async_group_121[async_group_index_122] = execute_token_119;
              async_group_index_122++;
              PAST_WAIT_SEMAPHORE_ALL(async_group_121, async_group_index_122, PAST_TASK_FINISHED);
              for (int for_iter_123 = arith_const_56; for_iter_123 < arith_const_57; for_iter_123 += arith_const_55) {
                for (int for_iter_124 = arith_const_56; for_iter_124 < arith_const_57; for_iter_124 += arith_const_55) {
                  int arith_const_125 = 1;
                  int* memref_alloc_126;
                  PAST_NEW_SEMAPHORE(execute_token_127);
                  #pragma peqc async_execute
                  {
                    int arith_muli_128 = (for_iter_123 * arith_const_52);
                    memref_alloc_126[arith_const_125] = arith_muli_128;
                    PAST_SET_SEMAPHORE(execute_token_127, PAST_TASK_FINISHED);
                  }
                  PAST_NEW_SEMAPHORE(execute_token_129);
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_127, PAST_TASK_FINISHED);
                    PAST_WAIT_SEMAPHORE(execute_token_113, PAST_TASK_FINISHED);
                    PAST_SET_SEMAPHORE(execute_token_129, PAST_TASK_FINISHED);
                  }
                  int arith_const_130 = 0;
                  int* async_group_131;
                  int async_group_index_132 = 0;
                  async_group_131[async_group_index_132] = execute_token_129;
                  async_group_index_132++;
                  PAST_WAIT_SEMAPHORE_ALL(async_group_131, async_group_index_132, PAST_TASK_FINISHED);
                  for (int for_iter_133 = arith_const_56; for_iter_133 < arith_const_54; for_iter_133 += arith_const_52) {
                    int memref_load_134 = memref_alloc_126[arith_const_125];
                    int* subview_135;
                    _past_array_copy_2d(memref_alloc_108, memref_load_134, for_iter_133, 1, 1, subview_135, 0, 0, 1, 1, 4, 4);
                    int memref_load_136 = memref_global_20[for_iter_123][for_iter_124];
                    PAST_WAIT_SEMAPHORE(memref_load_136, arith_const_56);
                    int* memref_load_137 = memref_global_15[for_iter_123][for_iter_124];
                    _past_array_copy_2d(subview_135, 0, 0, 1, 1, memref_load_137, 0, 0, 1, 1, 4, 4);
                    PAST_SET_SEMAPHORE(memref_load_136, arith_const_55);
                  }
                }
              }
              PAST_NEW_SEMAPHORE(execute_token_138);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_116, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_138, PAST_TASK_FINISHED);
              }
              int arith_const_139 = 0;
              int* async_group_140;
              int async_group_index_141 = 0;
              async_group_140[async_group_index_141] = execute_token_138;
              async_group_index_141++;
              PAST_WAIT_SEMAPHORE_ALL(async_group_140, async_group_index_141, PAST_TASK_FINISHED);
              for (int for_iter_142 = arith_const_56; for_iter_142 < arith_const_57; for_iter_142 += arith_const_55) {
                for (int for_iter_143 = arith_const_56; for_iter_143 < arith_const_57; for_iter_143 += arith_const_55) {
                  int arith_const_144 = 1;
                  int* memref_alloc_145;
                  PAST_NEW_SEMAPHORE(execute_token_146);
                  #pragma peqc async_execute
                  {
                    int arith_muli_147 = (for_iter_143 * arith_const_52);
                    memref_alloc_145[arith_const_144] = arith_muli_147;
                    PAST_SET_SEMAPHORE(execute_token_146, PAST_TASK_FINISHED);
                  }
                  PAST_NEW_SEMAPHORE(execute_token_148);
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_146, PAST_TASK_FINISHED);
                    PAST_WAIT_SEMAPHORE(execute_token_116, PAST_TASK_FINISHED);
                    PAST_SET_SEMAPHORE(execute_token_148, PAST_TASK_FINISHED);
                  }
                  int arith_const_149 = 0;
                  int* async_group_150;
                  int async_group_index_151 = 0;
                  async_group_150[async_group_index_151] = execute_token_148;
                  async_group_index_151++;
                  PAST_WAIT_SEMAPHORE_ALL(async_group_150, async_group_index_151, PAST_TASK_FINISHED);
                  for (int for_iter_152 = arith_const_56; for_iter_152 < arith_const_54; for_iter_152 += arith_const_52) {
                    int memref_load_153 = memref_alloc_145[arith_const_144];
                    int* subview_154;
                    _past_array_copy_2d(memref_alloc_111, for_iter_152, memref_load_153, 1, 1, subview_154, 0, 0, 1, 1, 4, 4);
                    int memref_load_155 = memref_global_29[for_iter_142][for_iter_143];
                    PAST_WAIT_SEMAPHORE(memref_load_155, arith_const_56);
                    int* memref_load_156 = memref_global_24[for_iter_142][for_iter_143];
                    _past_array_copy_2d(subview_154, 0, 0, 1, 1, memref_load_156, 0, 0, 1, 1, 4, 4);
                    PAST_SET_SEMAPHORE(memref_load_155, arith_const_55);
                  }
                }
              }
              PAST_NEW_SEMAPHORE(execute_token_157);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_157, PAST_TASK_FINISHED);
              }
              int arith_const_158 = 0;
              int* async_group_159;
              int async_group_index_160 = 0;
              async_group_159[async_group_index_160] = execute_token_157;
              async_group_index_160++;
              PAST_WAIT_SEMAPHORE_ALL(async_group_159, async_group_index_160, PAST_TASK_FINISHED);
              for (int for_iter_161 = arith_const_56; for_iter_161 < arith_const_57; for_iter_161 += arith_const_55) {
                for (int for_iter_162 = arith_const_56; for_iter_162 < arith_const_57; for_iter_162 += arith_const_55) {
                  int arith_const_163 = 1;
                  int* memref_alloc_164;
                  PAST_NEW_SEMAPHORE(execute_token_165);
                  #pragma peqc async_execute
                  {
                    int arith_muli_166 = (for_iter_162 * arith_const_52);
                    memref_alloc_164[arith_const_163] = arith_muli_166;
                    PAST_SET_SEMAPHORE(execute_token_165, PAST_TASK_FINISHED);
                  }
                  int arith_const_167 = 1;
                  int* memref_alloc_168;
                  PAST_NEW_SEMAPHORE(execute_token_169);
                  #pragma peqc async_execute
                  {
                    int arith_muli_170 = (for_iter_161 * arith_const_52);
                    memref_alloc_168[arith_const_167] = arith_muli_170;
                    PAST_SET_SEMAPHORE(execute_token_169, PAST_TASK_FINISHED);
                  }
                  PAST_NEW_SEMAPHORE(execute_token_171);
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED);
                    PAST_WAIT_SEMAPHORE(execute_token_169, PAST_TASK_FINISHED);
                    PAST_WAIT_SEMAPHORE(execute_token_165, PAST_TASK_FINISHED);
                    PAST_SET_SEMAPHORE(execute_token_171, PAST_TASK_FINISHED);
                  }
                  int arith_const_172 = 0;
                  int* async_group_173;
                  int async_group_index_174 = 0;
                  async_group_173[async_group_index_174] = execute_token_171;
                  async_group_index_174++;
                  PAST_WAIT_SEMAPHORE_ALL(async_group_173, async_group_index_174, PAST_TASK_FINISHED);
                  int memref_load_175 = memref_alloc_164[arith_const_163];
                  int memref_load_176 = memref_alloc_168[arith_const_167];
                  int* subview_177;
                  _past_array_copy_2d(memref_alloc_105, memref_load_176, memref_load_175, 1, 1, subview_177, 0, 0, 1, 1, 4, 4);
                  int memref_load_178 = memref_global_38[for_iter_161][for_iter_162];
                  PAST_WAIT_SEMAPHORE(memref_load_178, arith_const_55);
                  int* memref_load_179 = memref_global_33[for_iter_161][for_iter_162];
                  _past_array_copy_2d(memref_load_179, 0, 0, 1, 1, subview_177, 0, 0, 1, 1, 4, 4);
                  PAST_SET_SEMAPHORE(memref_load_178, arith_const_56);
                  _past_array_copy_2d(subview_177, 0, 0, 1, 1, memref_alloc_105, memref_load_176, memref_load_175, 1, 1, 4, 4);
                }
              }
              PAST_NEW_SEMAPHORE(execute_token_180);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED);
                int* async_group_181;
                int async_group_index_182 = 0;
                int for_iter_arg_184 = arith_const_56;
                for (int for_iter_183 = arith_const_56; for_iter_183 < arith_const_57; for_iter_183 += arith_const_55) {
                  int for_iter_arg_186 = for_iter_arg_184;
                  for (int for_iter_185 = arith_const_56; for_iter_185 < arith_const_57; for_iter_185 += arith_const_55) {
                    PAST_NEW_SEMAPHORE(execute_token_187);
                    #pragma peqc async_execute
                    {
                      int arith_const_188 = 1;
                      int* memref_alloc_189;
                      PAST_NEW_SEMAPHORE(execute_token_190);
                      #pragma peqc async_execute
                      {
                        PAST_SET_SEMAPHORE(execute_token_190, PAST_TASK_FINISHED);
                      }
                      int arith_const_191 = 1;
                      PAST_NEW_SEMAPHORE(execute_token_192);
                      #pragma peqc async_execute
                      {
                        PAST_WAIT_SEMAPHORE(execute_token_190, PAST_TASK_FINISHED);
                        for (int for_iter_193 = arith_const_56; for_iter_193 < arith_const_52; for_iter_193 += arith_const_55) {
                          for (int for_iter_194 = arith_const_56; for_iter_194 < arith_const_52; for_iter_194 += arith_const_55) {
                            memref_alloc_189[for_iter_193][for_iter_194] = arith_const_51;
                          }
                        }
                        PAST_SET_SEMAPHORE(execute_token_192, PAST_TASK_FINISHED);
                      }
                      int for_iter_arg_196 = execute_token_192;
                      for (int for_iter_195 = arith_const_56; for_iter_195 < arith_const_54; for_iter_195 += arith_const_52) {
                        int arith_const_197 = 1;
                        int* memref_alloc_198;
                        PAST_NEW_SEMAPHORE(execute_token_199);
                        #pragma peqc async_execute
                        {
                          PAST_SET_SEMAPHORE(execute_token_199, PAST_TASK_FINISHED);
                        }
                        int arith_const_200 = 1;
                        int* memref_alloc_201;
                        PAST_NEW_SEMAPHORE(execute_token_202);
                        #pragma peqc async_execute
                        {
                          PAST_SET_SEMAPHORE(execute_token_202, PAST_TASK_FINISHED);
                        }
                        PAST_NEW_SEMAPHORE(execute_token_203);
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_196, PAST_TASK_FINISHED);
                          PAST_WAIT_SEMAPHORE(execute_token_199, PAST_TASK_FINISHED);
                          int memref_load_204 = memref_global_20[for_iter_183][for_iter_185];
                          PAST_WAIT_SEMAPHORE(memref_load_204, arith_const_55);
                          int* memref_load_205 = memref_global_15[for_iter_183][for_iter_185];
                          _past_array_copy_2d(memref_load_205, 0, 0, 1, 1, memref_alloc_198, 0, 0, 1, 1, 4, 4);
                          PAST_SET_SEMAPHORE(memref_load_204, arith_const_56);
                          PAST_SET_SEMAPHORE(execute_token_203, PAST_TASK_FINISHED);
                        }
                        PAST_NEW_SEMAPHORE(execute_token_206);
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_196, PAST_TASK_FINISHED);
                          PAST_WAIT_SEMAPHORE(execute_token_202, PAST_TASK_FINISHED);
                          int memref_load_207 = memref_global_29[for_iter_183][for_iter_185];
                          PAST_WAIT_SEMAPHORE(memref_load_207, arith_const_55);
                          int* memref_load_208 = memref_global_24[for_iter_183][for_iter_185];
                          _past_array_copy_2d(memref_load_208, 0, 0, 1, 1, memref_alloc_201, 0, 0, 1, 1, 4, 4);
                          PAST_SET_SEMAPHORE(memref_load_207, arith_const_56);
                          PAST_SET_SEMAPHORE(execute_token_206, PAST_TASK_FINISHED);
                        }
                        int arith_const_209 = 1;
                        PAST_NEW_SEMAPHORE(execute_token_210);
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(execute_token_206, PAST_TASK_FINISHED);
                          PAST_WAIT_SEMAPHORE(execute_token_203, PAST_TASK_FINISHED);
                          for (int for_iter_211 = arith_const_56; for_iter_211 < arith_const_52; for_iter_211 += arith_const_55) {
                            for (int for_iter_212 = arith_const_56; for_iter_212 < arith_const_52; for_iter_212 += arith_const_55) {
                              for (int for_iter_213 = arith_const_56; for_iter_213 < arith_const_52; for_iter_213 += arith_const_55) {
                                int memref_load_214 = memref_alloc_198[for_iter_211][for_iter_213];
                                int memref_load_215 = memref_alloc_201[for_iter_213][for_iter_212];
                                int memref_load_216 = memref_alloc_189[for_iter_211][for_iter_212];
                                int arith_muli_217 = (memref_load_214 * memref_load_215);
                                int arith_addi_218 = (memref_load_216 + arith_muli_217);
                                memref_alloc_189[for_iter_211][for_iter_212] = arith_addi_218;
                              }
                            }
                          }
                          PAST_SET_SEMAPHORE(execute_token_210, PAST_TASK_FINISHED);
                        }
                        int arith_const_219 = 1;
                        PAST_NEW_SEMAPHORE(execute_token_220);
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(execute_token_210, PAST_TASK_FINISHED);
                          PAST_SET_SEMAPHORE(execute_token_220, PAST_TASK_FINISHED);
                        }
                        int arith_const_221 = 1;
                        PAST_NEW_SEMAPHORE(execute_token_222);
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(execute_token_210, PAST_TASK_FINISHED);
                          PAST_SET_SEMAPHORE(execute_token_222, PAST_TASK_FINISHED);
                        }
                        for_iter_arg_196 = execute_token_210;
                      }
                      PAST_NEW_SEMAPHORE(execute_token_223);
                      #pragma peqc async_execute
                      {
                        PAST_WAIT_SEMAPHORE(for_iter_arg_196, PAST_TASK_FINISHED);
                        int memref_load_224 = memref_global_38[for_iter_183][for_iter_185];
                        PAST_WAIT_SEMAPHORE(memref_load_224, arith_const_56);
                        int* memref_load_225 = memref_global_33[for_iter_183][for_iter_185];
                        _past_array_copy_2d(memref_alloc_189, 0, 0, 1, 1, memref_load_225, 0, 0, 1, 1, 4, 4);
                        PAST_SET_SEMAPHORE(memref_load_224, arith_const_55);
                        PAST_SET_SEMAPHORE(execute_token_223, PAST_TASK_FINISHED);
                      }
                      int arith_const_226 = 1;
                      PAST_NEW_SEMAPHORE(execute_token_227);
                      #pragma peqc async_execute
                      {
                        PAST_WAIT_SEMAPHORE(execute_token_223, PAST_TASK_FINISHED);
                        PAST_SET_SEMAPHORE(execute_token_227, PAST_TASK_FINISHED);
                      }
                      PAST_SET_SEMAPHORE(execute_token_187, PAST_TASK_FINISHED);
                    }
                    async_group_181[async_group_index_182] = execute_token_187;
                    async_group_index_182++;
                    int arith_addi_228 = (for_iter_arg_186 + arith_const_55);
                    for_iter_arg_186 = arith_addi_228;
                  }
                  for_iter_arg_184 = for_iter_arg_186;
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_181, async_group_index_182, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_180, PAST_TASK_FINISHED);
              }
              int arith_const_229 = 1;
              PAST_NEW_SEMAPHORE(execute_token_230);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_180, PAST_TASK_FINISHED);
                PAST_WAIT_SEMAPHORE(execute_token_113, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_230, PAST_TASK_FINISHED);
              }
              int arith_const_231 = 1;
              PAST_NEW_SEMAPHORE(execute_token_232);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_180, PAST_TASK_FINISHED);
                PAST_WAIT_SEMAPHORE(execute_token_116, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_232, PAST_TASK_FINISHED);
              }
              PAST_NEW_SEMAPHORE(execute_token_233);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_180, PAST_TASK_FINISHED);
                int memref_load_234 = memref_global_44[arith_const_56][arith_const_56];
                PAST_WAIT_SEMAPHORE(memref_load_234, arith_const_56);
                int* memref_load_235 = memref_global_42[arith_const_56][arith_const_56];
                _past_array_copy_2d(memref_alloc_105, 0, 0, 1, 1, memref_load_235, 0, 0, 1, 1, 8, 8);
                PAST_SET_SEMAPHORE(memref_load_234, arith_const_55);
                PAST_SET_SEMAPHORE(execute_token_233, PAST_TASK_FINISHED);
              }
              int arith_const_236 = 1;
              PAST_NEW_SEMAPHORE(execute_token_237);
              #pragma peqc async_execute
              {
                PAST_WAIT_SEMAPHORE(execute_token_233, PAST_TASK_FINISHED);
                PAST_SET_SEMAPHORE(execute_token_237, PAST_TASK_FINISHED);
              }
              PAST_SET_SEMAPHORE(execute_token_101, PAST_TASK_FINISHED);
            }
            PAST_SET_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED);
          }
          async_group_62[async_group_index_63] = execute_token_68;
          async_group_index_63++;
          int arith_addi_238 = (for_iter_arg_67 + arith_const_55);
          for_iter_arg_67 = arith_addi_238;
        }
        for_iter_arg_65 = for_iter_arg_67;
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED);
      PAST_SET_SEMAPHORE(execute_token_61, PAST_TASK_FINISHED);
    }
    int arith_const_239 = 1;
    PAST_NEW_SEMAPHORE(execute_token_240);
    #pragma peqc async_execute
    {
      PAST_WAIT_SEMAPHORE(execute_token_61, PAST_TASK_FINISHED);
      _past_array_copy_2d(memref_alloc_59, 0, 0, 1, 1, func_arg_50, 0, 0, 1, 1, 16, 16);
      PAST_SET_SEMAPHORE(execute_token_240, PAST_TASK_FINISHED);
    }
    return;

}


{
#include "/data-host-share/verif-dialect/verif-translate/scripts/prologue.h"
  int* A;
  int* B;
  int* C;
  #pragma peqc async_execute
  {
    forward(A, B, C);
  }
}
#pragma pocc-region-end
