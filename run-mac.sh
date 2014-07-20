#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

BIN="$DIR/proj.mac/bin/quickgame.app/Contents/MacOS/quickgame"
if [ ! -f $BIN ]; then
    echo "PLEASE BUILD proj.mac/quickgame.xcodeproj FIRST"
    exit
fi

ARG="-relaunch-off -quick $QUICK_COCOS2DX_ROOT -workdir $DIR"
SIZE="-landscape"
CMD="$BIN $ARG $SIZE"

until $CMD; do
    echo ""
    echo "------------------------------------------------------"
    echo ""
    echo ""
    echo ""
done
