#!/bin/sh

# This gets the kernel sources from the present git snapshot of the
# 3.6.y branch of the raspberrypi's kernel fork on github

wget --content-disposition --no-check-certificate https://github.com/raspberrypi/linux/tarball/rpi-3.6.y

# This gets also the BFQ patches
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.6.0-v5/0001-block-cgroups-kconfig-build-bits-for-BFQ-v5-3.6.patch
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.6.0-v5/0002-block-introduce-the-BFQ-v5-I-O-sched-for-3.6.patch
