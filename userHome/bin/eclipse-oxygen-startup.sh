#!/bin/bash
# snx
set -xv
declare _theProfile="local"
declare _theCommand="~/bin/dockers/docker4eclipse/run.sh"
echo "."
echo "."
echo "."
   gnome-terminal --command="${_theCommand}" --window-with-profile=${_theProfile} &


