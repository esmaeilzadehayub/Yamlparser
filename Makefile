pythonReq := $(shell python3 -c 'import yaml' > /dev/null 2>&1 && (echo "installed" )  || (echo "not installed "; exit 1)  )

PYTHON3_OK := $(shell python3 --version 2>&1)
ifeq ('$(PYTHON3_OK)','')
    $(error package 'python3' not found)
endif

check:
	@echo yaml module  $(pythonReq)




verify:
	./yamlsfstab.py > /tmp/mnt
	findmnt -x --verbose  -F /tmp/mnt 


install:
	echo "#yamlsfstab" >> /tmp/fstab
	./yaml2fstab.py >> /tmp/fstab
	echo "#yamlsfstab" >> /tmp/fstab


parse:
	./yaml2fstab.py


clean:
	sed -i  '/#yamlsfstab/,/#yamlsfstab/{//!d}' /tmp/fstab
	rm /tmp/mnt
