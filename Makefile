pythonReq := $(shell python3 -c 'import yaml' > /dev/null 2>&1 && (echo "installed" )  || (echo "not installed "; exit 1)  )

PYTHON3_OK := $(shell python3 --version 2>&1)
ifeq ('$(PYTHON3_OK)','')
    $(error package 'python3' not found)
endif

check:
	@echo yaml module  $(pythonReq)




verify:
	./yaml2fstab.py > /tmp/mnt
	findmnt -x --verbose  -F /tmp/mnt 


install:
	echo "#yaml2fstab" >> /tmp/fstab
	./yaml2fstab.py >> /tmp/fstab
	echo "#yaml2fstab" >> /tmp/fstab


parse:
	./yaml2fstab.py


clean:
	sed -i  '/#yaml2fstab/,/#yaml2fstab/{//!d}' /tmp/fstab
	rm /tmp/mnt
