#!/bin/sh


vol() {
	vol=`amixer get Master | awk -F'[][]' 'END{ print $2 }' | sed 's/on://g'`
	echo -e "  ♫  : $vol"
}



I=0
while :; do

battery="$(cat /sys/class/power_supply/BAT0/capacity)"


	echo "    $(vol)  ◒ : $battery  "
	I=$(( ( ${I} + 1 ) % 11 ))
	sleep 5
done

