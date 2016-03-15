#include <linux/linkage.h>
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/spinlock.h>
#include <asm/uaccess.h>

asmlinkage long sys_get_child_pids(pid_t* list, size_t limit, size_t* num_children){
	if(!access_ok(pid_t*,list, sizeof(pid_t)) 
	|| !access_ok(size_t*, num_children, sizeof(num_children))){
		return -EFAULT;
	}else if(list == NULL && !limit == 0){
		return -EFAULT;
	}else{
		pid_t* pPids;
		size_t num_child = 0;
		
		task_struct* p_childptr = current-> p_cptr;
		size_t i = 0;
		while(p_childptr != NULL){
			*(pPids + num_child) = p_childptr->pid;
			p_childptr = p_childptr->p_osptr;
			num_child++;
		}
		
		put_user(pNum,num_child);
		
		if(limit >= num_child){
			for(i=0;i<num_child;i++){
				put_user(*(pPids + i), list + i);
			}
		return 0;
		}else{
			for(i=0;i<limit;i++){
				put_user(*(pPids + i), list + i);
			}
		return -ENOBUFS;
		}
	}
}

