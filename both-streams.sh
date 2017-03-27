#!/bin/bash
while true
do
( cmdpid=$BASHPID; (sleep 300; kill $cmdpid) & exec livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_240p --player omxplayer --fifo --player-args "--win \"0 0 720 480\" {filename}")
sleep 5
( cmdpid=$BASHPID; (sleep 300; kill $cmdpid) & exec livestreamer http://ustream.tv/channel/live-iss-stream mobile_284p --player omxplayer --fifo --player-args "--win \"0 0 720 480\" {filename}")
done
