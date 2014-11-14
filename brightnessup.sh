#!/bin/bash
br=$(cat "/sys/class/backlight/intel_backlight/brightness")
if [ $br -lt 900 ];  
then
	br=$(($br + 100))
	echo $br > /sys/class/backlight/intel_backlight/brightness
fi

