#!/bin/bash
if [ $# -ne 1 ]
then
	exit
fi

sudo docker run -i -t --rm -v `pwd`/resolver:/etc/nginx/html/resolver -p 80:80 $1
