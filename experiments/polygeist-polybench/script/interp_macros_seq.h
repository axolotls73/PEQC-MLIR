
int __past_ai_global_nocheck_global_semaphore_counter = 1;
int PAST_TASK_INIT = 0;
int PAST_TASK_FINISHED = 1;

int* __past_internal_semaphores;
int max_nb_threads = 2;
void* __past_ai_global_nocheck_global_async_task_arguments;

void __internal_initialize_semaphores() {
  _past_ai_api_concurrent_register_max_nb_workers(max_nb_threads);
  // for (int i = 0; i < max_nb_threads; ++i) {
  //   _past_ai_api_concurrent_initialize_semaphore_value(i, 0);
  // }
}

#define PAST_NEW_SEMAPHORE(sem) \
  sem = __past_ai_global_nocheck_global_semaphore_counter++

#define PAST_SET_SEMAPHORE(sem, val) \
  _past_ai_api_concurrent_set_semaphore_value(sem, val)

#define PAST_WAIT_SEMAPHORE(sem, val) \
  _past_ai_api_concurrent_wait_until_semaphore(sem, val)

#define PAST_WAIT_SEMAPHORE_ALL(sem, arr_size, val) \
  for (int __past_ai_global_nocheck_sem_index = 0; __past_ai_global_nocheck_sem_index < arr_size; __past_ai_global_nocheck_sem_index++) \
    _past_ai_api_concurrent_wait_until_semaphore(sem[__past_ai_global_nocheck_sem_index], val)

void _past_array_copy_1d
                        (int* src, int soffs, int sstr,
                         int* dst, int doffs, int dstr,
                         int N) {
  for (int i = 0; i < N; i++) {
    dst[i * dstr + doffs] = src[i * sstr + soffs];
  }
}

// void _past_array_copy_2d
//                         (int** src, int sof1, int sof2, int sstr1, int sstr2,
//                         int** dst, int dof1, int dof2, int dstr1, int dstr2,
//                         int N1, int N2) {
//   for (int i = 0; i < N1; i++) {
//     for (int j = 0; j < N2; j++) {
//       dst[i * dstr1 + dof1][j * dstr2 + dof2] = src[i * sstr1 + sof1][j * sstr2 + sof2];
//     }
//   }
// }

void _past_array_copy_2d
                        (int** __past_ai_global_nocheck_src, int __past_ai_global_nocheck_sof1, int __past_ai_global_nocheck_sof2, int __past_ai_global_nocheck_sstr1, int __past_ai_global_nocheck_sstr2,
                        int** __past_ai_global_nocheck_dst, int __past_ai_global_nocheck_dof1, int __past_ai_global_nocheck_dof2, int __past_ai_global_nocheck_dstr1, int __past_ai_global_nocheck_dstr2,
                        int __past_ai_global_nocheck_N1, int __past_ai_global_nocheck_N2) {
  for (int __past_ai_global_nocheck_i = 0; __past_ai_global_nocheck_i < __past_ai_global_nocheck_N1; __past_ai_global_nocheck_i++) {
    for (int __past_ai_global_nocheck_j = 0; __past_ai_global_nocheck_j < __past_ai_global_nocheck_N2; __past_ai_global_nocheck_j++) {
      // _past_ai_api_print(dsti, __past_ai_global_nocheck_i);
      // _past_ai_api_print(dstj, __past_ai_global_nocheck_j);
      __past_ai_global_nocheck_dst[__past_ai_global_nocheck_i * __past_ai_global_nocheck_dstr1 + __past_ai_global_nocheck_dof1][__past_ai_global_nocheck_j * __past_ai_global_nocheck_dstr2 + __past_ai_global_nocheck_dof2] = __past_ai_global_nocheck_src[__past_ai_global_nocheck_i * __past_ai_global_nocheck_sstr1 + __past_ai_global_nocheck_sof1][__past_ai_global_nocheck_j * __past_ai_global_nocheck_sstr2 + __past_ai_global_nocheck_sof2];
    }
  }
}
