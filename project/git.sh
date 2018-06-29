#!/bin/bash

# TODO check input

git-push-all(){
	git add .
	git commit -m $1
	git push
}

