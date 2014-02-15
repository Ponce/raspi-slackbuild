#!/bin/sh

# This gets the kernel sources from the present git snapshot of the
# 3.6.y branch of the raspberrypi's kernel fork on github

wget --content-disposition --no-check-certificate https://github.com/raspberrypi/linux/tarball/rpi-3.10.y

# This gets also the BFQ patches and aufs3 stuff
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.10.8+-v6r2/0001-block-cgroups-kconfig-build-bits-for-BFQ-v6r2-3.10.8.patch
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.10.8+-v6r2/0002-block-introduce-the-BFQ-v6r2-I-O-sched-for-3.10.8.patch
wget http://algo.ing.unimo.it/people/paolo/disk_sched/patches/3.10.8+-v6r2/0003-block-bfq-add-Early-Queue-Merge-EQM-to-BFQ-v6r2-for-.patch
wget http://ponce.cc/slackware/sources/repo/aufs3-3.10.tar.gz
