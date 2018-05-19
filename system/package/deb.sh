#!/bin/bash

deb-check-package(){
	dpkg -s $1 > /dev/null 2>&1
}

deb-install-package-from-file(){
	dpkg -i $1
}

deb-remove-package(){
	dpkg -r $1
}

deb-install-package(){
	apt-get install $1 -y
}

deb-download_package(){
    
}



