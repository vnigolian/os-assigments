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
	|| !access_ok(size_t*, num_children, sizeof(size_t))){
		return -EFAULT;
	}else if(list == NULL && !limit == 0){
		return -EFAULT;
	}else{
		size_t num_child = 0;
		
		read_lock(&tasklist_lock);
		
		struct list_head* cursor = &(current->children); 
		list_for_each(cursor, &(current->children)){
			num_child++;
		}
		
		pid_t pPids[num_child];
			
		size_t i = 0;
		list_for_each(cursor, &(current->children)){
			pPids[i] = list_entry(cursor,struct task_struct, sibling) -> pid;
			i++;
		}
		
		read_unlock(&tasklist_lock);
			
			//printk("get_child_pids syscall : This process has %u children\n",num_child);			
			put_user(num_child,num_children);

			if(limit >= num_child){
			//printk("get_child_pids syscall : limit >= num_child\n");			
				for(i=0;i<num_child;i++){
					put_user(*(pPids + i), list + i);
				}
			return 0;
			}else{
			//printk("get_child_pids syscall : limit < num_child\n");			
				for(i=0;i<limit;i++){
					put_user(*(pPids + i), list + i);
				}
			return -ENOBUFS;
			}
	}
}
