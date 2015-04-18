#!/bin/sh
#
# find subtitle encoding and call mplayer appropriatly

usage () {
    echo "Usage: $0 file.srt video-file"
}

if [ $# -ne 2 ];
then
    usage
    exit 1
fi

sub=$1
movie=$2

ret=$(file "$1" | awk -F":" '{ print $2 }' | sed 's/^ //' | cut -d\  -f1)

if [ "$ret" = "UTF-8" ];
then
    mplayer -subcp utf8 -sub "$sub" "$movie"
    exit 0
elif [ "$ret" = "ISO-8859" ];
then
    mplayer -subcp iso8859-7 -sub "$sub" "$movie"
    exit 0
else
    echo "sub encoding not found"
    exit 1
fi
