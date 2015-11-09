#!/bin/bash

MSR=`lsmod | grep "msr" | wc -l`

if [ $MSR -eq '0' ]
then
 modprobe msr
fi

BOOST=`rdmsr -f38:38 0x1a0`

if [ $BOOST -eq '1' ]
then
 echo "Intel Turbo-Boost disabled. Enabling..."
 wrmsr 0x1a0 0x0000850089
else
 echo "Intel Turbo-Boost enabled. Disabling..."
 wrmsr 0x1a0 0x4000850089
fi
