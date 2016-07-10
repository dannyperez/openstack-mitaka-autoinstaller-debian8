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
# Variable 1: Disk usage (bytes) - Nova Instances
# Variable 2: Disk usage (bytes) - Glance Images
#


PATH=$PATH:/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin

du -c --block-size=1 /var/lib/nova/instances/|tail -n 1|awk '{print $1}'
du -c --block-size=1 /var/lib/glance/images/|tail -n 1|awk '{print $1}'
