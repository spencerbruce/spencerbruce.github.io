#!/bin/bash
if [ "$#" -eq 1 ]; then
    convert $1 -resize 800x972^ -gravity Center -extent 800x972 ../$1
    echo "created output image ../$1"
    exit 1
fi
if [ "$#" -ne 2 ]; then
    echo "usage: ./resize.sh <input> <output>"
    exit 1
fi
if [ "$#" -eq 2 ]; then
    convert $1 -resize 800x972^ -gravity Center -extent 800x972 ../$2
    echo "created output image ../$2"
fi
