#!/bin/bash
for i in {80..87}
do (
echo "pinging 188.65.181.$i"
ping 188.65.181.$i -c 1 -w 1  >/dev/null && echo "IT'S ALIVE --> 188.65.181.$i" &
sleep .25
)
done
exit 0
