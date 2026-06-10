#!/bin/bash
subfinder -d $1 -silent | while read -r sub; do echo "$sub"; ip=$(dig +short $sub | tail -n1); [ -n "$ip" ] && echo "$sub,$ip" >> $1.txt; done
