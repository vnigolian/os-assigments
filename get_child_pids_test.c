#include <stdio.h>
#include "syscalls.h"

int main(){
	long int res;
	pid_t* list;
	size_t limit = 10;
	size_t* num_children;
	res = get_child_pids(list,limit,num_children);
	printf("Get child pids return value : %ld\n",res);
	printf("number of child pids : %u\n",*num_children);
	printf("List of child processes : \n");
	int i = 0;
	if(*num_children < limit){
		for(i=0; i< *num_children; i++){
			printf("pid : %u\n",list[i]);
		}
	}else{
		printf("limit reached : %u\n",limit);
		for(i=0; i< limit; i++){
			printf("pid : %u\n",list[i]);
		}
	}
	
	
	return 0;
}
