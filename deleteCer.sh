#!/bin/bash
filepath=$1
deleteCer(){
    hosts=(jjz1 jjz3 jjz4 jjz5 jjz6 jjz7 jjz8)
	count=(1 4 5 6 7 8 9)
	index=0
    for host in ${hosts[@]}
        do
            echo HOST $host
            ssh $host "sudo rm -r /home/centos/$filepath-11${count[$index]}/e2e_cli/channel-artifacts/"
	    ssh $host "sudo rm -r /home/centos/$filepath-11${count[$index]}/e2e_cli/crypto-config/"
			index=$[$index +1]
        done
}
deleteCer 
