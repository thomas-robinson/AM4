#!/bin/sh

cd src
rm -rf mom6 land_lad2 coupler ice_sis
if [ "${1}" = "ssh" ]; then
     git clone git@github.com:NOAA-GFDL/land_null.git
     git clone -b 1-add-simple-coupler git@github.com:thomas-robinson/coupler.git
else
     git clone https://github.com/NOAA-GFDL/land_null.git
     git clone -b 1-add-simple-coupler https://github.com/thomas-robinson/coupler.git
fi


