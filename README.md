# amdgpu-simple-settings-tool


Original creator DominiLux  

Project extended: Sysdrum

New features: DarkJarris

License: Apache Version 2.0

This is now a beta release written in unix style bash script. It is a simple utility that allows you to set the fan speeds and check thermals for AMD cards that supports both the AMDGPU open and AMD GPU PRO driver. 

## Stable Branch
The current master branch is the stable release. 

## Installation Instructions:
* sudo apt-get install git
* git clone https://github.com/sysdrum/amdgpu-simple-settings-tool
* cd amdgpu-pro-fans
* Run ./create_desktop_file.sh
* If you move amdgpu-pro-fans just Run the ./create_desktop_file again to update everything.


## Dependencies: 
* dialog - is required to for the menu to work.

## Adjusting the MENU Example:
* Menu has default settings of 40/60/80/100
* | ./amdgpu-pro-fans.sh -s 80 | 
* That would set all of your fan speeds to 80 percent of their maximum speed.
* You can edit fanspeeddlg-promenu.sh and update the ranges. 
* At anytime you can run ./create_desktop_file.sh to reset the changes to default.

## Automatic Control
The bash file AutomaticFanSet.sh will lopp every 5 seconds, and get a amdgpu-pro-fans output of your current fans temperature, add a modifier, and feed it right back into amdgpu-pro-fans as a fan speed percentage.

When run on startup, it will automatically raise and lower your fan speeds, even on GPUs where the automatic fan controller is not working.

## CLI Usages:

sudo ./amdgpu-pro-fans.sh -s [speed 0 - 100]  
./amdgpu-pro-fans.sh -t  
./amdgpu-pro-fans.sh -r  
./amdgpu-pro-fans.sh -h  
./amdgpu-pro-fans.sh -v [0,1] (default 1)

### Examples
sudo ./amdgpu-pro-fans.sh -s 80  
This would set all of your fan speeds to 80 percent of their maximum speed.

./amdgpu-pro-fans.sh -t  
This will show the current temperature in Centigrade.

./amdgpu-pro-fans.sh -r  
This will show current fan speed percentage.

./amdgpu-pro-fans.sh -h  
This shows the help feature

./amdgpu-pro-fans.sh -v  
This sets verbosity. 0 is simple output, 1 is verbose output. default is 1. 


If you wish to change verbosity to 0, use the flag before asking for output, examples given:  
./amdgpu-pro-fans.sh -v 1 -r  
Fan speed on Card0 is 100%

./amdgpu-pro-fans.sh -v 0 -r  
100

./amdgpu-pro-fans.sh -v 1 -a 0 -r  
Fan speed on Card0 is 100%

./amdgpu-pro-fans.sh -v 0 -a 0 -r  
100

./amdgpu-pro-fans.sh -t -v 0  
$0: invalid option -- ' '  
$0: invalid option -- '-'  
Temperature on Card0 is 51%

./amdgpu-pro-fans.sh -t -v 0 -a 0  
$0: invalid option -- ' '  
$0: invalid option -- '-'  
Temperature on Card0 is 51%

By using these features, it is possible to make a GUI front-end that can run this script and interpret the answers. If writing a GUI, set verbosity to 0 on your calls to get simple answers back you can check against.


## Notes:
<table class="table-condensed table-striped"><tbody><tr><td colspan="2">
			<h3>AMD Product Family Compatibility</h3>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ VII Graphics​</p>
			</td>
			<td>
			<p>AMD Radeon™ Pro WX-series​</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ RX Vega Series Graphics​</p>
			</td>
			<td>
			<p>AMD Radeon™ Pro WX 9100​</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ Vega Frontier Edition</p>
			</td>
			<td>
			<p>AMD Radeon™ Pro WX 8200</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ RX 550/560/570/580/590 Series Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ W9100</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ RX 460/470/480&nbsp;Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ W8100​</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ Pro Duo</p>
			</td>
			<td>
			<p>​​AMD FirePro™ W7100</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ R9 Fury/Fury X/Nano Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ W5100</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ R9 380/380X/390/390X Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ W4300</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ R9 285/290/290X Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ W4100</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ R7 240/250/250X/260/260X/350</p>
			</td>
			<td>
			<p>AMD FirePro™ W2100​</p>
			</td>
		</tr><tr><td>
			<p>AMD Radeon™ HD7700/7800/8500/8600</p>
			</td>
			<td>
			<p>​AMD FirePro™ W600</p>
			</td>
		</tr><tr><td>
			<p>​AMD Radeon™ R9 360 Graphics</p>
			</td>
			<td>
			<p>AMD FirePro™ S-Series</p>
			</td>
		</tr><tr><td>
			<p>​AMD Radeon™ R5 340</p>
			</td>
			<td>
			<p>​​</p>
			</td>
		</tr></tbody></table>


## Orignal project:
https://github.com/DominiLux/amdgpu-pro-fans  
Dev replaced the project with:  
https://github.com/DominiLux/GPUMAGIC
