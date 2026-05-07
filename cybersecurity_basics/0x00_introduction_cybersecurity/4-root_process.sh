#!/bin/bash
ps -u "$1" -F | grep -vE '(\s+0){2}\s+'
