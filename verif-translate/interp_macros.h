
int global_semaphore_counter = 1;
int PAST_TASK_INIT = 0;
int PAST_TASK_FINISHED = 1;

int* __past_internal_semaphores;
int max_nb_threads = 10;

void __internal_initialize_semaphores() {
  _past_ai_api_concurrent_register_max_nb_workers(max_nb_threads);
  for (int i = 0; i < max_nb_threads; ++i) {
    _past_ai_api_concurrent_initialize_semaphore_value(i, 0);
  }
}

#define PAST_NEW_SEMAPHORE(sem) \
  sem = global_semaphore_counter++

#define PAST_SET_SEMAPHORE(sem, val) \
  _past_ai_api_concurrent_set_semaphore_value(sem, val)

#define PAST_WAIT_SEMAPHORE(sem, val) \
  _past_ai_api_concurrent_wait_until_semaphore(sem, val)

#define PAST_WAIT_SEMAPHORE_ALL(sem, arr_size, val) \
  do { \
    for (int _sem_index = 0; _sem_index < arr_size; _sem_index++) \
      _past_ai_api_concurrent_wait_until_semaphore(sem, val); \
  } while(0)
