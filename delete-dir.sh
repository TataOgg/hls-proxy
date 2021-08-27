#!/usr/bin/env bash
set -e

ID=$1
DIR="/var/hls"
TIMEOUT=30
rm -rf $DIR/${ID::2}/$ID
echo "Deleted $DIR/${ID::2}/$ID"
sleep $TIMEOUT && Kill -15 $!
echo "Sended SIGTERM to $!"

