#!/bin/bash

echo collecting hashes...

FILE1=dont_modify_these/dont_change_me.txt
HASH1=$(md5sum $FILE1 | cut -d ' ' -f 1)
echo collected $FILE1 $HASH1

echo done collecting hashes.

#loop
echo scanning...

NEW1=HASH1=$(md5sum $FILE1 | cut -d ' ' -f 1)
if [ $HASH1 != $NEW1 ]; then
  echo $FILE has been altered!
  #also put in a log
fi