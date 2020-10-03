#!/bin/bash

NUM="$(checkupdates | wc -l)"
ARCH=""

if [[ ""$NUM" == "0"" ]]
then
	echo "  Up 2 d8"
else
	echo $ARCH $NUM "avail"
fi
