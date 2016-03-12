#include<linux/linkage.h>
#include <linux/kernel.h>

asmlinkage long sys_get_child_pids(pid_t* list, size_t limit, size_t* num_children){
	printk("pointer value : %p\n",list);
	printk("limit : %u\n",limit);
	printk("num_children : %u\n",*num_children);	
	return 1;
}
