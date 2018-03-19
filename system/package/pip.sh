#!/bin/bash
 
check_package(){
	pip list | grep $1
}

install_package(){
	pip install $1
}

remove_package(){

}

download_package(){

}

