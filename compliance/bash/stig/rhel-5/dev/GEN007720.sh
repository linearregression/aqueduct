#!/bin/bash

##########################################################################
#Aqueduct - Compliance Remediation Content
#Copyright (C) 2011,2012  
#  Vincent C. Passaro (vincent.passaro@gmail.com)
#  Shannon Mitchell (shannon.mitchell@fusiontechnology-llc.com)
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License, or (at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor,
#Boston, MA  02110-1301, USA.
##########################################################################

###################### Fotis Networks LLC ###############################
# By Vincent C. Passaro                                                 #
# Fotis Networks LLC	                                                #
# Vincent[.]Passaro[@]fotisnetworks[.]com                               #
# www.fotisnetworks.com	                                                #
###################### Fotis Networks LLC ###############################
#
#  _____________________________________________________________________
# |  Version |   Change Information  |      Author        |    Date    |
# |__________|_______________________|____________________|____________|
# |    1.0   |   Initial Script      | Vincent C. Passaro | 1-Aug-2012 |
# |          |   Creation            |                    |            |
# |__________|_______________________|____________________|____________|
#	                                                                  
   
	
#######################DISA INFORMATION##################################
# Group ID (Vulid): V-22542
# Group Title: GEN007720
# Rule ID: SV-37609r1_rule
# Severity: medium
# Rule Version (STIG-ID): GEN007720
# Rule Title: The IPv6 protocol handler must be prevented from dynamic 
# loading unless needed.
#
# Vulnerability Discussion: IPv6 is the next generation of the Internet 
# protocol.  Binding this protocol to the network stack increases the 
# attack surface of the host.   Unprivileged local processes may be able to 
# cause the system to dynamically load a protocol handler by opening a 
# socket using the protocol.
#
# Responsibility: System Administrator
# IAControls: ECSC-1
#
# Check Content:
#
# If this system uses IPv6, this is not applicable.

# Verify the IPv6 protocol handler is prevented from dynamic loading.
# grep 'install ipv6 /bin/true' /etc/modprobe.conf /etc/modprobe.d/*
# If no result is returned, this is a finding.


#
# Fix Text: 
#
# Prevent the IPv6 protocol handler for dynamic loading.
# echo "install ipv6 /bin/true" >> /etc/modprobe.conf     
#######################DISA INFORMATION##################################
	
# Global Variables
PDI=GEN007720
	
# Start-Lockdown

