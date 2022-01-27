#!/bin/bash

head -n 1 $1

awk 'BEGIN{FS=OFS="\t"}

{
    for (i=1; i<=NF; i++) 
        total[i] += $i}
END {
    for (i=1; i<=NF; i++)
        printf "%s%s", total[i], (i==NF?ORS:OFS)
        }

{
    for(i=1; i<=NF; i++) {
        a[i]+=$i
        if($i!="") 
            b[i]++}
    } 
END {
    for(i=1; i<=NF; i++) 
        printf "%s%s", a[i]/b[i], (i==NF?ORS:OFS)
        }' $1
