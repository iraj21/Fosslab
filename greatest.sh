#!/bin/bash
let a=$1
let b=$2
let c=$3
if (( a>b && a>c));then
 printf "$a is the greatest number\n"
elif (( b>a && b>c ));then
 printf "$b is the greatest number\n"
else
 printf "$c is the greatest number\n"
fi
