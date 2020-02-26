#!/bin/sh

/bin/sleep 20
RAND=$(( ( RANDOM % 10 )  + 1 ))
if [[ RAND -eq 1 ]]; then
  exit 1
else
  exit 0
fi
