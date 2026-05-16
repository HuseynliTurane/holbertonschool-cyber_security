#!/bin/bash
sudo find "${1:-/}" -type d -perm -0002 -print -exec chmod o-w {} + 2>/dev/null

