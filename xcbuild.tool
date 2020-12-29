#!/bin/bash
CONFIGURATION=DEBUG
OCDIR=$(dirname $(readlink -f $0))

cd $UDK_PATH
source edksetup.sh
cd $OCDIR
build -a X64 -p OpenCorePkg/OpenCorePkg.dsc -t XCODE5 -b $CONFIGURATION
