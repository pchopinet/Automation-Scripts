#!/bin/bash

convert-to-h264() {
    if [ -n "$3" ]
    then
        codec=$3
    else
        codec="h264"
    fi

    ffmpeg -hide_banner -loglevel quiet -i $1 -map 0:a? -map 0:s? -map 0:v -c:a copy -c:s copy -c:v $3 -y $2

}

convert-files-in-dir(){
    if [ -n "$3" ]
    then
        codec=$3
    else
        codec="h264"
    fi

    for file in "$1"/*
    do
        file_out=$2/${file/x265.HEVC/h264}
        echo $file_out
        convert-to-h264 $file "$file_out" $codec
    done
}

