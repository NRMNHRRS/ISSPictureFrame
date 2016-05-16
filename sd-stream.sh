#!/bin/bash
while true
do
livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_240p --player omxplayer --fifo --player-args "--win \"0 0 720 480\" {filename}”
done
