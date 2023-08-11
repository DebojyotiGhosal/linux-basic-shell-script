#!/bin/bash
load=$(cat /proc/loadavg | awk -F. '{print $1}')
if [ $load -ge 0 ]; then
    echo "Load is high for the server $(hostname) : $(hostname -i)"
##################################################################
# To Trigger mail, enable below code
##################################################################
    #/bin/mail -s "Warning: High Server Load on: `hostname -i` Load Average: $r" your@emailid.here
fi
