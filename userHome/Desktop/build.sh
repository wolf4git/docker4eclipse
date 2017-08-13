#!/bin/bash
# -------------------------------------------------------

# -------------------------------------------------------
echo "...building Oxygen.desktop"
cat Oxygen.desktop.org | sed "s#<USER_HOME>#${HOME}#g" > Oxygen.desktop
chmod 770 Oxygen.desktop
# -------------------------------------------------------

