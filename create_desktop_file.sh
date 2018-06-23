#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`
cd ${WORKING_DIR}
cat <<EOS > AMDFCS.desktop
[Desktop Entry]
Name=Amd FCS
Name[en_US]=AMD Fan Control System
Comment=AMD Fan control application for Linux
Exec=${FULL_PATH}/./fanspeeddlg-promenu.sh
Terminal=true
Categories=System;X-GNOME-Utilities;
Type=Application
Icon=system-run-symbolic
EOS
chmod +x AMDFCS.desktop
## This can be updated if this path is not valid. 
cp -p AMDFCS.desktop ~/.local/share/applications
sed -n "s|textexchange|${FULL_PATH}|g" fanspeeddlg-promenu.sh
chmod +x fanspeeddlg-promenu.sh