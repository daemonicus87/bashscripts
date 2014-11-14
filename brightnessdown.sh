#!/bin/bash
br=$(cat "/sys/class/backlight/intel_backlight/brightness")
if [ $br -gt 100 ];  
then
	br=$(($br - 100))
	echo $br > /sys/class/backlight/intel_backlight/brightness
fi

