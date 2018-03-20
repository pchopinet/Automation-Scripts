
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

