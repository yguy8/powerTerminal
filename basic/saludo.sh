#!/bin/bash
showname(){
        echo Holanda $1
	if [ ${1,,} = root ]; then
		return 0
	else
		return 1
	fi
}
showname $1
if [ $? = 1 ]; then 
	echo "No te conozco"
fi
