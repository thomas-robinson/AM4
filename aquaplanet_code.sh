#!/bin/sh

cd src
rm -rf mom6 land_lad2 coupler ice_sis
git clone git@github.com:NOAA-GFDL/land_null.git
git clone -b 1-add-simple-coupler git@github.com:thomas-robinson/coupler.git



