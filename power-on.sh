#!/bin/bash

source /automation-scripts/global-config.conf

SERVER_IP="$1"
SERVER_MAC="$2"
SERVER_NAME="$3"
DATE_TIME="$(date)"
PING="/bin/ping -q -c1"
STATUS="FAILED"

awake "$SERVER_MAC"

sleep 30s

if ping -w 2 -c 1 $SERVER_IP > /dev/null; then
   STATUS="SUCCESS"
fi

if [ "$STATUS" = "FAILED" ]; then
    sleep 30s
    
    if ping -w 2 -c 1 $SERVER_IP > /dev/null; then
     STATUS="SUCCESS"
    fi
fi


MESSAGE="Scheduled Power On

Server IP   : $SERVER_IP
Server MAC  : $SERVER_MAC
Server Name : $SERVER_NAME

Trigger Date & Time : $DATE_TIME

STATUS : $STATUS 
"

bash /automation-scripts/email-notifiy.sh "[PowerOn] - $SERVER_NAME" "$MESSAGE"
