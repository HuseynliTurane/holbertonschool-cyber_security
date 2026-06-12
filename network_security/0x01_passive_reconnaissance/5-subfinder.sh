#!/bin/bash
subfinder -d $1 -silent -o $1.txt -oI -oJ -cs 2>/dev/null | awk -F, '{print $1}'
