#!/bin/sh

# This gets the firmware files from the present git snapshot of the
# raspberrypi's firmware repository on github

wget --content-disposition https://github.com/raspberrypi/userland/tarball/master
