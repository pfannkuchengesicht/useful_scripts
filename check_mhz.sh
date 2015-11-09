#!/bin/bash

while [ 1 ]
do
 echo "Core Speeds:"
 cat /proc/cpuinfo | grep "MHz"
 sleep 5
done
