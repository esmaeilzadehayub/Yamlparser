# Yamlparser



It a python script to convert yaml file to fstab compatible format


## Features

- Verify file before fstab modification
- Clean modified data from fstab
- Add parsed data to fstab
- Parse yaml from yaml file




## Install
this script required python3 and pyyaml
- pipe:
    - `pip3 install pyyaml`  

##### Note: change `/tmp/fstab` to `/etc/fstab` in main script 


## Usage
- put yaml file next to yaml2fstab.py
- run `make check` to verify requirements before running
- run `make parse` to see parsed data
- run ` make verify` to verify parsed data before installing you should see `0 parse errors` to ensure everything is OK.
- run `make install` to add parsed data to /etc/fstab


## Uninstall
- run `make uninstall` to remove modifications made by this script from `/etc/fstab` 

