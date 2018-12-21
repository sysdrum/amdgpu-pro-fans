#!/usr/bin/env bash
#####################################
#AMDGPU-PRO LINUX UTILITIES SUITE#
######################################
# Utility Name: AMDGPU-PRO-FANS-AUTO
# Author: DarkJarris
# Version: 0.1.0
# Version Name: Officium
# https://github.com/sysdrum/amdgpu-pro-fans

# Forked from DominiLux

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script will fire the main script every 5 seconds
# The aim is to have this run at startup, keeping the fans cooled

# Use case: Your AMD Card's automatic temperature control is broken
# This script will essentially try and keep your card cooled automatically, as the temperature will find a balance point.
# We add a little extra on top, because we always want it cooler

#####################################################################
#								*** IMPORTANT ***									  #
# DO NOT MODIFY PAST THIS POINT IF YOU DONT KNOW WHAT YOUR DOING!!! # 
#####################################################################

############################
# COMMAND PARSED VARIABLES #
############################
MODIFIER=10
LOOPTIME=5


while true; do
	#Get the current termpature, strip out the trailing ºC
	RESULT="$(bash amdgpu-pro-fans.sh -v 0 -t | sed 's/.$//')"
	speed=$(( RESULT + MODIFIER))
	
	# Put a ceiling on this, as we cant push 101% of fan speed
	if [ $speed -ge 100 ] ; then
	speed=100
	fi

	# Fire the sript again, this time setting our modified temperature as the percentage we want to use
	bash amdgpu-pro-fans.sh -s $speed
	sleep $LOOPTIME;
done
