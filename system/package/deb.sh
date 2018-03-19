#!/bin/bash

check_package(){
	dpkg -s $1 > /dev/null 2>&1
}

install_package_file(){
	dpkg -i $1
}

remove_package(){
	dpkg -r $1
}

install_package(){
	apt-get install $1 -y
}

download_package(){

}



