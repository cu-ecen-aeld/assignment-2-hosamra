#!/bin/bash


#get first parameter
if [[ ! -n $1 ]];
then 
    echo "[ERROR] No parameter passed."
    exit 1
else
    filesdir=$1
fi

#get second parameter
if [[ ! -n $2 ]];
then 
    echo "[ERROR] Second parameter is missing."
    exit 1
else
    searchstr=$2
fi

#check filesdir
if [ ! -d ${filesdir} ]; then
  echo "[ERROR] filesdir does not represent a directory on the filesystem"
fi

filesNumber=$(find "$filesdir" -type f | wc -l)
matchingLinesNumber=$(grep -r "$searchstr" ${filesdir} | wc -l)

echo "The number of files are ${filesNumber} and the number of matching lines are ${matchingLinesNumber}"