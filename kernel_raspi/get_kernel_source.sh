#!/bin/sh

# This gets the kernel sources from the present git snapshot of the
# 3.2.27 branch of the raspberrypi's kernel fork on github

wget --content-disposition https://github.com/raspberrypi/linux/tarball/rpi-3.2.27

# This gets also the BFQ patches
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.2.0-v5/0001-block-prepare-I-O-context-code-for-BFQ-v5-for-3.2.patch
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.2.0-v5/0002-block-cgroups-kconfig-build-bits-for-BFQ-v5-3.2.patch
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.2.0-v5/0003-block-introduce-the-BFQ-v5-I-O-sched-for-3.2.patch
