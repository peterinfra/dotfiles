#!/usr/bin/env bash
host=$1
user=$2

echo $host
if [ -z $host ]; then
    echo "no host name"
    exit 0
fi

if [ -z $user ]; then
    echo "using avnidev"
    sshpass -pavnidev ssh -oStrictHostKeyChecking=no avnidev@10.1.12.$host
fi

if [ $user ]; then
    ssh -oStrictHostKeyChecking=no $user@10.1.12.$host
fi
 
