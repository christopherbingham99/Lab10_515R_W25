#!/bin/bash

echo collecting hashes...

FILE1=dont_modify_these/dont_change_me.txt
HASH1=$(md5sum $FILE1 | cut -d ' ' -f 1)
echo collected $FILE1 $HASH1

echo done collecting hashes.

#loop
i=0;
for i in {1..500};
do
  echo scanning...

  NEW1=$(md5sum $FILE1 | cut -d ' ' -f 1)
  if [ $HASH1 != $NEW1 ]; then
    echo echo "$FILE1 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE1 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
    #also put in a log (maybe add timestamp)
  fi
  
  sleep 5
done



