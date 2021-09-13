#!/bin/bash
d=`top -bn 1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2+$4+$6+$10+$12+$14+$16 "%"}'`
g=`df | grep "/dev/sda1" | awk '{ print $5 }'`
echo `~/.tmux_wlan.sh && ~/.tmux_openvpn.sh`" | $d | Storage $g full" | sort | tr '\n' ' '
