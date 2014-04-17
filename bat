#!/bin/sh

un=$(uname)

if [ "$un" == "Linux" ];
then
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	echo "Battery: $bat %"
else
	echo "No battery info found"
fi
