#!/bin/bash
sleep 15 &&
TP_PATH=`pwd`
TP_PATH='/home/ForgedTurbo/Projects/Fan-Control/'
cd $TP_PATH
sudo -c data/tp_fan_control &
exit
