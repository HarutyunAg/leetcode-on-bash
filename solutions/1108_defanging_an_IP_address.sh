#!/bin/bash

####################################################################################
# 1108. Defanging an IP Address                                                   ##
#                                                                                 ##
# Given a valid (IPv4) IP address, return a defanged version of that IP address.  ##
# A defanged IP address replaces every period "." with "[.]".                     ##
#                                                                                 ##
# Example:                                                                        ##
# Input: "255.100.50.0"                                                           ##
# Output: "255[.]100[.]50[.]0"                                                    ##
####################################################################################


DEFANGED_IP=$(echo "$1" | sed 's/\./[.]/g')
echo "$DEFANGED_IP"

