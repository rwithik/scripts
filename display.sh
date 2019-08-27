#!/bin/bash

OPTION=`echo -e "Displays\nDuplicate\nSecondary only\nPrimary only\nExtend left\nExtend right\nExtend top\nExtend bottom" | rofi -dmenu `

case $OPTION in
	Displays )
		notify-send "`mons`"
		;;
	Duplicate )
		mons -d
		;;
	Secondary* )
		mons -s
		;;
	Primary* )
		mons -o
		;;
	Extend* )
		mons -e `echo $OPTION | cut -d ' ' -f 2`
		;;
esac
