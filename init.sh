#!/bin/bash
#
#...create needed folders if the don't exists

#... the desktopfile can be copied to your Desktop-folder
#... this desktopfile is expecting:
#      a startup-script on ~/bin
#      an icon on ~/bin/icons
#
#... the startup-script is expecting your eclipse-oxygen docker
#    to be started from ~/dockers/eclipse-oxygen/run.sh
#
if [ ! -e ~/bin ]; then mkdir ~/bin; fi
if [ ! -e ~/bin/icons ]; then mkdir ~/bin/icons; fi
#
if [ ! -e ~/dockers ]; then mkdir ~/dockers; fi
if [ ! -e ~/dockers/eclipse-oxygen ]; then mkdir ~/dockers/eclipse-oxygen; fi
#
# copy startup-script and icon to be used on Desktop
cp -r userHome/bin/ ~/bin
#
# finally copy userHome/Desktop/Oxygen.desktop to your Desktop-Folder
# ~/Desktop  or on german installation ~/Schreibtisch/
