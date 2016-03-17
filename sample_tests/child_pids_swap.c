#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include <unistd.h>
#include <linux/mman.h>
#include "syscalls.h"

#include "child_pids_helper.h"



int main(int argc, char* argv[]) {
  if (argc != 2) errx(1, "Bad usage. Use %s mem_mbytes\n", argv[0]);
  int children = 100; // should be enough
  int mbytes = -1;
  sscanf(argv[1], "%d", &mbytes);
  if (mbytes < 0 || mbytes > 10*1024) errx(1, "Specified invalid memory to use: %d\n", mbytes);
  pid_t cpids[children];
  fork_children(cpids, children);
  size_t map_len = 1024*1024*mbytes;
  size_t len = map_len / sizeof(pid_t);
  pid_t* buffer = (pid_t*) malloc(map_len);
  if (buffer == NULL) errx(1, "could not allocate memory\n");
  int i;
  int j=10;
  int error_cnt = 0;
  for (i=0; i<children; i+=1024) buffer[i]=i;
  
    while (j--) {
    for (i=0; i<len-children; i+=1024) {
      size_t num_children;
      int res = get_child_pids(buffer+i, children, &num_children);
      if (res) error_cnt++;
    }
  }

  join_children(cpids, children);
  if (error_cnt) {
    errx(1, "There were %d syscall errors during the test\n", error_cnt);
  }
  return 0;
}
