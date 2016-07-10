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
# Variable 1: VM's in running state
# Variable 2: VM's in shutoff state
# Variable 3: VM's in paused state
# Variable 4: VM's in other states
# Variable 5: Number of all VM's configured in the server
#


PATH=$PATH:/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin

vmrun=`virsh list --all|grep -ci "running"`
vmoff=`virsh list --all|grep -ci "shut off"`
vmpsd=`virsh list --all|grep -ci "paused"`
vmoth=`virsh list --all|grep -ci "other"`
vmtot=$[vmrun+vmoff+vmpsd+vmoth]

echo $vmrun
echo $vmoff
echo $vmpsd
echo $vmoth
echo $vmtot
