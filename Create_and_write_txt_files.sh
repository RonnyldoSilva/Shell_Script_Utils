#!/bin/bash

# Creating txt files with contents

for i in $(seq 1 10);

do

    echo 'NAME ' >> $i.txt

    echo 'AGE ' >> $i.txt

done
