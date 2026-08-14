#!/bin/bash
# 0-service.sh
#
# Purpose:
#   Analyze an authentication log file (e.g. auth.log) and
#   count how often each "message keyword" appears, right
#   after the process name (field 5) on each log line.
#   The service tied to the highest counts is the one the
#   attackers used to try to gain access to the system.
#
# Usage:
#   ./0-service.sh auth.log

awk '{print $6}' $1 | sort | uniq -c | sort -rn
