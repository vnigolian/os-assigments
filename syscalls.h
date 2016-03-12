#include <errno.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

#define __NR_hello_world 358

inline long hello_world() {
return syscall(__NR_hello_world);
}
