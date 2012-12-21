#!/bin/sh

( cd raspi-boot
  sh get_firmware.sh
  sh get_userland.sh )

( cd kernel_raspi
  sh get_kernel_source.sh )

( cd installer
  sh get_versatile_img.sh )
