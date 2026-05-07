#!/bin/bash

# Check if a username was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Monitor processes started by the specified user
# Exclude processes where VSZ or RSS is 0
ps -u "$1" -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,command \
| grep -vE '^[[:space:]]*USER' \
| awk '$5 != 0 && $6 != 0'
