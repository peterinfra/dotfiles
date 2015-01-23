#!/usr/bin/env bash
host=$1
user=$2

if [ -z $host ]; then
    echo "no host name"
    exit 0
fi

if [ -z $user ]; then
    echo "using avnidev"
    sshpass -pavnidev ssh -oStrictHostKeyChecking=no avnidev@$host
fi

if [ $user ]; then
    ssh -oStrictHostKeyChecking=no $user@$host
fi
 
