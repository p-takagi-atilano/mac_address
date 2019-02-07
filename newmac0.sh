#!/bin/bash
# sets to random mac address

TEMP=$( openssl rand -hex 6|sed 's/\(..\)/\1:/g;s/.$//' )
echo $TEMP
sudo ifconfig en0 ether $TEMP
