#!/bin/bash

# TODO check input

git_push_all(){
	git add .
	git commit -m $1
	git push
}

