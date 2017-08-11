#!/bin/bash

#...org CONFIG=~/.sqldeveloper
#...will cause to create this folder on host-home-dir with root-permissions
#...change to use folder in definition of this script 

declare XSOCK=/tmp/.X11-unix
declare XAUTH=/tmp/.docker.${USER}.xauth

declare file=$(basename $0)
declare path=$(dirname $0)
declare work=$PWD
declare conf=${work}
declare absp=${path:0:1}

echo "___file: ${file}"
echo "___path: ${path}"
echo "___work: ${work}"

if [ "${absp}_xX" == "/_xX" ]; then
   conf=${path}
else
   if [ "${path}_xX" != "._xX" ]; then
      conf=${work}/${path}
   fi
fi

echo "___conf: ${conf}"
declare ECLIPSE_HOME=${conf}/eclipse-home	#... eclipse-container internal, mount to host to be keept
declare ECLIPSE_AS=${conf}/appspace		#... eclipse-container internal, mount to host to be keept
declare ECLIPSE_WS=${conf}/workspace		#... eclipse-container internal, mount to host to be keept
declare ECLIPSE_BS=${conf}/buildspace		#... eclipse-container internal, mount to host to be keept

declare CTX_HOME=/home/${USER}  		#... container home-folder for user developer

if [ ! -e ${ECLIPSE_HOME} ]; then mkdir ${ECLIPSE_HOME}; fi
if [ ! -e ${ECLIPSE_AS} ]; then mkdir ${ECLIPSE_AS}; fi
if [ ! -e ${ECLIPSE_WS} ]; then mkdir ${ECLIPSE_WS}; fi
if [ ! -e ${ECLIPSE_BS} ]; then mkdir ${ECLIPSE_BS}; fi

echo "-------------------------------------------------------------------------------------"
echo "___eclipse_home:${ECLIPSE_HOME}"
echo "_____eclipse_ws:${ECLIPSE_WS}"
echo "_______ctx_home:${CTX_HOME}"
echo "-------------------------------------------------------------------------------------"
echo "volume mounts__: Host-Folder =>= Container-Folder"
echo "___ECLIPSE_HOME:${ECLIPSE_HOME} =>= ${CTX_HOME}"
echo "_____ECLIPSE_WS:${ECLIPSE_WS} =>= ${CTX_HOME}/workspace"
echo "_____ECLIPSE_BS:${ECLIPSE_BS} =>= ${CTX_HOME}/buildspace"
echo "_____ECLIPSE_AS:${ECLIPSE_AS} =>= ${CTX_HOME}/appspace"
echo "-------------------------------------------------------------------------------------"

xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

docker run --network=host -ti --rm \
   -v $XSOCK:$XSOCK \
   -v $XAUTH:$XAUTH \
   -v $ECLIPSE_HOME:${CTX_HOME}/ \
   -v $ECLIPSE_AS:${CTX_HOME}/appspace \
   -v $ECLIPSE_WS:${CTX_HOME}/workspace \
   -v $ECLIPSE_BS:${CTX_HOME}/buildspace \
   -e DISPLAY=$DISPLAY \
   -e XAUTHORITY=$XAUTH \
   --name eclipse liquid/eclipse:0.1.2

