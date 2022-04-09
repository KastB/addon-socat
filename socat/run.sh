#!/bin/bash
CONFIG_PATH=/data/options.json

declare -x PORT=`jq -r '.PORT' $CONFIG_PATH`
declare -x SERVER=`jq -r '.SERVER' $CONFIG_PATH`
declare -x UART=`jq -r '.UART' $CONFIG_PATH`


echo "starting: /usr/bin/socat pty,link=$UART,waitslave tcp:$SERVER:$PORT,reuseaddr"
/usr/bin/socat pty,link=$UART,waitslave tcp:$SERVER:$PORT,reuseaddrusr
echo "finished"
