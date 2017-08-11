#!/bin/bash

# -------------------------------------------------------
#declare ECLIPSE-RELEASE=/luna/SR1/eclipse-java-luna-SR1-linux-gtk-x86_64.tar.gz
#declare ECLIPSE-RELEASE=/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz
#declare ECLIPSE-RELEASE=/neon/3/eclipse-java-neon-3-linux-gtk-x86_64.tar.gz

declare ECLIPSE_RELEASE=oxygen/R/eclipse-java-oxygen-R-linux-gtk-x86_64.tar.gz
declare MAVEN_RELEASE=3.5.0

# -------------------------------------------------------
 cat Dockerfile.org |sed "s#<ECLIPSE-RELEASE>#${ECLIPSE_RELEASE}#g;s#<MAVEN-RELEASE>#${MAVEN_RELEASE}#g;s#<CURRENT-USER>#${USER}#g" > Dockerfile
 docker build --tag liquid/eclipse:0.1.2 .

# -------------------------------------------------------
# if image is not tagged correctly try 
# docker image tag <IMAGEID> liquid/eclipse:0.1.0
