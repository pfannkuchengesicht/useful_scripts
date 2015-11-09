#!/bin/bash
LINK_TARGET=`ls -l /usr/bin/python | awk '{print $11}' | cut -d '/' -f 4`
echo "Current Python: $LINK_TARGET"
if [ $LINK_TARGET == "python3" ]
then
  rm /usr/bin/python
  ln -s /usr/bin/python2 /usr/bin/python
  echo "Switched to Python2"
elif [ $LINK_TARGET == "python2" ] 
then
  rm /usr/bin/python
  ln -s /usr/bin/python3 /usr/bin/python
  echo "Switched to Python3"
fi
