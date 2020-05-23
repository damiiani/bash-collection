#!/usr/bin/sh

new_user=$1
old_user=$2

if [ "$new_user" = "" ] || [ "$old_user" = "" ]; then
    echo "$0 <new_user> <old_user>"
    exit 1
fi

sudo usermod -l $new_user $old_user

sudo pkill -u $old_user

sudo usermod -d /home/$new_user -m $new_user

sudo groupmod -n $new_user $old_user
