#!/bin/bash
# TODO : check input and app

mkdir $1
cd $1
mkdir bin doc lib include src src/main
touch README
$(bash ../generate_makefile.sh $2) 
