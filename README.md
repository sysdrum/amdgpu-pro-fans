# amdgpu-pro-fans


Original creator DominiLux 
Project extended: Sysdrum
License: Apache Version 2.0

This was an alpha release written in unix style bash script. It is a simple utility that allows you to set the fan speeds for AMD cards that support use the AMD GPU PRO driver. 

## Stable Branch
The current master branch is the stable release. 

## Installation Instructions:
* sudo apt-get install git
* git clone https://github.com/sysdrum/amdgpu-pro-fans
* cd amdgpu-pro-fans
* Run ./create_desktop_file.sh
* If you move amdgpu-pro-fans just Run the ./create_desktop_file again to update everything.


## Dependencies : 
* dialog - is required to for the menu to work.

## Adjusting the MENU Example:
* Menu has default settings of 40/60/80/100
* | ./amdgpu-pro-fans.sh -s 80 | 
* That would set all of your fan speeds to 80 percent of their maximum speed.
* You can edit fanspeeddlg-promenu.sh and update the ranges. 
* At anytime you can run ./create_desktop_file.sh to reset the changes to default.

## Notes:
Fully tested on Ubuntu 18.04 with AMDGPU-PRO proprietary linux drivers. It is compatible with all Radeon R8 Series, R9 Series, and RX Series graphics cards.

## Orignal project:
https://github.com/DominiLux/amdgpu-pro-fans
Dev replaced the project with:
https://github.com/DominiLux/GPUMAGIC