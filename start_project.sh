#!/bin/bash
if [ "$#" = "0" ]; then
	echo "Usage : sh start_project.sh <project>"
else
	mkdir ~/$1
	cd ~/$1
	cp -R ~/libft .
	mkdir src includes
	cp ~/Tools/Makefile .
fi
