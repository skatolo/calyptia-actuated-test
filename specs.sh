#!/bin/bash

echo Information on main disk
df -h /

echo Memory info
free -h

echo Total CPUs:
echo CPUs: $(nproc)

echo CPU Model
cat /proc/cpuinfo |grep "model name"

echo Kernel and OS info
uname -a

if ! [ -e /dev/kvm ]; then
    echo "/dev/kvm does not exist"
else
    echo "/dev/kvm exists"
fi

echo OS
cat /etc/os-release

echo Egress IP:
curl -s -L -S https://checkip.amazonaws.com