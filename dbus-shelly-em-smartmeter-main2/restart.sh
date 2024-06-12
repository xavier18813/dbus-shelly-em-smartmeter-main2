#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

kill $(pgrep -f "python $SCRIPT_DIR/dbus-shelly-em-smartmeter.py")
chmod a-x $SCRIPT_DIR/service/run
$SCRIPT_DIR/restart.sh
