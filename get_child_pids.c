#include <linux/linkage.h>
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/spinlock.h>
#include <asm/uaccess.h>
#include <linux/sched.h>
#include <linux/list.h>
#include <linux/slab.h>

asmlinkage long sys_get_child_pids(pid_t* list, size_t limit, size_t* num_children){
	if(!access_ok(pid_t*,list, sizeof(pid_t)) 
	|| !access_ok(size_t*, num_children, sizeof(num_children))){
		return -EFAULT;
	}else if(list == NULL && !limit == 0){
		return -EFAULT;
	}else{
		pid_t* pPids = kmalloc(limit * sizeof(pid_t), GFP_KERNEL);
		size_t num_child = 0;
		if(pPids != NULL){
			struct list_head* cursor; 
			list_for_each(cursor, &(current->children)){
				num_child++;
			}
		
			put_user(num_child,num_children);
			
			if(limit >= num_child){
				int i = 0;
				for(i=0;i<num_child;i++){
					put_user(*(pPids + i), list + i);
				}
			return 0;
			}else{
				int i = 0;
				for(i=0;i<limit;i++){
					put_user(*(pPids + i), list + i);
				}
			return -ENOBUFS;
			}
			kfree(pPids);
		}else{
			return -EFAULT;
		}
	}
}

