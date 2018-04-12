#!/bin/bash
IFS=$'\n'
let i=0
for line in $(cat "./sample.txt"); do
if !(($i%2)); then
printf "${line}\n"
fi
let i=$i+1
done

