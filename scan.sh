#!/bin/sh
  
# This step seems to be required
rfkill unblock all

# Loop forever, scanning and emitting signal strengths
while true; do
  echo "Scanning..."
  iwlist wlan0 scan 2>&1 | egrep "ESSID|Signal level|Frequency" | tr '\n' ' ' | sed 's/\s*Quality/\nQuality/g;s/\s*ESSID/ ESSID/g;s/\s*Frequency/ Frequency/g'
  echo "\n\n"
  sleep 2
done
