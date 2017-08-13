#!/bin/bash
#
#...create needed folders if the don't exists
# copy a startup-script on ~/bin
#      an icon on ~/bin/icons
#
#... the startup-script is expecting your eclipse-oxygen docker
#    to be started from ~/dockers/docker4eclipse/run.sh
#
if [ ! -e ~/bin ]; then mkdir ~/bin; fi
if [ ! -e ~/bin/icons ]; then mkdir ~/bin/icons; fi
#
if [ ! -e ~/dockers ]; then mkdir ~/dockers; fi
if [ ! -e ~/dockers/docker4eclipse ]; then mkdir ~/dockers/docker4eclipse; fi
#
#
# copy startup-script and icon to be used on Desktop
cp -r userHome/bin ~

#
#... the desktopfile can be copied to your Desktop-folder
#... this desktopfile is expecting:
# create Desktopfile
. ./userHome/Desktop/build.sh

# finally copy userHome/Desktop/Oxygen.desktop to your Desktop-Folder
# ~/Desktop  or on german installation ~/Schreibtisch/
cp ./userHome/Desktop/Oxygen.desktop ~/Desktop
#
