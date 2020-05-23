#!/usr/bin/sh

program=$1

if [ "$program" = "" ]; then
    echo "$0 <program>"
    exit 1
fi

while [ 1 -eq 1 ]; do
    killall -q $program || break
done
