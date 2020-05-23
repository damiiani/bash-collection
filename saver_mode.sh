#!/usr/bin/sh

if [ $EUID -eq 0 ]; then
    if [ "$1" = "enable" ]; then
        echo 60 > /sys/devices/system/cpu/intel_pstate/max_perf_pct
        echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
    elif [ "$1" = "disable" ]; then
        echo 100 > /sys/devices/system/cpu/intel_pstate/max_perf_pct
        echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
    else
        echo "$0 <enable-disable>"
    fi
else
    echo "Please, run as root!"
fi
