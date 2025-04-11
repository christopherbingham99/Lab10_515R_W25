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
    echo $FILE has been altered!
    echo i >> log_integrity.log
    #also put in a log (maybe add timestamp)
  fi

  sleep 5
done



