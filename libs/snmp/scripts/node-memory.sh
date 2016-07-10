#!/bin/bash
#
# Unattended/SemiAutomated OpenStack Installer
# Danny j. Pérez M. perezdann at gmail dot com
# Based on 1.0.5 ubuntu16lts by Reynaldo R. Martinez P. TigerLinux at gmail dot com
#
# Main Installer Script
# Version: 1.0.6.deb8 "Daenerys"
# July 09, 2016
#
# OpenStack MITAKA for Debian 8
#
# Variable 1 = MemBuffers
# Variable 2 = MemCached
# Variable 3 = MemOther
# Variable 4 = MemFree
# Variable 5 = SwapTotal
# Variable 6 = SwapFree
#
# All metrics reported in bytes
#

PATH=$PATH:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin

mainusedkb=`free|grep -i mem:|awk '{print $3}'`
mainfreekb=`free|grep -i mem:|awk '{print $4}'`

bufferskb=`free|grep -i mem:|awk '{print $6}'`
cachedkb=`free|grep -i mem:|awk '{print $7}'`

bplusfkb=$[bufferskb+cachedkb]

otherkb=$[mainusedkb-bplusfkb]

swapusedkb=`free|grep -i swap:|awk '{print $3}'`
swapfreekb=`free|grep -i swap:|awk '{print $4}'`

echo $[bufferskb*1024]
echo $[cachedkb*1024]
echo $[otherkb*1024]
echo $[mainfreekb*1024]
echo $[swapusedkb*1024]
echo $[swapfreekb*1024]
