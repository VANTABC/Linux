#!/bin/bash
sum=0
for a in $*
do
        let sum+=a
done
echo $sum
