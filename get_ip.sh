#!/bin/bash

interface=$1

ip=`ip -4 addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`

echo $interface $ip
