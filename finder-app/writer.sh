#!/bin/bash


#get first parameter
if [[ ! -n $1 ]];
then 
    echo "[ERROR] No parameter passed."
    exit 1
else
    writefile=$1
fi

#get second parameter
if [[ ! -n $2 ]];
then 
    echo "[ERROR] Second parameter is missing."
    exit 1
else
    writestr=$2
fi

#get file directory
fileDir=$(dirname ${writefile})
echo "$fileDir"
#check file directory
if [ ! -d ${fileDir} ]; then
 mkdir -p ${fileDir}
fi

#write to the file
echo "${writestr}" > ${writefile}

#check if the file created successfully
if [ -f /path/to/file ]; then
  echo "[ERROR]  cann't create file: ${writefile}"
  exit 1
fi
