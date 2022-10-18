#!/usr/bin/env python3

import yaml


for key, value in yaml.safe_load(open('data.yaml'))['fstab'].items():
    if 'options' in value:
        if value['type']=='nfs':
            print(key+":"+value['export'],"\t"+value['mount']+"\t"+"\t"+value['type']+"\t"+"default,"+','.join(value['options'])+"\t 0 \t 0")
        else:
            print(key,"\t"+value['mount']+"\t"+"\t"+value['type']+"\t"+"default,"+','.join(value['options'])+"\t 0 \t 0")
    else:
        print(key,"\t"+value['mount']+"\t"+"\t"+value['type']+"\t"+"default"+"\t 0 \t 0")

        #print(key,"\t"+','.join(value['options']))
