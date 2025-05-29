
//
// compare.c: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
//
// This program can be redistributed and/or modified under the terms
// of the license specified in the LICENSE.txt file at the root of the
// project.
//
// Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
//          Emily Tucker <emily.tucker@colostate.edu>
// Author: Emily Tucker <emily.tucker@colostate.edu>
//
//

#pragma pocc-region-start
int** arg0;
int** arg1;

int IMAGE_WIDTH = 16;
int IMAGE_HEIGHT = 32;
int TILE_WIDTH = 8;
int TILE_HEIGHT = 16;

{
  for (int i = 0; i < IMAGE_HEIGHT; i++) {
    for (int j = 0; j < IMAGE_WIDTH; j++) {
      arg0[i][j] = i * IMAGE_HEIGHT + j;
      tile_num = (i / TILE_HEIGHT) * (IMAGE_WIDTH / TILE_WIDTH) + (j / TILE_WIDTH);
      arg1[i][j] = input[i][j] + tile_num;
    }
  }
}
#pragma pocc-region-end
