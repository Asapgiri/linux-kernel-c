obj-m = module_hello.o
KVERSION = $(shell find /lib/modules/ -maxdepth 1 -name *-generic)

all:
	make -C $(KVERSION)/build M=$(PWD) modules
clean:
	make -C $(KVERSION)/build M=$(PWD) clean
