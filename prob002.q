#!/usr/bin/rlwrap /home/jz/q/l32/q
fib:{{x,sum -2#x}/[x;1 1]}
+/[c[where ((c:fib[32]) mod 2)=0]]
exit 0
