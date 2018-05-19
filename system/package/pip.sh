#!/bin/bash
 
pip-check-package(){
	pip list | grep $1
}

pip-install-package(){
	pip install $1
}

pip-remove-package(){

}

pip-download-package(){

}

