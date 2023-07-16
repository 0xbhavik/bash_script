#! /bin/bash


arr_pid=($(ps axo pid,command | grep "Applications/Google Chrome" | awk -F " " '{print $1}'))

for pid in ${arr_pid[@]};
do

kill -9 $pid 2>>error.txt
echo "PID no. $pid terminated at $(date)" >> log.txt

done

