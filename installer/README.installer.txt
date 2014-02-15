This is the Slackware ARM Installer, modified to boot on the Raspberry Pi. 
The image allows you to install either Slackware ARM 14.1 or Slackware ARM
Current from the network or from a USB storage device plugged into your Pi.

Please follow these steps to perform your Slackware installation.


1. On a host system with an SD card writer, copy the image to an SD card:

  gzip -dc raspi-slack-installer_30Dec13.img.gz | dd of=[device] bs=65536

where [device] is the name of the SD card writer, for example /dev/sdb
(hint: you can spot it with "fdisk -l")
You will need at least a 2Gb card.
A full installation will need an 8Gb card.


2. Put the SD card in your Raspberry Pi and power it up.


3. Follow the familiar Slackware ARM Installer instructions.
After logging in as root, but before running setup:

  * Set the date and time, using the command 'date MMDDHHMMYEAR'.  For
  example, mid-day on the 24th of June 2012 would be set as

  date 062412002012

  * If your SD card is more than 2Gb, repartition it with cfdisk or fdisk.
  Note that your SD card is identified as /dev/mmcblk0 (not /dev/sda) and
  the partitions will be /dev/mmcblk0p1, mmcblk0p2 etc.  The SD card is
  already set up with a boot partition that contains the Installer
  (mmcblk0p1), a preformatted swap partition (mmcblk0p2), and an empty
  1.5 Gb preformatted ext4 partition for the root filesystem (mmcblk0p3).
  You can most easily maximise the size of your root partition by deleting
  it and recreating it right now to take up all the free space on your SD
  card.  There is no need to make a filesystem on the root partition; the
  Installer will offer to do that for you.


4. Run 'setup' as usual.
Your SOURCE can be on the network or on a USB device.
Please note that you can deselect packages: f,k,KDE, & KDEi to save space.
Most kernel work will be done on a host machine instead of the raspPi.


5. Some steps in the installer will be quite slow, particularly formatting
the root partition as ext4, and processing the list of Slackware packages
from PACKAGES.TXT.  This is normal.


6. When you have finished setup, choose 'No' (do not reboot) and drop to
the command prompt.


7. Only if you installed kernels for other systems (in a 'full' install)
you can save disk space by removing them as follows:

  ROOT=/mnt removepkg \
    kernel_armv7 kernel-modules-armv7 \
    kernel_kirkwood kernel-modules-kirkwood \
    kernel_versatile kernel-modules-versatile


8. Mount the boot partition, and install the Raspberry Pi kernel, boot
firmware and other extra packages as follows:

  mount -t vfat /dev/mmcblk0p1 /mnt/boot
  ROOT=/mnt installpkg /raspi-extra/kernel* /raspi-extra/raspi*

check that everything installs without errors: if there are any,
upgradepkg --reinstall the interested packages.

9. Substitute the content of /mnt/boot/cmdline.txt with this line
(these are the parameters passed to the kernel)

  console=tty1 root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro

Can be that this step is not necessary (the file is already like this).


10. Erase the initramfs line from /mnt/boot/config.txt.
Can be that this step is not necessary (there's no such entry).


11. Now you can type 'reboot' to reboot your new system :-)
