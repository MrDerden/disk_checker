#!/bin/bash

df -BM | awk '
    NR > 1 {
        gsub ("M", "", $2); size += $2;
        gsub ("M", "", $3); used += $3; 
        } 
    END 
    {
        percent = (used / size) * 100;
        printf("Total disk usage: %.2f%%", percent);
        if (percent > 80)
            print "Above 80%"
        else
            print "Below 80%"
    }
'