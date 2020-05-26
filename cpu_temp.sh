#!/usr/bin/sh

CPU0_TEMP=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
CPU1_TEMP=$(cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq)
CPU2_TEMP=$(cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq)
CPU3_TEMP=$(cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq)

CPU_TEMP=$(((CPU0_TEMP + CPU1_TEMP + CPU2_TEMP + CPU3_TEMP) / 4))

printf "%.2fGHz\n" $((CPU_TEMP / 1000000.0))
