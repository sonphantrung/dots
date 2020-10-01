#!/bin/bash

NUM="$(checkupdates | wc -l)"
ARCH=""

if [ ""$NUM" = "0"" ]
then
	echo "  Up to d8"
else
	echo "  $NUM avail"
fi
