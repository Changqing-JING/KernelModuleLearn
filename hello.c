#include<linux/init.h>
#include<linux/module.h>

MODULE_LICENSE("GPL");

int init_module(void)
{
printk(KERN_WARNING "hello world\n");
return 0;
}
void cleanup_module(void)
{
printk(KERN_ALERT  "goodbye\n");
}
