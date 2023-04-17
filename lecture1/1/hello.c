#include <stdio.h>

int main()
{
  FILE *outputfile;
  outputfile = fopen("/dir1/file101.txt", "w");
  fprintf(outputfile, "Hello, world");
  return 0;
}