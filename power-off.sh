#!/bin/bash
source /automation-scripts/global-config.conf
SERVER_IP="$1"
SERVER_USERNAME="$2"
SERVER_PASSWORD="$3"
SERVER_MAC="$4"
SERVER_NAME="$5"
DATE_TIME="$(date)"
PING="/bin/ping -q -c1"
STATUS="$(bash /automation-scripts/shutdown.sh "$SERVER_IP;$SERVER_USERNAME;$SERVER_PASSWORD")"

MESSAGE="Scheduled Power Off

Server IP   : $SERVER_IP
Server MAC  : $SERVER_MAC
Server Name : $SERVER_NAME

Trigger Date & Time : $DATE_TIME

STATUS : $STATUS 
"

bash /automation-scripts/email-notifiy.sh "[PowerOFF] - $SERVER_NAME" "$MESSAGE"
