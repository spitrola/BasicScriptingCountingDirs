#!/bin/bash

#compares two directories and reports which directory contains the most files.
#only regular files should be counted, not directories or subdirectories 

countdir1=0
countdir2=0
dir1="/etc"
dir2="/bin"

cd $dir1
for i in $(ls)
do   
    if [ -f $i ] 
    then 
	countdir1=$((countdir1+1))
    fi
done
echo "There are a $countdir1 files in $dir1 files"

cd $dir2
for i in $(ls)
do
   if [ -f $i ] 
   then 
       countdir2=$((countdir2+1))
   fi
done
echo "There are a $countdir2 files in $dir2 files"


if [ $countdir1 -gt $countdir2 ]
then   
 echo "$dir1 contains the most files"

elif [ $countdir2 -gt $countdir1]
then 
    echo "$dir2 contains the most files"
else 
    echo "$dir1 and $dir have the same number of files"
fi





