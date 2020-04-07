#!/bin/bash

c=1
for i in `ls *_L.png`; do
	cp $i left$c.png
       	c=$((c+1))
done

c=1
for i in `ls *_R.png`; do
	cp $i right$c.png
       	c=$((c+1))
done
