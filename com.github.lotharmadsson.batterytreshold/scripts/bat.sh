#!/bin/sh
# Version for all battery types

# $1 = CHARGE_STOP_THRESHOLD
# $2 = BATTERY_NAME
echo $1 > /sys/class/power_supply/$2/charge_control_end_threshold
