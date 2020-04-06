#!/bin/bash
CHROMIUM_DIR=$HOME/chromium
git clone https://github.com/scheib/chromium-latest-linux.git $CHROMIUM_DIR
$CHROMIUM_DIR/update.sh
