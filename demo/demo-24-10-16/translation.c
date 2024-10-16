#pragma pocc-region-start
void matmul_on_memref(int* func_arg_0, int* func_arg_1, int* func_arg_ret_2)
{
  int arith_const_3 = 4; 
  int arith_const_4 = 64; 
  int arith_const_5 = 128; 
  int arith_const_6 = 0; 
  int arith_const_7 = 32; 
  int arith_const_8 = 0; 
  int arith_const_9 = 1; 
  int* memref_alloc_10; 
  PAST_NEW_SEMAPHORE(execute_token_11); 
  #pragma peqc async_execute
  {
    PAST_SET_SEMAPHORE(execute_token_11, PAST_TASK_FINISHED); 
  }
  PAST_NEW_SEMAPHORE(execute_token_12); 
  #pragma peqc async_execute
  {
    PAST_WAIT_SEMAPHORE(execute_token_11, PAST_TASK_FINISHED); 
    PAST_SET_SEMAPHORE(execute_token_12, PAST_TASK_FINISHED); 
  }
  int for_iter_arg_14 = execute_token_12; 
  for (int for_iter_13 = arith_const_6; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_15); 
    #pragma peqc async_execute
    {
      PAST_WAIT_SEMAPHORE(for_iter_arg_14, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    int for_iter_arg_17 = execute_token_15; 
    for (int for_iter_16 = arith_const_6; for_iter_16 < arith_const_5; for_iter_16 += arith_const_9) {
      PAST_NEW_SEMAPHORE(execute_token_18); 
      #pragma peqc async_execute
      {
        PAST_WAIT_SEMAPHORE(for_iter_arg_17, PAST_TASK_FINISHED); 
        memref_alloc_10[for_iter_13][for_iter_16] = arith_const_8; 
        PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
      }
      PAST_NEW_SEMAPHORE(execute_token_19); 
      #pragma peqc async_execute
      {
        PAST_WAIT_SEMAPHORE(for_iter_arg_17, PAST_TASK_FINISHED); 
        PAST_WAIT_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
      }
      for_iter_arg_17 = execute_token_19; 
    }
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      PAST_WAIT_SEMAPHORE(for_iter_arg_14, PAST_TASK_FINISHED); 
      PAST_WAIT_SEMAPHORE(for_iter_arg_17, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    for_iter_arg_14 = execute_token_20; 
  }
  PAST_NEW_SEMAPHORE(execute_token_21); 
  #pragma peqc async_execute
  {
    PAST_WAIT_SEMAPHORE(for_iter_arg_14, PAST_TASK_FINISHED); 
    PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
  }
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_6; 
  for (int for_iter_26 = arith_const_6; for_iter_26 < arith_const_5; for_iter_26 += arith_const_4) {
    int for_iter_arg_29 = for_iter_arg_27; 
    for (int for_iter_28 = arith_const_6; for_iter_28 < arith_const_5; for_iter_28 += arith_const_4) {
      PAST_NEW_SEMAPHORE(execute_token_30); 
      #pragma peqc async_execute
      {
        PAST_NEW_SEMAPHORE(execute_token_31); 
        #pragma peqc async_execute
        {
          PAST_WAIT_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
        }
        int for_iter_arg_33 = execute_token_31; 
        for (int for_iter_32 = arith_const_6; for_iter_32 < arith_const_5; for_iter_32 += arith_const_4) {
          int* memref_alloc_34; 
          int* memref_alloc_35; 
          int* memref_alloc_36; 
          int* memref_alloc_37; 
          PAST_NEW_SEMAPHORE(execute_token_38); 
          #pragma peqc async_execute
          {
            PAST_SET_SEMAPHORE(execute_token_38, PAST_TASK_FINISHED); 
          }
          int* memref_alloc_39; 
          PAST_NEW_SEMAPHORE(execute_token_40); 
          #pragma peqc async_execute
          {
            PAST_SET_SEMAPHORE(execute_token_40, PAST_TASK_FINISHED); 
          }
          int* memref_alloc_41; 
          PAST_NEW_SEMAPHORE(execute_token_42); 
          #pragma peqc async_execute
          {
            PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_43); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_38, PAST_TASK_FINISHED); 
            _past_array_copy_2d(memref_alloc_34, 0, 0, memref_alloc_37, 0, 0, 64, 64); 
            PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_44); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_40, PAST_TASK_FINISHED); 
            _past_array_copy_2d(memref_alloc_35, 0, 0, memref_alloc_39, 0, 0, 64, 64); 
            PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_45); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            _past_array_copy_2d(memref_alloc_36, 0, 0, memref_alloc_41, 0, 0, 64, 64); 
            PAST_SET_SEMAPHORE(execute_token_45, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_46); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_45, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
          }
          int* async_group_47; 
          int async_group_index_48 = 0; 
          int* async_group_49; 
          int async_group_index_50 = 0; 
          int for_iter_arg_52 = arith_const_6; 
          for (int for_iter_51 = arith_const_6; for_iter_51 < arith_const_4; for_iter_51 += arith_const_7) {
            int for_iter_arg_54 = for_iter_arg_52; 
            for (int for_iter_53 = arith_const_6; for_iter_53 < arith_const_4; for_iter_53 += arith_const_7) {
              PAST_NEW_SEMAPHORE(execute_token_55); 
              #pragma peqc async_execute
              {
                PAST_NEW_SEMAPHORE(execute_token_56); 
                #pragma peqc async_execute
                {
                  PAST_WAIT_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
                  PAST_WAIT_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
                  PAST_WAIT_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
                  PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
                }
                int for_iter_arg_58 = execute_token_56; 
                for (int for_iter_57 = arith_const_6; for_iter_57 < arith_const_4; for_iter_57 += arith_const_7) {
                  int* memref_alloc_59; 
                  int* memref_alloc_60; 
                  int* memref_alloc_61; 
                  int* memref_alloc_62; 
                  PAST_NEW_SEMAPHORE(execute_token_63); 
                  #pragma peqc async_execute
                  {
                    PAST_SET_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
                  }
                  int* memref_alloc_64; 
                  PAST_NEW_SEMAPHORE(execute_token_65); 
                  #pragma peqc async_execute
                  {
                    PAST_SET_SEMAPHORE(execute_token_65, PAST_TASK_FINISHED); 
                  }
                  int* memref_alloc_66; 
                  PAST_NEW_SEMAPHORE(execute_token_67); 
                  #pragma peqc async_execute
                  {
                    PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_68); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    _past_array_copy_2d(memref_alloc_59, 0, 0, memref_alloc_62, 0, 0, 32, 32); 
                    PAST_SET_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_69); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_65, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    _past_array_copy_2d(memref_alloc_60, 0, 0, memref_alloc_64, 0, 0, 32, 32); 
                    PAST_SET_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_70); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    _past_array_copy_2d(memref_alloc_61, 0, 0, memref_alloc_66, 0, 0, 32, 32); 
                    PAST_SET_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_71); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
                    PAST_SET_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED); 
                  }
                  int for_iter_arg_73 = execute_token_71; 
                  for (int for_iter_72 = arith_const_6; for_iter_72 < arith_const_7; for_iter_72 += arith_const_9) {
                    PAST_NEW_SEMAPHORE(execute_token_74); 
                    #pragma peqc async_execute
                    {
                      PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                      PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                      PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                      PAST_SET_SEMAPHORE(execute_token_74, PAST_TASK_FINISHED); 
                    }
                    int for_iter_arg_76 = execute_token_74; 
                    for (int for_iter_75 = arith_const_6; for_iter_75 < arith_const_7; for_iter_75 += arith_const_9) {
                      PAST_NEW_SEMAPHORE(execute_token_77); 
                      #pragma peqc async_execute
                      {
                        PAST_WAIT_SEMAPHORE(for_iter_arg_76, PAST_TASK_FINISHED); 
                        PAST_WAIT_SEMAPHORE(for_iter_arg_76, PAST_TASK_FINISHED); 
                        PAST_WAIT_SEMAPHORE(for_iter_arg_76, PAST_TASK_FINISHED); 
                        PAST_SET_SEMAPHORE(execute_token_77, PAST_TASK_FINISHED); 
                      }
                      int for_iter_arg_79 = execute_token_77; 
                      for (int for_iter_78 = arith_const_6; for_iter_78 < arith_const_7; for_iter_78 += arith_const_9) {
                        int* memref_alloc_80; 
                        PAST_NEW_SEMAPHORE(execute_token_81); 
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                          int memref_load_82 = memref_alloc_62[for_iter_72][for_iter_78]; 
                          memref_alloc_80[arith_const_9] = memref_load_82; 
                          PAST_SET_SEMAPHORE(execute_token_81, PAST_TASK_FINISHED); 
                        }
                        int* memref_alloc_83; 
                        PAST_NEW_SEMAPHORE(execute_token_84); 
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                          int memref_load_85 = memref_alloc_64[for_iter_78][for_iter_75]; 
                          memref_alloc_83[arith_const_9] = memref_load_85; 
                          PAST_SET_SEMAPHORE(execute_token_84, PAST_TASK_FINISHED); 
                        }
                        int* memref_alloc_86; 
                        PAST_NEW_SEMAPHORE(execute_token_87); 
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                          int memref_load_88 = memref_alloc_66[for_iter_72][for_iter_75]; 
                          memref_alloc_86[arith_const_9] = memref_load_88; 
                          PAST_SET_SEMAPHORE(execute_token_87, PAST_TASK_FINISHED); 
                        }
                        int memref_load_89 = memref_alloc_80[arith_const_9]; 
                        int memref_load_90 = memref_alloc_83[arith_const_9]; 
                        int arith_muli_91 = (memref_load_89 * memref_load_90); 
                        int memref_load_92 = memref_alloc_86[arith_const_9]; 
                        int arith_addi_93 = (memref_load_92 + arith_muli_91); 
                        PAST_NEW_SEMAPHORE(execute_token_94); 
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                          PAST_WAIT_SEMAPHORE(execute_token_87, PAST_TASK_FINISHED); 
                          memref_alloc_66[for_iter_72][for_iter_75] = arith_addi_93; 
                          PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
                        }
                        PAST_NEW_SEMAPHORE(execute_token_95); 
                        #pragma peqc async_execute
                        {
                          PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                          PAST_WAIT_SEMAPHORE(execute_token_81, PAST_TASK_FINISHED); 
                          PAST_WAIT_SEMAPHORE(execute_token_84, PAST_TASK_FINISHED); 
                          PAST_WAIT_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
                          PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
                        }
                        for_iter_arg_79 = execute_token_95; 
                      }
                      PAST_NEW_SEMAPHORE(execute_token_96); 
                      #pragma peqc async_execute
                      {
                        PAST_WAIT_SEMAPHORE(for_iter_arg_76, PAST_TASK_FINISHED); 
                        PAST_WAIT_SEMAPHORE(for_iter_arg_79, PAST_TASK_FINISHED); 
                        PAST_SET_SEMAPHORE(execute_token_96, PAST_TASK_FINISHED); 
                      }
                      for_iter_arg_76 = execute_token_96; 
                    }
                    PAST_NEW_SEMAPHORE(execute_token_97); 
                    #pragma peqc async_execute
                    {
                      PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                      PAST_WAIT_SEMAPHORE(for_iter_arg_76, PAST_TASK_FINISHED); 
                      PAST_SET_SEMAPHORE(execute_token_97, PAST_TASK_FINISHED); 
                    }
                    for_iter_arg_73 = execute_token_97; 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_98); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                    _past_array_copy_2d(memref_alloc_66, 0, 0, memref_alloc_61, 0, 0, 32, 32); 
                    PAST_SET_SEMAPHORE(execute_token_98, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_99); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                    PAST_SET_SEMAPHORE(execute_token_99, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_100); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(for_iter_arg_73, PAST_TASK_FINISHED); 
                    PAST_SET_SEMAPHORE(execute_token_100, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_101); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(execute_token_98, PAST_TASK_FINISHED); 
                    PAST_SET_SEMAPHORE(execute_token_101, PAST_TASK_FINISHED); 
                  }
                  PAST_NEW_SEMAPHORE(execute_token_102); 
                  #pragma peqc async_execute
                  {
                    PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                    PAST_WAIT_SEMAPHORE(execute_token_98, PAST_TASK_FINISHED); 
                    PAST_SET_SEMAPHORE(execute_token_102, PAST_TASK_FINISHED); 
                  }
                  for_iter_arg_58 = execute_token_102; 
                }
                PAST_NEW_SEMAPHORE(execute_token_103); 
                #pragma peqc async_execute
                {
                  PAST_WAIT_SEMAPHORE(for_iter_arg_58, PAST_TASK_FINISHED); 
                  PAST_SET_SEMAPHORE(execute_token_103, PAST_TASK_FINISHED); 
                }
                async_group_47[async_group_index_48] = execute_token_103; 
                async_group_index_48++; 
                PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
              }
              async_group_49[async_group_index_50] = execute_token_55; 
              async_group_index_50++; 
              int arith_addi_104 = (for_iter_arg_54 + arith_const_9); 
              for_iter_arg_54 = arith_addi_104; 
            }
            for_iter_arg_52 = for_iter_arg_54; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_49, async_group_index_50, PAST_TASK_FINISHED); 
          PAST_NEW_SEMAPHORE(execute_token_105); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_105, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_106); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_45, PAST_TASK_FINISHED); 
            _past_array_copy_2d(memref_alloc_41, 0, 0, memref_alloc_36, 0, 0, 64, 64); 
            PAST_SET_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_107); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_107, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_108); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_108, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_109); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_109, PAST_TASK_FINISHED); 
          }
          PAST_NEW_SEMAPHORE(execute_token_110); 
          #pragma peqc async_execute
          {
            PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED); 
            PAST_WAIT_SEMAPHORE(execute_token_105, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_110, PAST_TASK_FINISHED); 
          }
          for_iter_arg_33 = execute_token_110; 
        }
        PAST_NEW_SEMAPHORE(execute_token_111); 
        #pragma peqc async_execute
        {
          PAST_WAIT_SEMAPHORE(for_iter_arg_33, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_111, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_111; 
        async_group_index_23++; 
        PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
      }
      async_group_24[async_group_index_25] = execute_token_30; 
      async_group_index_25++; 
      int arith_addi_112 = (for_iter_arg_29 + arith_const_9); 
      for_iter_arg_29 = arith_addi_112; 
    }
    for_iter_arg_27 = for_iter_arg_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  PAST_NEW_SEMAPHORE(execute_token_113); 
  #pragma peqc async_execute
  {
    PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
    PAST_SET_SEMAPHORE(execute_token_113, PAST_TASK_FINISHED); 
  }
  _past_array_copy_2d(memref_alloc_10, 0, 0, func_arg_ret_2, 0, 0, 128, 128); 
  return; 

}
#pragma pocc-region-end
