#!/bin/bash
# -------------------------------------------------------

# -------------------------------------------------------
cat Oxygen.desktop.org | sed "s#<USER_HOME>#${HOME}#g" > Oxygen.desktop
chmod 770 Oxygen.desktop
# -------------------------------------------------------

