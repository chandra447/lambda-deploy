#!/bin/bash
echo $1
# Validate input arguments
if [ "$#" -ne 1 ]; then
  echo "Usage: <python-file> or <directory> should be provided"
  exit 1
fi


if [ -d "$1" ]; then
    zip -r "${1%/}.zip" "$1"
    
elif [ -f "$1" ]; then
    zip "${1%.*}.zip" "$1"
    
else
    echo "No such directory or file exists"
    exit 1
fi

python main.py ${1%.*}.zip

rm ${1%.*}.zip

exit 0