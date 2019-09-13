#include "library.h"

char* hello_from_library(char* name) {
  char* out = (char*)malloc(256 * sizeof(char));
  sprintf(out, "Hello: '%s'", name);
  return out;
}


int square_from_library(int value) {
  return value * value;
}

