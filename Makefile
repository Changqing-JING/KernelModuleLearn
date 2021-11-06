obj-m := hello.o
PWD = $(shell pwd)
#DIRS :=/home/jcq/workspace/kernel_debug/linux-hwe-5.11-5.11.0/kernel
DIRS = /usr/src/linux-headers-5.11.0-38-generic
all:
	make -C $(DIRS) M=$(PWD) modules
clean:
	rm -Rf *.o *.ko *.mod.c *.order *.symvers *.cmd *.dwo *.mod

install:
	sudo insmod hello.ko

uninstall:
	sudo rmmod hello.ko

showlog:
	tail -f /var/log/kern.log & 