#!/usr/bin/bash

echo '[ ' $(free -h | awk '/^Mem/ { print $3" / "$2 }' | sed s/i//g) ']'
