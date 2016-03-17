// vim: noet:sts=8:ts=8:sw=8
#include <stdio.h>
#include <stdlib.h>
#include "syscalls.h"
#include "child_pids_helper.h"

void print_list(pid_t* list, size_t limit) {
	int i=0;
	for (; i<limit; i++) {
		printf("list content: index %d value %d \n",i,list[i]);
	}
}

int main () {
	long res;
	int child_pid = fork();
	if (child_pid < 0 )
	    printf("Fork failed %i \n", child_pid);
	else if (child_pid > 0) {
		size_t limit = 3;
		size_t nr_children;
		pid_t pid_list[limit]; // to store our results
		pid_t pid_list2[limit]; // to store our results
		fork_children(pid_list2,limit);
		printf("pids from fork : \n");
		print_list(pid_list2, (nr_children <= limit) ? nr_children : limit);


		// CASE : Arbitrary address for num_children
		res = get_child_pids(pid_list, limit, (size_t*)47424742);
		printf ( "Testing arbitrary address for num_children. Syscall returned %d \n", res);

		// CASE : NULL pid_list, non initialized
		res = get_child_pids(NULL, limit, &nr_children); 
		printf ( "Testing NULL address for pids_list. Syscall returned %d \n", res);
		
		// CASE : Normal execution, num_children > limit
		res= get_child_pids(pid_list, limit, &nr_children) ? errno : 0;
		printf("Testing Nr_children = 1, limit = 3. Syscall returned %d , nr_children is %d\n", res, nr_children);
		printf("LIST OF CHILDREN PIDs syscall\n");
		print_list(pid_list, (nr_children <= limit) ? nr_children : limit);
	
		limit = 10;
		// CASE : Normal execution, num_children < limit
		res= get_child_pids(pid_list, limit, &nr_children) ? errno : 0;
		printf("Testing Nr_children = 1, limit = 10. Syscall returned %d , nr_children is %d\n", res, nr_children);
		printf("LIST OF CHILDREN PIDs syscall\n");
		print_list(pid_list, (nr_children <= limit) ? nr_children : limit);
	
	}
	return 0;  
}
