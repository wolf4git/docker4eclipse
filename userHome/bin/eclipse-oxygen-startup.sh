#!/bin/bash
#set -xv #...to get all command displayed on the terminal, just uncomment
declare _theCommand=~/dockers/docker4eclipse/run.sh
echo "."
echo "."
   gnome-terminal --command="${_theCommand}" 
#
# if you like to use a terminal with a predfinde profile, take the example below
echo "."
declare _theProfile=local
#  gnome-terminal --command="${_theCommand}" --window-with-profile=${_theProfile} &
