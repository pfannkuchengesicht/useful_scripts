#!/bin/bash

updates=$( yum check-update )

if [ $? = 100 ]
then 
echo -e "<img>/usr/share/icons/oxygen/22x22/apps/utilities-file-archiver.png</img>"
echo -e "<tool>Updates Available</tool>"
echo -e "<click>terminal -e 'sudo yum update'</click>"
else
echo -e "<img>/usr/share/icons/oxygen/22x22/actions/dialog-ok.png</img>"
echo -e "<tool>System is up-to-date</tool>"
echo -e "<click>terminal -H -e 'yum check-update'</click>"
fi
