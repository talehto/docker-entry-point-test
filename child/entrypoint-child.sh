#!/bin/sh

sleeptime="$1" ; shift

echo "child before sleep"
time sleep $sleeptime
echo "child after sleep"

./entrypoint.sh $@
