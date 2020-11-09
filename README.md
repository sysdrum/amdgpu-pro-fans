# AMDGPU-SST LINUX UTILITY SUITE

Current Devs: 
* Sysdrum 
* DarkJarris
* Alcotronic

License: Apache Version 2.0

This utility suite allows you to fine tune your fan curve and check thermals for AMD cards that support both the AMDGPU Open and AMD GPU PRO driver. 

## Stable Branch
The current master branch is the stable release.
##

### Installation Instructions:
* See git install on linux instructions --> https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-linux-md
* git clone https://github.com/sysdrum/amdgpu-simple-settings-tool
* cd amdgpu-simple-settings-tool
* Run `./create_desktop_file.sh`
* If you move `AMDGPU-SST` just Run the `./create_desktop_file.sh` again to update everything.


### Automatic Control
The bash file AutomaticFanSet.sh will loop every 5 seconds, and get a amdgpu-pro-fans output of your current fans temperature, add a modifier, and feed it right back into amdgpu-pro-fans as a fan speed percentage.

When run on startup, it will automatically raise and lower your fan speeds, even on GPUs where the automatic fan controller is not working.

### CLI Usages:

sudo ./amdgpu-pro-fans.sh -s [speed 0 - 100]  
./amdgpu-pro-fans.sh -t  
./amdgpu-pro-fans.sh -r  
./amdgpu-pro-fans.sh -h  
./amdgpu-pro-fans.sh -v [0,1] (default 1)

#### Examples
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
<br>
<br>
There is a CLI based Menu for simple adjustments.

### Adjusting the MENU Example:
* Menu has default settings of 40/60/80/100
* ` | ./amdgpu-pro-fans.sh -s 80 | `
* That would set all of your fan speeds to 80 percent of their maximum speed.
* You can edit fanspeeddlg-promenu.sh and update the ranges. 
* At anytime you can run ./create_desktop_file.sh to reset the changes to default.
#### Dependencies: 
* dialog - is required for the menu to work.

## Notes:
### All Cards listed are known to work.
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


#### Orignal project:
Original creator DominiLux 
https://github.com/DominiLux/amdgpu-pro-fans  
Dev replaced the project with:  
https://github.com/DominiLux/GPUMAGIC
