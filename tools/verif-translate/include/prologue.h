/*
 * prologue.h: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2024 Colorado State University
 *
 * This program can be redistributed and/or modified under the terms
 * of the license specified in the LICENSE.txt file at the root of the
 * project.
 *
 * Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
 *          Emily Tucker <emily.tucker@colostate.edu>
 * Author: Emily Tucker <emily.tucker@colostate.edu>
 *
 */

max_nb_threads = 1000;

__internal_initialize_semaphores();

__past_ai_global_nocheck_global_semaphore_counter = 1;
PAST_TASK_INIT = 0;
PAST_TASK_FINISHED = 1;
