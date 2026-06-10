#!/bin/bash
subfinder -d $1 -silent | tee >(while read h; do echo "$h,$(host $h | awk '/has address/{print $4; exit}')"; done > $1.txt)
