# amdgpu-simple-settings-tool


Original creator DominiLux  
Project extended: Sysdrum
New features: DarkJarris
License: Apache Version 2.0

This is now a beta release written in unix style bash script. It is a simple utility that allows you to set the fan speeds and check themals for AMD cards that supports both the AMDGPU open and AMD GPU PRO driver. 

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
Fully tested on Ubuntu 18.04 with AMDGPU-PRO and AMDGPU open Linux drivers. It is compatible with all Radeon R8 Series, R9 Series, and RX Series graphics cards.


## Orignal project:
https://github.com/DominiLux/amdgpu-pro-fans  
Dev replaced the project with:  
https://github.com/DominiLux/GPUMAGIC
