#!/bin/bash

# Original Guide: https://gist.github.com/carry0987/372b9fefdd8041d0374f4e08fbf052b1

SSID=$(/sbin/iwgetid --raw)

if [ -z "$SSID" ]
then
    echo "`date -Is` WiFi interface is down, trying to reconnect" >> /home/swade/wifi-log.txt
    sudo ifconfig wlan0 down
    sleep 30
    sudo ifconfig wlan0 up
    sudo /home/swade/sendip.sh
fi

echo "WiFi check finished"
