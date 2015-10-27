#!/bin/sh
mkdir ./records/$1
for((i=0;i<64;i++)); do
	for((j=0;j<64;j++)); do
		wget -O ./records/$1/$i\_$j.png http://www.jma.go.jp/jp/highresorad/highresorad_tile/HRKSNC_GRAY/$1/$1/zoom6/$i\_$j.png
	done
done
