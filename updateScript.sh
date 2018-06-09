#!/bin/bash
filepath=$1
send(){
    hosts=(jjz1 jjz3 jjz4 jjz5 jjz6 jjz7 jjz8)
	count=(1 4 5 6 7 8 9)
	port=(1 3 4 5 6 7 8)
	index=0
    for host in ${hosts[@]}
        do
            echo HOST $host
            scp -r -P 1000${port[$index]} /home/centos/$filepath-113/e2e_cli/scripts/  centos@10.77.50.22:/home/centos/$filepath-11${count[$index]}/e2e_cli/
			index=$[$index +1]
        done
}
send
