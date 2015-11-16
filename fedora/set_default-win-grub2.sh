#! /bin/bash
# Lectura recomendada:
# https://ask.fedoraproject.org/en/question/8885/how-can-i-change-default-operating-system-in-start-up-boot-menu/
grub2-set-default "Windows 7 (loader) (on /dev/sda1)"
grub2-editenv list
grub2-mkconfig -o /boot/grub2/grub.cfg
