#!/bin/bash

if [[ $TRAVIS_BRANCH == 'coverity_scan' ]]; then
  echo "Building for Coverity"
  #/bin/rm -rf work/plugins-dev
  #ant -f build/build.xml openfire plugins
  ant -f build/build.xml openfire 

else
  /bin/rm -rf work/plugins
  /bin/rm -rf work/plugins-dev
  /bin/rm -rf target/
  ant -f build/build.xml clean openfire test plugins
fi


