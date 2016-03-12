#include <stdio.h>
#include "syscalls.h"

int main(){
	long int res;
	res = hello_world(3);
	printf("Hello world return value : %ld\n",res);

	return 0;
}
