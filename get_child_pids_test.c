#include <stdio.h>
#include "syscalls.h"

int main(){
	long int res;
	pid_t* list;
	size_t limit = 10;
	size_t* num_children = &limit;
	res = get_child_pids(list,limit,num_children);
	printf("Get child pids return value : %ld\n",res);

	return 0;
}
