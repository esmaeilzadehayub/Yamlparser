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

<img width="780" alt="Screenshot 2022-10-19 at 14 33 10" src="https://user-images.githubusercontent.com/28998255/196693464-693e7be1-ae15-4580-b398-d300ea757719.png">

<img width="780" alt="Screenshot 2022-10-19 at 14 33 22" src="https://user-images.githubusercontent.com/28998255/196693548-73ef6a82-aa35-4913-95fb-73fad28d378e.png">


