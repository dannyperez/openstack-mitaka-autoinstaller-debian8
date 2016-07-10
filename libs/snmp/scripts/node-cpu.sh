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
# Variable 1: % CPU "user"
# Variable 2: % CPU "system"
# Variable 3: % CPU "idle"
# Variable 4: % CPU "waiting-for-I/O"
# 

PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

mystats=`mpstat 1 4 |grep -i "Average:"`

usercpu=`echo $mystats|awk '{print $3}'`
systemcpu=`echo $mystats|awk '{print $5}'`
idlecpu=`echo $mystats|awk '{print $11}'`
wiocpu=`echo $mystats|awk '{print $6}'`


echo $usercpu
echo $systemcpu
echo $idlecpu
echo $wiocpu
