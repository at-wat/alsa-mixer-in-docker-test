#!/bin/sh

sleep 1
ogg123 -r -d alsa -v /mono.ogg &

sleep 2
ogg123 -r -d alsa -v /test.ogg &

while true
do
  sleep 5
  ogg123 -d alsa -v /drip.ogg
done
