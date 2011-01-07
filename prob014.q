#!/usr/bin/rlwrap /home/jz/q/l32/q

m:1+til 1000000
m:m-m
col:{[x;y]
    $[m[x]=0
        ;$[1=x
            ;1+count y
            ;$[0=x mod 2
                ;col[x div 2;1+y]
                ;col[1+3*x;1+y]]]
        ;m[x]+count y]}

g:{:m[x]:col[x;0]}

n:1+til 100000
max g each n
 / exit 0
