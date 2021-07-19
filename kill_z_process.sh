#/bin/bash

# REF: https://ex1.m-yabe.com/archives/3490
PName=defunct
PID=$$

for i in `ps -ef | grep $PName | grep -v $PID | grep -v grep | awk '{print $2,$3}'`
do
    if [ $ElapsedTime -gt 3600 ] ; then
        kill -9 $i
    fi  
done