#! /bin/bash
grub2-set-default "Windows 7 (loader) (on /dev/sda1)"
grub2-editenv list
grub2-mkconfig -o /boot/grub2/grub.cfg
