#!/bin/sh

sleep 1
ogg123 -r -d alsa -o dev:plug:plugj -v /test.ogg &

sleep 2
ogg123 -r -d alsa -v -o dev:plug:plugj /test2.ogg &

while true
do
  sleep 5
  ogg123 -d alsa -v -o dev:plug:plugj /drip.ogg
done
