#!/bin/bash

echo collecting hashes...

FILE1=dont_modify_these/dont_change_me.txt #add a file to check into a variable
HASH1=$(md5sum $FILE1 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE1 $HASH1

FILE2=dont_modify_these/its_a_movie.mp4 #add a file to check into a variable
HASH2=$(md5sum $FILE2 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE2 $HASH2

FILE3=dont_modify_these/my_homework.docx #add a file to check into a variable
HASH3=$(md5sum $FILE3 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE3 $HASH3

FILE4=important_stuff/best_song.mp3 #add a file to check into a variable
HASH4=$(md5sum $FILE4 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE4 $HASH4

FILE5=important_stuff/grandmas_passwords.txt #add a file to check into a variable
HASH5=$(md5sum $FILE5 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE5 $HASH5

FILE6=important_stuff/myjournal.secret #add a file to check into a variable
HASH6=$(md5sum $FILE6 | cut -d ' ' -f 1) #put the file's hash in a variable
echo collected $FILE6 $HASH6

echo done collecting hashes.

#loop the check every 5 seconds
i=0;
for i in {1..500};
do
  echo scanning...

  NEW1=$(md5sum $FILE1 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH1 != $NEW1 ]; then #check if new hash is different
    echo echo "$FILE1 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE1 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi

    NEW2=$(md5sum $FILE2 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH2 != $NEW2 ]; then #check if new hash is different
    echo echo "$FILE2 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE2 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi

    NEW3=$(md5sum $FILE3 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH3 != $NEW3 ]; then #check if new hash is different
    echo echo "$FILE3 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE3 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi

    NEW4=$(md5sum $FILE4 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH4 != $NEW4 ]; then #check if new hash is different
    echo echo "$FILE4 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE4 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi

    NEW5=$(md5sum $FILE5 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH5 != $NEW5 ]; then #check if new hash is different
    echo echo "$FILE5 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE5 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi

    NEW6=$(md5sum $FILE6 | cut -d ' ' -f 1) #take the hash again
  if [ $HASH6 != $NEW6 ]; then #check if new hash is different
    echo echo "$FILE6 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" #warning with date and time in terminal
    echo "$FILE6 has been altered! $(date +"%Y-%m-%d %H:%M:%S")" >> log_integrity.log #warning added to log with date and time (appends) (creates file if not there)
  fi
  
  sleep 5
done



