#!/bin/bash

CALIB_YML="$1"
SRC_DIR="$2"
DST_DIR="$3"


for LEFT_FILENAME in `(cd $SRC_DIR && ls -1 *_L.png)`; do
	RIGHT_FILENAME=${LEFT_FILENAME/_L.png/_R.png}
	echo $LEFT_FILENAME
	# echo \
	./build/undistort_rectify -8 \
		-l "$SRC_DIR/$LEFT_FILENAME" \
	       	-r "$SRC_DIR/$RIGHT_FILENAME" \
		-c "$CALIB_YML" \
		-L "$DST_DIR/$LEFT_FILENAME" \
		-R "$DST_DIR/$RIGHT_FILENAME"
done

