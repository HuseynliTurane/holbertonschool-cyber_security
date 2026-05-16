#!/bin/bash
# Displays all current iptables rules with line numbers

sudo iptables -L -n -v --line-numbers
