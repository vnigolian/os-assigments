#include <errno.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

#define __NR_hello_world 358
#define __NR_get_child_pids 359

inline long hello_world(int i) {
	return syscall(__NR_hello_world, i) ? errno : 0;
}

inline long get_child_pids(pid_t* list, size_t limit, size_t* num_children){
	return syscall(__NR_get_child_pids, list, limit, num_children) ? errno : 0;
}
