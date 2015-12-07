#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

cd build
ant clean openfire test plugins

echo "Build done, switching directory to $DIR"
cd "$DIR"

