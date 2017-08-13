#!/bin/bash
#
#...create needed folders if the don't exists
# copy a startup-script on ~/bin
#      an icon on ~/bin/icons
#
#... the startup-script is expecting your eclipse-oxygen docker
#    to be started from ~/dockers/docker4eclipse/run.sh
#
if [ ! -e ~/bin ]; then mkdir ~/bin 2>/dev/null; fi
if [ ! -e ~/bin/icons ]; then mkdir ~/bin/icons 2>/dev/null; fi
#
if [ ! -e ~/dockers ]; then echo "!!! the directory ~/dockers should exist. "; fi
if [ ! -e ~/dockers/docker4eclipse ]; then echo "!!! the directory ~/dockers/docker4eclipse should exist, here should be your git-clone"; fi
#
#
# copy startup-script and icon to be used on Desktop
cp -r userHome/bin/* ~/bin

#
#... the desktopfile can be copied to your Desktop-folder
#... this desktopfile is expecting:
# create Desktopfile
cd userHome/Desktop
. build.sh

# finally copy userHome/Desktop/Oxygen.desktop to your Desktop-Folder
# ~/Desktop  or on german installation ~/Schreibtisch/
echo "working on $PWD"
cp Oxygen.desktop ~/Desktop/Oxygen.desktop 2>/dev/null
if [ ${?} -ne 0 ]; then
   cp Oxygen.desktop ~/Schreibtisch
fi
#
