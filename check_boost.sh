#!/bin/bash

MSR=`lsmod | grep "msr" | wc -l`

if [ $MSR -eq 0 ]
then
 modprobe msr
fi

BOOST=`rdmsr -f38:38 0x1a0`

if [ $BOOST -eq 1 ]; then
 echo "Intel Turbo-Boost disabled."
else
 echo "Intel Turbo-Boost enabled."
fi
