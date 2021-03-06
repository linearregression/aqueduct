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
# Group ID (Vulid): V-4369
# Group Title: GEN003960
# Rule ID: SV-37463r1_rule
# Severity: medium
# Rule Version (STIG-ID): GEN003960
# Rule Title: The traceroute command owner must be root.
#
# Vulnerability Discussion: If the traceroute command owner has not been 
# set to root, an unauthorized user could use this command to obtain 
# knowledge of the network topology inside the firewall.  This information 
# may allow an attacker to determine trusted routers and other network 
# information potentially leading to system and network compromise.
#
# Responsibility: System Administrator
# IAControls: ECLP-1
#
# Check Content:
#
# # ls -lL /bin/traceroute
# If the traceroute command is not owned by root, this is a finding.



#
# Fix Text: 
#
# Change the owner of the traceroute command to root.
# Example:
# chown root /bin/traceroute
  
#######################DISA INFORMATION##################################
	
# Global Variables
PDI=GEN003960
	
# Start-Lockdown

if [ -a "/bin/traceroute" ]
then
  CUROWN=`stat -c %U /bin/traceroute`;
  if [ "$CUROWN" != "root" ]
    then
      chown root /bin/traceroute
  fi
fi
