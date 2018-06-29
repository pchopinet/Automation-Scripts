#!/bin/bash

ssh-get-files(){
	scp -r $1:$2 $3
}

ssh-command-cluster(){
	filename="$1"
	username="$2"
	command="$3"
	while read -r line
	do
		ip="$line"
		ssh $username@$ip -q $command
	done < "$filename"
}

ssh-test-process-run(){
    username="$1"
    ip="$2"
    process="$3"

    return $(ssh $username@$ip -q "ps xua |  tr -s ' ' | cut -d ' ' -f11 | grep -w $process | wc -l")
}
