#!/bin/sh

# This gets the firmware files from the present git snapshot of the
# raspberrypi's firmware repository on github

wget --content-disposition --no-check-certificate https://github.com/raspberrypi/firmware/tarball/next
