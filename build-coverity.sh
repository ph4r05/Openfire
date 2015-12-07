#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PIR=`pwd`
echo "Script directory: $DIR, current directory: $PIR"

cd build
ant clean openfire test plugins

echo "Build done, switching directory to $DIR"
cd "$DIR"

echo "Cov log"
cat cov-int/build-log.txt 

echo "DONE"

