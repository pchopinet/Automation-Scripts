#/bin/bash

check_package(){
	dpkg -s $1 > /dev/null 2>&1
}

install_package(){
	dpkg -i $1
}

download_package(){
	apt-get install $1
}
