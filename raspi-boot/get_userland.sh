#!/bin/sh

# This gets the userland files from the present git snapshot of the
# raspberrypi's userland repository on github

wget --content-disposition --no-check-certificate https://github.com/raspberrypi/userland/tarball/master
