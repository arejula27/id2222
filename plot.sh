#!/bin/bash

#check for installation of parallel-rsync

if [ "$#" -ne 1 ] ; then
	echo "Data file not supplied."
	echo "Usage ./plot {data-file.txt}"
	exit
fi

gnuplot -e "filename='$1'" graph.gnuplot

#check is macos
if [ "$(uname)" == "Darwin" ]; then
	xdg-ninja graph.png
else
	xdg-open graph.png
fi

