#!/bin/bash

declare -a servers

# Declare the array of servers in the format of:
# ip/DNS_name;USERNAME;PASSWORD
# https://recursionrecursion.co.uk/post/remote-shutdown-script-for-linux-windows
#servers[0]='10.0.1.10;user;PASSWORD'

servers[0]="$1"

# Loop through all of the servers
for i in "${servers[@]}"
do
    arr=(${i//;/ })
    # easy access variables...
    ip=${arr[0]}
    user=${arr[1]}
    pass=${arr[2]}

    # Is the server responding to a ping? Attempt to login
    if ping -w 2 -c 1 $ip > /dev/null; then
        command="echo -e '${pass}' | sudo shutdown now"
        output=$(sshpass -p "${pass}" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=10 ${user}@${ip} ${command} 2>&1)

        if [ "$output" == "bash: sudo: command not found" ]; then
            command="echo -e '${pass}' | shutdown now"
            output=$(sshpass -p "${pass}" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=10 ${user}@${ip} ${command} 2>&1)
        fi

        sleep 15s

        #if [ "$output" == "[sudo] password for ${user}:" ] || [[ "$output" == "[sudo] password for ${user}: Shutdown scheduled"* ]]; then
        if ping -w 2 -c 1 $ip > /dev/null; then
            #echo -e "Sent shutdown command to ${ip}"
            echo -e "Failed to shutdown ${ip}"
            echo -e "SSH ouput: ${output}"
            echo ""
        else
            echo -e "Sent shutdown command to ${ip}"
        fi
    else
        echo -e "${ip} is not responding to a ping - not attempting to shutdown the host"
    fi
done
