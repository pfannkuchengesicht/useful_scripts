#!/bin/bash

#BB_WORKS=`systemctl status bumblebeed | grep -o "" | wc -l`
#if [ $BB_INSTALLED -eq '1' ]
#then
#	echo "installing bbswitch"
#	su -c "yum -y reinstall bbswitch &> /dev/null"
#fi

gc_on=`sudo cat /proc/acpi/bbswitch | grep -o "ON" | wc -w`

if [ $gc_on -eq '0' ]
then
	echo "discrete card turned off. starting."
	sudo tee /proc/acpi/bbswitch <<<ON
else
	echo "discrete card turned on. stopping."
	sudo tee /proc/acpi/bbswitch <<<OFF
fi
