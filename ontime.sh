#!/bin/bash
showname(){
        echo Holanda $1
	if [ ${1,,} = clara ]; then
		return 0
	else
		return 1
	fi
}
showname $1
if [ $? = 1 ]; then 
	echo "No te conozco"
fi
clara@clara-ThinkPad-L560:~/vimgh$ cat funciones.sh
#!/bin/bash 

showuptime(){
	up=$(uptime -p | cut -c4-)
	since=$(uptime -s)
	cat << EOF
-----
This machine has been up for ${up}
It has been running since ${since}
-----
EOF
}
showuptime
